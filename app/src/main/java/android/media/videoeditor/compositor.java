package android.media.videoeditor;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Rect;
import java.util.HashSet;
import java.util.Set;
import java.util.HashMap;
import java.util.Map;

final class compositor {
    private static final float LAYER_FADE_MS = 250f;
    private final glglglgl gl;
    private final int w, h;
    boolean overlaysOn = true;
    private final Map<String, pipdec> pd = new HashMap<String, pipdec>();
    private final Set<String> pdBad = new HashSet<String>();
    private final Map<String, Bitmap> pb = new HashMap<String, Bitmap>();
    private final Map<String, Integer> pt = new HashMap<String, Integer>();
    private int forceMode = -1;
    private boolean bg;
    private float[] bgSc;

    void setFormat(boolean blur) {
        forceMode = blur ? MediaItem.RENDERING_MODE_BLACK_BORDER : MediaItem.RENDERING_MODE_CROPPING;
        bg = blur;
    }

    private int modeOf(MediaItem it) {
        return forceMode >= 0 ? forceMode : it.getRenderingMode();
    }
    private final Map<String, Integer> ov = new HashMap<String, Integer>();
    private int snapIdx = -1, tempIdx, capIdx;
    private boolean capNow, maskTried;
    private int maskTex;

    compositor(glglglgl gl, int w, int h) {
        this.gl = gl;
        this.w = w;
        this.h = h;
    }

    static boolean isSnap(Transition t) {
        return t instanceof TransitionCrossfade || t instanceof TransitionSliding || t instanceof TransitionAlpha;
    }

    static float[] fit(int mode, int sw, int sh, int ow, int oh) {
        if (mode == MediaItem.RENDERING_MODE_STRETCH || sw <= 0 || sh <= 0) return new float[]{1f, 1f};
        float a = (float) ow / sw, b = (float) oh / sh;
        float s = mode == MediaItem.RENDERING_MODE_CROPPING ? Math.max(a, b) : Math.min(a, b);
        return new float[]{sw * s / ow, sh * s / oh};
    }

    void begin(MediaItem it) {
        Transition te = it.getEndTransition();
        capNow = te != null && isSnap(te) && te.getBeforeMediaItem() != null;
        tempIdx = -1;
        capIdx = -1;
        for (int i = 0; i < 3; i++) {
            if (i == snapIdx) continue;
            if (tempIdx < 0) tempIdx = i; else if (capIdx < 0) capIdx = i;
        }
    }

    void end() {
        snapIdx = capNow ? capIdx : -1;
        capNow = false;
        if (maskTex != 0) { gl.deleteTexture(maskTex); maskTex = 0; }
        maskTried = false;
        for (Integer t : ov.values()) gl.deleteTexture(t);
        ov.clear();
        for (Integer t : pt.values()) gl.deleteTexture(t);
        pt.clear();
    }

    void prime(MediaItem a, Bitmap b) {
        if (snapIdx >= 0 || b == null) return;
        int bw = b.getWidth(), bh = b.getHeight();
        int tex = gl.uploadBitmap(b);
        begin(a);
        try {
            image(a, tex, bw, bh, Math.max(0L, a.getTimelineDuration() - 1));
        } finally {
            end();
            gl.deleteTexture(tex);
        }
    }

    void video(MediaVideoItem v, long relMs) {
        boolean sw = v.getRotation() % 180 != 0;
        float[] cf = cropFr(v);
        int vw = Math.max(1, Math.round(v.getWidth() * cf[0])), vh = Math.max(1, Math.round(v.getHeight() * cf[1]));
        float[] sc = fit(modeOf(v), sw ? vh : vw, sw ? vw : vh, w, h);
        bgSc = bg ? fit(MediaItem.RENDERING_MODE_CROPPING, sw ? v.getHeight() : v.getWidth(), sw ? v.getWidth() : v.getHeight(), w, h) : null;
        frame(v, relMs, sc[0], sc[1], -1, null);
    }

    private static float[] cropFr(MediaItem it) {
        xform.Xform x = xform.of(it.getId());
        return x == null ? new float[] {1f, 1f} : new float[] {Math.max(0.01f, x.r - x.l), Math.max(0.01f, x.b - x.t)};
    }

