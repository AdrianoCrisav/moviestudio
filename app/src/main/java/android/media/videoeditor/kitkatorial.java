package android.media.videoeditor;

import android.app.Activity;
import android.content.SharedPreferences;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;

public final class kitkatorial extends FrameLayout {
    private static final String TAG = "ve_tutorial";
    private static final String[] MAIN_IDS = {"add_new_media_item_menu", "timeline_scroller", "playback_buttons", "#overflow"};
    private static final String[] CLIP_IDS = {"media_item_title_menu", "media_item_effect_menu", "menu_vs_time", "menu_vs_image"};
    private static final int T_MAIN = 0, T_CLIP = 1, T_LAYER = 2;
    private static final String[] LAYER_IDS = {"#item:" + layerbox.M_MOVE, "#item:" + layerbox.M_DUP, "#item:" + layerbox.M_CHROMA, "#item:" + layerbox.M_OPACITY};
    private static final String[][] LAYER_TXT = {
        {"Move", "Place the layer with the pad or the arrows, and set its size with the slider."},
        {"Duplicate", "Make a copy of this layer to reuse it with another position or size."},
        {"Chroma", "Remove a solid color from the layer, like a green screen. Then tap the color you want to remove."},
        {"Opacity", "Make the layer see-through with a slider. Delete is in the three dots menu."}
    };
    private static final String[][] CLIP_TXT = {
        {"Title", "Add text over this clip: pick a template, font, color, effect and animation, and see it live before applying."},
        {"Effect", "Color looks plus shake, pulse, waves, swirl, kaleidoscope, glitch and more. Transitions at the start or end of the clip are here too."},
        {"Time and audio", "Change speed, play the clip in reverse, freeze a frame, or draw a volume curve to fade the sound in and out."},
        {"Image", "Rotate 90°, crop and rotate freely, or place another video or photo on top with picture in picture."}
    };
    private static final String[][] TXT = {
        {"Add your clips", "Tap here to import videos, photos or music."},
        {"Your timeline", "Your clips live here. Tap a clip for effects, speed, freeze frame, rotation and more. Tap the space between two clips to add a transition."},
        {"Preview", "Play, pause and move through your movie with these buttons."},
        {"Export", "When you are done, open this menu and tap Export movie. You can choose quality, format and fps."}
    };

    private final Activity act;
    private final Paint scrim = new Paint(), clear = new Paint(), ring = new Paint(), glow = new Paint();
    private final RectF hole = new RectF();
    private boolean circle;
    private LinearLayout card;
    private TextView title, body, count, next, skip;
    private int step = -1;
    private final int tour;
    private final String[] IDS;
    private final String[][] TX;
    private android.widget.ImageView hand;
    private final Runnable handLoop = new Runnable() {
        public void run() { animateHand(); }
    };

    public static void maybe(final Activity a) {
        final SharedPreferences sp = a.getSharedPreferences("tutorial", 0);
        final ViewGroup dc = (ViewGroup) a.getWindow().getDecorView();
        dc.postDelayed(new Runnable() {
            public void run() {
                if (a.isFinishing() || sp.getBoolean("done_clip", false)) return;
                View v = dc.findViewById(a.getResources().getIdentifier("media_item_effect_menu", "id", a.getPackageName()));
                if (v != null && v.isShown() && v.getWidth() > 0 && sp.getBoolean("done", false)
                        && dc.findViewWithTag(TAG) == null) {
                    dc.addView(new kitkatorial(a, T_CLIP), new FrameLayout.LayoutParams(-1, -1));
                    return;
                }
                dc.postDelayed(this, 900);
            }
        }, 1500);
        if (sp.getBoolean("done", false)) return;
        final ViewGroup decor = (ViewGroup) a.getWindow().getDecorView();
        decor.postDelayed(new Runnable() {
            public void run() {
                if (a.isFinishing() || sp.getBoolean("done", false) || decor.findViewWithTag(TAG) != null) return;
                decor.addView(new kitkatorial(a, T_MAIN), new FrameLayout.LayoutParams(-1, -1));
            }
        }, 700);
    }

