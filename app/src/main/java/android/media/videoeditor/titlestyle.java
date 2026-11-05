package android.media.videoeditor;

import android.graphics.Typeface;

final class titlestyle {
    static final int NEW = 1 << 30;
    static final int V2 = 1 << 29;
    static final int[] COLORS = {0xFFFFFFFF, 0xFF111111, 0xFFFFD700, 0xFFFF8800, 0xFFFF4444, 0xFFFF66CC,
        0xFFAA66CC, 0xFF33B5E5, 0xFF00E5FF, 0xFF66BB6A, 0xFFCCFF33, 0xFFBBBBBB};
    static final float[] SIZES = {0.06f, 0.08f, 0.11f, 0.15f, 0.2f};
    static final String[] SIZE_NAMES = {"XS", "S", "M", "L", "XL"};
    static final String[] FONTS = {"Sans", "Light", "Condensed", "Serif", "Italic serif", "Mono", "Casual", "Cursive", "Black", "Thin"};
    static final String[] FX = {"None", "Shadow", "Outline", "Box", "Glow", "Bar"};
    static final String[] ANIMS = {"No animation", "Fade", "Slide up", "Slide down", "From right", "From left", "Zoom in", "Pop", "Drift", "Zoom out"};

    int anim = 1, font = 0, color = 0, size = 2, pos = 7, fx = 1, accent = 7;
    boolean upper, wide, free;
    int x = 31, y = 54;

    static titlestyle of(int type) {
        titlestyle s = new titlestyle();
        if ((type & V2) != 0) {
            s.free = true;
            s.anim = type & 15;
            s.color = (type >> 4) & 15;
            s.size = (type >> 8) & 7;
            s.fx = (type >> 11) & 7;
            s.x = (type >> 14) & 63;
            s.y = (type >> 20) & 63;
            s.accent = 1;
            s.pos = (s.y < 21 ? 0 : s.y < 42 ? 3 : 6) + (s.x < 21 ? 0 : s.x < 42 ? 1 : 2);
            s.clamp();
            return s;
        }
        if ((type & NEW) == 0) {
            int lay = type & 3;
            s.anim = Math.max(0, Math.min(2, type >> 2));
            s.pos = lay == 0 || lay == 2 ? 4 : 7;
            s.fx = lay >= 2 ? 3 : 1;
            s.accent = 1;
            s.color = 0;
            return s;
        }
        s.anim = type & 15;
        s.font = (type >> 4) & 15;
        s.color = (type >> 8) & 15;
        s.size = (type >> 12) & 7;
        s.pos = (type >> 15) & 15;
        s.fx = (type >> 19) & 7;
        s.accent = (type >> 22) & 15;
        s.upper = ((type >> 26) & 1) != 0;
        s.wide = ((type >> 27) & 1) != 0;
        s.clamp();
        return s;
    }

    private void clamp() {
        anim = Math.min(anim, ANIMS.length - 1);
        font = Math.min(font, FONTS.length - 1);
        color = Math.min(color, COLORS.length - 1);
        size = Math.min(size, SIZES.length - 1);
        pos = Math.min(pos, 8);
        fx = Math.min(fx, FX.length - 1);
        accent = Math.min(accent, COLORS.length - 1);
    }

    int pack() {
        clamp();
        if (free) {
            return NEW | V2 | anim | (color << 4) | (size << 8) | (fx << 11)
                    | (Math.max(0, Math.min(62, x)) << 14) | (Math.max(0, Math.min(62, y)) << 20);
        }
        return NEW | anim | (font << 4) | (color << 8) | (size << 12) | (pos << 15) | (fx << 19) | (accent << 22)
                | ((upper ? 1 : 0) << 26) | ((wide ? 1 : 0) << 27);
    }

    static int animOf(String typeAttr) {
        try {
            return typeAttr == null ? 0 : of(Integer.parseInt(typeAttr)).anim;
        } catch (NumberFormatException e) {
            return 0;
        }
    }

    static int posOf(String typeAttr) {
        try {
            return typeAttr == null ? 7 : of(Integer.parseInt(typeAttr)).pos;
        } catch (NumberFormatException e) {
            return 7;
        }
    }

    static Typeface face(int f, boolean body) {
        if (body) f = f == 0 || f == 2 || f == 8 ? 1 : f;
        switch (f) {
            case 1: return Typeface.create("sans-serif-light", Typeface.NORMAL);
            case 2: return Typeface.create("sans-serif-condensed", Typeface.BOLD);
            case 3: return Typeface.create(Typeface.SERIF, Typeface.BOLD);
            case 4: return Typeface.create(Typeface.SERIF, Typeface.ITALIC);
            case 5: return Typeface.create(Typeface.MONOSPACE, Typeface.BOLD);
            case 6: return Typeface.create("casual", Typeface.NORMAL);
            case 7: return Typeface.create("cursive", Typeface.NORMAL);
            case 8: return Typeface.create("sans-serif-black", Typeface.NORMAL);
            case 9: return Typeface.create("sans-serif-thin", Typeface.NORMAL);
            default: return Typeface.create("sans-serif", Typeface.BOLD);
        }
    }
}