    void image(MediaItem it, int tex, int bw, int bh, long relMs) {
        float[] cf = cropFr(it);
        int refW = it.getWidth() > 0 ? it.getWidth() : bw;
        int refH = it.getHeight() > 0 ? it.getHeight() : bh;
        float[] tm = null;
        float[] sc = null;
        for (Effect e : it.getAllEffects()) {
            if (!(e instanceof EffectKenBurns)) continue;
            EffectKenBurns kb = (EffectKenBurns) e;
            long d = Math.max(1L, kb.getDuration());
            float t = Math.max(0f, Math.min(1f, (relMs - kb.getStartTime()) / (float) d));
            Rect a = kb.getStartRect(), z = kb.getEndRect();
            float l = a.left + (z.left - a.left) * t, tp = a.top + (z.top - a.top) * t;
            float r = a.right + (z.right - a.right) * t, bt = a.bottom + (z.bottom - a.bottom) * t;
            if (r - l < 2f || bt - tp < 2f) continue;
            tm = glglglgl.cropM(l / refW, tp / refH, r / refW, bt / refH);
            boolean sw = it.getRotation() % 180 != 0;
            sc = fit(modeOf(it), sw ? Math.round((bt - tp) * cf[1]) : Math.round((r - l) * cf[0]), sw ? Math.round((r - l) * cf[0]) : Math.round((bt - tp) * cf[1]), w, h);
            break;
        }
        if (sc == null) {
            boolean sw = it.getRotation() % 180 != 0;
            sc = fit(modeOf(it), Math.round((sw ? bh * cf[1] : bw * cf[0])), Math.round((sw ? bw * cf[0] : bh * cf[1])), w, h);
        }
        bgSc = bg ? fit(MediaItem.RENDERING_MODE_CROPPING, sw0(it, bw, bh)[0], sw0(it, bw, bh)[1], w, h) : null;
        frame(it, relMs, sc[0], sc[1], tex, tm);
    }

    private static int[] sw0(MediaItem it, int bw, int bh) {
        return it.getRotation() % 180 != 0 ? new int[] {bh, bw} : new int[] {bw, bh};
    }

    private static float ease(int beh, float t) {
        t = Math.max(0f, Math.min(1f, t));
        float sm = t * t * (3f - 2f * t);
        switch (beh) {
            case Transition.BEHAVIOR_SPEED_UP: return t * t;
            case Transition.BEHAVIOR_SPEED_DOWN: return 1f - (1f - t) * (1f - t);
            case Transition.BEHAVIOR_MIDDLE_FAST: return sm;
            case Transition.BEHAVIOR_MIDDLE_SLOW: return Math.max(0f, Math.min(1f, 2f * t - sm));
            default: return t;
        }
    }

    private static void step(Transition t, float p, boolean entering, float[] r) {
        if (t instanceof TransitionSliding) {
            int d = ((TransitionSliding) t).getDirection();
            float ox = d == 0 ? 1f : d == 1 ? -1f : 0f;
            float oy = d == 2 ? 1f : d == 3 ? -1f : 0f;
            float off = 2f * (1f - p) * (entering ? -1f : 1f);
            r[1] += ox * off;
            r[2] += oy * off;
        } else {
            r[0] *= p;
        }
    }

    private float[] trans(MediaItem it, long relMs) {
        float[] r = {1f, 0f, 0f};
        long dur = it.getTimelineDuration();
        Transition tb = it.getBeginTransition(), te = it.getEndTransition();
        if (tb != null && !(snapIdx >= 0 && isSnap(tb))) {
            long half = Math.max(1L, Math.min(tb.getDuration() / 2, dur / 2));
            if (relMs < half) step(tb, ease(tb.getBehavior(), relMs / (float) half), true, r);
        }
        if (te != null && !isSnap(te)) {
            long half = Math.max(1L, Math.min(te.getDuration() / 2, dur / 2));
            if (relMs > dur - half) step(te, ease(te.getBehavior(), (dur - relMs) / (float) half), false, r);
        }
        return r;
    }

    private void frame(MediaItem it, long relMs, float sx, float sy, int tex, float[] tm) {
        Transition tb = it.getBeginTransition();
        long td = tb == null ? 0L : Math.max(1L, tb.getDuration());
        boolean snapT = snapIdx >= 0 && tb != null && isSnap(tb) && relMs < td;
        float p = snapT ? ease(tb.getBehavior(), relMs / (float) td) : 1f;
        int maskT = snapT && tb instanceof TransitionAlpha ? maskTexFor((TransitionAlpha) tb) : 0;
        boolean mask = maskT != 0;
        int finalTarget = capNow ? capIdx : -1;
        boolean layer = bgSc != null && snapT && !mask;
        if (layer) {
            gl.bindTarget(tempIdx);
            gl.begin();
            gl.setBlend(false);
            body(it, relMs, sx, sy, tex, tm, new float[] {1f, 0f, 0f});
        }
        gl.bindTarget(mask ? tempIdx : finalTarget);
        gl.begin();
        if (snapT && !mask) {
            float[] pr = {1f, 0f, 0f};
            if (tb instanceof TransitionSliding) step(tb, 1f - p, false, pr);
            gl.setFx(0, 0);
            gl.setTrans(1f, pr[1], pr[2]);
            gl.drawTex(snapIdx, 1f, 1f);
        }
        float[] r = trans(it, relMs);
        if (snapT && !mask) {
            step(tb, p, true, r);
            gl.setBlend(!(tb instanceof TransitionSliding));
        }
        if (layer) {
            gl.setTrans(r[0], r[1], r[2]);
            gl.setFx(0, 0);
            gl.drawTex(tempIdx, 1f, 1f);
        } else {
            body(it, relMs, sx, sy, tex, tm, r);
        }
        gl.setBlend(false);
        if (mask) {
            TransitionAlpha ta = (TransitionAlpha) tb;
            float soft = Math.max(0.02f, ta.getBlendingPercent() / 100f);
            gl.bindTarget(finalTarget);
            gl.begin();
            gl.drawMix(snapIdx, tempIdx, maskT, p * (1f + soft), soft, ta.isInvert());
        }
        if (capNow) {
            gl.bindTarget(-1);
            gl.begin();
            gl.setTrans(1f, 0f, 0f);
            gl.setFx(0, 0);
            gl.drawTex(capIdx, 1f, 1f);
        }
    }

