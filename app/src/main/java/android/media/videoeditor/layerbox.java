package android.media.videoeditor;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.ActionMode;
import android.view.Gravity;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.Toast;

public class layerbox extends FrameLayout {
    static final int M_DEL = 0x6c000001, M_DUP = 0x6c000002, M_VOL = 0x6c000003, M_CHROMA = 0x6c000004, M_OPACITY = 0x6c000005, M_MOVE = 0x6c000006;
    private static final float MIN_SIZE = 0.05f;
    private static final float MIN_BOX_DP = 10f;
    private static final float HANDLE_DP = 9f;
    private static final float HANDLE_DOT_DP = 3.5f;
    private static final float HANDLE_HIT_DP = 30f;
    private static final float GRAB_MARGIN_DP = 14f;
    private static final float SNAP_RANGE = 0.02f;
    private static final int THUMB_ALPHA = 200;
    private final float density;
    private final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final RectF box = new RectF();
    private final ScaleGestureDetector sg;
    private VideoEditorImpl ve;
    private pipa.Layer p;
    private ActionMode mode;
    private int drag;
    private float offX, offY;
    private boolean picking, snapX, snapY, hidden;

    public layerbox(Context c) {
        super(c);
        density = c.getResources().getDisplayMetrics().density;
        setWillNotDraw(false);
        sg = new ScaleGestureDetector(c, new ScaleGestureDetector.SimpleOnScaleGestureListener() {
            @Override public boolean onScale(ScaleGestureDetector g) {
                if (p == null) return false;
                hideOnce();
                p.size = Math.max(MIN_SIZE, Math.min(1f, p.size * g.getScaleFactor()));
                invalidate();
                return true;
            }
        });
        setVisibility(GONE);
    }

    private Activity activity() {
        Context c = getContext();
        while (c instanceof ContextWrapper) {
            if (c instanceof Activity) return (Activity) c;
            c = ((ContextWrapper) c).getBaseContext();
        }
        return null;
    }

    private Drawable icon(String name, boolean on) {
        try {
            int id = getResources().getIdentifier(name, "drawable", getContext().getPackageName());
            if (id == 0) return null;
            Drawable dr = getResources().getDrawable(id).mutate();
            if (on) dr.setColorFilter(0xFF33B5E5, PorterDuff.Mode.SRC_ATOP);
            return dr;
        } catch (RuntimeException e) {
            return null;
        }
    }

    private void hideOnce() {
        if (hidden || picking || ve == null || p == null) return;
        hidden = true;
        ve.hideLayer(p.id);
    }

    private void persist() {
        hidden = false;
        if (ve != null) ve.hiddenId = null;
        try {
            if (ve != null) { ve.endEdit(); ve.save(); ve.rerender(); }
        } catch (Exception ignored) { }
    }

    void setLayer(VideoEditorImpl e, pipa.Layer layer) {
        ve = e;
        p = layer;
        picking = false;
        setVisibility(layer == null ? GONE : VISIBLE);
        if (layer != null) bringToFront();
        if (layer == null) {
            hidden = false;
            if (e != null) e.hiddenId = null;
            if (mode != null) mode.finish();
        } else if (mode == null) {
            Activity a = activity();
            if (a != null) {
                mode = a.startActionMode(cb);
                kitkatorial.maybeLayer(a);
            }
        } else {
            mode.invalidate();
        }
        invalidate();
    }

