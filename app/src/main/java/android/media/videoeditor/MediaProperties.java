package android.media.videoeditor;

import android.util.Pair;

/* ya mucho "o algo", no? */
public final class MediaProperties {
    private MediaProperties() {}

    public static final int ASPECT_RATIO_UNDEFINED = 0, ASPECT_RATIO_3_2 = 1, ASPECT_RATIO_16_9 = 2,
            ASPECT_RATIO_4_3 = 3, ASPECT_RATIO_5_3 = 4, ASPECT_RATIO_11_9 = 5;
    public static final int HEIGHT_144 = 1, HEIGHT_288 = 2, HEIGHT_360 = 3, HEIGHT_480 = 4,
            HEIGHT_720 = 5, HEIGHT_1080 = 6;

    private static final double[] RATIO = {0, 3.0 / 2, 16.0 / 9, 4.0 / 3, 5.0 / 3, 11.0 / 9};

    static double ratioOf(int aspect) {
        return aspect > 0 && aspect < RATIO.length ? RATIO[aspect] : 16.0 / 9;
    }

    static int aspectOf(int w, int h) {
        if (w <= 0 || h <= 0) return ASPECT_RATIO_UNDEFINED;
        double r = (double) w / h, best = 1e9;
        int out = ASPECT_RATIO_16_9;
        for (int i = 1; i < RATIO.length; i++) {
            double d = Math.abs(RATIO[i] - r);
            if (d < best) { best = d; out = i; }
        }
        return out;
    }

    @SuppressWarnings("unchecked")
    public static Pair<Integer, Integer>[] getSupportedResolutions(int aspect) {
        int[][] t;
        switch (aspect) {
            case ASPECT_RATIO_3_2: t = new int[][]{{720, 480}, {1080, 720}}; break;
            case ASPECT_RATIO_4_3: t = new int[][]{{640, 480}, {960, 720}}; break;
            case ASPECT_RATIO_5_3: t = new int[][]{{800, 480}}; break;
            case ASPECT_RATIO_11_9: t = new int[][]{{176, 144}, {352, 288}}; break;
            default: t = new int[][]{{640, 360}, {854, 480}, {1280, 720}, {1920, 1080}};
        }
        Pair<Integer, Integer>[] r = new Pair[t.length];
        for (int i = 0; i < t.length; i++) r[i] = new Pair<Integer, Integer>(t[i][0], t[i][1]);
        return r;
    }
}