    private void body(MediaItem it, long relMs, float sx, float sy, int tex, float[] tm, float[] r) {
        gl.setTrans(r[0], r[1], r[2]);
        gl.setRot(it.getRotation());
        if (bgSc != null) {
            gl.setFx(12, 0);
            if (tex < 0) gl.drawVideo(bgSc[0], bgSc[1]); else gl.drawImage(tex, tm, bgSc[0], bgSc[1]);
        }
        fx(it, relMs);
        xform.Xform xf = xform.of(it.getId());
        if (xf != null) gl.setXform(xf.l, xf.t, xf.r, xf.b, xf.ang, xf.fill);
        if (tex < 0) gl.drawVideo(sx, sy); else gl.drawImage(tex, tm, sx, sy);
        gl.clearXform();
        gl.setRot(0);
        pip(it, relMs);
        if (overlaysOn) overlays(it, relMs, sx, sy);
    }

    private void pip(MediaItem it, long relMs) {
        VideoEditorImpl ve = VideoEditorImpl.ownerOf(it.getId());
        if (ve == null) return;
        java.util.List<pipa.Layer> ls = ve.getLayers();
        if (ls.isEmpty()) return;
        long g = ve.startOf(it.getId()) + relMs;
        for (int r = 0; r < VideoEditorImpl.MAX_ROWS; r++) {
            for (pipa.Layer p : ls) {
                if (p.row == r && p.file != null && !p.id.equals(ve.hiddenId) && g >= p.start && g < p.end) pip1(p, g - p.start);
            }
        }
    }

    private void pip1(pipa.Layer p, long tl) {
        long len = p.end - p.start;
        float a = Math.min(1f, Math.min(tl / LAYER_FADE_MS, (len - tl) / LAYER_FADE_MS));
        String key = p.id;
        String k = key + "|" + p.file;
        glglglgl.Ext e = null;
        int tex = -1;
        float asp;
        try {
            if (p.video) {
                pipdec d = pd.get(k);
                if (d == null && !pdBad.contains(k)) {
                    try {
                        d = new pipdec(gl, p.file);
                        pd.put(k, d);
                    } catch (Exception x) {
                        pdBad.add(k);
                    }
                }
                if (d == null || !d.show(p.offset + tl)) return;
                e = d.ext;
                asp = d.aspect;
            } else {
                Bitmap b = pb.get(k);
                if (b == null && !pdBad.contains(k)) {
                    BitmapFactory.Options o = new BitmapFactory.Options();
                    o.inJustDecodeBounds = true;
                    BitmapFactory.decodeFile(p.file, o);
                    o.inSampleSize = Math.max(1, Math.max(o.outWidth, o.outHeight) / 1024);
                    o.inJustDecodeBounds = false;
                    b = BitmapFactory.decodeFile(p.file, o);
                    if (b == null) { pdBad.add(k);  } else pb.put(k, b);
                }
                if (b == null) return;
                Integer t = pt.get(k);
                if (t == null) {
                    t = gl.uploadBitmap(b);
                    pt.put(k, t);
                }
                tex = t;
                asp = b.getWidth() / (float) b.getHeight();
            }
        } catch (RuntimeException x) {
            return;
        }
        float sx = Math.max(0.02f, Math.min(1f, p.size));
        float sy = sx * w / (asp * h);
        gl.drawPip(e, tex, sx, sy, p.centerX * 2f - 1f, 1f - p.centerY * 2f, a * p.opacity, p.chroma ? 16f + Math.max(0f, Math.min(1f, p.tol)) : 0f, p.key);
    }

