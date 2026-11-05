package android.media.videoeditor;

import android.content.Context;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

class eggs {
    static final int COUNT = 13;

    static final String[] EGG_MSG = {
        null, null, null, null, null,
        "me preocupa ste crrano",
        null,
        null,
        "Miren piwes, esta es una de las primeras versiones de HoloROM",
        null,
        "Y pensar que sigue ahi tmr, se edson y sus mafufadas",
        null,
        null
    };

    static byte[] read(Context c, String name) {
        int id = c.getResources().getIdentifier(name, "raw", c.getPackageName());
        if (id == 0) return null;
        InputStream in = null;
        try {
            in = c.getResources().openRawResource(id);
            ByteArrayOutputStream out = new ByteArrayOutputStream();
            byte[] buf = new byte[8192];
            for (int n; (n = in.read(buf)) > 0; ) out.write(buf, 0, n);
            return out.toByteArray();
        } catch (IOException e) {
            return null;
        } finally {
            try { if (in != null) in.close(); } catch (IOException ignored) { }
        }
    }
}
