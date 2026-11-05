package android.media.videoeditor;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.text.InputType;
import android.text.TextWatcher;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.DecelerateInterpolator;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.Spinner;
import android.widget.TextView;

public class titleeditor extends Activity {
    private static final int PW = 640, PH = 360;
    private static final int[] COLOR_IDX = {0, 2, 3, 4, 7, 9};
    private static final String[] COLOR_NAMES = {"White", "Yellow", "Orange", "Red", "Blue", "Green"};
    private static final int[] SIZE_IDX = {1, 2, 3};
    private static final String[] SIZE_NAMES = {"Small", "Medium", "Large"};
    private static final int ANIMS = 7;
    private static final int[] GX = {10, 31, 52}, GY = {8, 31, 54};

    private String mediaItemId, overlayId;
    private final titlestyle st = new titlestyle();
    private EditText etTitle, etSub;
    private ImageView titleView, frameView;
    private Bitmap bmp;
    private final Handler hd = new Handler();
    private int boxFx = 1;

    private int dp(int v) {
        return interfaz.dp(this, v);
    }

    @Override
    protected void onCreate(Bundle b) {
        super.onCreate(b);
        Intent in = getIntent();
        mediaItemId = in.getStringExtra("media_item_id");
        overlayId = in.getStringExtra("overlay_id");
        String t0 = "", s0 = "";
        Bundle at = in.getBundleExtra("attributes");
        if (at != null) {
            titlestyle o = titlestyle.of(at.getInt("type"));
            st.anim = Math.min(o.anim, ANIMS - 1);
            st.color = o.color; st.size = o.size; st.fx = o.fx; st.accent = o.accent;
            if (o.free) {
                st.x = o.x; st.y = o.y;
            } else {
                st.x = GX[o.pos % 3];
                st.y = GY[o.pos / 3];
            }
            if (at.getString("title") != null) t0 = at.getString("title");
            if (at.getString("subtitle") != null) s0 = at.getString("subtitle");
        }
        st.free = true;
        st.color = nearest(COLOR_IDX, st.color);
        st.size = SIZE_IDX[nearest(SIZE_IDX, st.size)];
        st.color = COLOR_IDX[st.color];
        boxFx = st.fx == 3 ? 1 : st.fx;
        build(t0, s0);
        loadFrame();
    }

    private static int nearest(int[] a, int v) {
        int best = 0;
        for (int i = 0; i < a.length; i++) if (Math.abs(a[i] - v) < Math.abs(a[best] - v)) best = i;
        return best;
    }

    private void build(String t0, String s0) {
        setTitle(lang.tr("Title"));
        boolean wide = getResources().getConfiguration().screenWidthDp >= 600;

        FrameLayout pv = buildPreview();
        TextView hint = buildHint();
        ScrollView sv = buildOptions(t0, s0);

        LinearLayout root = new LinearLayout(this);
        if (wide) {
            root.setOrientation(LinearLayout.HORIZONTAL);
            LinearLayout left = new LinearLayout(this);
            left.setOrientation(LinearLayout.VERTICAL);
            left.setPadding(dp(16), dp(16), dp(8), dp(16));
            left.addView(pv, new LinearLayout.LayoutParams(-1, -2));
            left.addView(hint, new LinearLayout.LayoutParams(-1, -2));
            root.addView(left, new LinearLayout.LayoutParams(0, -1, 1f));
            root.addView(sv, new LinearLayout.LayoutParams(0, -1, 1f));
        } else {
            root.setOrientation(LinearLayout.VERTICAL);
            root.addView(pv, new LinearLayout.LayoutParams(-1, -2));
            root.addView(hint, new LinearLayout.LayoutParams(-1, -2));
            root.addView(sv, new LinearLayout.LayoutParams(-1, 0, 1f));
        }
        setContentView(root);
        refresh();
    }

