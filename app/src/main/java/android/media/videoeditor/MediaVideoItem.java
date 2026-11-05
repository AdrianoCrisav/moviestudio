package android.media.videoeditor;

import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.view.SurfaceHolder;
import java.io.File;
import java.io.IOException;

/* un saludo a cavifax o algo */
public class MediaVideoItem extends MediaItem {
    private final Object lock = new Object();
    private MediaMetadataRetriever mmr;
    private long durationMs;
    private long begin, end;
    private int volume = 100;
    private boolean muted;
    private WaveformData waveform;
    private final float speed;
    private static final java.util.Map<String, Float> SPEED = new java.util.concurrent.ConcurrentHashMap<String, Float>();
    public static void speedFor(String id, float s) { if (id != null) SPEED.put(id, Math.max(0.1f, Math.min(8f, s))); }
    private static final java.util.Map<String, Boolean> REV = new java.util.concurrent.ConcurrentHashMap<String, Boolean>();
    public static void revFor(String id, boolean r) { if (id == null) return; if (r) REV.put(id, Boolean.TRUE); else REV.remove(id); }
    public static boolean revOf(String id) { return id != null && REV.containsKey(id); }
    private final boolean reversed;
    public boolean isReversed() { return reversed; }

    static Bitmap revFrame(MediaMetadataRetriever r, long fileMs, int maxSide) {
        try {
            int w = num(r, MediaMetadataRetriever.METADATA_KEY_VIDEO_WIDTH), h = num(r, MediaMetadataRetriever.METADATA_KEY_VIDEO_HEIGHT);
            int rot = android.os.Build.VERSION.SDK_INT >= 17 ? num(r, MediaMetadataRetriever.METADATA_KEY_VIDEO_ROTATION) : 0;
            if (rot % 180 != 0) { int t = w; w = h; h = t; }
            long us = fileMs * 1000L;
            Bitmap b = null;
            if (maxSide > 0 && w > 0 && h > 0 && android.os.Build.VERSION.SDK_INT >= 27) {
                float k = Math.min(1f, maxSide / (float) Math.max(w, h));
                b = r.getScaledFrameAtTime(us, MediaMetadataRetriever.OPTION_CLOSEST, Math.max(2, (int) (w * k)), Math.max(2, (int) (h * k)));
            } else {
                b = r.getFrameAtTime(us, MediaMetadataRetriever.OPTION_CLOSEST);
            }
            if (b == null) b = r.getFrameAtTime(us, MediaMetadataRetriever.OPTION_CLOSEST_SYNC);
            return b;
        } catch (RuntimeException e) {
            return null;
        }
    }

    public static float speedOf(String id) { Float s = id == null ? null : SPEED.get(id); return s == null ? 1f : s; }

    public MediaVideoItem(VideoEditor editor, String id, String filename, int renderingMode) throws IOException {
        super(editor, id, filename, renderingMode);
        speed = speedOf(id);
        reversed = revOf(id);
        if (!new File(filename).isFile()) throw new IOException("no existe " + filename);
        MediaMetadataRetriever r = retriever();
        int w = num(r, MediaMetadataRetriever.METADATA_KEY_VIDEO_WIDTH);
        int h = num(r, MediaMetadataRetriever.METADATA_KEY_VIDEO_HEIGHT);
        int rot = android.os.Build.VERSION.SDK_INT >= 17 ? num(r, MediaMetadataRetriever.METADATA_KEY_VIDEO_ROTATION) : 0;
        if (rot == 90 || rot == 270) { int t = w; w = h; h = t; }
        durationMs = num(r, MediaMetadataRetriever.METADATA_KEY_DURATION);
        if (w <= 0 || h <= 0 || durationMs <= 0) throw new IllegalArgumentException("video no soportado: " + filename);
        width = w;
        height = h;
        begin = 0;
        end = durationMs;
    }

    private static int num(MediaMetadataRetriever r, int key) {
        try {
            String s = r.extractMetadata(key);
            return s == null ? 0 : Integer.parseInt(s);
        } catch (NumberFormatException e) {
            return 0;
        }
    }

    private MediaMetadataRetriever retriever() throws IOException {
        synchronized (lock) {
            if (mmr == null) {
                MediaMetadataRetriever r = new MediaMetadataRetriever();
                try {
                    r.setDataSource(filename);
                } catch (RuntimeException e) {
                    quiet(r);
                    throw new IOException("no se pudo abrir " + filename);
                }
                mmr = r;
            }
            return mmr;
        }
    }

    @Override public long getDuration() { return (long) (durationMs / speed); }
    @Override public long getTimelineDuration() { return (long) ((end - begin) / speed); }
    public long getBoundaryBeginTime() { return (long) (begin / speed); }
    public long getBoundaryEndTime() { return (long) (end / speed); }
    public long fileBegin() { return begin; }
    public long fileEnd() { return end; }
    public float getSpeed() { return speed; }

    public void setExtractBoundaries(long beginMs, long endMs) {
        long b = (long) (beginMs * (double) speed), e = Math.min(durationMs, (long) (endMs * (double) speed));
        if (beginMs < 0 || b >= e) throw new IllegalArgumentException("limites invalidos");
        begin = b;
        end = e;
    }

    public void setVolume(int v) { volume = Math.max(0, Math.min(100, v)); }
    public int getVolume() { return volume; }
    public void setMute(boolean m) { muted = m; }
    public boolean isMuted() { return muted; }
    public WaveformData getWaveformData() { return waveform; }

    public void extractAudioWaveform(ExtractAudioWaveformProgressListener l) throws IOException {
        try {
            waveform = new WaveformData(WaveformData.FRAME_MS, pene.waveform(getFilename(), durationMs, l));
        } catch (Exception e) {
            waveform = WaveformData.flat(durationMs);
        }
        if (l != null) l.onProgress(100);
    }

    @Override
    public Bitmap getThumbnail(int w, int h, long timeMs) throws IOException {
        return frameAt(w, h, (long) (timeMs * (double) speed));
    }

    public Bitmap frameAt(int w, int h, long timeMs) throws IOException {
        Bitmap full;
        synchronized (lock) {
            full = retriever().getFrameAtTime(Math.max(0, timeMs) * 1000L, MediaMetadataRetriever.OPTION_CLOSEST_SYNC);
        }
        if (full == null) return null;
        if (w <= 0 || h <= 0 || (full.getWidth() == w && full.getHeight() == h)) return full;
        Bitmap s = Bitmap.createScaledBitmap(full, w, h, true);
        if (s != full) full.recycle();
        return s;
    }

    public long renderFrame(SurfaceHolder holder, long timeMs) {
        try {
            Bitmap b = frameAt(0, 0, timeMs);
            drawFit(holder, b);
            if (b != null) b.recycle();
        } catch (IOException e) {
            return -1;
        }
        return timeMs;
    }

    void close() {
        synchronized (lock) {
            if (mmr != null) { quiet(mmr); mmr = null; }
        }
    }
}
