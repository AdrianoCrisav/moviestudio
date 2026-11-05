package android.media.videoeditor;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.DialogInterface;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.Toast;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;

public final class volcurve {
    private volcurve() {}

    private static final Map<String, float[]> PTS = new ConcurrentHashMap<String, float[]>();
    private static final Map<String, Float> NORM = new ConcurrentHashMap<String, Float>();

    public static float normOf(String id) { Float f = id == null ? null : NORM.get(id); return f == null ? 1f : f; }
    public static void normFor(String id, float g) { if (id == null) return; if (Math.abs(g - 1f) < 0.001f) NORM.remove(id); else NORM.put(id, g); }
    public static float[] get(String id) { return id == null ? null : PTS.get(id); }
    public static void set(String id, float[] p) { if (id == null) return; if (p == null) PTS.remove(id); else PTS.put(id, p); }

    public static void copy(String from, String to) {
        set(to, get(from));
        normFor(to, normOf(from));
    }

    static float at(float[] p, float f) {
        if (p == null || p.length < 2) return 1f;
        if (f <= p[0]) return p[1];
        for (int i = 2; i < p.length; i += 2) {
            if (f <= p[i]) {
                float x0 = p[i - 2], x1 = p[i];
                float t = x1 > x0 ? (f - x0) / (x1 - x0) : 0f;
                return p[i - 1] + (p[i + 1] - p[i - 1]) * t;
            }
        }
        return p[p.length - 1];
    }

    public static float gain(String id, long relMs, long lenMs) {
        float[] p = get(id);
        if (p == null) return 1f;
        return at(p, lenMs > 0 ? relMs / (float) lenMs : 0f);
    }

    static float[] slice(float[] p, float a, float b) {
        if (p == null || b <= a) return null;
        ArrayList<Float> o = new ArrayList<Float>();
        o.add(0f);
        o.add(at(p, a));
        for (int i = 0; i < p.length; i += 2) {
            if (p[i] > a && p[i] < b) {
                o.add((p[i] - a) / (b - a));
                o.add(p[i + 1]);
            }
        }
        o.add(1f);
        o.add(at(p, b));
        float[] r = new float[o.size()];
        for (int i = 0; i < r.length; i++) r[i] = o.get(i);
        return r;
    }

    public static void split(String oldId, String newId, float s) {
        float[] p = get(oldId);
        normFor(newId, normOf(oldId));
        if (p == null || s <= 0f || s >= 1f) return;
        set(newId, slice(p, s, 1f));
        set(oldId, slice(p, 0f, s));
    }

    public static JSONArray toJson(String id) {
        float[] p = get(id);
        if (p == null) return null;
        JSONArray a = new JSONArray();
        try {
            for (float f : p) a.put((double) f);
        } catch (JSONException e) {
            return null;
        }
        return a;
    }

    public static void fromJson(String id, JSONArray a, double norm) {
        if (a != null && a.length() >= 4 && a.length() % 2 == 0) {
            float[] p = new float[a.length()];
            for (int i = 0; i < p.length; i++) p[i] = (float) a.optDouble(i, 1.0);
            set(id, p);
        }
        normFor(id, (float) norm);
    }

    private static void persist(String project) {
        try {
            VideoEditorImpl e = VideoEditorImpl.find(project);
            if (e != null) e.save();
        } catch (Exception ignored) { }
    }