    private FrameLayout buildPreview() {
        FrameLayout pv = new FrameLayout(this) {
            @Override
            protected void onMeasure(int wm, int hm) {
                int w = View.MeasureSpec.getSize(wm);
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(w, View.MeasureSpec.EXACTLY),
                        View.MeasureSpec.makeMeasureSpec(w * 9 / 16, View.MeasureSpec.EXACTLY));
            }
        };
        pv.setBackgroundColor(0xFF000000);
        frameView = new ImageView(this);
        frameView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        pv.addView(frameView, new FrameLayout.LayoutParams(-1, -1));
        titleView = new ImageView(this);
        titleView.setScaleType(ImageView.ScaleType.FIT_XY);
        pv.addView(titleView, new FrameLayout.LayoutParams(-1, -1));
        final int slop = ViewConfiguration.get(this).getScaledTouchSlop();
        pv.setOnTouchListener(new View.OnTouchListener() {
            float dx, dy, ox, oy;
            boolean moved;
            public boolean onTouch(View v, MotionEvent e) {
                float nx = e.getX() / Math.max(1, v.getWidth()) * 62f, ny = e.getY() / Math.max(1, v.getHeight()) * 62f;
                switch (e.getActionMasked()) {
                    case MotionEvent.ACTION_DOWN:
                        dx = e.getX(); dy = e.getY();
                        ox = st.x - nx; oy = st.y - ny;
                        moved = false;
                        return true;
                    case MotionEvent.ACTION_MOVE:
                        if (!moved && Math.abs(e.getX() - dx) + Math.abs(e.getY() - dy) > slop) moved = true;
                        if (moved) {
                            st.x = Math.max(0, Math.min(62, Math.round(nx + ox)));
                            st.y = Math.max(0, Math.min(62, Math.round(ny + oy)));
                            refresh();
                        }
                        return true;
                    case MotionEvent.ACTION_UP:
                        if (!moved) playAnim();
                        return true;
                }
                return true;
            }
        });
        return pv;
    }

    private TextView buildHint() {
        TextView hint = new TextView(this);
        hint.setText(lang.tr("Drag the title to move it"));
        hint.setTextAppearance(this, android.R.style.TextAppearance_Holo_Small);
        hint.setGravity(android.view.Gravity.CENTER);
        hint.setPadding(dp(8), dp(6), dp(8), dp(6));
        return hint;
    }

    private ScrollView buildOptions(String t0, String s0) {
        ScrollView sv = new ScrollView(this);
        LinearLayout col = new LinearLayout(this);
        col.setOrientation(LinearLayout.VERTICAL);
        col.setPadding(dp(16), dp(8), dp(16), dp(16));
        sv.addView(col);

        etTitle = edit(lang.tr("Title text"), t0);
        etSub = edit(lang.tr("Subtitle (optional)"), s0);
        col.addView(etTitle, new LinearLayout.LayoutParams(-1, -2));
        col.addView(etSub, new LinearLayout.LayoutParams(-1, -2));
        TextWatcher tw = new TextWatcher() {
            public void beforeTextChanged(CharSequence s, int a, int c, int d) { }
            public void onTextChanged(CharSequence s, int a, int c, int d) { }
            public void afterTextChanged(Editable e) { refresh(); }
        };
        etTitle.addTextChangedListener(tw);
        etSub.addTextChangedListener(tw);

        String[] an = new String[ANIMS];
        for (int i = 0; i < ANIMS; i++) an[i] = lang.tr(titlestyle.ANIMS[i]);
        label(col, lang.tr("Animation"));
        Spinner spA = spinner(col, an, st.anim);
        spA.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            public void onItemSelected(AdapterView<?> p, View v, int pos, long id) {
                if (pos != st.anim) { st.anim = pos; playAnim(); }
            }
            public void onNothingSelected(AdapterView<?> p) { }
        });

        String[] sn = new String[SIZE_NAMES.length];
        for (int i = 0; i < sn.length; i++) sn[i] = lang.tr(SIZE_NAMES[i]);
        label(col, lang.tr("Size"));
        Spinner spS = spinner(col, sn, nearest(SIZE_IDX, st.size));
        spS.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            public void onItemSelected(AdapterView<?> p, View v, int pos, long id) {
                st.size = SIZE_IDX[pos];
                refresh();
            }
            public void onNothingSelected(AdapterView<?> p) { }
        });

        String[] cn = new String[COLOR_NAMES.length];
        for (int i = 0; i < cn.length; i++) cn[i] = lang.tr(COLOR_NAMES[i]);
        label(col, lang.tr("Color"));
        Spinner spC = spinner(col, cn, nearest(COLOR_IDX, st.color));
        spC.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            public void onItemSelected(AdapterView<?> p, View v, int pos, long id) {
                st.color = COLOR_IDX[pos];
                refresh();
            }
            public void onNothingSelected(AdapterView<?> p) { }
        });

        CheckBox cb = new CheckBox(this);
        cb.setText(lang.tr("Translucent background"));
        cb.setChecked(st.fx == 3);
        cb.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            public void onCheckedChanged(CompoundButton c, boolean on) {
                st.fx = on ? 3 : boxFx;
                refresh();
            }
        });
        LinearLayout.LayoutParams cl = new LinearLayout.LayoutParams(-1, -2);
        cl.topMargin = dp(12);
        col.addView(cb, cl);
        return sv;
    }

    private void loadFrame() {
        final String id = mediaItemId;
        if (id == null) return;
        new Thread(new Runnable() {
            public void run() {
                Bitmap f = null;
                try {
                    MediaItem it = VideoEditorImpl.findItem(id);
                    if (it != null) {
                        long t = it instanceof MediaVideoItem ? ((MediaVideoItem) it).getBoundaryBeginTime() : 0L;
                        f = it.getThumbnail(PW, PH, t);
                    }
                } catch (Throwable ignored) { }
                final Bitmap fb = f;
                if (fb == null) return;
                hd.post(new Runnable() {
                    public void run() {
                        if (!isFinishing()) frameView.setImageBitmap(fb);
                    }
                });
            }
        }).start();
    }

    @Override
    public boolean onCreateOptionsMenu(Menu m) {
        MenuItem c = m.add(0, 1, 0, lang.tr("Cancel"));
        c.setIcon(android.R.drawable.ic_menu_close_clear_cancel);
        c.setShowAsAction(MenuItem.SHOW_AS_ACTION_ALWAYS | MenuItem.SHOW_AS_ACTION_WITH_TEXT);
        MenuItem k = m.add(0, 2, 1, lang.tr("Apply"));
        int ic = getResources().getIdentifier("ic_vs_done", "drawable", getPackageName());
        if (ic != 0) k.setIcon(ic);
        k.setShowAsAction(MenuItem.SHOW_AS_ACTION_ALWAYS | MenuItem.SHOW_AS_ACTION_WITH_TEXT);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem i) {
        if (i.getItemId() == 1) finish();
        else if (i.getItemId() == 2) done();
        else return super.onOptionsItemSelected(i);
        return true;
    }

    private void done() {
        Intent r = new Intent();
        r.putExtra("media_item_id", mediaItemId);
        if (overlayId != null) r.putExtra("overlay_id", overlayId);
        Bundle a = new Bundle();
        a.putInt("type", st.pack());
        a.putString("title", etTitle.getText().toString());
        a.putString("subtitle", etSub.getText().toString());
        r.putExtra("attributes", a);
        setResult(RESULT_OK, r);
        finish();
    }

    private void refresh() {
        if (etTitle == null || etSub == null || titleView == null) return;
        bmp = titledraw.build(this, bmp, st.pack(), etTitle.getText().toString(), etSub.getText().toString(), PW, PH);
        titleView.setImageBitmap(null);
        titleView.setImageBitmap(bmp);
    }

    private void playAnim() {
        refresh();
        final int a = st.anim;
        float w = titleView.getWidth(), h = titleView.getHeight();
        titleView.animate().cancel();
        titleView.setAlpha(a == 0 ? 1f : 0f);
        titleView.setTranslationX(a == 4 ? w * 0.2f : a == 5 ? -w * 0.2f : 0f);
        titleView.setTranslationY(a == 2 ? h * 0.15f : a == 3 ? -h * 0.15f : 0f);
        float k = a == 6 ? 0.6f : 1f;
        titleView.setScaleX(k);
        titleView.setScaleY(k);
        if (a == 0) return;
        titleView.animate().alpha(1f).translationX(0f).translationY(0f).scaleX(1f).scaleY(1f)
                .setDuration(500).setInterpolator(new DecelerateInterpolator()).start();
    }

    private void label(LinearLayout col, String s) {
        TextView t = new TextView(this);
        t.setText(s);
        t.setTextAppearance(this, android.R.style.TextAppearance_Holo_Small);
        t.setPadding(dp(4), dp(14), 0, 0);
        col.addView(t, new LinearLayout.LayoutParams(-1, -2));
    }

    private Spinner spinner(LinearLayout col, String[] items, int sel) {
        Spinner sp = new Spinner(this);
        sp.setAdapter(new ArrayAdapter<String>(this, android.R.layout.simple_spinner_dropdown_item, items));
        sp.setSelection(sel);
        col.addView(sp, new LinearLayout.LayoutParams(-1, -2));
        return sp;
    }

    private EditText edit(String hint, String text) {
        EditText e = new EditText(this);
        e.setHint(hint);
        e.setText(text);
        e.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_FLAG_MULTI_LINE | InputType.TYPE_TEXT_FLAG_CAP_SENTENCES);
        e.setMaxLines(3);
        return e;
    }
}
