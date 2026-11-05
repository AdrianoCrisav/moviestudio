package android.media.videoeditor;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.media.MediaMetadataRetriever;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import java.io.File;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* Asi como en Kinemaster, w. Un saludo a la Isla Curifea. */
public class layertrack extends View {
    private static final int[] COL = {0xFF33B5E5, 0xFFAA66CC, 0xFF99CC00, 0xFFFFBB33};
    private static final int[] COL_D = {0xFF0099CC, 0xFF9933CC, 0xFF669900, 0xFFFF8800};
    private final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final RectF rc = new RectF();
    private final float density;
    private VideoEditorImpl ve;
    private String project;
    private String selId;
    private int mode, lastRows = 1;
    private float downX, downY;
    private boolean moved, scrollable;
    private float sy, sy0;
    private static final int ROW_EVEN = 0x14FFFFFF;
    private static final int ROW_ODD = 0x0AFFFFFF;
    private static final int ROW_LINE = 0x22FFFFFF;
    private static final int HINT_COLOR = 0xFFBBBBBB;
    private static final int LABEL_BAR = 0xAA000000;
    private static final int SNAP_COLOR = 0xFFFFBB33;
    private static final int SCROLL_COLOR = 0x99FFFFFF;
    private static final int THUMB_TINT = 0x66FFFFFF;
    private static final int HANDLE_IDLE = 0x88FFFFFF;
    private static final float ROW_NUM_DP = 10f;
    private static final float LABEL_DP = 9f;
    private static final float LABEL_BAR_DP = 13f;
    private static final float MIN_BLOCK_DP = 8f;
    private static final float BLOCK_PAD_DP = 3f;
    private static final float CORNER_DP = 2f;
    private static final float HANDLE_DP = 6f;
    private static final float HINT_PAD_DP = 8f;
    private static final float ROW_DP = 32f;
    private static final int THUMB_PX = 120;
    private static final int VIS = 4;
    private long snapAt = -1;
    private pipa.Layer grab, hitDown;
    private long oS, oE, oOff;
    private Bitmap icAdd;
    private static final Map<String, Bitmap> thumbs = new java.util.concurrent.ConcurrentHashMap<String, Bitmap>();
    private static final Set<String> loading = new HashSet<String>();
    private static final Map<String, Long> failedAt = new java.util.concurrent.ConcurrentHashMap<String, Long>();
    private static final Map<String, Integer> tries = new java.util.concurrent.ConcurrentHashMap<String, Integer>();
    private static final Map<String, Float> aspects = new java.util.concurrent.ConcurrentHashMap<String, Float>();
    private static layertrack cur;
    private layerbox ovl;
    private final Runnable tick = new Runnable() {
        @Override public void run() {
            int r = rowsVis();
            if (r != lastRows) { lastRows = r; requestLayout(); }
            sy = clampSy();
            invalidate();
            if (isAttachedToWindow()) postDelayed(this, 500);
        }
    };

    public layertrack(Context c) { this(c, null, 0); }
    public layertrack(Context c, AttributeSet a) { this(c, a, 0); }

    public layertrack(Context c, AttributeSet a, int s) {
        super(c, a, s);
        density = c.getResources().getDisplayMetrics().density;
        try {
            int id = getResources().getIdentifier("vs_layer_add", "drawable", c.getPackageName());
            if (id != 0) icAdd = BitmapFactory.decodeResource(getResources(), id);
        } catch (RuntimeException ignored) { }
    }

    private final android.view.ViewTreeObserver.OnScrollChangedListener sc = new android.view.ViewTreeObserver.OnScrollChangedListener() {
        @Override public void onScrollChanged() { if (scrollable) invalidate(); }
    };

