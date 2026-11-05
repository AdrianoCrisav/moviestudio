package android.media.videoeditor;

import android.app.Activity;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.provider.OpenableColumns;
import android.widget.Toast;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;

public class pipdick extends Activity {
    interface Got {
        void got(String path, boolean video);
    }

    static Got cb;

    @Override
    protected void onCreate(Bundle b) {
        super.onCreate(b);
        Intent i = new Intent(Intent.ACTION_GET_CONTENT);
        i.setType("*/*");
        i.putExtra(Intent.EXTRA_MIME_TYPES, new String[] {"video/*", "image/*"});
        i.addCategory(Intent.CATEGORY_OPENABLE);
        try {
            startActivityForResult(i, 77);
        } catch (RuntimeException e) {
            cb = null;
            finish();
        }
    }

    @Override
    protected void onActivityResult(int req, int res, Intent d) {
        super.onActivityResult(req, res, d);
        final Uri u = d == null ? null : d.getData();
        final Got g = cb;
        cb = null;
        if (res != RESULT_OK || u == null) {
            finish();
            return;
        }
        final String mime = getContentResolver().getType(u);
        final boolean video = mime != null && mime.startsWith("video/");
        new Thread(new Runnable() {
            @Override public void run() {
                final String path = resolve(u);
                runOnUiThread(new Runnable() {
                    @Override public void run() {
                        finish();
                        if (path == null) Toast.makeText(pipdick.this, lang.tr("Couldn't open that file"), Toast.LENGTH_SHORT).show();
                        else if (g != null) g.got(path, video);
                    }
                });
            }
        }).start();
    }

    private String resolve(Uri u) {
        if ("file".equals(u.getScheme())) return u.getPath();
        String name = "pip";
        Cursor c = null;
        try {
            c = getContentResolver().query(u, new String[] {"_data", OpenableColumns.DISPLAY_NAME}, null, null, null);
            if (c != null && c.moveToFirst()) {
                String p = c.isNull(0) ? null : c.getString(0);
                // malditas apis modernas de android, me hicieron pensar que mi sistema de capas no movia los files al directorio correcto xpppp
                if (p != null && !p.contains("/.transforms/") && !p.contains("picker") && new File(p).canRead()) return p;
                if (!c.isNull(1)) name = c.getString(1);
            }
        } catch (RuntimeException ignored) { } finally {
            if (c != null) c.close();
        }
        try {
            // es hora del rock
            File dir = new File(getFilesDir(), "pip");
            dir.mkdirs();
            File f = new File(dir, System.currentTimeMillis() + "_" + name.replaceAll("[^A-Za-z0-9._-]", "_"));
            InputStream in = getContentResolver().openInputStream(u);
            if (in == null) return null;
            FileOutputStream out = new FileOutputStream(f);
            try {
                byte[] buf = new byte[65536];
                int n;
                while ((n = in.read(buf)) > 0) out.write(buf, 0, n);
            } finally {
                out.close();
                in.close();
            }
            return f.getPath();
        } catch (Exception e) {
            return null;
        }
    }
}
