package android.media.videoeditor;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.DialogInterface;
import android.net.Uri;
import android.widget.Toast;
import java.io.File;

/* no habia otra forma uu */
public final class speedbake {
    private static final String[] LABELS = {lang.tr("0.25x (very slow)"), lang.tr("0.5x (slow)"), lang.tr("1x (normal)"), lang.tr("1.5x (fast)"), lang.tr("2x (fast)"), lang.tr("4x (very fast)")};
    private static final float[] VALUES = {0.25f, 0.5f, 1f, 1.5f, 2f, 4f};

    private speedbake() {}

    public static void ask(Context c, final String project, final String itemId, final String file,
            final long beginMs, final long endMs, final int rm, final int aspect, final int volume,
            final boolean muted) {
        Context k = c;
        while (k instanceof ContextWrapper && !(k instanceof Activity)) k = ((ContextWrapper) k).getBaseContext();
        if (!(k instanceof Activity)) return;
        final Activity act = (Activity) k;
        if (endMs - beginMs < 300L) {
            Toast.makeText(act, lang.tr("Clip too short"), Toast.LENGTH_SHORT).show();
            return;
        }
        final Context app = act.getApplicationContext();
        new AlertDialog.Builder(act).setTitle(lang.tr("Speed")).setItems(LABELS, new DialogInterface.OnClickListener() {
            @Override public void onClick(DialogInterface d, int which) {
                apply(app, project, itemId, file, beginMs, endMs, rm, volume, muted, VALUES[which], MediaVideoItem.revOf(itemId));
            }
        }).show();
    }

    public static void reverse(Context c, String project, String itemId, String file,
            long beginMs, long endMs, int rm, int aspect, int volume, boolean muted) {
        Context k = c;
        while (k instanceof ContextWrapper && !(k instanceof Activity)) k = ((ContextWrapper) k).getBaseContext();
        if (!(k instanceof Activity)) return;
        Context app = k.getApplicationContext();
        boolean now = !MediaVideoItem.revOf(itemId);
        apply(app, project, itemId, file, beginMs, endMs, rm, volume, muted, MediaVideoItem.speedOf(itemId), now);
    }

    private static void apply(Context app, String project, String itemId, String file, long vBegin, long vEnd,
            int rm, int volume, boolean muted, float speed, boolean rev) {
        try {
            float old = MediaVideoItem.speedOf(itemId);
            if (Math.abs(old - speed) < 0.001f && rev == MediaVideoItem.revOf(itemId)) return;
            long fb = (long) (vBegin * (double) old), fe = (long) (vEnd * (double) old);
            cloner.Snap snap = cloner.snap(project, itemId, true, true);
            Class<?> api = Class.forName("com.android.videoeditor.service.ApiService");
            String id = (String) api.getMethod("generateId").invoke(null);
            MediaVideoItem.speedFor(id, speed);
            MediaVideoItem.revFor(id, rev);
            volcurve.copy(itemId, id);
            xform.copy(itemId, id);
            fxstack.copy(itemId, id);
            pipa.copy(itemId, id);
            MediaItem.rotFor(id, MediaItem.rotOf(itemId));
            api.getMethod("addMediaItemVideoUri", Context.class, String.class, String.class, String.class,
                    Uri.class, int.class, String.class).invoke(null, app, project, id, itemId, Uri.fromFile(new File(file)), rm, null);
            api.getMethod("setMediaItemBoundaries", Context.class, String.class, String.class, long.class, long.class)
                    .invoke(null, app, project, id, (long) (fb / (double) speed), (long) (fe / (double) speed));
            api.getMethod("setMediaItemVolume", Context.class, String.class, String.class, int.class)
                    .invoke(null, app, project, id, volume);
            api.getMethod("setMediaItemMute", Context.class, String.class, String.class, boolean.class)
                    .invoke(null, app, project, id, muted);
            api.getMethod("removeMediaItem", Context.class, String.class, String.class, String.class)
                    .invoke(null, app, project, itemId, null);
            snap.apply(app, project, id, old / (double) speed, 0L, false);
        } catch (Throwable ignored) { }
    }
}
