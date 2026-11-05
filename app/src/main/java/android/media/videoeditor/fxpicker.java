package android.media.videoeditor;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.view.ActionMode;
import android.view.Gravity;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.SeekBar;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;
import java.util.List;

public final class fxpicker {
    private static final int FIRST = 0x7f080063, COUNT = 20;
    private static final float[][] RANGES = {{0f, 1f}, {0f, 0.5f}, {0.5f, 1f}};

    private fxpicker() {}

    private static int rangeOf(fxstack.Entry e) {
        return e.a >= 0.4f ? 2 : e.b <= 0.6f ? 1 : 0;
    }

    public static void show(final Context c, final String itemId, final ActionMode mode) {
        final Menu menu = mode.getMenu();
        final MenuItem[] its = new MenuItem[COUNT];
        for (int i = 0; i < COUNT; i++) its[i] = menu.findItem(FIRST + i);
        final List<fxstack.Entry> st = fxstack.edit(itemId);
        final float d = c.getResources().getDisplayMetrics().density;
        final String[] rn = {lang.tr("Whole clip"), lang.tr("First half"), lang.tr("Second half")};
        final ListView lv = new ListView(c);
        lv.setDescendantFocusability(ViewGroup.FOCUS_BLOCK_DESCENDANTS);
        final BaseAdapter ad = new FilterAdapter(c, its, st, rn, d);
        lv.setAdapter(ad);
        final AlertDialog dg = new AlertDialog.Builder(c, android.R.style.Theme_Holo_Dialog).setTitle(lang.tr("Filters")).setView(lv)
                .setPositiveButton(lang.tr("Done"), null)
                .setNeutralButton(lang.tr("Apply to all clips"), null)
                .setNegativeButton(lang.tr("Remove all"), null).create();
        dg.setOnDismissListener(new DialogInterface.OnDismissListener() {
            public void onDismiss(DialogInterface x) {
                fxstack.trim(itemId);
                try {
                    VideoEditorImpl e = VideoEditorImpl.ownerOf(itemId);
                    if (e != null) e.save();
                } catch (Exception ignored) { }
            }
        });
        dg.show();
        dg.getButton(DialogInterface.BUTTON_NEUTRAL).setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                VideoEditorImpl e = VideoEditorImpl.ownerOf(itemId);
                if (e == null) return;
                for (MediaItem m : e.getAllMediaItems()) fxstack.copy(itemId, m.getId());
                Toast.makeText(c, lang.tr("Effects applied to all clips"), Toast.LENGTH_SHORT).show();
            }
        });
        dg.getButton(DialogInterface.BUTTON_NEGATIVE).setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                st.clear();
                ad.notifyDataSetChanged();
            }
        });
    }

    private static final class FilterAdapter extends BaseAdapter {
        private final Context c;
        private final MenuItem[] its;
        private final List<fxstack.Entry> st;
        private final String[] rn;
        private final float d;

        FilterAdapter(Context c, MenuItem[] its, List<fxstack.Entry> st, String[] rn, float d) {
            this.c = c;
            this.its = its;
            this.st = st;
            this.rn = rn;
            this.d = d;
        }

        public int getCount() { return COUNT; }
        public Object getItem(int i) { return its[i]; }
        public long getItemId(int i) { return i; }

        fxstack.Entry find(int i) {
            for (fxstack.Entry e : st) if (e.fx == i) return e;
            return null;
        }

        public View getView(final int i, View v, ViewGroup p) {
            final fxstack.Entry en = find(i);
            LinearLayout row = new LinearLayout(c);
            row.setOrientation(LinearLayout.VERTICAL);
            if (en != null) row.setBackgroundColor(0x2233B5E5);
            LinearLayout top = new LinearLayout(c);
            top.setOrientation(LinearLayout.HORIZONTAL);
            top.setGravity(Gravity.CENTER_VERTICAL);
            top.setPadding((int) (12 * d), (int) (6 * d), (int) (12 * d), (int) (6 * d));
            ImageView iv = new ImageView(c);
            iv.setScaleType(ImageView.ScaleType.CENTER_CROP);
            Drawable ic = its[i] == null ? null : its[i].getIcon();
            if (ic != null) iv.setImageDrawable(ic);
            top.addView(iv, new LinearLayout.LayoutParams((int) (80 * d), (int) (45 * d)));
            TextView t = new TextView(c);
            t.setText(its[i] == null ? "" : its[i].getTitle());
            t.setTextAppearance(c, android.R.style.TextAppearance_Holo_Medium);
            t.setPadding((int) (16 * d), 0, 0, 0);
            top.addView(t, new LinearLayout.LayoutParams(0, -2, 1f));
            CheckBox cb = new CheckBox(c);
            cb.setChecked(en != null);
            cb.setClickable(false);
            cb.setFocusable(false);
            top.addView(cb, new LinearLayout.LayoutParams(-2, -2));
            top.setOnClickListener(new View.OnClickListener() {
                public void onClick(View x) {
                    toggle(st, i);
                    notifyDataSetChanged();
                }
            });
            row.addView(top, new LinearLayout.LayoutParams(-1, -2));
            if (en != null) {
                LinearLayout opt = new LinearLayout(c);
                opt.setOrientation(LinearLayout.HORIZONTAL);
                opt.setGravity(Gravity.CENTER_VERTICAL);
                opt.setPadding((int) (104 * d), 0, (int) (12 * d), (int) (6 * d));
                Spinner sp = new Spinner(c);
                sp.setAdapter(new ArrayAdapter<String>(c, android.R.layout.simple_spinner_dropdown_item, rn));
                sp.setSelection(rangeOf(en));
                sp.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
                    public void onItemSelected(AdapterView<?> pr, View vw, int pos, long id) {
                        if (pos != rangeOf(en)) {
                            en.a = RANGES[pos][0];
                            en.b = RANGES[pos][1];
                        }
                    }
                    public void onNothingSelected(AdapterView<?> pr) { }
                });
                opt.addView(sp, new LinearLayout.LayoutParams(0, -2, 1f));
                if (fxstack.hasAmount(i)) {
                    SeekBar sb = new SeekBar(c);
                    sb.setMax(100);
                    sb.setProgress(Math.round(en.amt * 100f));
                    sb.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
                        public void onProgressChanged(SeekBar s, int pr, boolean u) { en.amt = pr / 100f; }
                        public void onStartTrackingTouch(SeekBar s) { }
                        public void onStopTrackingTouch(SeekBar s) { }
                    });
                    opt.addView(sb, new LinearLayout.LayoutParams(0, -2, 1f));
                }
                row.addView(opt, new LinearLayout.LayoutParams(-1, -2));
            }
            return row;
        }
    }

    private static void toggle(List<fxstack.Entry> st, int fx) {
        for (fxstack.Entry e : st) {
            if (e.fx == fx) {
                st.remove(e);
                return;
            }
        }
        // 333 o algo
        int k = fxstack.kind(fx), limit = k == 0 ? 3 : 1, n = 0;
        for (fxstack.Entry e : st) if (fxstack.kind(e.fx) == k) n++;
        for (int i = 0; n >= limit && i < st.size(); i++) {
            fxstack.Entry e = st.get(i);
            if (fxstack.kind(e.fx) == k) {
                st.remove(e);
                n--;
                i--;
            }
        }
        fxstack.Entry e = new fxstack.Entry();
        e.fx = fx;
        st.add(e);
    }
}
