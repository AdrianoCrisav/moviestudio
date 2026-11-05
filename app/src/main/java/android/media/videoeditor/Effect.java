package android.media.videoeditor;

public abstract class Effect {
    private final MediaItem item;
    private final String id;
    private final long start;
    private long durationMs;

    protected Effect(MediaItem item, String id, long startMs, long durationMs) {
        this.item = item;
        this.id = id;
        this.start = startMs;
        this.durationMs = durationMs;
    }

    public String getId() { return id; }
    public MediaItem getMediaItem() { return item; }
    public long getStartTime() { return start; }
    public long getDuration() { return durationMs; }
    public void setDuration(long ms) { durationMs = ms; }
}
