package android.media.videoeditor;

import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONException;

public final class fxstack {
    private fxstack() {}

    public static final class Entry {
        public int fx;
        public float a = 0f, b = 1f, amt = 1f;

        Entry dup() {
            Entry e = new Entry();
            e.fx = fx; e.a = a; e.b = b; e.amt = amt;
            return e;
        }
    }

    private static final Map<String, List<Entry>> STACKS = new ConcurrentHashMap<String, List<Entry>>();

    public static int kind(int fx) {
        if (fx >= 10) return 2;
        return fx == 1 || fx == 4 || fx == 5 || fx == 6 ? 1 : 0;
    }

    public static boolean hasAmount(int fx) { return kind(fx) == 0; }

    public static List<Entry> of(String id) { return id == null ? null : STACKS.get(id); }

    public static List<Entry> edit(String id) {
        List<Entry> l = STACKS.get(id);
        if (l == null) {
            l = new CopyOnWriteArrayList<Entry>();
            STACKS.put(id, l);
        }
        return l;
    }

    public static void trim(String id) {
        List<Entry> l = STACKS.get(id);
        if (l != null && l.isEmpty()) STACKS.remove(id);
    }

    public static void copy(String from, String to) {
        List<Entry> l = of(from);
        if (l == null || l.isEmpty() || to == null || to.equals(from)) return;
        List<Entry> n = new CopyOnWriteArrayList<Entry>();
        for (Entry e : l) n.add(e.dup());
        STACKS.put(to, n);
    }

    public static JSONArray toJson(String id) {
        List<Entry> l = of(id);
        if (l == null || l.isEmpty()) return null;
        JSONArray a = new JSONArray();
        try {
            for (Entry e : l) a.put(new JSONArray().put(e.fx).put((double) e.a).put((double) e.b).put((double) e.amt));
        } catch (JSONException ex) {
            return null;
        }
        return a;
    }

    public static void fromJson(String id, JSONArray a) {
        if (a == null || a.length() == 0) return;
        List<Entry> l = new CopyOnWriteArrayList<Entry>();
        for (int i = 0; i < a.length(); i++) {
            JSONArray r = a.optJSONArray(i);
            if (r == null || r.length() < 4) continue;
            Entry e = new Entry();
            e.fx = r.optInt(0);
            e.a = (float) r.optDouble(1, 0.0);
            e.b = (float) r.optDouble(2, 1.0);
            e.amt = (float) r.optDouble(3, 1.0);
            l.add(e);
        }
        if (!l.isEmpty()) STACKS.put(id, l);
    }
}
