package android.media.videoeditor;

/* tomokolleros forever */
public class TransitionAlpha extends Transition {
    private final String mask;
    private final int blending;
    private final boolean invert;

    public TransitionAlpha(String id, MediaItem after, MediaItem before, long durationMs, int behavior,
            String maskFilename, int blendingPercent, boolean invert) {
        super(id, after, before, durationMs, behavior);
        this.mask = maskFilename;
        this.blending = blendingPercent;
        this.invert = invert;
    }

    public String getMaskFilename() { return mask; }
    public int getBlendingPercent() { return blending; }
    public boolean isInvert() { return invert; }
}
