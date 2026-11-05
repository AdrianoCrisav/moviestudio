package android.media.videoeditor;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;

public final class xform {
    private xform() {}

    public static final class Xform {
        public float l = 0f, t = 0f, r = 1f, b = 1f, ang = 0f;
        public boolean fill = true;

        boolean identity() {
            return l <= 0.0005f && t <= 0.0005f && r >= 0.9995f && b >= 0.9995f && Math.abs(ang) < 0.01f;
        }

        Xform dup() {
            Xform x = new Xform();
            x.l = l; x.t = t; x.r = r; x.b = b; x.ang = ang; x.fill = fill;
            return x;
        }
    }

    private static final Map<String, Xform> M = new ConcurrentHashMap<String, Xform>();

    public static Xform of(String id) { return id == null ? null : M.get(id); }

    public static void set(String id, Xform x) {
        if (id == null) return;
        if (x == null || x.identity()) M.remove(id); else M.put(id, x);
    }

    public static void copy(String from, String to) {
        Xform x = of(from);
        set(to, x == null ? null : x.dup());
    }

    public static JSONArray toJson(String id) {
        Xform x = of(id);
        if (x == null) return null;
        JSONArray a = new JSONArray();
        try {
            a.put((double) x.l).put((double) x.t).put((double) x.r).put((double) x.b).put((double) x.ang).put(x.fill ? 1 : 0);
        } catch (JSONException e) {
            return null;
        }
        return a;
    }

    public static void fromJson(String id, JSONArray a) {
        if (a == null || a.length() < 6) return;
        Xform x = new Xform();
        x.l = (float) a.optDouble(0, 0.0);
        x.t = (float) a.optDouble(1, 0.0);
        x.r = (float) a.optDouble(2, 1.0);
        x.b = (float) a.optDouble(3, 1.0);
        x.ang = (float) a.optDouble(4, 0.0);
        x.fill = a.optInt(5, 1) != 0;
        set(id, x);
    }
}
