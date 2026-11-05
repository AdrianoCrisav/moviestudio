package android.media.videoeditor;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* como hacer que el shim no se compile aparte buscar en google click */
public final class cloner {
    private cloner() {}

    private static final class SavedTransition {
        int kind, behavior, dir, blend;
        long dur;
        String afterId, mask;
        boolean invert;
    }

    public static final class Snap {
        private final List<Effect> effects = new ArrayList<Effect>();
        private final List<Overlay> overlays = new ArrayList<Overlay>();
        private SavedTransition begin, end;
        private String oldEndId;

        public void apply(Context app, String project, String newId, double scale, long shift, boolean moveEnd) {
            try {
                Class<?> api = Class.forName("com.android.videoeditor.service.ApiService");
                Method gen = api.getMethod("generateId");
                for (Effect e : effects) {
                    long s = (long) (e.getStartTime() * scale) - shift, d = (long) (e.getDuration() * scale);
                    if (s < 0) { d += s; s = 0; }
                    if (d <= 0) continue;
                    String id = (String) gen.invoke(null);
                    if (e instanceof EffectColor) {
                        EffectColor c = (EffectColor) e;
                        api.getMethod("addEffectColor", Context.class, String.class, String.class, String.class,
                                long.class, long.class, int.class, int.class)
                                .invoke(null, app, project, newId, id, s, d, c.getType(), c.getColor());
                    } else if (e instanceof EffectKenBurns) {
                        EffectKenBurns k = (EffectKenBurns) e;
                        api.getMethod("addEffectKenBurns", Context.class, String.class, String.class, String.class,
                                long.class, long.class, Rect.class, Rect.class)
                                .invoke(null, app, project, newId, id, s, d, k.getStartRect(), k.getEndRect());
                    }
                }
                for (Overlay o : overlays) {
                    long s = (long) (o.getStartTime() * scale) - shift, d = (long) (o.getDuration() * scale);
                    if (s < 0) { d += s; s = 0; }
                    if (d <= 0) continue;
                    Bundle b = new Bundle();
                    for (Map.Entry<String, String> en : o.getUserAttributes().entrySet()) b.putString(en.getKey(), en.getValue());
                    api.getMethod("addOverlay", Context.class, String.class, String.class, String.class,
                            Bundle.class, long.class, long.class)
                            .invoke(null, app, project, newId, (String) gen.invoke(null), b, s, d);
                }
                if (begin != null) put(api, gen, app, project, begin, begin.afterId);
                if (end != null) {
                    if (moveEnd && oldEndId != null)
                        api.getMethod("removeTransition", Context.class, String.class, String.class)
                                .invoke(null, app, project, oldEndId);
                    put(api, gen, app, project, end, newId);
                }
            } catch (Throwable ignored) { }
        }
    }

    public static void afterSplit(Context app, String project, String oldId, String newId, long shift, long total) {
        try {
            xform.copy(oldId, newId);
            fxstack.copy(oldId, newId);
            pipa.split(oldId, newId, shift);
            if (total > 0) volcurve.split(oldId, newId, shift / (float) total);
            snap(project, oldId, false, true).apply(app, project, newId, 1.0, shift, true);
        } catch (Throwable ignored) { }
    }

    public static Snap snap(String project, String itemId, boolean wantBegin, boolean wantEnd) {
        Snap s = new Snap();
        VideoEditorImpl ve = VideoEditorImpl.find(project);
        if (ve == null) return s;
        MediaItem it = ve.getMediaItem(itemId);
        if (it == null) return s;
        s.effects.addAll(it.getAllEffects());
        s.overlays.addAll(it.getAllOverlays());
        if (wantBegin) {
            Transition t = it.getBeginTransition();
            if (t != null) {
                s.begin = tr(t);
                s.begin.afterId = t.getAfterMediaItem() == null ? null : t.getAfterMediaItem().getId();
            }
        }
        if (wantEnd) {
            Transition t = it.getEndTransition();
            if (t != null) { s.end = tr(t); s.oldEndId = t.getId(); }
        }
        return s;
    }

    private static SavedTransition tr(Transition t) {
        SavedTransition r = new SavedTransition();
        r.dur = t.getDuration();
        r.behavior = t.getBehavior();
        if (t instanceof TransitionFadeBlack) r.kind = 0;
        else if (t instanceof TransitionCrossfade) r.kind = 1;
        else if (t instanceof TransitionSliding) { r.kind = 2; r.dir = ((TransitionSliding) t).getDirection(); }
        else if (t instanceof TransitionAlpha) {
            TransitionAlpha a = (TransitionAlpha) t;
            r.kind = 3; r.mask = a.getMaskFilename(); r.blend = a.getBlendingPercent(); r.invert = a.isInvert();
        } else r.kind = -1;
        return r;
    }

    private static void put(Class<?> api, Method gen, Context app, String project, SavedTransition t, String after) throws Exception {
        if (t.kind < 0) return;
        String id = (String) gen.invoke(null);
        Class<?>[] h = {Context.class, String.class, String.class, String.class, long.class, int.class};
        if (t.kind == 0) api.getMethod("insertFadeBlackTransition", h).invoke(null, app, project, after, id, t.dur, t.behavior);
        else if (t.kind == 1) api.getMethod("insertCrossfadeTransition", h).invoke(null, app, project, after, id, t.dur, t.behavior);
        else if (t.kind == 2)
            api.getMethod("insertSlidingTransition", Context.class, String.class, String.class, String.class,
                    long.class, int.class, int.class).invoke(null, app, project, after, id, t.dur, t.behavior, t.dir);
        else {
            int raw = (Integer) Class.forName("com.android.videoeditor.util.FileUtils")
                    .getMethod("getMaskRawId", String.class).invoke(null, t.mask);
            api.getMethod("insertAlphaTransition", Context.class, String.class, String.class, String.class,
                    long.class, int.class, int.class, int.class, boolean.class)
                    .invoke(null, app, project, after, id, t.dur, t.behavior, raw, t.blend, t.invert);
        }
    }
}
