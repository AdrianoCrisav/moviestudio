package android.media.videoeditor;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.File;
import java.io.IOException;

/* ehmmmm solo son parches o algo */
public class MediaImageItem extends MediaItem {
    private static final int MAX_SIDE = 2048;
    private long durationMs;
    private int scaledW, scaledH;

    public MediaImageItem(VideoEditor editor, String id, String filename, long durationMs, int renderingMode) throws IOException {
        super(editor, id, filename, renderingMode);
        if (!new File(filename).isFile()) throw new IOException("no existe " + filename);
        BitmapFactory.Options o = new BitmapFactory.Options();
        o.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(filename, o);
        if (o.outWidth <= 0 || o.outHeight <= 0) throw new IllegalArgumentException("imagen no soportada: " + filename);
        width = o.outWidth;
        height = o.outHeight;
        float s = Math.min(1f, (float) MAX_SIDE / Math.max(width, height));
        scaledW = Math.round(width * s);
        scaledH = Math.round(height * s);
        this.durationMs = durationMs;
    }

    public int getScaledWidth() { return scaledW; }
    public int getScaledHeight() { return scaledH; }
    @Override public long getDuration() { return durationMs; }
    @Override public long getTimelineDuration() { return durationMs; }
    public void setDuration(long ms) { durationMs = ms; }

    @Override
    public Bitmap getThumbnail(int w, int h, long timeMs) throws IOException {
        int tw = w > 0 ? w : scaledW, th = h > 0 ? h : scaledH;
        BitmapFactory.Options o = new BitmapFactory.Options();
        o.inSampleSize = Math.max(1, Math.min(width / Math.max(tw, 1), height / Math.max(th, 1)));
        Bitmap b = BitmapFactory.decodeFile(filename, o);
        if (b == null) return null;
        Bitmap s = Bitmap.createScaledBitmap(b, tw, th, true);
        if (s != b) b.recycle();
        return s;
    }
}
