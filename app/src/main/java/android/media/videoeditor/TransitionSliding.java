package android.media.videoeditor;

public class TransitionSliding extends Transition {
    public static final int DIRECTION_RIGHT_OUT_LEFT_IN = 0, DIRECTION_LEFT_OUT_RIGHT_IN = 1,
            DIRECTION_TOP_OUT_BOTTOM_IN = 2, DIRECTION_BOTTOM_OUT_TOP_IN = 3;
    private final int direction;

    public TransitionSliding(String id, MediaItem after, MediaItem before, long durationMs, int behavior, int direction) {
        super(id, after, before, durationMs, behavior);
        this.direction = direction;
    }

    public int getDirection() { return direction; }
}
