package android.media.videoeditor;

import android.graphics.Bitmap;

public class OverlayFrame extends Overlay {
    private Bitmap bitmap;

    public OverlayFrame(MediaItem item, String id, Bitmap bitmap, long startMs, long durationMs) {
        super(item, id, startMs, durationMs);
        this.bitmap = bitmap;
    }

    public Bitmap getBitmap() { return bitmap; }
    public void setBitmap(Bitmap b) { bitmap = b; }
}