    private int maskTexFor(TransitionAlpha t) {
        if (maskTex != 0 || maskTried) return maskTex;
        maskTried = true;
        String f = t.getMaskFilename();
        if (f == null) return 0;
        masks.restore(f);
        Bitmap b = BitmapFactory.decodeFile(f);
        if (b == null) return 0;
        maskTex = gl.uploadBitmap(b);
        b.recycle();
        return maskTex;
    }

    private void fx(MediaItem it, long relMs) {
        int type = 0, color = 0, geo = 0, samp = 0, nc = 0;
        float t = 0f;
        int[] col = new int[3];
        float[] am = new float[3];
        float sAmt = 1f;
        for (Effect e : it.getAllEffects()) {
            if (e instanceof EffectColor && relMs >= e.getStartTime() && relMs < e.getStartTime() + e.getDuration()) {
                type = ((EffectColor) e).getType();
                color = ((EffectColor) e).getColor();
                t = (relMs - e.getStartTime()) / 1000f;
                break;
            }
        }
        if (type >= EffectColor.TYPE_SHAKE) {
            geo = type - 15;
        } else if (type == 7 || type == 10 || type == 11 || type == 12) {
            samp = type;
        } else if (type > 0) {
            col[nc] = type; am[nc++] = 1f;
        }
        java.util.List<fxstack.Entry> stack = fxstack.of(it.getId());
        if (stack != null) {
            long dur = Math.max(1L, it.getTimelineDuration());
            for (fxstack.Entry e : stack) {
                if (relMs < e.a * dur || relMs >= e.b * dur) continue;
                int k = fxstack.kind(e.fx), ty = e.fx + 6;
                if (k == 2) {
                    if (geo == 0) { geo = ty - 15; t = (relMs - e.a * dur) / 1000f; }
                } else if (k == 1) {
                    if (samp == 0) samp = ty;
                } else if (nc < 3) {
                    col[nc] = ty; am[nc++] = e.amt;
                }
            }
        }
        int m0 = samp, m2, m3;
        float a0 = 1f, a2, a3;
        if (samp != 0) {
            m2 = col[0]; a2 = am[0]; m3 = col[1]; a3 = am[1];
            if (nc > 1 && col[1] == 0) m3 = 0;
        } else {
            m0 = col[0]; a0 = am[0]; m2 = col[1]; a2 = am[1]; m3 = col[2]; a3 = am[2];
        }
        gl.setFx(m0, geo > 0 ? 0 : color);
        gl.setFxStack(m2, m3, a0, a2 == 0f && m2 == 0 ? 1f : a2, a3 == 0f && m3 == 0 ? 1f : a3);
        if (geo > 0) gl.setGeo(geo, t);
    }

    private void overlays(MediaItem it, long relMs, float sx, float sy) {
        for (Overlay o : it.getAllOverlays()) {
            if (!(o instanceof OverlayFrame)) continue;
            if (relMs < o.getStartTime() || relMs >= o.getStartTime() + o.getDuration()) continue;
            Bitmap bm = ((OverlayFrame) o).getBitmap();
            if (bm == null || bm.isRecycled()) continue;
            Integer t = ov.get(o.getId());
            if (t == null) {
                t = gl.uploadBitmap(bm);
                ov.put(o.getId(), t);
            }
            String ty = o.getUserAttributes().get("type");
            int anim = titlestyle.animOf(ty);
            if (anim <= 0) {
                gl.drawOverlay(t, sx, sy);
                continue;
            }
            int ps = titlestyle.posOf(ty);
            long rel = relMs - o.getStartTime();
            float ramp = Math.max(1f, Math.min(400f, o.getDuration() / 3f));
            float in = Math.min(1f, rel / ramp);
            float out = Math.min(1f, (o.getDuration() - rel) / ramp);
            float a = Math.max(0f, Math.min(in, out));
            float ez = 1f - (1f - in) * (1f - in);
            float dx = 0f, dy = 0f, k = 1f;
            if (anim == 2) dy = -(1f - ez) * 0.3f;
            else if (anim == 3) dy = (1f - ez) * 0.3f;
            else if (anim == 4) dx = (1f - ez) * 0.4f;
            else if (anim == 5) dx = -(1f - ez) * 0.4f;
            else if (anim == 6) k = 0.6f + 0.4f * ez;
            else if (anim == 7) {
                float q = in - 1f;
                k = 0.5f + 0.5f * (1f + 2.70158f * q * q * q + 1.70158f * q * q);
            } else if (anim == 8) dy = rel / (float) Math.max(1L, o.getDuration()) * 0.12f;
            else if (anim == 9) k = 1.4f - 0.4f * ez;
            float ax = ((ps % 3) - 1) * 0.8f, ay = (1 - ps / 3) * 0.8f;
            if (k != 1f) {
                dx += ax * sx * (1f - k);
                dy += ay * sy * (1f - k);
            }
            gl.drawOverlay(t, sx * k, sy * k, dx, dy, a);
        }
    }
}
