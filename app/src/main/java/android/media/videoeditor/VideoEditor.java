package android.media.videoeditor;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.view.SurfaceHolder;
import java.io.IOException;
import java.util.List;

/* xd ok pana */
public interface VideoEditor {
    interface MediaProcessingProgressListener {
        int ACTION_TRANSCODE = 1, ACTION_ENCODE = 2, ACTION_DECODE = 3;
        void onProgress(Object item, int action, int progress);
    }

    interface ExportProgressListener {
        void onProgress(VideoEditor ve, String filename, int progress);
    }

    interface PreviewProgressListener {
        void onStart(VideoEditor ve);
        void onProgress(VideoEditor ve, long timeMs, OverlayData overlayData);
        void onStop(VideoEditor ve);
        void onError(VideoEditor ve, int error);
    }

    class OverlayData {
        private Bitmap bmp;
        private boolean clear;
        public OverlayData() {}
        void set(Bitmap b) { bmp = b; clear = false; }
        void setClear() { bmp = null; clear = true; }
        public boolean needsRendering() { return clear || bmp != null; }
        public void renderOverlay(Bitmap target) {
            Canvas c = new Canvas(target);
            c.drawColor(0, android.graphics.PorterDuff.Mode.CLEAR);
            if (bmp != null && !bmp.isRecycled()) {
                c.drawBitmap(bmp, null, new android.graphics.Rect(0, 0, target.getWidth(), target.getHeight()), null);
            }
            clear = false;
        }
        public void release() { bmp = null; clear = false; }
    }

    String getPath();
    long getDuration();
    int getAspectRatio();
    void setAspectRatio(int aspectRatio);
    void addMediaItem(MediaItem item);
    void insertMediaItem(MediaItem item, String afterMediaItemId);
    void moveMediaItem(String mediaItemId, String afterMediaItemId);
    MediaItem removeMediaItem(String mediaItemId);
    MediaItem getMediaItem(String id);
    List<MediaItem> getAllMediaItems();
    void addTransition(Transition transition);
    Transition removeTransition(String transitionId);
    Transition getTransition(String id);
    void addAudioTrack(AudioTrack audioTrack);
    AudioTrack removeAudioTrack(String audioTrackId);
    AudioTrack getAudioTrack(String id);
    List<AudioTrack> getAllAudioTracks();
    void generatePreview(MediaProcessingProgressListener listener);
    long renderPreviewFrame(SurfaceHolder surfaceHolder, long timeMs, OverlayData overlayData);
    void startPreview(SurfaceHolder surfaceHolder, long fromMs, long toMs, boolean loop,
            int callbackAfterFrameCount, PreviewProgressListener listener);
    long stopPreview();
    void clearSurface(SurfaceHolder surfaceHolder);
    void export(String filename, int height, int bitrate, ExportProgressListener listener) throws IOException;
    void cancelExport(String filename);
    void save() throws IOException;
    void release();
}