    static void maybeLayer(final Activity a) {
        final SharedPreferences sp = a.getSharedPreferences("tutorial", 0);
        if (sp.getBoolean("done_layer", false) || !sp.getBoolean("done", false)) return;
        final ViewGroup dc = (ViewGroup) a.getWindow().getDecorView();
        dc.postDelayed(new Runnable() {
            private int tries;

            public void run() {
                if (a.isFinishing() || sp.getBoolean("done_layer", false) || dc.findViewWithTag(TAG) != null) return;
                View move = dc.findViewById(layerbox.M_MOVE);
                if (move != null && move.isShown() && move.getWidth() > 0) {
                    dc.addView(new kitkatorial(a, T_LAYER), new FrameLayout.LayoutParams(-1, -1));
                    return;
                }
                if (++tries < 10) dc.postDelayed(this, 400);
            }
        }, 700);
    }

    public static void reset(Activity a) {
        a.getSharedPreferences("tutorial", 0).edit().putBoolean("done", false).putBoolean("done_clip", false).putBoolean("done_layer", false).apply();
    }

    private kitkatorial(Activity activity, int tourKind) {
        super(activity);
        act = activity;
        tour = tourKind;
        IDS = tourKind == T_LAYER ? LAYER_IDS : tourKind == T_CLIP ? CLIP_IDS : MAIN_IDS;
        TX = tourKind == T_LAYER ? LAYER_TXT : tourKind == T_CLIP ? CLIP_TXT : TXT;
        setTag(TAG);
        setClickable(true);
        setFocusableInTouchMode(true);
        setWillNotDraw(false);
        setLayerType(LAYER_TYPE_SOFTWARE, null);
        setupPaints();
        buildCard();
        buildHand();
        bindActions();
        post(new Runnable() {
            public void run() {
                requestFocus();
                show(0);
            }
        });
    }

    private void setupPaints() {
        scrim.setColor(0x99000000);
        clear.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        clear.setAntiAlias(true);
        ring.setAntiAlias(true);
        ring.setStyle(Paint.Style.STROKE);
        ring.setStrokeWidth(dp(2));
        ring.setColor(0xFF33B5E5);
        glow.setAntiAlias(true);
        glow.setStyle(Paint.Style.STROKE);
        glow.setStrokeWidth(dp(7));
        glow.setColor(0x4433B5E5);
    }

    private void buildCard() {
        card = new LinearLayout(act);
        card.setOrientation(LinearLayout.VERTICAL);
        card.setPadding(dp(18), dp(16), dp(18), 0);
        GradientDrawable background = new GradientDrawable();
        background.setColor(0xF2212121);
        background.setStroke(dp(1), 0xFF3A3A3A);
        card.setBackgroundDrawable(background);
        title = tv(20, 0xFF33B5E5);
        title.setTypeface(null, Typeface.BOLD);
        body = tv(15, Color.WHITE);
        body.setPadding(0, dp(8), 0, dp(12));
        card.addView(title);
        View underline = new View(act);
        underline.setBackgroundColor(0xFF33B5E5);
        LinearLayout.LayoutParams underlineParams = new LinearLayout.LayoutParams(-1, dp(2));
        underlineParams.setMargins(0, dp(6), 0, 0);
        card.addView(underline, underlineParams);
        card.addView(body);
        View separator = new View(act);
        separator.setBackgroundColor(0xFF3A3A3A);
        card.addView(separator, new LinearLayout.LayoutParams(-1, dp(1)));
        card.addView(buildButtonRow(), new LinearLayout.LayoutParams(-1, -2));
        addView(card, new FrameLayout.LayoutParams(-2, -2));
        card.setVisibility(INVISIBLE);
    }

    private LinearLayout buildButtonRow() {
        LinearLayout row = new LinearLayout(act);
        row.setGravity(Gravity.CENTER_VERTICAL);
        count = tv(12, Color.GRAY);
        row.addView(count, new LinearLayout.LayoutParams(0, -2, 1f));
        skip = btn(Color.LTGRAY);
        next = btn(0xFF33B5E5);
        skip.setBackgroundDrawable(flat());
        next.setBackgroundDrawable(flat());
        View divider = new View(act);
        divider.setBackgroundColor(0xFF3A3A3A);
        row.addView(skip);
        row.addView(divider, new LinearLayout.LayoutParams(dp(1), dp(28)));
        row.addView(next);
        return row;
    }

