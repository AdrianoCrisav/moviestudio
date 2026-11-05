package android.media.videoeditor;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Toast;
import android.app.Dialog;
import android.os.Handler;
import java.util.Random;
import android.widget.ScrollView;
import android.widget.TextView;

public class chadsstacys extends Activity {
    private static final String[][] COLLABORATORS = {
        {"Adriano", "Discord: perularp  -  Telegram: vendocolchona300", "A"},
        {"La fox esta de Marisol xd", "Discord: marisa.pe", "M"},
        {"Curisisar", "", "C"},
        {"Razztonia", "", "R"}
    };

    private static final int TOASTS = 1;

    private Drawable[] av = new Drawable[COLLABORATORS.length];
    private int taps;

    private static final String[] MSG = {
        "disfruta de tu keyl- digo, hola maje, no pensé que hallarías este easter egg",
        "HoloROOOOOOOOOOOOOOOOOOOOOM",
        "que sueñe con bebekines el pana",
        "discord: perularp",
        "Sociedad Tomokollera",
        "un saludo al moralista de frog",
        "codigo borrachita panellero",
        "Zimp: todo para ver un incel marron\nAdriano: ven namas\nZimp: de 1.50\nAdriano: XDDD\nAdriano: maldito\nAdriano: oye yo soy ario xd\nZimp: osea yoo",
        "xd ok pana",
        "xd ok curifeo",
        "Iluso aquel que se mantiene firme con el falso hecho de que haremos pública esta RO- digo, espero poder hacerla pública a tiempo :D",
        "yaaaaaaaaaaaaaaaa",
        "I like it, I'm not gonna crack",
        "I miss you, I'm not gonna crack",
        "super maje bros",
        "Enjoy the silence",
        "Elespectador: Me gustaría verlo para pegarle, pero mi presencia truecel lo haría huir",
        "que sueñe con kkfax el pana",
        "Hola.",
        "telegram: adrianitanouri",
        "macario gang"
    };
    private final Random rnd = new Random();
    private final Handler hd = new Handler();
    private boolean pinned;

    private int nextEgg() {
        int n = eggs.COUNT;
        android.content.SharedPreferences sp = getSharedPreferences("credits_egg", MODE_PRIVATE);
        int seen = sp.getInt("seen", 0), last = sp.getInt("last", -1);
        if (seen == (1 << n) - 1) seen = last >= 0 ? (1 << last) : 0;
        int left = 0;
        for (int i = 0; i < n; i++) if ((seen & (1 << i)) == 0) left++;
        int k = rnd.nextInt(left), pick = 0;
        for (int i = 0; i < n; i++) {
            if ((seen & (1 << i)) != 0) continue;
            if (k-- == 0) { pick = i; break; }
        }
        sp.edit().putInt("seen", seen | (1 << pick)).putInt("last", pick).apply();
        return pick;
    }

    private int nextMsg() {
        int n = MSG.length;
        android.content.SharedPreferences sp = getSharedPreferences("credits_egg", MODE_PRIVATE);
        int seen = sp.getInt("mseen", 0), last = sp.getInt("mlast", -1);
        if (seen == (1 << n) - 1) {
            sp.edit().putInt("mseen", last >= 0 ? (1 << last) : 0).apply();
            return -1;
        }
        int left = 0;
        for (int i = 0; i < n; i++) if ((seen & (1 << i)) == 0) left++;
        int k = rnd.nextInt(left), pick = 0;
        for (int i = 0; i < n; i++) {
            if ((seen & (1 << i)) != 0) continue;
            if (k-- == 0) { pick = i; break; }
        }
        sp.edit().putInt("mseen", seen | (1 << pick)).putInt("mlast", pick).apply();
        return pick;
    }

    private static final String END = "Viejo, no hay mas mensajes, ¿Por qué sigues mirando?";

    private String[] ms;
    private Toast cur;
    private int tn;

    private void say() {
        hd.removeCallbacks(nextToast);
        if (cur != null) cur.cancel();
        tn = 0;
        nextToast.run();
    }

    private final Runnable nextToast = new Runnable() {
        public void run() {
            if (ms == null || tn >= ms.length) return;
            if (cur != null) cur.cancel();
            cur = Toast.makeText(chadsstacys.this, ms[tn], Toast.LENGTH_LONG);
            cur.show();
            tn++;
            if (tn < ms.length) hd.postDelayed(this, 3500L);
        }
    };

