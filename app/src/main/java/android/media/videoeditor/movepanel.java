package android.media.videoeditor;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Handler;
import android.os.Looper;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;

final class movepanel {
    private static final float STEP = 0.004f;
    private static final float STEP_FAST = 0.012f;
    private static final int REPEAT_MS = 50;
    private static final int FAST_AFTER = 12;
    private static final float PAD_H_DP = 110f;
    private static final float MIN_SIZE = 0.05f;
    private final Activity act;
    private final layerbox host;
    private final VideoEditorImpl ve;
    private final pipa.Layer layer;
    private final float density;
    private final Handler handler = new Handler(Looper.getMainLooper());
    private TextView readout, sizeLabel;
    private PadView pad;
    private SeekBar sizeBar;
    private boolean hidden;

    private movepanel(Activity a, layerbox h, VideoEditorImpl e, pipa.Layer l) {
        act = a;
        host = h;
        ve = e;
        layer = l;
        density = a.getResources().getDisplayMetrics().density;
    }

    static void show(Activity a, layerbox h, VideoEditorImpl e, pipa.Layer l) {
        if (a == null || h == null || e == null || l == null) return;
        new movepanel(a, h, e, l).open();
    }

    private void hideOnce() {
        if (hidden) return;
        hidden = true;
        ve.hideLayer(layer.id);
    }

    private void release() {
        hidden = false;
        ve.hiddenId = null;
        ve.rerender();
    }

    private int dp(float v) { return Math.round(v * density); }