    private final ActionMode.Callback cb = new ActionMode.Callback() {
        @Override public boolean onCreateActionMode(ActionMode m, Menu menu) {
            add(menu, M_DEL, 1, "Delete", "vs_ov_del", MenuItem.SHOW_AS_ACTION_NEVER);
            add(menu, M_MOVE, 2, "Move", "vs_ov_move", MenuItem.SHOW_AS_ACTION_IF_ROOM | MenuItem.SHOW_AS_ACTION_WITH_TEXT);
            add(menu, M_DUP, 3, "Duplicate", "vs_ov_copy", MenuItem.SHOW_AS_ACTION_IF_ROOM | MenuItem.SHOW_AS_ACTION_WITH_TEXT);
            add(menu, M_VOL, 4, "Sound", "vs_ov_vol", MenuItem.SHOW_AS_ACTION_IF_ROOM | MenuItem.SHOW_AS_ACTION_WITH_TEXT);
            add(menu, M_CHROMA, 5, "Chroma", "vs_ov_chroma", MenuItem.SHOW_AS_ACTION_IF_ROOM | MenuItem.SHOW_AS_ACTION_WITH_TEXT);
            add(menu, M_OPACITY, 6, "Opacity", "vs_ov_opacity", MenuItem.SHOW_AS_ACTION_IF_ROOM | MenuItem.SHOW_AS_ACTION_WITH_TEXT);
            return true;
        }

        @Override public boolean onPrepareActionMode(ActionMode m, Menu menu) {
            if (p == null) return false;
            MenuItem v = menu.findItem(M_VOL);
            if (v != null) {
                v.setVisible(p.video);
                v.setIcon(icon(p.sound ? "vs_ov_vol" : "vs_ov_mute", false));
            }
            MenuItem ch = menu.findItem(M_CHROMA);
            if (ch != null) ch.setIcon(icon("vs_ov_chroma", p.chroma));
            return true;
        }

        @Override public boolean onActionItemClicked(ActionMode m, MenuItem item) {
            if (p == null || ve == null) return true;
            switch (item.getItemId()) {
                case M_DEL:
                    ve.beginEdit();
                    ve.removeLayer(p.id);
                    persist();
                    layertrack.deselect();
                    return true;
                case M_DUP: {
                    ve.beginEdit();
                    pipa.Layer q = p.dup();
                    q.id = null;
                    q.row = ve.freeRow(q.start, q.end, null);
                    q.centerX = Math.min(1f, q.centerX + 0.06f);
                    q.centerY = Math.min(1f, q.centerY + 0.06f);
                    ve.putLayer(q);
                    persist();
                    layertrack.selectLayer(q);
                    return true;
                }
                case M_VOL:
                    ve.beginEdit();
                    p.sound = !p.sound;
                    persist();
                    m.invalidate();
                    return true;
                case M_CHROMA:
                    if (p.chroma) {
                        chromaDialog();
                        return true;
                    }
                    ve.beginEdit();
                    p.chroma = true;
                    picking = true;
                    Toast.makeText(getContext(), lang.tr("Tap the color to remove"), Toast.LENGTH_SHORT).show();
                    persist();
                    m.invalidate();
                    invalidate();
                    return true;
                case M_OPACITY:
                    opacityDialog();
                    return true;
                case M_MOVE:
                    picking = false;
                    movepanel.show(activity(), layerbox.this, ve, p);
                    return true;
                default:
                    return false;
            }
        }

        @Override public void onDestroyActionMode(ActionMode m) {
            mode = null;
            if (p != null) layertrack.deselect();
        }
    };

    private void add(Menu menu, int id, int order, String title, String icon, int show) {
        MenuItem it = menu.add(0, id, order, lang.tr(title));
        it.setIcon(icon(icon, false));
        it.setShowAsAction(show);
    }

