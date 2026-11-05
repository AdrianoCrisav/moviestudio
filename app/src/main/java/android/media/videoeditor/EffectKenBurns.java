package android.media.videoeditor;

import android.graphics.Rect;

public class EffectKenBurns extends Effect {
    private final Rect startRect, endRect;

    public EffectKenBurns(MediaItem item, String id, Rect start, Rect end, long startMs, long durationMs) {
        super(item, id, startMs, durationMs);
        this.startRect = new Rect(start);
        this.endRect = new Rect(end);
    }

    public Rect getStartRect() { return startRect; }
    public Rect getEndRect() { return endRect; }
}