    private void open() {
        ve.beginEdit();
        LinearLayout root = new LinearLayout(act);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setPadding(dp(14), dp(10), dp(14), dp(6));

        LinearLayout top = new LinearLayout(act);
        top.setOrientation(LinearLayout.HORIZONTAL);
        top.setGravity(Gravity.CENTER_VERTICAL);
        float aspect = Math.max(0.3f, Math.min(3f, (float) Math.max(1, host.getWidth()) / Math.max(1, host.getHeight())));
        int padH = dp(PAD_H_DP);
        pad = new PadView(act);
        top.addView(pad, new LinearLayout.LayoutParams(Math.round(padH * aspect), padH));
        top.addView(buildArrows(), new LinearLayout.LayoutParams(-2, -2));
        ((LinearLayout.LayoutParams) top.getChildAt(1).getLayoutParams()).leftMargin = dp(18);
        root.addView(top, new LinearLayout.LayoutParams(-2, -2));

        readout = new TextView(act);
        readout.setPadding(0, dp(8), 0, 0);
        root.addView(readout, new LinearLayout.LayoutParams(-1, -2));

        sizeLabel = new TextView(act);
        root.addView(sizeLabel, new LinearLayout.LayoutParams(-1, -2));
        sizeBar = new SeekBar(act);
        sizeBar.setMax(95);
        sizeBar.setProgress(Math.max(0, Math.min(95, Math.round(layer.size * 100f) - 5)));
        sizeBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            @Override public void onProgressChanged(SeekBar s, int v, boolean user) {
                if (!user) return;
                hideOnce();
                layer.size = Math.max(MIN_SIZE, (v + 5) / 100f);
                refresh();
            }
            @Override public void onStartTrackingTouch(SeekBar s) { }
            @Override public void onStopTrackingTouch(SeekBar s) { release(); }
        });
        root.addView(sizeBar, new LinearLayout.LayoutParams(-1, -2));
        refresh();

        AlertDialog dlg = new AlertDialog.Builder(act)
                .setTitle(lang.tr("Move"))
                .setView(root)
                .setPositiveButton(lang.tr("Done"), null)
                .create();
        dlg.setOnDismissListener(new android.content.DialogInterface.OnDismissListener() {
            @Override public void onDismiss(android.content.DialogInterface di) {
                handler.removeCallbacksAndMessages(null);
                ve.hiddenId = null;
                ve.endEdit();
                try { ve.save(); } catch (Exception ignored) { }
                ve.rerender();
            }
        });
        dlg.show();
        if (dlg.getWindow() != null) {
            dlg.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_DIM_BEHIND);
            dlg.getWindow().setGravity(Gravity.BOTTOM);
        }
    }

    private View buildArrows() {
        LinearLayout col = new LinearLayout(act);
        col.setOrientation(LinearLayout.VERTICAL);
        col.setGravity(Gravity.CENTER_HORIZONTAL);
        col.addView(arrow("\u25B2", 0f, -1f));
        LinearLayout mid = new LinearLayout(act);
        mid.addView(arrow("\u25C0", -1f, 0f));
        Button c = cell("\u25CF");
        c.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View v) {
                layer.centerX = 0.5f;
                layer.centerY = 0.5f;
                refresh();
                ve.rerender();
            }
        });
        mid.addView(c);
        mid.addView(arrow("\u25B6", 1f, 0f));
        col.addView(mid);
        col.addView(arrow("\u25BC", 0f, 1f));
        return col;
    }

    private Button cell(String t) {
        Button b = new Button(act);
        b.setText(t);
        b.setMinWidth(0);
        b.setMinimumWidth(0);
        b.setPadding(0, 0, 0, 0);
        b.setLayoutParams(new LinearLayout.LayoutParams(dp(50), dp(42)));
        return b;
    }

    private Button arrow(String t, final float dx, final float dy) {
        Button b = cell(t);
        b.setOnTouchListener(new View.OnTouchListener() {
            private int ticks;
            private final Runnable tick = new Runnable() {
                @Override public void run() {
                    float s = ticks++ > FAST_AFTER ? STEP_FAST : STEP;
                    nudge(dx * s, dy * s);
                    handler.postDelayed(this, REPEAT_MS);
                }
            };
            @Override public boolean onTouch(View v, MotionEvent e) {
                switch (e.getActionMasked()) {
                    case MotionEvent.ACTION_DOWN:
                        ticks = 0;
                        v.setPressed(true);
                        handler.post(tick);
                        return true;
                    case MotionEvent.ACTION_UP:
                    case MotionEvent.ACTION_CANCEL:
                        v.setPressed(false);
                        handler.removeCallbacks(tick);
                        release();
                        return true;
                    default:
                        return true;
                }
            }
        });
        return b;
    }

    private void nudge(float dx, float dy) {
        hideOnce();
        layer.centerX = Math.max(0f, Math.min(1f, layer.centerX + dx));
        layer.centerY = Math.max(0f, Math.min(1f, layer.centerY + dy));
        refresh();
    }

    private void refresh() {
        readout.setText("X " + Math.round(layer.centerX * 100f) + "%    Y " + Math.round(layer.centerY * 100f) + "%");
        sizeLabel.setText(lang.tr("Size") + " " + Math.round(layer.size * 100f) + "%");
        pad.invalidate();
        host.invalidate();
    }

    private final class PadView extends View {
        private final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final RectF box = new RectF();
        private float lastX, lastY;

        PadView(Context c) { super(c); }

        @Override protected void onDraw(Canvas cv) {
            float w = getWidth(), h = getHeight();
            paint.setStyle(Paint.Style.FILL);
            paint.setColor(0xFF1A1A1A);
            cv.drawRect(0, 0, w, h, paint);
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeWidth(density);
            paint.setColor(0x4433B5E5);
            cv.drawLine(w / 2f, 0, w / 2f, h, paint);
            cv.drawLine(0, h / 2f, w, h / 2f, paint);
            Bitmap th = layertrack.thumbOf(layer);
            float asp = layertrack.aspectOf(layer);
            float bw = Math.max(6 * density, layer.size * w), bh = bw / asp;
            box.set(layer.centerX * w - bw / 2f, layer.centerY * h - bh / 2f, layer.centerX * w + bw / 2f, layer.centerY * h + bh / 2f);
            if (th != null) {
                paint.setStyle(Paint.Style.FILL);
                paint.setAlpha(200);
                cv.drawBitmap(th, null, box, paint);
                paint.setAlpha(255);
            }
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeWidth(2f * density);
            paint.setColor(0xFF33B5E5);
            cv.drawRect(box, paint);
            paint.setColor(0xFF444444);
            paint.setStrokeWidth(density);
            cv.drawRect(0, 0, w - 1, h - 1, paint);
        }

        @Override public boolean onTouchEvent(MotionEvent e) {
            float w = Math.max(1f, getWidth()), h = Math.max(1f, getHeight());
            switch (e.getActionMasked()) {
                case MotionEvent.ACTION_DOWN:
                    lastX = e.getX();
                    lastY = e.getY();
                    getParent().requestDisallowInterceptTouchEvent(true);
                    return true;
                case MotionEvent.ACTION_MOVE:
                    hideOnce();
                    layer.centerX = Math.max(0f, Math.min(1f, layer.centerX + (e.getX() - lastX) / w));
                    layer.centerY = Math.max(0f, Math.min(1f, layer.centerY + (e.getY() - lastY) / h));
                    lastX = e.getX();
                    lastY = e.getY();
                    refresh();
                    return true;
                case MotionEvent.ACTION_UP:
                case MotionEvent.ACTION_CANCEL:
                    release();
                    return true;
                default:
                    return true;
            }
        }
    }
}
