package android.media.videoeditor;

/* codigo homura con zimp xd */
public abstract class Transition {
    public static final int BEHAVIOR_SPEED_UP = 0, BEHAVIOR_SPEED_DOWN = 1, BEHAVIOR_LINEAR = 2,
            BEHAVIOR_MIDDLE_SLOW = 3, BEHAVIOR_MIDDLE_FAST = 4;

    private final String id;
    private final MediaItem after, before;
    private long durationMs;
    private final int behavior;

    protected Transition(String id, MediaItem after, MediaItem before, long durationMs, int behavior) {
        if (after == null && before == null) throw new IllegalArgumentException("transicion sin clips");
        this.id = id;
        this.after = after;
        this.before = before;
        this.durationMs = durationMs;
        this.behavior = behavior;
    }

    public String getId() { return id; }
    public MediaItem getAfterMediaItem() { return after; }
    public MediaItem getBeforeMediaItem() { return before; }
    public long getDuration() { return durationMs; }
    public void setDuration(long ms) { durationMs = ms; }
    public int getBehavior() { return behavior; }
}
