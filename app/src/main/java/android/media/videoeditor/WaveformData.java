package android.media.videoeditor;

public class WaveformData {
    static final int FRAME_MS = 20;
    private final int frameDuration;
    private final short[] gains;

    WaveformData(int frameDuration, short[] gains) {
        this.frameDuration = frameDuration;
        this.gains = gains;
    }

    static WaveformData flat(long durationMs) {
        int n = (int) Math.max(1, durationMs / FRAME_MS);
        return new WaveformData(FRAME_MS, new short[n]);
    }

    public int getFrameDuration() { return frameDuration; }
    public int getFramesCount() { return gains.length; }
    public short[] getFrameGains() { return gains; }
}
