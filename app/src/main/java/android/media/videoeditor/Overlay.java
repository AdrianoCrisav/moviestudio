package android.media.videoeditor;

import java.util.HashMap;
import java.util.Map;

public abstract class Overlay {
    private final MediaItem item;
    private final String id;
    private long start, durationMs;
    private final Map<String, String> attrs = new HashMap<String, String>();

    protected Overlay(MediaItem item, String id, long startMs, long durationMs) {
        this.item = item;
        this.id = id;
        this.start = startMs;
        this.durationMs = durationMs;
    }

    public String getId() { return id; }
    public MediaItem getMediaItem() { return item; }
    public long getStartTime() { return start; }
    public long getDuration() { return durationMs; }
    public void setStartTime(long ms) { start = ms; }
    public void setDuration(long ms) { durationMs = ms; }
    public void setUserAttribute(String name, String value) {
        if (value == null) attrs.remove(name); else attrs.put(name, value);
    }
    public Map<String, String> getUserAttributes() { return attrs; }
}
