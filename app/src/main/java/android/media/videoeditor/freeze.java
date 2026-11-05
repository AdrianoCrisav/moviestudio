package android.media.videoeditor;

import android.content.Context;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import java.io.File;
import java.io.FileOutputStream;

public final class freeze {
    private freeze() {}

    public static String grab(Context c, String file, long ms) {
        MediaMetadataRetriever r = new MediaMetadataRetriever();
        FileOutputStream o = null;
        try {
            r.setDataSource(file);
            Bitmap b = r.getFrameAtTime(ms * 1000L, MediaMetadataRetriever.OPTION_CLOSEST);
            if (b == null) b = r.getFrameAtTime(Math.max(0L, ms - 200L) * 1000L, MediaMetadataRetriever.OPTION_CLOSEST_SYNC);
            if (b == null) return null;
            File d = new File(c.getFilesDir(), "freeze");
            d.mkdirs();
            File f = new File(d, "f" + System.nanoTime() + ".jpg");
            o = new FileOutputStream(f);
            b.compress(Bitmap.CompressFormat.JPEG, 95, o);
            o.flush();
            return Uri.fromFile(f).toString();
        } catch (Exception e) {

            return null;
        } finally {
            try { if (o != null) o.close(); } catch (Exception ignored) { }
            interfaz.release(r);
        }
    }
}