    @Override protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        cur = this;
        getViewTreeObserver().addOnScrollChangedListener(sc);
        post(tick);
    }

    @Override protected void onDetachedFromWindow() {
        removeCallbacks(tick);
        try { getViewTreeObserver().removeOnScrollChangedListener(sc); } catch (RuntimeException ignored) { }
        if (cur == this) cur = null;
        super.onDetachedFromWindow();
    }

    private float rowH() { return ROW_DP * density; }
    private float rowTop(int r) { return r * rowH() - sy; }
    private int rowsVis() { return Math.min(VIS, rows()); }
    private float maxSy() { return Math.max(0, rows() - VIS) * rowH(); }
    private float clampSy() { return Math.max(0f, Math.min(maxSy(), sy)); }

    private void reveal(int r) {
        float top = r * rowH(), vis = VIS * rowH();
        if (top < sy) sy = top;
        else if (top + rowH() > sy + vis) sy = top + rowH() - vis;
        sy = clampSy();
    }

    private float visRight() {
        float off = 0;
        View v = this;
        while (true) {
            off += v.getLeft();
            android.view.ViewParent pr = v.getParent();
            if (!(pr instanceof View)) return getWidth();
            v = (View) pr;
            if (v instanceof android.widget.HorizontalScrollView) return v.getScrollX() + v.getWidth() - off;
        }
    }

    private int rows() {
        VideoEditorImpl e = ed();
        int m = -1;
        if (e != null) for (pipa.Layer p : e.getLayers()) m = Math.max(m, p.row);
        return Math.max(1, Math.min(VideoEditorImpl.MAX_ROWS, m + 2));
    }

    private VideoEditorImpl ed() {
        if (ve != null) return ve;
        try {
            View root = (View) getParent();
            int id = getResources().getIdentifier("timeline_media", "id", getContext().getPackageName());
            View m = root.findViewById(id);
            // alv el smali ya parece una mugrosa foid de tanto que no se deja tocar por inalcanzable. haremos que java haga setacc true para que entre
            Field f = m.getClass().getDeclaredField("mProject");
            f.setAccessible(true);
            Object pr = f.get(m);
            if (pr == null) return null;
            project = (String) pr.getClass().getMethod("getPath").invoke(pr);
            ve = VideoEditorImpl.find(project);
        } catch (Exception ignored) { }
        if (ve == null) { ve = VideoEditorImpl.LAST; if (ve != null) project = ve.getPath(); }
        return ve;
    }

    private int half() {
        Context k = getContext();
        while (k instanceof ContextWrapper && !(k instanceof Activity)) k = ((ContextWrapper) k).getBaseContext();
        try {
            if (k instanceof Activity) return ((Activity) k).getWindowManager().getDefaultDisplay().getWidth() / 2;
        } catch (RuntimeException ignored) { }
        return getResources().getDisplayMetrics().widthPixels / 2;
    }

    private int leftW() {
        try {
            View g = (View) getParent().getParent();
            // pos nomas quiero detectar el ancho y asi
            Object t = g.getTag(0x7f080000);
            if (t instanceof Integer) return (Integer) t;
        } catch (RuntimeException ignored) { }
        return half();
    }

    private float viewW() { return Math.max(1f, getWidth() - 2f * half()); }
    private float xOf(long ms, long dur) { return leftW() + ms * viewW() / dur; }
    private long msOf(float x, long dur) { return (long) ((x - leftW()) * dur / viewW()); }

    @Override
    protected void onMeasure(int w, int h) {
        int width = MeasureSpec.getSize(w);
        try {
            int id = getResources().getIdentifier("timeline_audio_tracks", "id", getContext().getPackageName());
            View a = ((View) getParent()).findViewById(id);
            if (a != null && a.getMeasuredWidth() > 0) width = a.getMeasuredWidth();
        } catch (RuntimeException ignored) { }
        setMeasuredDimension(width, Math.round(rowsVis() * rowH()));
    }

    private static String dec(long ms) { return (ms / 100) / 10f + " s"; }

    static Bitmap thumbOf(pipa.Layer p) { return cur == null ? thumbs.get(p.id + "|" + p.file) : cur.thumb(p); }

    static void deselect() { if (cur != null) cur.select(null); }

    static void selectLayer(pipa.Layer p) { if (cur != null) cur.select(p); }

    static void selectById(String id) {
        if (cur == null || cur.ve == null) return;
        for (pipa.Layer q : cur.ve.getLayers()) if (q.id.equals(id)) { cur.select(q); return; }
    }

    private void select(pipa.Layer p) {
        selId = p == null ? null : p.id;
        if (p != null) reveal(p.row);
        layerbox o = overlay();
        if (o != null) o.setLayer(ve, p);
        invalidate();
    }

    private layerbox overlay() {
        if (ovl != null) return ovl;
        try {
            int id = getResources().getIdentifier("video_frame_view", "id", getContext().getPackageName());
            View f = getRootView().findViewById(id);
            if (f instanceof android.widget.FrameLayout) {
                ovl = new layerbox(getContext());
                ((android.widget.FrameLayout) f).addView(ovl, new android.widget.FrameLayout.LayoutParams(-1, -1));
                int vid = getResources().getIdentifier("video_view", "id", getContext().getPackageName());
                View sv = f.findViewById(vid);
                if (sv != null) {
                    sv.setOnTouchListener(new View.OnTouchListener() {
                        @Override public boolean onTouch(View v, MotionEvent ev) {
                            layerbox o = ovl;
                            return o != null && o.fromSurface(v, ev);
                        }
                    });
                }
            }
        } catch (RuntimeException ignored) { }
        return ovl;
    }

    static Bitmap loadThumb(pipa.Layer p) {
        Bitmap r = null;
        try {
            if (p.video) {
                MediaMetadataRetriever m = new MediaMetadataRetriever();
                try {
                    m.setDataSource(p.file);
                    r = m.getFrameAtTime(p.offset * 1000L, MediaMetadataRetriever.OPTION_CLOSEST_SYNC);
                } finally {
                    MediaItem.quiet(m);
                }
            } else {
                BitmapFactory.Options o = new BitmapFactory.Options();
                o.inSampleSize = 8;
                r = BitmapFactory.decodeFile(p.file, o);
            }
            if (r != null && r.getHeight() > THUMB_PX) {
                float sc = (float) THUMB_PX / r.getHeight();
                r = Bitmap.createScaledBitmap(r, Math.max(1, Math.round(r.getWidth() * sc)), THUMB_PX, true);
            }
        } catch (Throwable t) {

            r = null;
        }

        if (r != null) thumbs.put(p.id + "|" + p.file, r);
        return r;
    }

    private Bitmap thumb(final pipa.Layer p) {
        final String k = p.id + "|" + p.file;
        Bitmap b = thumbs.get(k);
        if (b != null) return b;
        Integer n = tries.get(k);
        Long ft = failedAt.get(k);
        if (n != null && (n >= 4 || (ft != null && System.currentTimeMillis() - ft < 3000L))) return null;
        synchronized (loading) {
            if (!loading.add(k)) return null;
        }
        new Thread(new Runnable() {
            @Override public void run() {
                Bitmap r = loadThumb(p);
                if (r == null) {
                    Integer c = tries.get(k);
                    tries.put(k, c == null ? 1 : c + 1);
                    failedAt.put(k, System.currentTimeMillis());
                }
                synchronized (loading) { loading.remove(k); }
                postInvalidate();
                layertrack t = cur;
                if (t != null && t.ovl != null) t.ovl.postInvalidate();
            }
        }).start();
        return null;
    }

    static float aspectOf(pipa.Layer p) {
        String k = p.id + "|" + p.file;
        Bitmap t = thumbs.get(k);
        if (t != null && t.getHeight() > 0) return t.getWidth() / (float) t.getHeight();
        Float a = aspects.get(k);
        if (a != null) return a;
        float r = 16f / 9f;
        try {
            if (p.video) {
                MediaMetadataRetriever m = new MediaMetadataRetriever();
                try {
                    m.setDataSource(p.file);
                    int w = Integer.parseInt(m.extractMetadata(MediaMetadataRetriever.METADATA_KEY_VIDEO_WIDTH));
                    int h = Integer.parseInt(m.extractMetadata(MediaMetadataRetriever.METADATA_KEY_VIDEO_HEIGHT));
                    String rt = m.extractMetadata(MediaMetadataRetriever.METADATA_KEY_VIDEO_ROTATION);
                    int rot = rt == null ? 0 : Integer.parseInt(rt);
                    if (rot % 180 != 0) { int x = w; w = h; h = x; }
                    if (w > 0 && h > 0) r = w / (float) h;
                } finally {
                    MediaItem.quiet(m);
                }
            } else {
                BitmapFactory.Options o = new BitmapFactory.Options();
                o.inJustDecodeBounds = true;
                BitmapFactory.decodeFile(p.file, o);
                if (o.outWidth > 0 && o.outHeight > 0) r = o.outWidth / (float) o.outHeight;
                else return r;
            }
        } catch (Exception e) {
            return r;
        }
        aspects.put(k, r);
        return r;
    }

    @Override
    protected void onDraw(Canvas cv) {
        VideoEditorImpl e = ed();
        long dur = e == null ? 0 : e.getDuration();
        float rh = rowH();
        List<pipa.Layer> ls = e == null ? new ArrayList<pipa.Layer>() : e.getLayers();
        int rows = rows();
        scrollable = rows > VIS;
        sy = clampSy();
        drawRows(cv, ls, rows, rh);
        if (dur <= 0) return;
        for (pipa.Layer p : ls) drawBlock(cv, p, dur, rh);
        drawOverlays(cv, dur, rows);
    }

    private void drawRows(Canvas cv, List<pipa.Layer> ls, int rows, float rh) {
        paint.setStyle(Paint.Style.FILL);
        for (int r = 0; r < rows; r++) {
            boolean used = false;
            for (pipa.Layer p : ls) if (p.row == r) { used = true; break; }
            float y0 = rowTop(r);
            paint.setColor((r & 1) == 0 ? ROW_EVEN : ROW_ODD);
            cv.drawRect(0, y0, getWidth(), y0 + rh, paint);
            paint.setColor(ROW_LINE);
            cv.drawRect(0, y0 + rh - 1f, getWidth(), y0 + rh, paint);
            paint.setTextSize(ROW_NUM_DP * density);
            paint.setColor(COL[r % COL.length]);
            cv.drawText(String.valueOf(r + 1), Math.max(2 * density, leftW() - 16 * density), y0 + rh / 2f + 4 * density, paint);
            if (!used) {
                float x = leftW() + HINT_PAD_DP * density;
                if (icAdd != null) cv.drawBitmap(icAdd, x, y0 + (rh - icAdd.getHeight()) / 2f, null);
                paint.setColor(HINT_COLOR);
                cv.drawText(lang.tr("Add layer") + " (" + lang.tr("tap here") + ")", x + (icAdd == null ? 0 : icAdd.getWidth() + 6 * density), y0 + rh / 2f + 4 * density, paint);
            }
        }
    }

    private void drawBlock(Canvas cv, pipa.Layer p, long dur, float rh) {
        float x0 = xOf(p.start, dur), x1 = xOf(p.end, dur);
        float y0 = rowTop(p.row) + BLOCK_PAD_DP * density, y1 = rowTop(p.row) + rh - BLOCK_PAD_DP * density;
        rc.set(x0, y0, Math.max(x1, x0 + MIN_BLOCK_DP * density), y1);
        boolean sel = p.id != null && p.id.equals(selId);
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(COL_D[p.row % COL_D.length]);
        cv.drawRoundRect(rc, CORNER_DP * density, CORNER_DP * density, paint);
        cv.save();
        cv.clipRect(rc);
        Bitmap tb = thumb(p);
        if (tb != null) {
            float th = rc.height(), tw = th * tb.getWidth() / tb.getHeight();
            for (float x = rc.left; x < rc.right; x += tw) cv.drawBitmap(tb, null, new RectF(x, rc.top, x + tw, rc.bottom), null);
            paint.setColor(COL[p.row % COL.length] & THUMB_TINT);
            cv.drawRect(rc, paint);
        } else {
            paint.setColor(COL[p.row % COL.length]);
            cv.drawRect(rc, paint);
        }
        paint.setColor(LABEL_BAR);
        cv.drawRect(rc.left, rc.bottom - LABEL_BAR_DP * density, rc.right, rc.bottom, paint);
        paint.setTextSize(LABEL_DP * density);
        paint.setColor(0xFFFFFFFF);
        cv.drawText(new File(p.file).getName() + "  ·  " + dec(p.end - p.start), rc.left + 14 * density, rc.bottom - 3.5f * density, paint);
        cv.restore();
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth((sel ? 2f : 1f) * density);
        paint.setColor(sel ? 0xFFFFFFFF : COL[p.row % COL.length]);
        cv.drawRoundRect(rc, CORNER_DP * density, CORNER_DP * density, paint);
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(sel ? 0xFFFFFFFF : HANDLE_IDLE);
        float cy = (rc.top + rc.bottom) / 2f;
        cv.drawRect(rc.left + BLOCK_PAD_DP * density, cy - HANDLE_DP * density, rc.left + 5 * density, cy + HANDLE_DP * density, paint);
        cv.drawRect(rc.right - 5 * density, cy - HANDLE_DP * density, rc.right - BLOCK_PAD_DP * density, cy + HANDLE_DP * density, paint);
    }

    private void drawOverlays(Canvas cv, long dur, int rows) {
        if (snapAt >= 0) {
            paint.setColor(SNAP_COLOR);
            float x = xOf(snapAt, dur);
            cv.drawRect(x - 1f, 0, x + 1f, getHeight(), paint);
        }
        if (scrollable && maxSy() > 0) {
            float tr = getHeight(), th = Math.max(16f * density, tr * VIS / rows);
            float ty = (tr - th) * (sy / maxSy());
            float xr = Math.min(getWidth(), visRight());
            paint.setStyle(Paint.Style.FILL);
            paint.setColor(SCROLL_COLOR);
            rc.set(xr - 5f * density, ty, xr - 2f * density, ty + th);
            cv.drawRoundRect(rc, 2f * density, 2f * density, paint);
        }
    }

    private pipa.Layer hit(float x, float y, long dur) {
        VideoEditorImpl e = ed();
        if (e == null || dur <= 0) return null;
        int r = (int) ((y + sy) / rowH());
        for (pipa.Layer p : e.getLayers()) {
            if (p.row != r) continue;
            float x0 = xOf(p.start, dur), x1 = Math.max(xOf(p.end, dur), x0 + 8 * density);
            if (x >= x0 && x <= x1) return p;
        }
        return null;
    }

    private long snap(long ms, long dur, String except) {
        VideoEditorImpl e = ed();
        long thr = (long) (10 * density * dur / viewW());
        List<Long> c = new ArrayList<Long>();
        c.add(0L);
        c.add(dur);
        long t = 0;
        for (MediaItem it : e.getAllMediaItems()) { t += it.getTimelineDuration(); c.add(t); }
        for (pipa.Layer p : e.getLayers()) if (p.id != null && !p.id.equals(except)) { c.add(p.start); c.add(p.end); }
        long best = ms, bd = thr + 1;
        for (long v : c) if (Math.abs(v - ms) < bd) { bd = Math.abs(v - ms); best = v; }
        if (bd <= thr) { snapAt = best; return best; }
        return ms;
    }

    @Override
    public boolean onTouchEvent(MotionEvent event) {
        VideoEditorImpl editor = ed();
        long dur = editor == null ? 0 : editor.getDuration();
        if (dur <= 0) return false;
        float x = event.getX(), y = event.getY();
        switch (event.getActionMasked()) {
            case MotionEvent.ACTION_DOWN: touchDown(x, y, dur); break;
            case MotionEvent.ACTION_MOVE: touchMove(editor, x, y, dur); break;
            case MotionEvent.ACTION_UP: touchUp(x, dur); break;
            case MotionEvent.ACTION_CANCEL: touchCancel(); break;
        }
        return true;
    }

    private void touchDown(float x, float y, long dur) {
        downX = x; downY = y; moved = false; mode = 0; grab = null; snapAt = -1;
        hitDown = hit(x, y, dur);
        if (hitDown != null && hitDown.id != null) {
            if (!hitDown.id.equals(selId)) select(hitDown);
            float x0 = xOf(hitDown.start, dur), x1 = xOf(hitDown.end, dur);
            float edge = 26 * density;
            mode = x - x0 < edge ? 2 : (x1 - x < edge ? 3 : 1);
            grab = hitDown;
            if (ve != null) ve.beginEdit();
            oS = grab.start; oE = grab.end; oOff = grab.offset;
            getParent().requestDisallowInterceptTouchEvent(true);
        } else if (maxSy() > 0) {
            mode = 4;
            sy0 = sy;
        }
    }

    private void touchMove(VideoEditorImpl editor, float x, float y, long dur) {
        if (Math.abs(x - downX) > 8 * density || Math.abs(y - downY) > 8 * density) moved = true;
        if (mode == 4) {
            scrollRows(x, y);
            return;
        }
        if (mode == 0 || grab == null || !moved) return;
        snapAt = -1;
        long deltaMs = msOf(x, dur) - msOf(downX, dur);
        if (mode == 1) moveBlock(editor, y, dur, deltaMs);
        else if (mode == 2) trimStart(dur, deltaMs);
        else grab.end = Math.max(oS + 300L, Math.min(dur, snap(oE + deltaMs, dur, grab.id)));
        if (ve != null) ve.rerender();
        invalidate();
    }

    private void scrollRows(float x, float y) {
        if (moved && Math.abs(y - downY) >= Math.abs(x - downX)) {
            getParent().requestDisallowInterceptTouchEvent(true);
            sy = Math.max(0f, Math.min(maxSy(), sy0 + downY - y));
            invalidate();
        }
    }

    private void moveBlock(VideoEditorImpl editor, float y, long dur, long deltaMs) {
        long len = oE - oS;
        long newStart = Math.max(0L, Math.min(dur - len, oS + deltaMs));
        long snapped = snap(newStart, dur, grab.id);
        if (snapAt < 0) snapped = snap(newStart + len, dur, grab.id) - len;
        newStart = Math.max(0L, Math.min(dur - len, snapped));
        grab.start = newStart;
        grab.end = newStart + len;
        int row = Math.max(0, Math.min(rows() - 1, (int) ((y + sy) / rowH())));
        if (row != grab.row && editor.rowFree(row, grab.start, grab.end, grab.id)) grab.row = row;
    }

    private void trimStart(long dur, long deltaMs) {
        long newStart = Math.max(0L, Math.min(oE - 300L, snap(oS + deltaMs, dur, grab.id)));
        if (grab.video) newStart = Math.max(newStart, oS - oOff);
        grab.start = newStart;
        if (grab.video) grab.offset = oOff + (newStart - oS);
    }

    private void touchUp(float x, long dur) {
        snapAt = -1;
        if (mode != 0 && grab != null) {
            if (moved) persist(); else if (ve != null) ve.endEdit();
        } else if (!moved) {
            if (selId != null) {
                select(null);
            } else {
                long t = Math.max(0L, msOf(x, dur));
                addAt(getContext(), project, t, t + 3000L);
            }
        }
        mode = 0; grab = null;
        invalidate();
    }

    private void touchCancel() {
        snapAt = -1;
        if (grab != null && moved) persist();
        mode = 0; grab = null;
        invalidate();
    }

    private void persist() {
        try {
            if (ve != null) { ve.endEdit(); ve.save(); ve.rerender(); }
        } catch (Exception ignored) { }
    }

    private static Object projectOf(android.app.Activity activity) {
        Object proj = null;
        try {
            for (Class<?> k = activity.getClass(); k != null && proj == null; k = k.getSuperclass()) {
                try {
                    java.lang.reflect.Field f = k.getDeclaredField("mProject");
                    f.setAccessible(true);
                    proj = f.get(activity);
                } catch (NoSuchFieldException ignored) { }
            }
        } catch (Exception ignored) { }
        return proj;
    }

    private static void step(android.app.Activity activity, boolean undo) {
        try {
            Object proj = projectOf(activity);
            VideoEditorImpl ve = proj == null ? VideoEditorImpl.LAST : VideoEditorImpl.find((String) proj.getClass().getMethod("getPath").invoke(proj));
            if (ve == null) ve = VideoEditorImpl.LAST;
            if (ve == null) return;
            if (!(undo ? ve.undo() : ve.redo())) {
                android.widget.Toast.makeText(activity, lang.tr(undo ? "Nothing to undo" : "Nothing to redo"), android.widget.Toast.LENGTH_SHORT).show();
                return;
            }
            deselect();
            try { ve.save(); } catch (Exception ignored) { }
            ve.rerender();
            if (cur != null) cur.invalidate();
        } catch (Exception ignored) { }
    }

    public static void undoFromMenu(android.app.Activity activity) { step(activity, true); }

    public static void redoFromMenu(android.app.Activity activity) { step(activity, false); }

    public static void addFromMenu(android.app.Activity activity) {
        try {
            Object proj = projectOf(activity);
            if (proj == null) return;
            String path = (String) proj.getClass().getMethod("getPath").invoke(proj);
            long pos = ((Number) proj.getClass().getMethod("getPlayheadPos").invoke(proj)).longValue();
            VideoEditorImpl ve = VideoEditorImpl.find(path);
            if (ve == null || ve.getDuration() <= 0) {
                android.widget.Toast.makeText(activity, lang.tr("Add a clip first"), android.widget.Toast.LENGTH_SHORT).show();
                return;
            }
            addAt(activity, path, pos, pos + 3000L);
        } catch (Exception ignored) { }
    }

    public static void addAt(final Context context, String project, long from, long to) {
        final VideoEditorImpl ve = VideoEditorImpl.find(project);
        if (ve == null) return;
        long total = ve.getDuration();
        if (total <= 0) return;
        final long end = Math.min(total, to);
        final long start = Math.max(0L, Math.min(from, end - 500L));
        pipdick.cb = new pipdick.Got() {
            @Override public void got(String path, boolean video) {
                ve.beginEdit();
                pipa.Layer layer = new pipa.Layer();
                layer.file = path;
                layer.video = video;
                layer.start = start;
                layer.end = end;
                layer.centerX = 0.7f;
                layer.centerY = 0.3f;
                layer.size = 0.35f;
                layer.row = ve.freeRow(start, end, null);
                ve.putLayer(layer);
                ve.endEdit();
                try { ve.save(); } catch (Exception ignored) { }
                selectLayer(layer);
                ve.rerender();
            }
        };
        context.startActivity(new android.content.Intent(context, pipdick.class));
    }
}
