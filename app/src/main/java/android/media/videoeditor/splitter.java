package android.media.videoeditor;

import android.content.Context;
import android.net.Uri;
import android.widget.Toast;
import java.io.File;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public final class splitter {
    private splitter() {}

    private static final long MIN_PART_MS = 300L;
    private static final int ROTATE_STEP = 0x10000;
    private static final String API = "com.android.videoeditor.service.ApiService";
    private static final Map<String, Long> PENDING_START = new ConcurrentHashMap<String, Long>();

    static Long takeStart(String trackId) { return trackId == null ? null : PENDING_START.remove(trackId); }

    private static Class<?> wrap(Class<?> k) {
        if (k == int.class) return Integer.class;
        if (k == long.class) return Long.class;
        if (k == boolean.class) return Boolean.class;
        return k;
    }

    private static Object invoke(Class<?> k, Object target, String name, Object... args) throws Exception {
        for (Method m : k.getMethods()) {
            Class<?>[] pt = m.getParameterTypes();
            if (!m.getName().equals(name) || pt.length != args.length) continue;
            boolean ok = true;
            for (int i = 0; i < pt.length && ok; i++) {
                ok = args[i] == null ? !pt[i].isPrimitive() : wrap(pt[i]).isInstance(args[i]);
            }
            if (ok) return m.invoke(target, args);
        }
        throw new NoSuchMethodException(name);
    }

    private static Object call(Object target, String name, Object... args) throws Exception {
        return invoke(target.getClass(), target, name, args);
    }

    private static Object api(String name, Object... args) throws Exception {
        return invoke(Class.forName(API), null, name, args);
    }

    private static void toast(Context c, String msg) {
        Toast.makeText(c, lang.tr(msg), Toast.LENGTH_SHORT).show();
    }

    public static void clip(Context ctx, Object project, Object item) {
        try {
            String path = (String) call(project, "getPath");
            String id = (String) call(item, "getId");
            String file = (String) call(item, "getFilename");
            boolean video = (Boolean) call(item, "isVideoClip");
            long itemStart = (Long) call(project, "getMediaItemBeginTime", id);
            long head = (Long) call(project, "getPlayheadPos");
            long from = video ? (Long) call(item, "getAppBoundaryBeginTime") : 0L;
            long to = video ? (Long) call(item, "getAppBoundaryEndTime") : (Long) call(item, "getAppTimelineDuration");
            long cut = from + head - itemStart;
            if (cut - from < MIN_PART_MS || to - cut < MIN_PART_MS) {
                toast(ctx, "Place the playhead inside the clip");
                return;
            }
            String newId = (String) api("generateId");
            Uri uri = Uri.fromFile(new File(file));
            int mode = (Integer) call(item, "getAppRenderingMode");
            if (video) {
                api("addMediaItemVideoUri", ctx, path, newId, id, uri, mode, null);
                api("setMediaItemBoundaries", ctx, path, id, from, cut);
                api("setMediaItemBoundaries", ctx, path, newId, cut, to);
                api("setMediaItemVolume", ctx, path, newId, (Integer) call(item, "getAppVolume"));
                api("setMediaItemMute", ctx, path, newId, (Boolean) call(item, "isAppMuted"));
            } else {
                api("addMediaItemImageUri", ctx, path, newId, id, uri, mode, to - cut, (String) call(project, "getTheme"));
                api("setMediaItemDuration", ctx, path, id, cut);
            }
            for (int turns = MediaItem.rotOf(id) / 90; turns > 0; turns--) {
                api("setMediaItemRenderingMode", ctx, path, newId, ROTATE_STEP);
            }
            cloner.afterSplit(ctx, path, id, newId, cut - from, video ? to - from : 0L);
        } catch (Throwable ignored) { }
    }

    public static void audio(Context ctx, Object project, Object track) {
        try {
            String path = (String) call(project, "getPath");
            String id = (String) call(track, "getId");
            String file = (String) call(track, "getFilename");
            long from = (Long) call(track, "getBoundaryBeginTime");
            long to = (Long) call(track, "getBoundaryEndTime");
            long start = (Long) call(track, "getAppStartTime");
            long head = (Long) call(project, "getPlayheadPos");
            if ((Boolean) call(track, "isAppLooping")) {
                toast(ctx, "Not available for looped tracks");
                return;
            }
            long rel = head - start;
            if (rel < MIN_PART_MS || to - from - rel < MIN_PART_MS) {
                toast(ctx, "Place the playhead inside the track");
                return;
            }
            String newId = (String) api("generateId");
            PENDING_START.put(newId, head);
            api("addAudioTrack", ctx, path, newId, Uri.fromFile(new File(file)), false);
            api("setAudioTrackBoundaries", ctx, path, newId, from + rel, to);
            api("setAudioTrackBoundaries", ctx, path, id, from, from + rel);
            api("setAudioTrackVolume", ctx, path, newId, (Integer) call(track, "getAppVolume"));
            api("setAudioTrackMute", ctx, path, newId, (Boolean) call(track, "isAppMuted"));
            api("setAudioTrackDuck", ctx, path, newId, (Boolean) call(track, "isAppDuckingEnabled"));
        } catch (Throwable ignored) { }
    }
}
