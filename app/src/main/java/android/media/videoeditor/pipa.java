package android.media.videoeditor;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* escritura en id de clip porque el proyecto original no puede guardar tus mafufadas! */
public final class pipa {
    private pipa() {}

    public static final class Layer {
        public String file;
        public boolean video, sound, chroma;
        public float centerX = 0.75f, centerY = 0.25f, size = 0.35f, tol = 0.4f, opacity = 1f;
        public long start = 0L, end = -1L, offset = 0L;
        public int key = 0x00FF00;
        public String id;
        public int row;

        Layer dup() {
            Layer q = new Layer();
            q.file = file; q.video = video; q.sound = sound; q.chroma = chroma;
            q.centerX = centerX; q.centerY = centerY; q.size = size; q.tol = tol; q.opacity = opacity;
            q.start = start; q.end = end; q.offset = offset; q.key = key; q.id = id; q.row = row;
            return q;
        }
    }

    private static final Map<String, Layer> M = new ConcurrentHashMap<String, Layer>();

    public static Layer of(String id) { return id == null ? null : M.get(id); }

    public static void set(String id, Layer p) {
        if (id == null) return;
        if (p == null || p.file == null) M.remove(id); else M.put(id, p);
    }

    public static final int LAYERS = 4;

    public static String key(String id, int n) { return n == 0 ? id : id + "#" + n; }

    public static void copy(String from, String to) {
        for (int n = 0; n < LAYERS; n++) {
            Layer p = of(key(from, n));
            set(key(to, n), p == null ? null : p.dup());
        }
    }

    public static org.json.JSONArray extraToJson(String id) {
        org.json.JSONArray a = new org.json.JSONArray();
        for (int n = 1; n < LAYERS; n++) {
            JSONObject o = toJson(key(id, n));
            try {
                if (o != null) a.put(o.put("n", n));
            } catch (JSONException ignored) { }
        }
        return a.length() == 0 ? null : a;
    }

    public static void extraFromJson(String id, org.json.JSONArray a) {
        if (a == null) return;
        for (int i = 0; i < a.length(); i++) {
            JSONObject o = a.optJSONObject(i);
            if (o != null) fromJson(key(id, Math.max(1, Math.min(LAYERS - 1, o.optInt("n", 1)))), o);
        }
    }

    public static void split(String from, String to, long at) {
        for (int n = 0; n < LAYERS; n++) splitOne(key(from, n), key(to, n), at);
    }

    private static void splitOne(String from, String to, long at) {
        Layer p = of(from);
        if (p == null) return;
        Layer q = p.dup();
        q.start = Math.max(0L, p.start - at);
        q.offset = p.offset + Math.max(0L, at - p.start);
        if (p.end >= 0) q.end = p.end - at;
        if (q.end >= 0 && q.end <= q.start) set(to, null); else set(to, q);
        if (p.start >= at) {
            set(from, null);
        } else if (p.end > at) {
            Layer f = p.dup();
            f.end = at;
            set(from, f);
        }
    }

    public static JSONObject toJson(String id) {
        return toJsonP(of(id));
    }

    public static JSONObject toJsonP(Layer p) {
        if (p == null) return null;
        JSONObject o = new JSONObject();
        try {
            o.put("f", p.file).put("v", p.video).put("sn", p.sound).put("ch", p.chroma)
                    .put("cx", (double) p.centerX).put("cy", (double) p.centerY).put("sz", (double) p.size).put("tl", (double) p.tol).put("op", (double) p.opacity)
                    .put("s", p.start).put("e", p.end).put("o", p.offset).put("k", p.key).put("lid", p.id).put("row", p.row);
        } catch (JSONException e) {
            return null;
        }
        return o;
    }

    public static void fromJson(String id, JSONObject o) {
        Layer p = fromJsonP(o);
        if (p != null) set(id, p);
    }

    public static Layer fromJsonP(JSONObject o) {
        if (o == null || !o.has("f")) return null;
        Layer p = new Layer();
        p.file = o.optString("f", null);
        p.video = o.optBoolean("v", false);
        p.sound = o.optBoolean("sn", false);
        p.chroma = o.optBoolean("ch", false);
        p.centerX = (float) o.optDouble("cx", 0.75);
        p.centerY = (float) o.optDouble("cy", 0.25);
        p.size = (float) o.optDouble("sz", 0.35);
        p.tol = (float) o.optDouble("tl", 0.4);
        p.opacity = (float) o.optDouble("op", 1.0);
        p.start = o.optLong("s", 0L);
        p.end = o.optLong("e", -1L);
        p.offset = o.optLong("o", 0L);
        p.key = o.optInt("k", 0x00FF00);
        p.id = o.optString("lid", null);
        p.row = o.optInt("row", 0);
        return p;
    }
}
