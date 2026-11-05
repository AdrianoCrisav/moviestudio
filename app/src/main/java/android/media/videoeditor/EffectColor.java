package android.media.videoeditor;

public class EffectColor extends Effect {
    public static final int TYPE_COLOR = 1, TYPE_GRADIENT = 2, TYPE_SEPIA = 3, TYPE_NEGATIVE = 4, TYPE_FIFTIES = 5, TYPE_BW = 6, TYPE_PIXEL = 7, TYPE_VIGNETTE = 8, TYPE_POSTER = 9, TYPE_MIRROR = 10, TYPE_RGBSPLIT = 11, TYPE_BLUR = 12, TYPE_SCAN = 13, TYPE_BRIGHT = 14, TYPE_DUO = 15, TYPE_SHAKE = 16, TYPE_PULSE = 17, TYPE_WAVE = 18, TYPE_SWIRL = 19, TYPE_BULGE = 20, TYPE_KALEIDO = 21, TYPE_GLITCH = 22, TYPE_ZOOMBLUR = 23, TYPE_TILES = 24, TYPE_GHOST = 25;
    public static final int GREEN = 0x0000FF00, PINK = 0x00FF66FF, GRAY = 0x007F7F7F;
    private final int type, color;

    public EffectColor(MediaItem item, String id, long startMs, long durationMs, int type, int color) {
        super(item, id, startMs, durationMs);
        this.type = type;
        this.color = color;
    }

    public int getType() { return type; }
    public int getColor() { return color; }
}