    private void buildHand() {
        hand = new android.widget.ImageView(act);
        int handId = getResources().getIdentifier("ic_vs_hand", "drawable", act.getPackageName());
        if (handId != 0) hand.setImageResource(handId);
        hand.setAlpha(0f);
        addView(hand, new FrameLayout.LayoutParams(-2, -2));
    }

    private void bindActions() {
        skip.setOnClickListener(new OnClickListener() {
            public void onClick(View view) { finish(); }
        });
        next.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                if (step >= IDS.length - 1) finish(); else show(step + 1);
            }
        });
        setOnKeyListener(new OnKeyListener() {
            public boolean onKey(View view, int keyCode, KeyEvent event) {
                if (keyCode == KeyEvent.KEYCODE_BACK) {
                    if (event.getAction() == KeyEvent.ACTION_UP) finish();
                    return true;
                }
                return false;
            }
        });
    }

    private int dp(int v) {
        return interfaz.dp(getContext(), v);
    }

    private TextView tv(int size, int color) {
        TextView text = new TextView(act);
        text.setTextSize(size);
        text.setTextColor(color);
        return text;
    }

    private TextView btn(int color) {
        TextView text = tv(14, color);
        text.setTypeface(null, Typeface.BOLD);
        text.setPadding(dp(14), dp(10), dp(14), dp(10));
        return text;
    }

    private View find(String name) {
        ViewGroup decor = (ViewGroup) act.getWindow().getDecorView();
        View v = null;
        if (name.startsWith("#item:")) {
            v = decor.findViewById(Integer.parseInt(name.substring(6)));
        } else if (name.equals("#overflow")) {
            v = byClass(decor, "OverflowMenuButton");
        } else {
            int id = getResources().getIdentifier(name, "id", act.getPackageName());
            if (id != 0) v = decor.findViewById(id);
        }
        return v != null && v.isShown() && v.getWidth() > 0 ? v : null;
    }

    private View byClass(View v, String suffix) {
        if (v.getClass().getName().endsWith(suffix)) return v;
        if (v instanceof ViewGroup) {
            ViewGroup g = (ViewGroup) v;
            for (int i = 0; i < g.getChildCount(); i++) {
                View r = byClass(g.getChildAt(i), suffix);
                if (r != null) return r;
            }
        }
        return null;
    }

    private void placeHole(View target) {
        hole.setEmpty();
        if (target == null) return;
        int[] a = new int[2], b = new int[2];
        target.getLocationOnScreen(a);
        getLocationOnScreen(b);
        int pad = dp(4);
        hole.set(a[0] - b[0] - pad, a[1] - b[1] - pad, a[0] - b[0] + target.getWidth() + pad, a[1] - b[1] + target.getHeight() + pad);
        circle = Math.abs(hole.width() - hole.height()) < dp(16);
        if (circle) {
            float r = Math.max(hole.width(), hole.height()) / 2f;
            hole.set(hole.centerX() - r, hole.centerY() - r, hole.centerX() + r, hole.centerY() + r);
        }
    }

    private void placeCard() {
        int w = Math.min(getWidth() - dp(32), dp(420));
        FrameLayout.LayoutParams lp = new FrameLayout.LayoutParams(w, -2);
        if (hole.isEmpty()) {
            lp.gravity = Gravity.CENTER;
        } else if (hole.centerY() < getHeight() / 2f) {
            lp.gravity = Gravity.TOP | Gravity.CENTER_HORIZONTAL;
            lp.topMargin = (int) hole.bottom + dp(18);
        } else {
            lp.gravity = Gravity.BOTTOM | Gravity.CENTER_HORIZONTAL;
            lp.bottomMargin = (int) (getHeight() - hole.top) + dp(18);
        }
        card.setLayoutParams(lp);
    }

    private final Runnable retrack = new Runnable() {
        public void run() {
            if (step < 0) return;
            RectF before = new RectF(hole);
            placeHole(find(IDS[step]));
            if (!before.equals(hole)) {
                placeCard();
                invalidate();
            }
            postDelayed(this, 150);
        }
    };

    private void show(int s) {
        step = s;
        placeHole(find(IDS[s]));
        title.setText(lang.tr(TX[s][0]));
        body.setText(lang.tr(TX[s][1]));
        count.setText((s + 1) + " / " + IDS.length);
        removeCallbacks(handLoop);
        post(handLoop);
        skip.setText(lang.tr("Skip"));
        skip.setVisibility(s >= IDS.length - 1 ? GONE : VISIBLE);
        next.setText(lang.tr(s >= IDS.length - 1 ? "Got it" : "Next"));
        placeCard();
        card.setAlpha(0f);
        card.setVisibility(VISIBLE);
        card.animate().alpha(1f).setDuration(220).start();
        removeCallbacks(retrack);
        postDelayed(retrack, 150);
        invalidate();
    }

    @Override
    protected void onDraw(Canvas c) {
        c.drawPaint(scrim);
        if (hole.isEmpty()) return;
        if (circle) {
            float r = hole.width() / 2f;
            c.drawCircle(hole.centerX(), hole.centerY(), r, clear);
            c.drawCircle(hole.centerX(), hole.centerY(), r, glow);
            c.drawCircle(hole.centerX(), hole.centerY(), r, ring);
        } else {
            float r = dp(2);
            c.drawRoundRect(hole, r, r, clear);
            c.drawRoundRect(hole, r, r, glow);
            c.drawRoundRect(hole, r, r, ring);
        }
    }

    private android.graphics.drawable.StateListDrawable flat() {
        android.graphics.drawable.StateListDrawable d = new android.graphics.drawable.StateListDrawable();
        d.addState(new int[] {android.R.attr.state_pressed}, new android.graphics.drawable.ColorDrawable(0x4433B5E5));
        d.addState(new int[] {}, new android.graphics.drawable.ColorDrawable(0));
        return d;
    }

    private void animateHand() {
        if (hole.isEmpty() || hand.getDrawable() == null) return;
        boolean drag = tour == T_MAIN && step == 1;
        final float cx = hole.centerX(), cy = hole.centerY();
        float hw = hand.getDrawable().getIntrinsicWidth(), hh = hand.getDrawable().getIntrinsicHeight();
        float sx = drag ? hole.left + hole.width() * 0.25f : cx, ex = drag ? hole.left + hole.width() * 0.75f : cx;
        hand.animate().cancel();
        hand.setX(sx - hw * 0.35f + (drag ? 0 : dp(24)));
        hand.setY(cy - hh * 0.1f + (drag ? 0 : dp(24)));
        hand.setScaleX(1f);
        hand.setScaleY(1f);
        hand.setAlpha(0f);
        if (drag) {
            hand.animate().alpha(1f).setDuration(250).withEndAction(new Runnable() {
                public void run() { }
            }).start();
            hand.animate().x(ex - hw * 0.35f).setStartDelay(250).setDuration(900).alpha(1f).withEndAction(new Runnable() {
                public void run() {
                    hand.animate().alpha(0f).setStartDelay(0).setDuration(250).start();
                    postDelayed(handLoop, 1400);
                }
            }).start();
        } else {
            hand.animate().alpha(1f).x(cx - hw * 0.35f).y(cy - hh * 0.1f).setDuration(450).withEndAction(new Runnable() {
                public void run() {
                    hand.animate().scaleX(0.85f).scaleY(0.85f).setDuration(140).withEndAction(new Runnable() {
                        public void run() {
                            hand.animate().scaleX(1f).scaleY(1f).setDuration(140).withEndAction(new Runnable() {
                                public void run() {
                                    hand.animate().alpha(0f).setDuration(300).start();
                                    postDelayed(handLoop, 1200);
                                }
                            }).start();
                        }
                    }).start();
                }
            }).start();
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        removeCallbacks(handLoop);
        removeCallbacks(retrack);
        hand.animate().cancel();
        super.onDetachedFromWindow();
    }

    private void finish() {
        removeCallbacks(handLoop);
        act.getSharedPreferences("tutorial", 0).edit().putBoolean(tour == T_LAYER ? "done_layer" : tour == T_CLIP ? "done_clip" : "done", true).apply();
        animate().alpha(0f).setDuration(200).withEndAction(new Runnable() {
            public void run() {
                try {
                    ((ViewGroup) getParent()).removeView(kitkatorial.this);
                } catch (Throwable ignored) { }
            }
        }).start();
    }
}
