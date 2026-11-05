package android.media.videoeditor;

import android.media.MediaCodec;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import java.io.IOException;
import java.nio.ByteBuffer;

final class pipdec {
    final glglglgl.Ext ext;
    final float aspect;
    private final MediaExtractor ex = new MediaExtractor();
    private MediaCodec dc;
    private ByteBuffer[] ins;
    private final MediaCodec.BufferInfo bi = new MediaCodec.BufferInfo();
    private boolean inEos, eos;
    private int pend = -1;
    private long pendUs, cur = -1;

    pipdec(glglglgl gl, String path) throws IOException {
        int w = 16, h = 9, rot = 0;
        MediaMetadataRetriever r = new MediaMetadataRetriever();
        try {
            r.setDataSource(path);
            w = num(r.extractMetadata(MediaMetadataRetriever.METADATA_KEY_VIDEO_WIDTH), 16);
            h = num(r.extractMetadata(MediaMetadataRetriever.METADATA_KEY_VIDEO_HEIGHT), 9);
            rot = num(r.extractMetadata(MediaMetadataRetriever.METADATA_KEY_VIDEO_ROTATION), 0);
        } catch (RuntimeException e) {
            throw new IOException("pip no abre");
        } finally {
            MediaItem.quiet(r);
        }
        aspect = rot % 180 != 0 ? (float) h / Math.max(1, w) : (float) w / Math.max(1, h);
        ex.setDataSource(path);
        int tr = -1;
        for (int t = 0; t < ex.getTrackCount(); t++) {
            String m = ex.getTrackFormat(t).getString(MediaFormat.KEY_MIME);
            if (m != null && m.startsWith("video/")) { tr = t; break; }
        }
        if (tr < 0) {
            ex.release();
            throw new IOException("pip sin video");
        }
        ex.selectTrack(tr);
        MediaFormat fmt = ex.getTrackFormat(tr);
        if (Build.VERSION.SDK_INT >= 21 && rot != 0 && !fmt.containsKey("rotation-degrees")) fmt.setInteger("rotation-degrees", rot);
        ext = gl.newExt();
        try {
            dc = MediaCodec.createDecoderByType(fmt.getString(MediaFormat.KEY_MIME));
            dc.configure(fmt, ext.sf, null, 0);
            dc.start();
            ins = dc.getInputBuffers();
        } catch (RuntimeException e) {
            close();
            throw new IOException("pip decoder");
        }
        ext.onRelease = new Runnable() {
            @Override public void run() { close(); }
        };
    }

    private static int num(String s, int def) {
        try {
            return s == null ? def : Integer.parseInt(s);
        } catch (NumberFormatException e) {
            return def;
        }
    }

    boolean show(long ms) {
        long t = Math.max(0L, ms) * 1000L;
        if (cur < 0 || t < cur || t - cur > 1500000L) restart(t);
        long limit = System.nanoTime() + 1500000000L;
        while (!eos && System.nanoTime() < limit) {
            if (pend < 0) {
                int i = out();
                if (i < 0) continue;
                pend = i;
            }
            if (pendUs > t) break;
            if (cur >= 0 && pendUs < t - 200000L) {
                dc.releaseOutputBuffer(pend, false);
                pend = -1;
                continue;
            }
            dc.releaseOutputBuffer(pend, true);
            pend = -1;
            if (!ext.await(300)) break;
            cur = pendUs;
        }
        return cur >= 0;
    }

    private void restart(long t) {
        try {
            if (pend >= 0) { dc.releaseOutputBuffer(pend, false); pend = -1; }
            dc.flush();
            ex.seekTo(t, MediaExtractor.SEEK_TO_PREVIOUS_SYNC);
        } catch (RuntimeException ignored) { }
        inEos = false;
        eos = false;
        cur = -1;
    }

    private int out() {
        if (!inEos) {
            int ii = dc.dequeueInputBuffer(0);
            if (ii >= 0) {
                int n = ex.readSampleData(ins[ii], 0);
                if (n < 0) {
                    dc.queueInputBuffer(ii, 0, 0, 0, MediaCodec.BUFFER_FLAG_END_OF_STREAM);
                    inEos = true;
                } else {
                    dc.queueInputBuffer(ii, 0, n, ex.getSampleTime(), 0);
                    ex.advance();
                }
            }
        }
        int o = dc.dequeueOutputBuffer(bi, 10000);
        if (o >= 0) {
            if ((bi.flags & MediaCodec.BUFFER_FLAG_END_OF_STREAM) != 0) {
                dc.releaseOutputBuffer(o, false);
                eos = true;
                return -1;
            }
            pendUs = bi.presentationTimeUs;
            return o;
        }
        return -1;
    }

    void close() {
        interfaz.stop(dc);
        interfaz.release(dc);
        dc = null;
        interfaz.release(ex);
    }
}
