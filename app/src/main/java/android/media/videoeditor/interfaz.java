package android.media.videoeditor;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.MediaCodec;
import android.media.MediaExtractor;
import android.media.MediaMetadataRetriever;
import android.media.MediaPlayer;
import android.util.TypedValue;
import android.view.Surface;
import java.io.IOException;
import java.io.RandomAccessFile;

final class interfaz {
    private interfaz() {}

    static int dp(Context c, int v) {
        return (int) TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_DIP, v, c.getResources().getDisplayMetrics());
    }

    static void release(MediaCodec c) {
        if (c == null) return;
        try { c.release(); } catch (RuntimeException ignored) { }
    }

    static void stop(MediaCodec c) {
        if (c == null) return;
        try { c.stop(); } catch (RuntimeException ignored) { }
    }

    static void release(MediaExtractor x) {
        if (x == null) return;
        try { x.release(); } catch (RuntimeException ignored) { }
    }

    static void release(MediaMetadataRetriever m) {
        if (m == null) return;
        try { m.release(); } catch (Exception ignored) { }
    }

    static void release(MediaPlayer p) {
        if (p == null) return;
        try { p.release(); } catch (RuntimeException ignored) { }
    }

    static void release(SurfaceTexture s) {
        if (s == null) return;
        try { s.release(); } catch (RuntimeException ignored) { }
    }

    static void release(Surface s) {
        if (s == null) return;
        try { s.release(); } catch (RuntimeException ignored) { }
    }

    static void releaseGl(glglglgl g) {
        if (g == null) return;
        try { g.release(); } catch (Throwable ignored) { }
    }

    static void close(RandomAccessFile f) {
        if (f == null) return;
        try { f.close(); } catch (IOException ignored) { }
    }
}
