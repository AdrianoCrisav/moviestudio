package android.media.videoeditor;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Rect;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class store {
    private static final String STATE = "videoeditor.json";

    private static final float THUMB_MAX_PX = 480f;

    private store() {}

    static void save(VideoEditorImpl ve) throws IOException {
        try {
            JSONObject o = new JSONObject();
            o.put("aspect", ve.aspect);
            JSONArray ia = new JSONArray();
            for (MediaItem it : ve.items) ia.put(itemJson(ve, it));
            o.put("items", ia);
            JSONArray ta = new JSONArray();
            for (Transition t : ve.transitions) ta.put(transitionJson(t));
            o.put("transitions", ta);
            JSONArray aa = new JSONArray();
            for (AudioTrack a : ve.tracks) aa.put(trackJson(a));
            o.put("tracks", aa);
            JSONArray la = new JSONArray();
            for (pipa.Layer q : ve.layers) la.put(pipa.toJsonP(q));
            o.put("layers", la);
            File tmp = new File(ve.path, STATE + ".tmp");
            FileOutputStream out = new FileOutputStream(tmp);
            try { out.write(o.toString().getBytes("UTF-8")); } finally { out.close(); }
            File dst = new File(ve.path, STATE);
            if (!tmp.renameTo(dst)) { dst.delete(); if (!tmp.renameTo(dst)) throw new IOException("no se pudo guardar"); }
            writeThumb(ve);
        } catch (JSONException e) {
            throw new IOException("json: " + e.getMessage());
        }
    }

    static void writeThumb(final VideoEditorImpl ve) {
        final MediaItem first;
        synchronized (ve) { first = ve.items.isEmpty() ? null : ve.items.get(0); }
        if (first == null) return;
        final File f = new File(ve.path, "thumbnail.jpg");
        final String key = first.getId() + "|" + first.getFilename() + "|" + (first instanceof MediaVideoItem ? ((MediaVideoItem) first).fileBegin() : 0L);
        if (key.equals(ve.thumbKey) && f.exists()) return;
        ve.thumbKey = key;
        new Thread(new Runnable() {
            @Override public void run() {
                Bitmap b = null;
                try {
                    b = first instanceof MediaVideoItem ? ((MediaVideoItem) first).frameAt(0, 0, ((MediaVideoItem) first).fileBegin()) : first.getThumbnail(0, 0, 0);
                    if (b == null) { ve.thumbKey = null; return; }
                    float k = Math.min(1f, THUMB_MAX_PX / Math.max(b.getWidth(), b.getHeight()));
                    Bitmap s = k < 1f ? Bitmap.createScaledBitmap(b, Math.max(1, Math.round(b.getWidth() * k)), Math.max(1, Math.round(b.getHeight() * k)), true) : b;
                    File tmp = new File(ve.path, "thumbnail.tmp");
                    FileOutputStream out = new FileOutputStream(tmp);
                    try { s.compress(Bitmap.CompressFormat.JPEG, 85, out); } finally { out.close(); }
                    if (!tmp.renameTo(f)) { f.delete(); tmp.renameTo(f); }
                    if (s != b) s.recycle();
                } catch (Exception e) {
                    ve.thumbKey = null;
                } finally {
                    if (b != null && !b.isRecycled()) b.recycle();
                }
            }
        }, "ve-thumb").start();
    }

    private static JSONObject itemJson(VideoEditorImpl ve, MediaItem it) throws JSONException, IOException {
        JSONObject o = new JSONObject();
        o.put("id", it.getId()).put("file", it.getFilename()).put("mode", it.getRenderingMode()).put("rot", it.getRotation()).put("sp", it instanceof MediaVideoItem ? ((MediaVideoItem) it).getSpeed() : 1f).put("rv", it instanceof MediaVideoItem && ((MediaVideoItem) it).isReversed()).put("nm", (double) volcurve.normOf(it.getId())).put("vc", it instanceof MediaVideoItem ? volcurve.toJson(it.getId()) : null).put("xf", xform.toJson(it.getId())).put("fs", fxstack.toJson(it.getId()));
        if (it instanceof MediaVideoItem) {
            MediaVideoItem v = (MediaVideoItem) it;
            o.put("t", "v").put("b", v.getBoundaryBeginTime()).put("e", v.getBoundaryEndTime())
                    .put("vol", v.getVolume()).put("mute", v.isMuted());
        } else {
            o.put("t", "i").put("dur", it.getDuration());
        }
        JSONArray fx = new JSONArray();
        for (Effect e : it.getAllEffects()) {
            JSONObject j = new JSONObject().put("id", e.getId()).put("s", e.getStartTime()).put("d", e.getDuration());
            if (e instanceof EffectColor) {
                j.put("k", "c").put("type", ((EffectColor) e).getType()).put("color", ((EffectColor) e).getColor());
            } else if (e instanceof EffectKenBurns) {
                Rect a = ((EffectKenBurns) e).getStartRect(), b = ((EffectKenBurns) e).getEndRect();
                j.put("k", "k").put("a", rect(a)).put("b", rect(b));
            } else continue;
            fx.put(j);
        }
        o.put("fx", fx);
        JSONArray ov = new JSONArray();
        for (Overlay v : it.getAllOverlays()) {
            if (!(v instanceof OverlayFrame)) continue;
            OverlayFrame f = (OverlayFrame) v;
            JSONObject j = new JSONObject().put("id", f.getId()).put("s", f.getStartTime()).put("d", f.getDuration());
            JSONObject at = new JSONObject();
            for (java.util.Map.Entry<String, String> en : f.getUserAttributes().entrySet()) at.put(en.getKey(), en.getValue());
            j.put("attrs", at);
            if (f.getBitmap() != null) {
                String name = "ov_" + f.getId() + ".png";
                FileOutputStream out = new FileOutputStream(new File(ve.path, name));
                try { f.getBitmap().compress(Bitmap.CompressFormat.PNG, 100, out); } finally { out.close(); }
                j.put("png", name);
            }
            ov.put(j);
        }
        o.put("ov", ov);
        JSONObject pj = pipa.toJson(it.getId());
        if (pj != null) o.put("pip", pj);
        o.put("pips", pipa.extraToJson(it.getId()));
        return o;
    }

    private static JSONArray rect(Rect r) throws JSONException {
        return new JSONArray().put(r.left).put(r.top).put(r.right).put(r.bottom);
    }

    private static Rect rect(JSONArray a) throws JSONException {
        return new Rect(a.getInt(0), a.getInt(1), a.getInt(2), a.getInt(3));
    }

    private static JSONObject transitionJson(Transition t) throws JSONException {
        JSONObject o = new JSONObject().put("id", t.getId()).put("d", t.getDuration()).put("beh", t.getBehavior());
        o.put("after", t.getAfterMediaItem() == null ? JSONObject.NULL : t.getAfterMediaItem().getId());
        o.put("before", t.getBeforeMediaItem() == null ? JSONObject.NULL : t.getBeforeMediaItem().getId());
        if (t instanceof TransitionAlpha) {
            TransitionAlpha a = (TransitionAlpha) t;
            o.put("k", "a").put("mask", a.getMaskFilename()).put("blend", a.getBlendingPercent()).put("inv", a.isInvert());
        } else if (t instanceof TransitionSliding) {
            o.put("k", "s").put("dir", ((TransitionSliding) t).getDirection());
        } else if (t instanceof TransitionFadeBlack) {
            o.put("k", "f");
        } else {
            o.put("k", "c");
        }
        return o;
    }

    private static JSONObject trackJson(AudioTrack a) throws JSONException {
        return new JSONObject().put("id", a.getId()).put("file", a.getFilename()).put("vol", a.getVolume())
                .put("mute", a.isMuted()).put("loop", a.isLooping()).put("duck", a.isDuckingEnabled())
                .put("dth", a.duckThreshold()).put("dvol", a.duckVolume())
                .put("b", a.getBoundaryBeginTime()).put("e", a.getBoundaryEndTime()).put("start", a.getStartTime());
    }

    static VideoEditorImpl load(String path) throws IOException {
        VideoEditorImpl ve = new VideoEditorImpl(path);
        File f = new File(path, STATE);
        if (!f.isFile()) return ve;
        try {
            ByteArrayOutputStream bo = new ByteArrayOutputStream();
            FileInputStream in = new FileInputStream(f);
            try {
                byte[] buf = new byte[8192];
                int n;
                while ((n = in.read(buf)) > 0) bo.write(buf, 0, n);
            } finally { in.close(); }
            JSONObject o = new JSONObject(bo.toString("UTF-8"));
            ve.aspect = o.optInt("aspect", 0);
            JSONArray ia = o.optJSONArray("items");
            for (int i = 0; ia != null && i < ia.length(); i++) {
                MediaItem it = readItem(ve, ia.getJSONObject(i));
                if (it != null) ve.items.add(it);
            }
            JSONArray ta = o.optJSONArray("transitions");
            for (int i = 0; ta != null && i < ta.length(); i++) {
                Transition t = readTransition(ve, ta.getJSONObject(i));
                if (t != null) ve.addTransition(t);
            }
            JSONArray aa = o.optJSONArray("tracks");
            for (int i = 0; aa != null && i < aa.length(); i++) {
                try { ve.tracks.add(readTrack(ve, aa.getJSONObject(i))); } catch (IOException ignored) { }
            }
            JSONArray la = o.optJSONArray("layers");
            for (int i = 0; la != null && i < la.length(); i++) {
                pipa.Layer q = pipa.fromJsonP(la.optJSONObject(i));
                if (q != null && q.file != null && q.end > q.start) ve.putLayer(q);
            }
            ve.migrateLayers();
            writeThumb(ve);
        } catch (JSONException e) {
            throw new IOException("proyecto corrupto: " + e.getMessage());
        }
        return ve;
    }

    private static MediaItem readItem(VideoEditorImpl ve, JSONObject o) throws JSONException {
        xform.fromJson(o.getString("id"), o.optJSONArray("xf"));
        fxstack.fromJson(o.getString("id"), o.optJSONArray("fs"));
        pipa.fromJson(o.getString("id"), o.optJSONObject("pip"));
        pipa.extraFromJson(o.getString("id"), o.optJSONArray("pips"));
        MediaItem it;
        try {
            if ("v".equals(o.getString("t"))) {
                MediaVideoItem.speedFor(o.getString("id"), (float) o.optDouble("sp", 1.0));
                MediaVideoItem.revFor(o.getString("id"), o.optBoolean("rv", false));
                volcurve.fromJson(o.getString("id"), o.optJSONArray("vc"), o.optDouble("nm", 1.0));
                MediaVideoItem v = new MediaVideoItem(ve, o.getString("id"), o.getString("file"), o.optInt("mode", 0));
                v.setExtractBoundaries(o.optLong("b", 0), Math.min(o.optLong("e", v.getDuration()), v.getDuration()));
                v.setVolume(o.optInt("vol", 100));
                v.setMute(o.optBoolean("mute", false));
                it = v;
            } else {
                it = new MediaImageItem(ve, o.getString("id"), o.getString("file"), o.getLong("dur"), o.optInt("mode", 0));
            }
        } catch (IOException e) {
            return null;
        } catch (IllegalArgumentException e) {
            return null;
        }
        it.setRotation(o.optInt("rot", 0));
        JSONArray fx = o.optJSONArray("fx");
        for (int i = 0; fx != null && i < fx.length(); i++) {
            JSONObject j = fx.getJSONObject(i);
            if ("c".equals(j.getString("k"))) {
                it.addEffect(new EffectColor(it, j.getString("id"), j.getLong("s"), j.getLong("d"), j.getInt("type"), j.getInt("color")));
            } else {
                it.addEffect(new EffectKenBurns(it, j.getString("id"), rect(j.getJSONArray("a")), rect(j.getJSONArray("b")), j.getLong("s"), j.getLong("d")));
            }
        }
        JSONArray ov = o.optJSONArray("ov");
        for (int i = 0; ov != null && i < ov.length(); i++) {
            JSONObject j = ov.getJSONObject(i);
            Bitmap b = j.has("png") ? BitmapFactory.decodeFile(new File(ve.path, j.getString("png")).getPath()) : null;
            OverlayFrame f = new OverlayFrame(it, j.getString("id"), b, j.getLong("s"), j.getLong("d"));
            JSONObject at = j.optJSONObject("attrs");
            if (at != null) {
                java.util.Iterator<?> k = at.keys();
                while (k.hasNext()) { String key = (String) k.next(); f.setUserAttribute(key, at.getString(key)); }
            }
            it.addOverlay(f);
        }
        return it;
    }

    private static Transition readTransition(VideoEditorImpl ve, JSONObject o) throws JSONException {
        MediaItem a = o.isNull("after") ? null : ve.getMediaItem(o.getString("after"));
        MediaItem b = o.isNull("before") ? null : ve.getMediaItem(o.getString("before"));
        if (a == null && b == null) return null;
        String id = o.getString("id");
        long d = o.getLong("d");
        int beh = o.getInt("beh");
        String k = o.getString("k");
        if ("a".equals(k)) return new TransitionAlpha(id, a, b, d, beh, o.optString("mask", null), o.optInt("blend", 0), o.optBoolean("inv", false));
        if ("s".equals(k)) return new TransitionSliding(id, a, b, d, beh, o.optInt("dir", 0));
        if ("f".equals(k)) return new TransitionFadeBlack(id, a, b, d, beh);
        return new TransitionCrossfade(id, a, b, d, beh);
    }

    private static AudioTrack readTrack(VideoEditorImpl ve, JSONObject o) throws JSONException, IOException {
        AudioTrack a = new AudioTrack(ve, o.getString("id"), o.getString("file"));
        a.setExtractBoundaries(o.optLong("b", 0), Math.min(o.optLong("e", a.getDuration()), a.getDuration()));
        a.setVolume(o.optInt("vol", 100));
        a.setMute(o.optBoolean("mute", false));
        if (o.optBoolean("loop", false)) a.enableLoop();
        if (o.optBoolean("duck", false)) a.enableDucking(o.optInt("dth", 0), o.optInt("dvol", 0));
        a.setStartTime(o.optLong("start", 0));
        return a;
    }
}