    private void egg() {
        int ei = nextEgg();
        String fixed = ei < eggs.EGG_MSG.length ? eggs.EGG_MSG[ei] : null;
        int cnt = fixed != null ? 1 : TOASTS;
        ms = new String[cnt];
        for (int i = 0; i < cnt; i++) {
            int mi = fixed != null ? -2 : nextMsg();
            ms[i] = fixed != null ? fixed : (mi < 0 ? END : MSG[mi]);
        }
        Drawable d = dec(eggs.read(this, String.format("egg_%02d", ei)));
        if (d == null) { say(); return; }
        final Dialog dg = new Dialog(this, android.R.style.Theme_Translucent_NoTitleBar);
        final android.widget.FrameLayout iv = new android.widget.FrameLayout(this);
        iv.setBackgroundColor(0xCC000000);
        ImageView pic = new ImageView(this);
        pic.setScaleType(ImageView.ScaleType.FIT_CENTER);
        pic.setImageDrawable(d);
        int bw = 1, bh = 1;
        if (d instanceof BitmapDrawable && ((BitmapDrawable) d).getBitmap() != null) {
            bw = Math.max(1, ((BitmapDrawable) d).getBitmap().getWidth());
            bh = Math.max(1, ((BitmapDrawable) d).getBitmap().getHeight());
        }
        android.util.DisplayMetrics dm = getResources().getDisplayMetrics();
        float mw = dm.widthPixels * 0.8f, mh = dm.heightPixels * 0.7f;
        float sc = Math.min(2f, Math.min(mw / bw, mh / bh));
        android.widget.FrameLayout.LayoutParams plp = new android.widget.FrameLayout.LayoutParams(Math.round(bw * sc), Math.round(bh * sc), Gravity.CENTER);
        iv.addView(pic, plp);
        iv.setAlpha(0f);
        dg.setContentView(iv);
        pinned = false;
        final Runnable out = new Runnable() {
            public void run() {
                iv.animate().alpha(0f).setDuration(300).withEndAction(new Runnable() {
                    public void run() {
                        try {
                            dg.dismiss();
                        } catch (Throwable ignored) { }
                    }
                }).start();
            }
        };
        iv.setOnLongClickListener(new View.OnLongClickListener() {
            public boolean onLongClick(View v) {
                pinned = true;
                hd.removeCallbacks(out);
                return true;
            }
        });
        iv.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                hd.removeCallbacks(out);
                out.run();
            }
        });
        dg.show();
        say();
        iv.animate().alpha(1f).setDuration(350).start();
        hd.postDelayed(out, 2800);
    }

    @Override
    public boolean onOptionsItemSelected(android.view.MenuItem it) {
        if (it.getItemId() == android.R.id.home) {
            finish();
            return true;
        }
        return super.onOptionsItemSelected(it);
    }

    public static void open(Activity a) {
        a.startActivity(new Intent(a, chadsstacys.class));
    }

    private int dp(int v) {
        return (int) TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_DIP, v, getResources().getDisplayMetrics());
    }

    private Drawable dec(byte[] d) {
        if (d == null) return null;
        try {
            Bitmap b = BitmapFactory.decodeByteArray(d, 0, d.length);
            return new BitmapDrawable(getResources(), b);
        } catch (Throwable t) {
            return null;
        }
    }

    private Drawable decR(byte[] d) {
        if (d == null) return null;
        try {
            Bitmap b = BitmapFactory.decodeByteArray(d, 0, d.length);
            int n = Math.min(b.getWidth(), b.getHeight());
            Bitmap o = Bitmap.createBitmap(n, n, Bitmap.Config.ARGB_8888);
            Canvas c = new Canvas(o);
            Paint p = new Paint(Paint.ANTI_ALIAS_FLAG);
            c.drawCircle(n / 2f, n / 2f, n / 2f, p);
            p.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
            int x = (b.getWidth() - n) / 2, y = (b.getHeight() - n) / 2;
            c.drawBitmap(b, new Rect(x, y, x + n, y + n), new Rect(0, 0, n, n), p);
            return new BitmapDrawable(getResources(), o);
        } catch (Throwable t) {
            return null;
        }
    }

    private TextView tv(String s, int sp, int color) {
        TextView t = new TextView(this);
        t.setText(s);
        t.setTextSize(sp);
        t.setTextColor(color);
        return t;
    }

    private Drawable sel() {
        TypedValue v = new TypedValue();
        getTheme().resolveAttribute(android.R.attr.selectableItemBackground, v, true);
        return v.resourceId != 0 ? getResources().getDrawable(v.resourceId) : new ColorDrawable(0);
    }

    private void head(LinearLayout root, String t) {
        TextView h = tv(t.toUpperCase(), 12, 0xFF33B5E5);
        h.setTypeface(Typeface.DEFAULT_BOLD);
        h.setPadding(dp(16), dp(20), dp(16), dp(4));
        root.addView(h, new LinearLayout.LayoutParams(-1, -2));
        View ln = new View(this);
        ln.setBackgroundColor(0xFF33B5E5);
        root.addView(ln, new LinearLayout.LayoutParams(-1, dp(2)));
    }

    private ImageView lastIcon;

    private LinearLayout info(LinearLayout root, String title, String sum, View.OnClickListener ck, Drawable ic) {
        LinearLayout row = new LinearLayout(this);
        row.setOrientation(LinearLayout.HORIZONTAL);
        row.setMinimumHeight(dp(64));
        row.setGravity(Gravity.CENTER_VERTICAL);
        row.setPadding(dp(16), dp(8), dp(16), dp(8));
        row.setBackgroundDrawable(sel());
        lastIcon = null;
        if (ic != null) {
            lastIcon = new ImageView(chadsstacys.this);
            lastIcon.setScaleType(ImageView.ScaleType.CENTER_CROP);
            lastIcon.setImageDrawable(ic);
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(dp(32), dp(32));
            lp.rightMargin = dp(16);
            row.addView(lastIcon, lp);
        }
        LinearLayout col = new LinearLayout(this);
        col.setOrientation(LinearLayout.VERTICAL);
        TextView t = new TextView(this);
        t.setText(title);
        t.setTextAppearance(this, android.R.style.TextAppearance_Holo_Medium);
        col.addView(t);
        if (sum != null && sum.length() > 0) {
            TextView d = new TextView(this);
            d.setText(sum);
            d.setTextAppearance(this, android.R.style.TextAppearance_Holo_Small);
            d.setTextColor(0xFF999999);
            col.addView(d);
        }
        row.addView(col, new LinearLayout.LayoutParams(0, -2, 1f));
        if (ck != null) row.setOnClickListener(ck);
        root.addView(row, new LinearLayout.LayoutParams(-1, -2));
        return row;
    }

    private void divider(LinearLayout root) {
        View line = new View(this);
        line.setBackgroundColor(0x22FFFFFF);
        root.addView(line, new LinearLayout.LayoutParams(-1, 1));
    }

    private void nameRow(LinearLayout root, final int index) {
        final LinearLayout row = new LinearLayout(this);
        row.setGravity(Gravity.CENTER_VERTICAL);
        row.setMinimumHeight(dp(48));
        row.setPadding(dp(16), dp(8), dp(16), dp(8));
        row.setBackgroundDrawable(sel());
        row.addView(tv(COLLABORATORS[index][0], 16, 0xFFFFFFFF));
        row.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) { burst(row, av[index]); }
        });
        row.setOnLongClickListener(new View.OnLongClickListener() {
            public boolean onLongClick(View v) { return showContacts(index); }
        });
        root.addView(row, new LinearLayout.LayoutParams(-1, -2));
    }

    private boolean showContacts(int index) {
        String contacts = COLLABORATORS[index][1];
        if (contacts.length() == 0) return false;
        new android.app.AlertDialog.Builder(this, android.app.AlertDialog.THEME_HOLO_DARK)
                .setTitle(COLLABORATORS[index][0])
                .setMessage(contacts.replace("  -  ", "\n"))
                .setPositiveButton(android.R.string.ok, null)
                .show();
        return true;
    }

    private static class Bart {
        ImageView v;
        float x, y, vx, vy, vr;
    }

    private final java.util.ArrayList<Bart> pile = new java.util.ArrayList<Bart>();
    private android.view.ViewGroup bhost;
    private int bsz;
    private final Runnable loop = new Runnable() {
        public void run() {
            if (bhost == null || pile.isEmpty()) return;
            float w = bhost.getWidth() - bsz, h = bhost.getHeight() - bsz;
            for (Bart b : pile) {
                b.x += b.vx;
                b.y += b.vy;
                if (b.x < 0) { b.x = 0; b.vx = Math.abs(b.vx); }
                if (b.x > w) { b.x = w; b.vx = -Math.abs(b.vx); }
                if (b.y < 0) { b.y = 0; b.vy = Math.abs(b.vy); }
                if (b.y > h) { b.y = h; b.vy = -Math.abs(b.vy); }
                b.v.setTranslationX(b.x);
                b.v.setTranslationY(b.y);
                b.v.setRotation(b.v.getRotation() + b.vr);
            }
            hd.postDelayed(this, 16);
        }
    };

    @Override
    protected void onPause() {
        hd.removeCallbacks(loop);
        super.onPause();
    }

    @Override
    protected void onResume() {
        super.onResume();
        if (!pile.isEmpty()) hd.post(loop);
    }

    private void burst(View src, Drawable d) {
        if (d == null || d.getConstantState() == null) return;
        final android.view.ViewGroup host = (android.view.ViewGroup) findViewById(android.R.id.content);
        int[] a = new int[2], b = new int[2];
        src.getLocationOnScreen(a);
        host.getLocationOnScreen(b);
        bhost = host;
        bsz = dp(30);
        float ox = a[0] - b[0] + src.getWidth() / 2f - bsz / 2f, oy = a[1] - b[1] + src.getHeight() / 2f - bsz / 2f;
        boolean was = !pile.isEmpty();
        for (int i = 0; i < 4; i++) {
            final Bart t = new Bart();
            t.v = new ImageView(this);
            t.v.setScaleType(ImageView.ScaleType.CENTER_CROP);
            t.v.setImageDrawable(d.getConstantState().newDrawable());
            host.addView(t.v, new android.widget.FrameLayout.LayoutParams(bsz, bsz));
            t.x = ox;
            t.y = oy;
            double ang = rnd.nextDouble() * Math.PI * 2;
            float sp = dp(2) + rnd.nextFloat() * dp(3);
            t.vx = (float) Math.cos(ang) * sp;
            t.vy = (float) Math.sin(ang) * sp;
            t.vr = (rnd.nextFloat() - 0.5f) * 8f;
            t.v.setTranslationX(t.x);
            t.v.setTranslationY(t.y);
            pile.add(t);
            if (pile.size() > 60) host.removeView(pile.remove(0).v);
            t.v.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    v.setOnClickListener(null);
                    pile.remove(t);
                    double an = rnd.nextDouble() * Math.PI * 2;
                    float r = dp(500);
                    v.animate().translationXBy((float) Math.cos(an) * r)
                            .translationYBy((float) Math.sin(an) * r)
                            .rotationBy((rnd.nextFloat() - 0.5f) * 1440f)
                            .alpha(0f).setStartDelay(0).setDuration(550)
                            .setInterpolator(new android.view.animation.AccelerateInterpolator())
                            .withEndAction(new Runnable() {
                                public void run() { host.removeView(t.v); }
                            }).start();
                }
            });
        }
        if (!was) hd.post(loop);
    }

    @Override
    protected void onCreate(Bundle s) {
        super.onCreate(s);
        setTitle(lang.tr("About"));
        if (getActionBar() != null) getActionBar().setDisplayHomeAsUpEnabled(true);
        String ver = "";
        try {
            PackageInfo pi = getPackageManager().getPackageInfo(getPackageName(), 0);
            ver = pi.versionName == null ? "" : pi.versionName;
        } catch (Throwable ignored) { }
        for (int i = 0; i < COLLABORATORS.length; i++) {
            av[i] = decR(eggs.read(this, "avatar_" + Math.min(i, 3)));
        }

        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setPadding(0, 0, 0, dp(24));

        info(root, "Movie Studio " + ver, "HoloROM", new View.OnClickListener() {
            public void onClick(View v) {
                taps++;
                if (taps >= 2) {
                    taps = 0;
                    egg();
                }
            }
        }, null);

        head(root, "Colaboradores");
        for (int i = 0; i < COLLABORATORS.length; i++) nameRow(root, i);
        divider(root);

        info(root, lang.tr("Replay tutorial"), null, new View.OnClickListener() {
            public void onClick(View v) {
                kitkatorial.reset(chadsstacys.this);
                Toast.makeText(chadsstacys.this, lang.tr("The tutorial will show when you open a project"), Toast.LENGTH_LONG).show();
            }
        }, null);
        info(root, "Información legal", null, new View.OnClickListener() {
            public void onClick(View v) {
                TextView leg = new TextView(chadsstacys.this);
                leg.setText(lang.tr("Movie Studio is part of AOSP. Copyright © The Android Open Source Project.") + "\n\n"
                        + lang.tr("Apache License 2.0:") + " https://www.apache.org/licenses/LICENSE-2.0\n\n"
                        + lang.tr("Holo icons from Android KitKat (AOSP, Apache 2.0)."));
                leg.setLinkTextColor(0xFF33B5E5);
                leg.setPadding(dp(20), dp(12), dp(20), dp(4));
                android.text.util.Linkify.addLinks(leg, android.text.util.Linkify.WEB_URLS);
                new android.app.AlertDialog.Builder(chadsstacys.this, android.app.AlertDialog.THEME_HOLO_DARK)
                        .setTitle("Información legal").setView(leg).setPositiveButton(android.R.string.ok, null).show();
            }
        }, null);

        ScrollView sv = new ScrollView(this);
        sv.addView(root);
        setContentView(sv);
    }
}
