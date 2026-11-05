package android.media.videoeditor;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.view.SurfaceHolder;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* que miras chismoso */
public abstract class MediaItem {
    public static final int RENDERING_MODE_BLACK_BORDER = 0, RENDERING_MODE_STRETCH = 1, RENDERING_MODE_CROPPING = 2;
    public static final long END_OF_FILE = -1;

    public interface GetThumbnailListCallback {
        void onThumbnail(Bitmap bitmap, int index);
    }

    protected final VideoEditor editor;
    protected final String id;
    protected final String filename;
    protected int renderingMode;
    protected int width, height;
    private Transition beginTransition, endTransition;
    private final List<Effect> effects = new ArrayList<Effect>();
    private final List<Overlay> overlays = new ArrayList<Overlay>();

    protected MediaItem(VideoEditor editor, String id, String filename, int renderingMode) {
        this.editor = editor;
        this.id = id;
        this.filename = filename;
        this.renderingMode = renderingMode;
        this.rotation = rotOf(id);
    }
    public static void rotFor(String itemId, int deg) { if (itemId != null) ROT.put(itemId, deg); }

    public String getId() { return id; }
    public String getFilename() { return filename; }
    public int getWidth() { return width; }
    public int getHeight() { return height; }
    public int getAspectRatio() { return MediaProperties.aspectOf(width, height); }
    public int getRenderingMode() { return renderingMode; }
    public void setRenderingMode(int mode) {
        if ((mode & 0x10000) != 0) { rotation = (rotation + 90) % 360; ROT.put(id, rotation); return; }
        renderingMode = mode;
    }
    protected int rotation;
    private static final java.util.Map<String, Integer> ROT = new java.util.concurrent.ConcurrentHashMap<String, Integer>();
    public static int rotOf(String itemId) {
        Integer r = itemId == null ? null : ROT.get(itemId);
        return r == null ? 0 : r;
    }
    public int getRotation() { return rotation; }
    public void setRotation(int deg) { rotation = ((deg % 360) + 360) % 360; ROT.put(id, rotation); }
    public abstract long getDuration();
    public abstract long getTimelineDuration();
    public abstract Bitmap getThumbnail(int w, int h, long timeMs) throws IOException;

    public Transition getBeginTransition() { return beginTransition; }
    public Transition getEndTransition() { return endTransition; }
    void setBeginTransition(Transition t) { beginTransition = t; }
    void setEndTransition(Transition t) { endTransition = t; }

    public void addEffect(Effect e) { synchronized (effects) { effects.add(e); } }
    public Effect removeEffect(String effectId) {
        synchronized (effects) {
            for (int i = 0; i < effects.size(); i++) {
                if (effects.get(i).getId().equals(effectId)) return effects.remove(i);
            }
        }
        return null;
    }
    public List<Effect> getAllEffects() { synchronized (effects) { return new ArrayList<Effect>(effects); } }

    public void addOverlay(Overlay o) { synchronized (overlays) { overlays.add(o); } }
    public Overlay removeOverlay(String overlayId) {
        synchronized (overlays) {
            for (int i = 0; i < overlays.size(); i++) {
                if (overlays.get(i).getId().equals(overlayId)) return overlays.remove(i);
            }
        }
        return null;
    }
    public Overlay getOverlay(String overlayId) {
        synchronized (overlays) {
            for (Overlay o : overlays) if (o.getId().equals(overlayId)) return o;
        }
        return null;
    }
    public List<Overlay> getAllOverlays() { synchronized (overlays) { return new ArrayList<Overlay>(overlays); } }

    public void getThumbnailList(int w, int h, long startMs, long endMs, int count, int[] indices,
            GetThumbnailListCallback cb) throws IOException {
        for (int i = 0; i < count; i++) {
            long t = count > 1 ? startMs + (endMs - startMs) * i / (count - 1) : startMs;
            Bitmap b = getThumbnail(w, h, t);
            cb.onThumbnail(b, indices != null && i < indices.length ? indices[i] : i);
        }
    }

    static void drawFit(SurfaceHolder holder, Bitmap bmp) {
        if (bmp == null) return;
        Canvas c = holder.lockCanvas();
        if (c == null) return;
        try {
            c.drawColor(0xFF000000);
            float s = Math.min((float) c.getWidth() / bmp.getWidth(), (float) c.getHeight() / bmp.getHeight());
            int w = Math.round(bmp.getWidth() * s), h = Math.round(bmp.getHeight() * s);
            int l = (c.getWidth() - w) / 2, t = (c.getHeight() - h) / 2;
            c.drawBitmap(bmp, null, new android.graphics.Rect(l, t, l + w, t + h), null);
        } finally {
            holder.unlockCanvasAndPost(c);
        }
    }

    static void quiet(android.media.MediaMetadataRetriever r) {
        interfaz.release(r);
    }
}
