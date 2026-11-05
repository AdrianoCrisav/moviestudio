package android.media.videoeditor;

import android.media.MediaMetadataRetriever;
import java.io.File;
import java.io.IOException;

public class AudioTrack {
    private final String id, filename;
    private long durationMs, begin, end, startTime;
    private int volume = 100, bitrate, channels = 2, freq = 44100, type;
    private boolean muted, looping, ducking;
    private int duckThreshold, duckVolume;
    private WaveformData waveform;
    private long wfBegin, wfEnd;
    private final File cacheDir;

    public AudioTrack(VideoEditor editor, String id, String filename) throws IOException {
        this.id = id;
        this.filename = filename;
        String cp = null;
        try { cp = editor == null ? null : editor.getPath(); } catch (RuntimeException ignored) { }
        cacheDir = cp == null ? null : new File(cp);
        if (!new File(filename).isFile()) throw new IOException("no existe " + filename);
        MediaMetadataRetriever r = new MediaMetadataRetriever();
        try {
            r.setDataSource(filename);
            String d = r.extractMetadata(MediaMetadataRetriever.METADATA_KEY_DURATION);
            String b = r.extractMetadata(MediaMetadataRetriever.METADATA_KEY_BITRATE);
            durationMs = d == null ? 0 : Long.parseLong(d);
            bitrate = b == null ? 0 : Integer.parseInt(b);
        } catch (RuntimeException e) {
            throw new IOException("audio no soportado: " + filename);
        } finally {
            MediaItem.quiet(r);
        }
        if (durationMs <= 0) throw new IOException("audio sin duracion: " + filename);
        begin = 0;
        end = durationMs;
    }

    public String getId() { return id; }
    public String getFilename() { return filename; }
    public long getDuration() { return durationMs; }
    public long getStartTime() { return startTime; }
    public long getBoundaryBeginTime() { return begin; }
    public long getBoundaryEndTime() { return end; }
    public int getAudioType() { return type; }
    public int getAudioChannels() { return channels; }
    public int getAudioBitrate() { return bitrate; }
    public int getAudioSamplingFrequency() { return freq; }

    public void setExtractBoundaries(long beginMs, long endMs) {
        if (beginMs < 0 || endMs > durationMs || beginMs >= endMs) throw new IllegalArgumentException("limites invalidos");
        begin = beginMs;
        end = endMs;
        rebaseWaveform();
    }

    private void rebaseWaveform() {
        if (waveform == null) return;
        if (begin >= wfBegin && end <= wfEnd) {
            short[] g = waveform.getFrameGains();
            int fd = WaveformData.FRAME_MS;
            int a = (int) ((begin - wfBegin) / fd);
            int b = (int) Math.min(g.length, Math.max(a + 1, (end - wfBegin) / fd));
            short[] n = new short[Math.max(1, b - a)];
            System.arraycopy(g, a, n, 0, Math.min(n.length, g.length - a));
            waveform = new WaveformData(fd, n);
        } else {
            waveform = WaveformData.flat(end - begin);
        }
        wfBegin = begin;
        wfEnd = end;
    }

    public void setVolume(int v) { volume = Math.max(0, Math.min(100, v)); }
    public int getVolume() { return volume; }
    public void setMute(boolean m) { muted = m; }
    public boolean isMuted() { return muted; }
    public void enableLoop() { looping = true; }
    public void disableLoop() { looping = false; }
    public boolean isLooping() { return looping; }
    public void enableDucking(int threshold, int vol) { ducking = true; duckThreshold = threshold; duckVolume = vol; }
    public void disableDucking() { ducking = false; }
    public boolean isDuckingEnabled() { return ducking; }
    int duckThreshold() { return duckThreshold; }
    int duckVolume() { return duckVolume; }
    void setStartTime(long ms) { startTime = ms; }

    public WaveformData getWaveformData() { return waveform; }

    public void extractAudioWaveform(ExtractAudioWaveformProgressListener l) throws IOException {
        short[] c = readCache();
        if (c != null) {
            waveform = new WaveformData(WaveformData.FRAME_MS, c);
        } else {
            try {
                // recalculamiento de la mrdonda de audio
                short[] g = pene.waveform(filename, begin, end, l);
                waveform = new WaveformData(WaveformData.FRAME_MS, g);
                writeCache(g);
            } catch (Exception e) {
                waveform = WaveformData.flat(end - begin);
            }
        }
        wfBegin = begin;
        wfEnd = end;
        if (l != null) l.onProgress(100);
    }

    private File cacheFile() { return cacheDir == null ? null : new File(cacheDir, "wf_" + id + ".bin"); }

    // espero que la informacion de tu archivo coincida con la onda del audio
    private short[] readCache() {
        File f = cacheFile();
        if (f == null || !f.isFile()) return null;
        try {
            java.io.DataInputStream in = new java.io.DataInputStream(new java.io.BufferedInputStream(new java.io.FileInputStream(f)));
            try {
                File src = new File(filename);
                if (in.readLong() != begin || in.readLong() != end || in.readLong() != src.length() || in.readLong() != src.lastModified()) return null;
                int n = in.readInt();
                if (n <= 0 || n > 10000000) return null;
                byte[] b = new byte[n];
                in.readFully(b);
                short[] g = new short[n];
                for (int i = 0; i < n; i++) g[i] = (short) (b[i] & 0xff);
                return g;
            } finally { in.close(); }
        } catch (Exception e) {
            return null;
        }
    }

    private void writeCache(short[] g) {
        File f = cacheFile();
        if (f == null) return;
        try {
            java.io.DataOutputStream o = new java.io.DataOutputStream(new java.io.BufferedOutputStream(new java.io.FileOutputStream(f)));
            try {
                File src = new File(filename);
                o.writeLong(begin); o.writeLong(end); o.writeLong(src.length()); o.writeLong(src.lastModified());
                o.writeInt(g.length);
                byte[] b = new byte[g.length];
                for (int i = 0; i < g.length; i++) b[i] = (byte) Math.min(255, g[i]);
                o.write(b);
            } finally { o.close(); }
        } catch (Exception ignored) { }
    }
}
