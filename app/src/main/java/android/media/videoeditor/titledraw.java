package android.media.videoeditor;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;

public final class titledraw {
    private titledraw() {}

    public static Bitmap build(Context c, Bitmap in, int type, String title, String sub, int w, int h) {
        Bitmap b = in != null && in.isMutable() && in.getWidth() == w && in.getHeight() == h
                ? in : Bitmap.createBitmap(w, h, Bitmap.Config.ARGB_8888);
        b.eraseColor(0);
        titlestyle st = titlestyle.of(type);
        if (title == null) title = "";
        if (sub == null) sub = "";
        if (st.upper) {
            title = title.toUpperCase();
            sub = sub.toUpperCase();
        }
        if (title.length() == 0 && sub.length() == 0) return b;
        Canvas cv = new Canvas(b);
        int col = st.pos % 3, row = st.pos / 3;
        Layout.Alignment al = st.free ? Layout.Alignment.ALIGN_CENTER : col == 0 ? Layout.Alignment.ALIGN_NORMAL
                : col == 1 ? Layout.Alignment.ALIGN_CENTER : Layout.Alignment.ALIGN_OPPOSITE;
        int maxW = (int) (w * 0.86f);
        float ts = h * titlestyle.SIZES[st.size];
        TextPaint tp = new TextPaint(Paint.ANTI_ALIAS_FLAG), sp = new TextPaint(Paint.ANTI_ALIAS_FLAG);
        tp.setTypeface(titlestyle.face(st.font, false));
        sp.setTypeface(titlestyle.face(st.font, true));
        if (Build.VERSION.SDK_INT >= 21 && st.wide) {
            tp.setLetterSpacing(0.12f);
            sp.setLetterSpacing(0.12f);
        }
        StaticLayout tl = null, sl = null;
        float gap = 0f, bh = 0f, bw = 0f;
        for (int k = 0; k < 10; k++) {
            tp.setTextSize(ts);
            sp.setTextSize(ts * 0.5f);
            tl = title.length() > 0 ? new StaticLayout(title, tp, maxW, al, 1.05f, 0f, false) : null;
            sl = sub.length() > 0 ? new StaticLayout(sub, sp, maxW, al, 1.05f, 0f, false) : null;
            gap = tl != null && sl != null ? ts * 0.2f : 0f;
            bh = (tl == null ? 0 : tl.getHeight()) + gap + (sl == null ? 0 : sl.getHeight());
            if (bh <= h * 0.8f) break;
            ts *= 0.88f;
        }
        bw = 0f;
        for (StaticLayout l : new StaticLayout[] {tl, sl}) {
            if (l == null) continue;
            for (int i = 0; i < l.getLineCount(); i++) bw = Math.max(bw, l.getLineWidth(i));
        }
        float m = w * 0.06f;
        float pad = ts * 0.45f;
        float x0, bl, y0;
        if (st.free) {
            float cx = w * st.x / 62f, cy = h * st.y / 62f;
            bl = Math.max(m, Math.min(w - m - bw, cx - bw / 2f));
            x0 = bl - (maxW - bw) / 2f;
            y0 = Math.max(h * 0.04f + pad, Math.min(h - h * 0.04f - pad - bh, cy - bh / 2f));
        } else {
            x0 = col == 0 ? m : col == 1 ? (w - maxW) / 2f : w - m - maxW;
            bl = col == 0 ? m : col == 1 ? (w - bw) / 2f : w - m - bw;
            y0 = row == 0 ? h * 0.07f : row == 1 ? (h - bh) / 2f : h - h * 0.07f - bh;
        }
        int tc = titlestyle.COLORS[st.color], ac = titlestyle.COLORS[st.accent];
        drawBackdrop(cv, st.fx, ac, bl, y0, bw, bh, pad, ts);
        drawText(cv, st.fx, tp, sp, tl, sl, gap, ts, tc, ac, x0, y0);
        return b;
    }

    private static void drawBackdrop(Canvas cv, int fx, int ac, float bl, float y0, float bw, float bh, float pad, float ts) {
        Paint bg = new Paint(Paint.ANTI_ALIAS_FLAG);
        if (fx == 3) {
            bg.setColor((ac & 0x00FFFFFF) | 0x80000000);
            cv.drawRoundRect(new RectF(bl - pad, y0 - pad * 0.7f, bl + bw + pad, y0 + bh + pad * 0.7f), pad * 0.35f, pad * 0.35f, bg);
        } else if (fx == 5) {
            bg.setColor(ac);
            float th = Math.max(3f, ts * 0.1f);
            cv.drawRect(bl, y0 + bh + pad * 0.35f, bl + bw, y0 + bh + pad * 0.35f + th, bg);
        }
    }

    private static void drawText(Canvas cv, int fx, TextPaint tp, TextPaint sp, StaticLayout tl, StaticLayout sl, float gap, float ts, int tc, int ac, float x0, float y0) {
        cv.save();
        cv.translate(x0, y0);
        if (fx == 2) {
            for (TextPaint p : new TextPaint[] {tp, sp}) {
                p.setStyle(Paint.Style.STROKE);
                p.setStrokeJoin(Paint.Join.ROUND);
                p.setStrokeWidth(ts * 0.16f);
                p.setColor(ac);
            }
            draw(cv, tl, sl, gap);
            tp.setStyle(Paint.Style.FILL);
            sp.setStyle(Paint.Style.FILL);
        }
        tp.setColor(tc);
        sp.setColor((tc & 0x00FFFFFF) | 0xE6000000);
        if (fx == 1) {
            tp.setShadowLayer(ts * 0.08f, ts * 0.04f, ts * 0.06f, 0xB0000000);
            sp.setShadowLayer(ts * 0.05f, ts * 0.03f, ts * 0.04f, 0xB0000000);
        } else if (fx == 4) {
            tp.setShadowLayer(ts * 0.5f, 0f, 0f, tc);
            sp.setShadowLayer(ts * 0.3f, 0f, 0f, tc);
            draw(cv, tl, sl, gap);
        }
        draw(cv, tl, sl, gap);
        cv.restore();
    }

    private static void draw(Canvas cv, StaticLayout tl, StaticLayout sl, float gap) {
        float y = 0f;
        if (tl != null) {
            tl.draw(cv);
            y = tl.getHeight() + gap;
        }
        if (sl != null) {
            cv.save();
            cv.translate(0f, y);
            sl.draw(cv);
            cv.restore();
        }
    }
}
