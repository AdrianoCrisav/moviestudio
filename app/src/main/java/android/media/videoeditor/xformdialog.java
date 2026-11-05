package android.media.videoeditor;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.Toast;

public final class xformdialog {
    private xformdialog() {}

    public static void ask(Context c, final String project, final String itemId) {
        final Activity act = activityOf(c);
        if (act == null) return;
        VideoEditorImpl ve = VideoEditorImpl.find(project);
        MediaItem mi = ve == null ? null : ve.getMediaItem(itemId);
        if (mi == null) return;
        Bitmap src = firstFrame(mi);
        if (src == null) {
            Toast.makeText(act, lang.tr("No preview"), Toast.LENGTH_SHORT).show();
            return;
        }
        final float d = act.getResources().getDisplayMetrics().density;
        final CropView cv = new CropView(act, src);
        xform.Xform cur = xform.of(itemId);
        if (cur != null) cv.setRect(cur.l, cur.t, cur.r, cur.b);
        LinearLayout root = new LinearLayout(act);
        root.setOrientation(LinearLayout.VERTICAL);
        int pad = (int) (16 * d);
        root.setPadding(pad, pad / 2, pad, 0);
        root.addView(cv, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, (int) (260 * d)));
        LinearLayout row = ratioRow(act, cv);
        root.addView(row);
        final TextView lbl = new TextView(act);
        final SeekBar sb = new SeekBar(act);
        sb.setMax(360);
        float a0 = cur == null ? 0f : cur.ang;
        sb.setProgress(Math.round(a0) + 180);
        lbl.setText(lang.tr("Angle: ") + Math.round(a0) + "°");
        sb.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            @Override public void onProgressChanged(SeekBar s, int p, boolean u) {
                if (u && Math.abs(p - 180) <= 1) { s.setProgress(180); p = 180; }
                lbl.setText(lang.tr("Angle: ") + (p - 180) + "°");
            }
            @Override public void onStartTrackingTouch(SeekBar s) { }
            @Override public void onStopTrackingTouch(SeekBar s) { }
        });
        LinearLayout ar = new LinearLayout(act);
        Button m1 = new Button(act);
        m1.setText("-1°");
        m1.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View v) { sb.setProgress(Math.max(0, sb.getProgress() - 1)); }
        });
        Button p1 = new Button(act);
        p1.setText("+1°");
        p1.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View v) { sb.setProgress(Math.min(360, sb.getProgress() + 1)); }
        });
        ar.addView(m1);
        ar.addView(sb, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        ar.addView(p1);
        root.addView(lbl);
        root.addView(ar);
        final CheckBox fill = new CheckBox(act);
        fill.setText(lang.tr("Fill the frame when rotating"));
        fill.setChecked(cur == null || cur.fill);
        root.addView(fill);
        ScrollView sv = new ScrollView(act);
        sv.addView(root);
        final AlertDialog dlg = new AlertDialog.Builder(act).setTitle(lang.tr("Crop and rotate")).setView(sv)
                .setPositiveButton(lang.tr("Apply"), null).setNeutralButton(lang.tr("Reset"), null)
                .setNegativeButton(lang.tr("Cancel"), null).create();
        dlg.show();
        dlg.getButton(DialogInterface.BUTTON_NEUTRAL).setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View v) {
                cv.setRect(0f, 0f, 1f, 1f);
                cv.preset(0f);
                sb.setProgress(180);
            }
        });
        dlg.getButton(DialogInterface.BUTTON_POSITIVE).setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View v) {
                xform.Xform x = new xform.Xform();
                x.l = cv.l; x.t = cv.t; x.r = cv.r; x.b = cv.b;
                x.ang = sb.getProgress() - 180;
                x.fill = fill.isChecked();
                xform.set(itemId, x);
                try {
                    VideoEditorImpl e = VideoEditorImpl.find(project);
                    if (e != null) e.save();
                } catch (Exception ignored) { }
                dlg.dismiss();
            }
        });
    }

    private static Activity activityOf(Context c) {
        Context k = c;
        while (k instanceof ContextWrapper && !(k instanceof Activity)) k = ((ContextWrapper) k).getBaseContext();
        return k instanceof Activity ? (Activity) k : null;
    }

    private static Bitmap firstFrame(MediaItem mi) {
        Bitmap src = null;
        try {
            src = mi instanceof MediaVideoItem ? ((MediaVideoItem) mi).frameAt(0, 0, ((MediaVideoItem) mi).fileBegin()) : mi.getThumbnail(0, 0, 0);
            if (src != null && Math.max(src.getWidth(), src.getHeight()) > 1000) {
                float s = 1000f / Math.max(src.getWidth(), src.getHeight());
                src = Bitmap.createScaledBitmap(src, Math.max(2, (int) (src.getWidth() * s)), Math.max(2, (int) (src.getHeight() * s)), true);
            }
        } catch (Throwable t) {
            src = null;
        }
        return src;
    }

    private static LinearLayout ratioRow(Activity act, final CropView cv) {
        LinearLayout row = new LinearLayout(act);
        String[] names = {lang.tr("Free"), "16:9", "9:16", "4:3", "1:1"};
        final float[] ratios = {0f, 16f / 9f, 9f / 16f, 4f / 3f, 1f};
        for (int i = 0; i < names.length; i++) {
            Button b = new Button(act);
            b.setText(names[i]);
            b.setTextSize(12);
            final int idx = i;
            b.setOnClickListener(new View.OnClickListener() {
                @Override public void onClick(View v) { cv.preset(ratios[idx]); }
            });
            row.addView(b, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        }
        return row;
    }

    private static final class CropView extends View {
        private final Bitmap bmp;
        private final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final RectF dst = new RectF();
        private final float d;
        float l = 0f, t = 0f, r = 1f, b = 1f;
        private float lock;
        private int mode;
        private float lastX, lastY;

        CropView(Context c, Bitmap bmp) {
            super(c);
            this.bmp = bmp;
            this.d = c.getResources().getDisplayMetrics().density;
        }

        void setRect(float l, float t, float r, float b) {
            this.l = l; this.t = t; this.r = r; this.b = b;
            invalidate();
        }

        void preset(float ratio) {
            lock = ratio;
            if (ratio <= 0f) { invalidate(); return; }
            float bw = bmp.getWidth(), bh = bmp.getHeight();
            float w, h;
            if (bw / bh > ratio) { h = 1f; w = ratio * bh / bw; } else { w = 1f; h = bw / (ratio * bh); }
            setRect((1f - w) / 2f, (1f - h) / 2f, (1f + w) / 2f, (1f + h) / 2f);
        }

        @Override protected void onDraw(Canvas c) {
            c.drawColor(0xFF111111);
            float pad = 8 * d;
            float s = Math.min((getWidth() - 2 * pad) / bmp.getWidth(), (getHeight() - 2 * pad) / bmp.getHeight());
            float iw = bmp.getWidth() * s, ih = bmp.getHeight() * s;
            dst.set((getWidth() - iw) / 2f, (getHeight() - ih) / 2f, (getWidth() + iw) / 2f, (getHeight() + ih) / 2f);
            c.drawBitmap(bmp, null, dst, null);
            float cl = dst.left + l * iw, ct = dst.top + t * ih, cr = dst.left + r * iw, cb = dst.top + b * ih;
            paint.setStyle(Paint.Style.FILL);
            paint.setColor(0xAA000000);
            c.drawRect(dst.left, dst.top, dst.right, ct, paint);
            c.drawRect(dst.left, cb, dst.right, dst.bottom, paint);
            c.drawRect(dst.left, ct, cl, cb, paint);
            c.drawRect(cr, ct, dst.right, cb, paint);
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeWidth(2 * d);
            paint.setColor(0xFFFFFFFF);
            c.drawRect(cl, ct, cr, cb, paint);
            paint.setStrokeWidth(1f);
            paint.setColor(0x66FFFFFF);
            c.drawLine(cl + (cr - cl) / 3f, ct, cl + (cr - cl) / 3f, cb, paint);
            c.drawLine(cl + 2 * (cr - cl) / 3f, ct, cl + 2 * (cr - cl) / 3f, cb, paint);
            c.drawLine(cl, ct + (cb - ct) / 3f, cr, ct + (cb - ct) / 3f, paint);
            c.drawLine(cl, ct + 2 * (cb - ct) / 3f, cr, ct + 2 * (cb - ct) / 3f, paint);
            paint.setStyle(Paint.Style.FILL);
            paint.setColor(0xFF33B5E5);
            float h = 7 * d;
            c.drawCircle(cl, ct, h, paint);
            c.drawCircle(cr, ct, h, paint);
            c.drawCircle(cl, cb, h, paint);
            c.drawCircle(cr, cb, h, paint);
        }

        private float fx(float x) { return Math.max(0f, Math.min(1f, (x - dst.left) / Math.max(1f, dst.width()))); }
        private float fy(float y) { return Math.max(0f, Math.min(1f, (y - dst.top) / Math.max(1f, dst.height()))); }

        @Override public boolean onTouchEvent(MotionEvent e) {
            float x = e.getX(), y = e.getY();
            switch (e.getActionMasked()) {
                case MotionEvent.ACTION_DOWN: {
                    if (getParent() != null) getParent().requestDisallowInterceptTouchEvent(true);
                    float cl = dst.left + l * dst.width(), ct = dst.top + t * dst.height();
                    float cr = dst.left + r * dst.width(), cb = dst.top + b * dst.height();
                    float best = 32 * d;
                    mode = 0;
                    float[][] cs = {{cl, ct}, {cr, ct}, {cl, cb}, {cr, cb}};
                    for (int i = 0; i < 4; i++) {
                        float dx = cs[i][0] - x, dy = cs[i][1] - y;
                        float dist = (float) Math.sqrt(dx * dx + dy * dy);
                        if (dist < best) { best = dist; mode = i + 1; }
                    }
                    if (mode == 0 && x > cl && x < cr && y > ct && y < cb) mode = 5;
                    lastX = x;
                    lastY = y;
                    return true;
                }
                case MotionEvent.ACTION_MOVE: {
                    if (mode >= 1 && mode <= 4) corner(mode, fx(x), fy(y));
                    else if (mode == 5) {
                        float dx = (x - lastX) / Math.max(1f, dst.width()), dy = (y - lastY) / Math.max(1f, dst.height());
                        dx = Math.max(-l, Math.min(1f - r, dx));
                        dy = Math.max(-t, Math.min(1f - b, dy));
                        l += dx; r += dx; t += dy; b += dy;
                    }
                    lastX = x;
                    lastY = y;
                    invalidate();
                    return true;
                }
                default:
                    mode = 0;
                    return true;
            }
        }

        private void corner(int m, float nx, float ny) {
            float sx = (m == 1 || m == 3) ? -1f : 1f, sy = (m == 1 || m == 2) ? -1f : 1f;
            float ox = sx < 0 ? r : l, oy = sy < 0 ? b : t;
            float availX = sx < 0 ? ox : 1f - ox, availY = sy < 0 ? oy : 1f - oy;
            float w = Math.max(0.05f, Math.min(availX, Math.abs(nx - ox)));
            float h = Math.max(0.05f, Math.min(availY, Math.abs(ny - oy)));
            if (lock > 0f) {
                float bw = bmp.getWidth(), bh = bmp.getHeight();
                h = w * bw / (lock * bh);
                if (h > availY) { h = availY; w = h * lock * bh / bw; }
                if (w > availX) { w = availX; h = w * bw / (lock * bh); }
            }
            float ex = ox + sx * w, ey = oy + sy * h;
            l = Math.min(ox, ex); r = Math.max(ox, ex);
            t = Math.min(oy, ey); b = Math.max(oy, ey);
        }
    }
}
