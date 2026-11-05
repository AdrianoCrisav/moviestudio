package android.media.videoeditor;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.io.File;
import java.util.List;

public final class layerlist {
    private layerlist() {}

    public static void show(final Context c, final String project, final String itemId) {
        final VideoEditorImpl ve = VideoEditorImpl.find(project);
        if (ve == null) return;
        final List<pipa.Layer> ls = ve.getLayers();
        final float dp = c.getResources().getDisplayMetrics().density;
        final int n = ls.size();
        final AlertDialog.Builder b = new AlertDialog.Builder(c, android.R.style.Theme_Holo_Dialog).setTitle(lang.tr("Layers"));
        final ArrayAdapter<Object> ad = new ArrayAdapter<Object>(c, 0, new Object[n + 1]) {
            @Override public View getView(int i, View v, ViewGroup parent) {
                LinearLayout row = new LinearLayout(c);
                row.setOrientation(LinearLayout.HORIZONTAL);
                row.setGravity(Gravity.CENTER_VERTICAL);
                row.setPadding((int) (12 * dp), (int) (6 * dp), (int) (12 * dp), (int) (6 * dp));
                row.setMinimumHeight((int) (56 * dp));
                final TextView t = new TextView(c, null, android.R.attr.textAppearanceLarge);
                t.setTextSize(16);
                if (i >= n) {
                    t.setText("+ " + lang.tr("Add layer"));
                    row.addView(t);
                    return row;
                }
                final pipa.Layer p = ls.get(i);
                final ImageView im = new ImageView(c);
                im.setScaleType(ImageView.ScaleType.CENTER_CROP);
                im.setBackgroundColor(0xFF2A2A2A);
                row.addView(im, new LinearLayout.LayoutParams((int) (64 * dp), (int) (40 * dp)));
                Bitmap tb = layertrack.thumbOf(p);
                if (tb != null) im.setImageBitmap(tb);
                else {
                    int rid = c.getResources().getIdentifier(p.video ? "vs_layer_vid" : "vs_layer_pic", "drawable", c.getPackageName());
                    if (rid != 0) im.setImageResource(rid);
                    im.setTag(p.id);
                    new Thread(new Runnable() {
                        @Override public void run() {
                            final Bitmap r = layertrack.loadThumb(p);
                            if (r != null) im.post(new Runnable() {
                                @Override public void run() { if (p.id.equals(im.getTag())) im.setImageBitmap(r); }
                            });
                        }
                    }).start();
                }
                t.setText(lang.tr("Layer") + " " + (i + 1) + "\n" + new File(p.file).getName());
                t.setSingleLine(false);
                t.setPadding((int) (12 * dp), 0, 0, 0);
                row.addView(t);
                return row;
            }
        };
        b.setAdapter(ad, new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface d, int i) {
                if (i < n) {
                    layertrack.selectById(ls.get(i).id);
                } else {
                    long s = ve.startOf(itemId);
                    MediaItem m = ve.getMediaItem(itemId);
                    layertrack.addAt(c, project, s, s + Math.max(1000L, m == null ? 3000L : m.getTimelineDuration()));
                }
            }
        }).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
    }
}
