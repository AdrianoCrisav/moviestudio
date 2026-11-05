package android.media.videoeditor;

import android.content.Context;
import android.graphics.Bitmap;
import java.io.File;
import java.io.FileOutputStream;

public final class masks {
    private static final int BASE = 0x7f0500f0;
    private static final String[] NAMES = {"mask_wipe_right.png", "mask_wipe_down.png", "mask_iris.png", "mask_blinds.png"};

    private masks() { }

    public static int typeOf(int id) {
        return id >= BASE && id < BASE + NAMES.length ? 8 + id - BASE : -1;
    }

    public static int rawId(String path) {
        if (path == null) return 0;
        String n = new File(path).getName();
        for (int i = 0; i < NAMES.length; i++) if (NAMES[i].equals(n)) return BASE + i;
        return 0;
    }

    public static String file(Context c, int id) {
        if (id < BASE || id >= BASE + NAMES.length) return null;
        File f = new File(c.getFilesDir(), NAMES[id - BASE]);
        make(f, id - BASE);
        return f.getAbsolutePath();
    }

    public static void restore(String path) {
        int id = rawId(path);
        if (id != 0) make(new File(path), id - BASE);
    }

    private static void make(File f, int k) {
        if (f.exists() && f.length() > 0) return;
        int n = 256;
        int[] px = new int[n * n];
        for (int y = 0; y < n; y++) {
            for (int x = 0; x < n; x++) {
                float u = (x + 0.5f) / n, v = (y + 0.5f) / n, m;
                if (k == 0) m = u;
                else if (k == 1) m = v;
                else if (k == 2) m = (float) Math.min(1.0, Math.hypot(u - 0.5, v - 0.5) * 1.4142);
                else m = (u * 6f) % 1f;
                int g = Math.max(0, Math.min(255, Math.round(m * 255f)));
                px[y * n + x] = 0xFF000000 | (g << 16) | (g << 8) | g;
            }
        }
        Bitmap b = Bitmap.createBitmap(px, n, n, Bitmap.Config.ARGB_8888);
        try {
            FileOutputStream o = new FileOutputStream(f);
            b.compress(Bitmap.CompressFormat.PNG, 100, o);
            o.close();
        } catch (Exception e) {
            f.delete();
        } finally {
            b.recycle();
        }
    }
}
