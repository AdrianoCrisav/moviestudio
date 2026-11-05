package android.media.videoeditor;

import android.app.Activity;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public final class titleinfo {
    private static final HashMap<String, float[]> CACHE = new HashMap<String, float[]>();

    private titleinfo() {}

    public static void apply(final Activity a, Object project) {
        kitkatorial.maybe(a);
        try {
            List<?> items = (List<?>) project.getClass().getMethod("getMediaItems").invoke(project);
            final ArrayList<String> files = new ArrayList<String>();
            for (Object it : items) {
                if ((Boolean) it.getClass().getMethod("isVideoClip").invoke(it)) {
                    files.add((String) it.getClass().getMethod("getFilename").invoke(it));
                }
            }
            final long dur = (Long) project.getClass().getMethod("computeDuration").invoke(project);
            final int count = items.size();
            new Thread(new Runnable() {
                public void run() {
                    float w = 0, h = 0, fps = 0;
                    for (String f : files) {
                        float[] p = probe(f);
                        if (p == null) continue;
                        if (p[0] * p[1] > w * h) { w = p[0]; h = p[1]; }
                        fps = Math.max(fps, p[2]);
                    }
                    StringBuilder sb = new StringBuilder();
                    if (w > 0) sb.append((int) w).append('x').append((int) h);
                    if (fps > 0) {
                        if (sb.length() > 0) sb.append("  ·  ");
                        sb.append(Math.abs(fps - Math.round(fps)) < 0.05f ? String.valueOf(Math.round(fps))
                                : String.format("%.2f", fps)).append(" fps");
                    }
                    if (dur > 0) {
                        if (sb.length() > 0) sb.append("  ·  ");
                        long s = dur / 1000;
                        sb.append(s / 60).append(':').append(s % 60 < 10 ? "0" : "").append(s % 60);
                    }
                    if (count > 0) {
                        if (sb.length() > 0) sb.append("  ·  ");
                        sb.append(count).append(count == 1 ? " clip" : " clips");
                    }
                    final String sub = sb.length() == 0 ? null : sb.toString();
                    a.runOnUiThread(new Runnable() {
                        public void run() {
                            try {
                                if (!a.isFinishing() && a.getActionBar() != null) a.getActionBar().setSubtitle(sub);
                            } catch (Throwable ignored) { }
                        }
                    });
                }
            }).start();
        } catch (Throwable ignored) { }
    }

    private static float[] probe(String path) {
        if (path == null) return null;
        synchronized (CACHE) {
            if (CACHE.containsKey(path)) return CACHE.get(path);
        }
        float[] r = null;
        MediaExtractor ex = new MediaExtractor();
        try {
            ex.setDataSource(path);
            for (int t = 0; t < ex.getTrackCount(); t++) {
                MediaFormat f = ex.getTrackFormat(t);
                String m = f.getString(MediaFormat.KEY_MIME);
                if (m == null || !m.startsWith("video/")) continue;
                float w = f.getInteger(MediaFormat.KEY_WIDTH), h = f.getInteger(MediaFormat.KEY_HEIGHT);
                if (f.containsKey("rotation-degrees")) {
                    int rot = f.getInteger("rotation-degrees");
                    if (rot == 90 || rot == 270) { float x = w; w = h; h = x; }
                }
                float fr = 0;
                if (f.containsKey(MediaFormat.KEY_FRAME_RATE)) {
                    try {
                        fr = f.getInteger(MediaFormat.KEY_FRAME_RATE);
                    } catch (RuntimeException e) {
                        fr = f.getFloat(MediaFormat.KEY_FRAME_RATE);
                    }
                }
                r = new float[] {w, h, fr};
                break;
            }
        } catch (Throwable ignored) { } finally {
            ex.release();
        }
        synchronized (CACHE) {
            CACHE.put(path, r);
        }
        return r;
    }
}