    private void chromaDialog() {
        Activity a = activity();
        if (a == null || p == null) return;
        if (ve != null) ve.beginEdit();
        SeekBar sb = new SeekBar(a);
        sb.setMax(85);
        sb.setProgress(Math.max(0, Math.min(85, Math.round(p.tol * 100f) - 5)));
        sb.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            @Override public void onProgressChanged(SeekBar s, int v, boolean user) {
                if (user && p != null) { p.tol = (v + 5) / 100f; if (ve != null) ve.rerender(); }
            }
            @Override public void onStartTrackingTouch(SeekBar s) { }
            @Override public void onStopTrackingTouch(SeekBar s) { }
        });
        LinearLayout w = new LinearLayout(a);
        int pd = (int) (16 * density);
        w.setPadding(pd, pd, pd, pd);
        w.addView(sb, new LinearLayout.LayoutParams(-1, -2));
        AlertDialog dlg = new AlertDialog.Builder(a)
                .setTitle(lang.tr("Chroma") + " - " + lang.tr("Strength"))
                .setView(w)
                .setPositiveButton(lang.tr("Done"), null)
                .setNeutralButton(lang.tr("Pick color"), new android.content.DialogInterface.OnClickListener() {
                    @Override public void onClick(android.content.DialogInterface di, int which) {
                        picking = true;
                        Toast.makeText(getContext(), lang.tr("Tap the color to remove"), Toast.LENGTH_SHORT).show();
                        invalidate();
                    }
                })
                .setNegativeButton(lang.tr("Turn off"), new android.content.DialogInterface.OnClickListener() {
                    @Override public void onClick(android.content.DialogInterface di, int which) {
                        if (p != null) p.chroma = false;
                        picking = false;
                        if (mode != null) mode.invalidate();
                        invalidate();
                    }
                })
                .create();
        dlg.setOnDismissListener(new android.content.DialogInterface.OnDismissListener() {
            @Override public void onDismiss(android.content.DialogInterface di) { persist(); }
        });
        dlg.show();
        if (dlg.getWindow() != null) {
            dlg.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_DIM_BEHIND);
            dlg.getWindow().setGravity(Gravity.BOTTOM);
        }
    }

    private void opacityDialog() {
        Activity a = activity();
        if (a == null || p == null) return;
        if (ve != null) ve.beginEdit();
        SeekBar sb = new SeekBar(a);
        sb.setMax(95);
        sb.setProgress(Math.max(0, Math.min(95, Math.round(p.opacity * 100f) - 5)));
        sb.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            @Override public void onProgressChanged(SeekBar s, int v, boolean user) {
                if (user && p != null) { p.opacity = (v + 5) / 100f; if (ve != null) ve.rerender(); invalidate(); }
            }
            @Override public void onStartTrackingTouch(SeekBar s) { }
            @Override public void onStopTrackingTouch(SeekBar s) { }
        });
        LinearLayout w = new LinearLayout(a);
        int pd = (int) (16 * density);
        w.setPadding(pd, pd, pd, pd);
        w.addView(sb, new LinearLayout.LayoutParams(-1, -2));
        AlertDialog dlg = new AlertDialog.Builder(a)
                .setTitle(lang.tr("Opacity"))
                .setView(w)
                .setPositiveButton(lang.tr("Done"), null)
                .create();
        dlg.setOnDismissListener(new android.content.DialogInterface.OnDismissListener() {
            @Override public void onDismiss(android.content.DialogInterface di) { persist(); }
        });
        dlg.show();
        if (dlg.getWindow() != null) {
            dlg.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_DIM_BEHIND);
            dlg.getWindow().setGravity(Gravity.BOTTOM);
        }
    }

    @Override
    protected void onDraw(Canvas cv) {
        if (p == null) return;
        float w = getWidth(), h = getHeight();
        Bitmap th = layertrack.thumbOf(p);
        float asp = layertrack.aspectOf(p);
        float bw = Math.max(MIN_BOX_DP * density, p.size * w), bh = bw / asp;
        box.set(p.centerX * w - bw / 2f, p.centerY * h - bh / 2f, p.centerX * w + bw / 2f, p.centerY * h + bh / 2f);
        paint.setStyle(Paint.Style.FILL);
        if (th != null) {
            paint.setAlpha(THUMB_ALPHA);
            cv.drawBitmap(th, null, box, paint);
            paint.setAlpha(255);
        }
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(2f * density);
        paint.setColor(picking ? 0xFFFFBB33 : 0xFF33B5E5);
        cv.drawRect(box, paint);
        paint.setStrokeWidth(1.5f * density);
        paint.setColor(0xFFFFBB33);
        if (snapX) cv.drawLine(w / 2f, 0, w / 2f, h, paint);
        if (snapY) cv.drawLine(0, h / 2f, w, h / 2f, paint);
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(0xFF33B5E5);
        cv.drawCircle(box.right, box.bottom, HANDLE_DP * density, paint);
        paint.setColor(0xFFFFFFFF);
        cv.drawCircle(box.right, box.bottom, HANDLE_DOT_DP * density, paint);
    }

    private boolean hitBox(float x, float y) {
        float s = GRAB_MARGIN_DP * density;
        return x >= box.left - s && x <= box.right + s && y >= box.top - s && y <= box.bottom + s;
    }

    boolean active() { return p != null && getVisibility() == VISIBLE; }

    boolean fromSurface(View v, MotionEvent ev) {
        if (!active()) return false;

        MotionEvent c = MotionEvent.obtain(ev);
        c.offsetLocation(v.getLeft() - getLeft(), v.getTop() - getTop());
        try {
            return handle(c);
        } finally {
            c.recycle();
        }
    }

    @Override
    public boolean onTouchEvent(MotionEvent e) {
        return handle(e);
    }

    private boolean handle(MotionEvent e) {
        if (p == null) return false;
        sg.onTouchEvent(e);
        if (sg.isInProgress()) {
            drag = 0;
            return true;
        }
        float w = Math.max(1f, getWidth()), h = Math.max(1f, getHeight());
        float x = e.getX(), y = e.getY();
        switch (e.getActionMasked()) {
            case MotionEvent.ACTION_DOWN: {

                float dx = x - box.right, dy = y - box.bottom;
                if (!picking && Math.sqrt(dx * dx + dy * dy) < HANDLE_HIT_DP * density) {
                    drag = 2;
                } else if (hitBox(x, y)) {
                    drag = 1;
                    offX = p.centerX * w - x;
                    offY = p.centerY * h - y;
                } else {
                    drag = 0;
                    return false;
                }
                if (ve != null) ve.beginEdit();
                getParent().requestDisallowInterceptTouchEvent(true);
                return true;
            }
            case MotionEvent.ACTION_MOVE: {
                if (picking) return true;
                if (drag != 0) hideOnce();
                if (drag == 2) {
                    p.size = Math.max(MIN_SIZE, Math.min(1f, 2f * (x - p.centerX * w) / w));
                } else if (drag == 1) {
                    float nx = Math.max(0f, Math.min(1f, (x + offX) / w));
                    float ny = Math.max(0f, Math.min(1f, (y + offY) / h));
                    snapX = Math.abs(nx - 0.5f) < SNAP_RANGE;
                    snapY = Math.abs(ny - 0.5f) < SNAP_RANGE;
                    p.centerX = snapX ? 0.5f : nx;
                    p.centerY = snapY ? 0.5f : ny;
                }
                invalidate();
                return true;
            }
            case MotionEvent.ACTION_UP: {
                if (picking && box.contains(x, y)) {
                    Bitmap th = layertrack.thumbOf(p);
                    if (th != null) {
                        int px = Math.max(0, Math.min(th.getWidth() - 1, (int) ((x - box.left) / box.width() * th.getWidth())));
                        int py = Math.max(0, Math.min(th.getHeight() - 1, (int) ((y - box.top) / box.height() * th.getHeight())));
                        p.key = th.getPixel(px, py) & 0xFFFFFF;
                        picking = false;
                    }
                }
                snapX = snapY = false;
                drag = 0;
                persist();
                invalidate();
                return true;
            }
            default:
                drag = 0;
                snapX = snapY = false;
                persist();
                invalidate();
                return true;
        }
    }
}