    public static void ask(Context c, final String project, final String itemId) {
        Context k = c;
        while (k instanceof ContextWrapper && !(k instanceof Activity)) k = ((ContextWrapper) k).getBaseContext();
        if (!(k instanceof Activity)) return;
        final Activity act = (Activity) k;
        VideoEditorImpl ve = VideoEditorImpl.find(project);
        MediaItem mi = ve == null ? null : ve.getMediaItem(itemId);
        if (!(mi instanceof MediaVideoItem)) return;
        final MediaVideoItem v = (MediaVideoItem) mi;
        final float d = act.getResources().getDisplayMetrics().density;
        final CurveView cv = new CurveView(act, v.getTimelineDuration());
        cv.setPoints(get(itemId));
        LinearLayout root = new LinearLayout(act);
        root.setOrientation(LinearLayout.VERTICAL);
        int pad = (int) (16 * d);
        root.setPadding(pad, pad / 2, pad, 0);
        root.addView(cv, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, (int) (200 * d)));
        final CheckBox cb = new CheckBox(act);
        cb.setText(lang.tr("Normalize"));
        cb.setChecked(Math.abs(normOf(itemId) - 1f) > 0.001f);
        root.addView(cb);
        final TextView lbl = new TextView(act);
        final SeekBar sb = new SeekBar(act);
        sb.setMax(12);
        sb.setProgress(1);
        lbl.setText(lang.tr("Target peak: -1 dB"));
        sb.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            @Override public void onProgressChanged(SeekBar s, int p, boolean u) { lbl.setText(lang.tr("Target peak: -") + p + " dB"); }
            @Override public void onStartTrackingTouch(SeekBar s) { }
            @Override public void onStopTrackingTouch(SeekBar s) { }
        });
        root.addView(lbl);
        root.addView(sb);
        final AlertDialog dlg = new AlertDialog.Builder(act).setTitle(lang.tr("Volume curve")).setView(root)
                .setPositiveButton(lang.tr("Apply"), null).setNeutralButton(lang.tr("Reset"), null)
                .setNegativeButton(lang.tr("Cancel"), null).create();
        dlg.show();
        dlg.getButton(DialogInterface.BUTTON_NEUTRAL).setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View b) { cv.setPoints(null); }
        });
        dlg.getButton(DialogInterface.BUTTON_POSITIVE).setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View b) {
                set(itemId, cv.points());
                if (cb.isChecked()) analyze(act, project, v, itemId, sb.getProgress());
                else normFor(itemId, 1f);
                persist(project);
                dlg.dismiss();
            }
        });
    }

    private static void analyze(final Activity act, final String project, final MediaVideoItem v, final String id, final int db) {
        Toast.makeText(act, lang.tr("Analyzing audio..."), Toast.LENGTH_SHORT).show();
        new Thread(new Runnable() {
            @Override public void run() {
                String msg;
                try {
                    float pk = pene.peak(v.getFilename(), v.fileBegin() * 1000L, v.fileEnd() * 1000L);
                    if (pk < 0.001f) {
                        msg = lang.tr("No audio to normalize");
                    } else {
                        float g = (float) Math.pow(10.0, -db / 20.0) / pk;
                        g = Math.max(0.1f, Math.min(8f, g));
                        normFor(id, g);
                        persist(project);
                        msg = String.format(java.util.Locale.US, lang.tr("Normalized (%+.1f dB)"), 20.0 * Math.log10(g));
                    }
                } catch (Throwable t) {
                    msg = lang.tr("Couldn't analyze the audio");
                }
                final String m = msg;
                act.runOnUiThread(new Runnable() {
                    @Override public void run() { Toast.makeText(act, m, Toast.LENGTH_SHORT).show(); }
                });
            }
        }).start();
    }

    private static final class CurveView extends View {
        private final ArrayList<float[]> p = new ArrayList<float[]>();
        private final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final long lenMs;
        private final float d;
        private int drag = -1;
        private boolean moved, added;
        private float downX, downY;

        CurveView(Context c, long lenMs) {
            super(c);
            this.lenMs = lenMs;
            this.d = c.getResources().getDisplayMetrics().density;
            setPoints(null);
        }

        void setPoints(float[] a) {
            p.clear();
            if (a == null || a.length < 4) {
                p.add(new float[] {0f, 1f});
                p.add(new float[] {1f, 1f});
            } else {
                for (int i = 0; i + 1 < a.length; i += 2) p.add(new float[] {a[i], a[i + 1]});
            }
            invalidate();
        }

        float[] points() {
            if (p.size() == 2 && Math.abs(p.get(0)[1] - 1f) < 0.001f && Math.abs(p.get(1)[1] - 1f) < 0.001f) return null;
            float[] r = new float[p.size() * 2];
            for (int i = 0; i < p.size(); i++) { r[i * 2] = p.get(i)[0]; r[i * 2 + 1] = p.get(i)[1]; }
            return r;
        }

        private float pad() { return 16 * d; }
        private float xOf(float f) { return pad() + f * (getWidth() - 2 * pad()); }
        private float yOf(float g) { return pad() + (1f - g / 2f) * (getHeight() - 2 * pad()); }
        private float fOf(float x) { return Math.max(0f, Math.min(1f, (x - pad()) / (getWidth() - 2 * pad()))); }
        private float gOf(float y) { return Math.max(0f, Math.min(2f, (1f - (y - pad()) / (getHeight() - 2 * pad())) * 2f)); }

        @Override protected void onDraw(Canvas c) {
            c.drawColor(0xFF222222);
            paint.setTextSize(11 * d);
            paint.setStrokeWidth(1f);
            for (int g = 0; g <= 2; g++) {
                paint.setColor(g == 1 ? 0x99FFFFFF : 0x44FFFFFF);
                c.drawLine(pad(), yOf(g), getWidth() - pad(), yOf(g), paint);
                paint.setColor(0xAAFFFFFF);
                c.drawText((g * 100) + "%", 2 * d, yOf(g) - 2 * d, paint);
            }
            paint.setColor(0xFF33B5E5);
            paint.setStrokeWidth(3 * d);
            for (int i = 1; i < p.size(); i++) c.drawLine(xOf(p.get(i - 1)[0]), yOf(p.get(i - 1)[1]), xOf(p.get(i)[0]), yOf(p.get(i)[1]), paint);
            for (int i = 0; i < p.size(); i++) {
                paint.setColor(i == drag ? 0xFFFFFFFF : 0xFF0099CC);
                c.drawCircle(xOf(p.get(i)[0]), yOf(p.get(i)[1]), 7 * d, paint);
            }
            if (drag >= 0 && drag < p.size()) {
                float[] q = p.get(drag);
                paint.setColor(0xFFFFFFFF);
                paint.setTextSize(13 * d);
                c.drawText(String.format(java.util.Locale.US, "%.1fs  %d%%", q[0] * lenMs / 1000f, Math.round(q[1] * 100)), getWidth() / 2f - 30 * d, 14 * d, paint);
            }
        }

        @Override public boolean onTouchEvent(MotionEvent e) {
            float x = e.getX(), y = e.getY();
            switch (e.getActionMasked()) {
                case MotionEvent.ACTION_DOWN: {
                    if (getParent() != null) getParent().requestDisallowInterceptTouchEvent(true);
                    moved = false;
                    added = false;
                    downX = x;
                    downY = y;
                    drag = -1;
                    float best = 30 * d;
                    for (int i = 0; i < p.size(); i++) {
                        float dx = xOf(p.get(i)[0]) - x, dy = yOf(p.get(i)[1]) - y;
                        float dist = (float) Math.sqrt(dx * dx + dy * dy);
                        if (dist < best) { best = dist; drag = i; }
                    }
                    if (drag < 0) {
                        float f = fOf(x);
                        int at = p.size() - 1;
                        for (int i = 1; i < p.size(); i++) if (p.get(i)[0] > f) { at = i; break; }
                        p.add(at, new float[] {f, gOf(y)});
                        drag = at;
                        added = true;
                    }
                    invalidate();
                    return true;
                }
                case MotionEvent.ACTION_MOVE: {
                    if (Math.abs(x - downX) > 6 * d || Math.abs(y - downY) > 6 * d) moved = true;
                    if (drag >= 0 && moved) {
                        float[] q = p.get(drag);
                        float g = gOf(y);
                        if (Math.abs(g - 1f) < 0.04f) g = 1f;
                        q[1] = g;
                        if (drag > 0 && drag < p.size() - 1) {
                            q[0] = Math.max(p.get(drag - 1)[0] + 0.005f, Math.min(p.get(drag + 1)[0] - 0.005f, fOf(x)));
                        }
                        invalidate();
                    }
                    return true;
                }
                case MotionEvent.ACTION_UP:
                case MotionEvent.ACTION_CANCEL: {
                    if (drag > 0 && drag < p.size() - 1 && !moved && !added) p.remove(drag);
                    drag = -1;
                    invalidate();
                    return true;
                }
                default:
                    return true;
            }
        }
    }
}
