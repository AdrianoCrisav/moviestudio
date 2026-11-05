package android.media.videoeditor;

import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLExt;
import android.opengl.EGLSurface;
import android.opengl.GLES11Ext;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import android.opengl.Matrix;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.view.Surface;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;

final class glglglgl {
    private static final String VS = "uniform mat4 uMvp;\n"
            + "uniform mat4 uTexM;\n"
            + "attribute vec4 aPos;\n"
            + "attribute vec4 aTex;\n"
            + "varying vec2 vTex;\n"
            + "varying vec2 vPos;\n"
            + "void main() {\n"
            + "  gl_Position = uMvp * aPos;\n"
            + "  vPos = aPos.xy * 0.5 + 0.5;\n"
            + "  vTex = (uTexM * aTex).xy;\n"
            + "}\n";

    private static final String FX = "varying vec2 vPos;\n"
            // cada efecto es un numero btw
            + "uniform float uMode;\n"
            + "uniform float uMode2;\n"
            + "uniform float uMode3;\n"
            + "uniform vec3 uAmt;\n"
            + "uniform vec3 uColor;\n"
            + "uniform float uAlpha;\n"
            + "uniform float uGeo;\n"
            + "uniform float uTime;\n"
            + "uniform float uAsp;\n"
            + "float hsh(float n) { return fract(sin(n * 91.345) * 47453.5453); }\n"
            + "vec2 geoUv(vec2 uv) {\n"
            + "  if (uGeo < 0.5) return uv;\n"
            + "  vec2 c = uv - 0.5;\n"
            + "  if (uGeo < 1.5) {\n"
            + "    float k = floor(uTime * 24.0);\n"
            + "    return c * 0.94 + 0.5 + vec2(hsh(k) - 0.5, hsh(k + 7.0) - 0.5) * 0.04;\n"
            + "  }\n"
            + "  if (uGeo < 2.5) return c * (1.0 - 0.12 * (0.5 + 0.5 * sin(uTime * 7.0))) + 0.5;\n"
            + "  if (uGeo < 3.5) return c * 0.96 + 0.5 + 0.012 * vec2(sin(uv.y * 28.0 + uTime * 7.0), cos(uv.x * 22.0 + uTime * 6.0));\n"
            + "  if (uGeo < 4.5) {\n"
            + "    c.x *= uAsp;\n"
            + "    float a = (1.0 - smoothstep(0.0, 0.6, length(c))) * 3.0 * sin(uTime * 2.0);\n"
            + "    float cs = cos(a), sn = sin(a);\n"
            + "    c = vec2(c.x * cs - c.y * sn, c.x * sn + c.y * cs);\n"
            + "    c.x /= uAsp;\n"
            + "    return c + 0.5;\n"
            + "  }\n"
            + "  if (uGeo < 5.5) {\n"
            + "    float r = length(vec2(c.x * uAsp, c.y));\n"
            + "    return c * (1.0 - 0.5 * (1.0 - smoothstep(0.0, 0.7, r)) * (0.6 + 0.4 * sin(uTime * 3.0))) + 0.5;\n"
            + "  }\n"
            + "  if (uGeo < 6.5) {\n"
            + "    vec2 p = vec2(c.x * uAsp, c.y);\n"
            + "    float r = length(p);\n"
            + "    float sg = 0.5235988;\n"
            + "    float a = abs(mod(atan(p.y, p.x) + uTime * 0.3, 2.0 * sg) - sg);\n"
            + "    p = vec2(cos(a), sin(a)) * r;\n"
            + "    p.x /= uAsp;\n"
            + "    return p * 0.9 + 0.5;\n"
            + "  }\n"
            + "  if (uGeo < 7.5) {\n"
            + "    float k = floor(uTime * 10.0);\n"
            + "    float band = floor(uv.y * 14.0 + hsh(k) * 14.0);\n"
            + "    uv.x += step(0.72, hsh(band + k * 3.0)) * (hsh(band * 1.7 + k) - 0.5) * 0.12;\n"
            + "    return uv;\n"
            + "  }\n"
            + "  if (uGeo < 8.5) return uv;\n"
            + "  if (uGeo < 9.5) return fract(uv * 2.0);\n"
            + "  return uv;\n"
            + "}\n"
            + "vec3 fxm(vec3 c, float m) {\n"
            + "  float l = dot(c, vec3(0.299, 0.587, 0.114));\n"
            + "  vec3 sep = vec3(dot(c, vec3(0.393, 0.769, 0.189)), dot(c, vec3(0.349, 0.686, 0.168)), dot(c, vec3(0.272, 0.534, 0.131)));\n"
            + "  if (m > 0.5 && m < 1.5) c = mix(c, clamp(uColor * l * 2.0, 0.0, 1.0), 0.8);\n"
            + "  else if (m > 1.5 && m < 2.5) c = mix(c, uColor, vPos.y * 0.8);\n"
            + "  else if (m > 2.5 && m < 3.5) c = sep;\n"
            + "  else if (m > 3.5 && m < 4.5) c = 1.0 - c;\n"
            + "  else if (m > 4.5 && m < 5.5) c = mix(vec3(l), sep, 0.6) * (1.0 - 0.7 * length(vPos - 0.5));\n"
            + "  else if (m > 5.5 && m < 6.5) c = vec3(smoothstep(0.2, 0.8, l));\n"
            + "  else if (m > 7.5 && m < 8.5) c = c * clamp(1.15 - 1.1 * length(vPos - 0.5), 0.0, 1.0);\n"
            + "  else if (m > 8.5 && m < 9.5) c = floor(c * 4.0 + 0.5) / 4.0;\n"
            + "  else if (m > 12.5 && m < 13.5) c = c * (0.82 + 0.18 * sin(vPos.y * 300.0));\n"
            + "  else if (m > 13.5 && m < 14.5) c = c * 1.25 + 0.04;\n"
            + "  else if (m > 14.5 && m < 15.5) c = mix(vec3(0.05, 0.0, 0.25), vec3(1.0, 0.8, 0.3), l);\n"
            + "  return clamp(c, 0.0, 1.0);\n"
            + "}\n"
            + "vec3 fx(vec3 c) {\n"
            + "  c = mix(c, fxm(c, uMode), uAmt.x);\n"
            + "  c = mix(c, fxm(c, uMode2), uAmt.y);\n"
            + "  return mix(c, fxm(c, uMode3), uAmt.z);\n"
            + "}\n";

    private static final String FS_OES = "#extension GL_OES_EGL_image_external : require\n"
            + "precision mediump float;\n"
            + "varying vec2 vTex;\n"
            + "uniform samplerExternalOES sTex;\n"
            + FX
            + "void main() {\n"
            + "  vec2 uv = (uMode > 6.5 && uMode < 7.5) ? (floor(vTex * 90.0) + 0.5) / 90.0 : vTex;\n"
            + "  uv = geoUv(uv);\n"
            + "  if (uMode > 9.5 && uMode < 10.5 && vTex.x > 0.5) uv.x = 1.0 - vTex.x;\n"
            + "  vec4 t = texture2D(sTex, uv);\n"
            + "  if (uGeo > 6.5 && uGeo < 7.5) {\n"
            + "    t.r = texture2D(sTex, uv + vec2(0.012, 0.0)).r;\n"
            + "    t.b = texture2D(sTex, uv - vec2(0.012, 0.0)).b;\n"
            + "  } else if (uGeo > 7.5 && uGeo < 8.5) {\n"
            + "    vec2 d = vec2(0.5) - uv;\n"
            + "    vec4 a = t;\n"
            + "    for (int i = 1; i < 8; i++) a += texture2D(sTex, uv + d * 0.014 * float(i) * (0.6 + 0.4 * sin(uTime * 4.0)));\n"
            + "    t = a / 8.0;\n"
            + "  } else if (uGeo > 9.5 && uGeo < 10.5) {\n"
            + "    t = mix(t, texture2D(sTex, uv + vec2(0.04 * sin(uTime * 3.0), 0.02 * cos(uTime * 2.0))), 0.5);\n"
            + "  }\n"
            + "  if (uMode > 10.5 && uMode < 11.5) {\n"
            + "    t.r = texture2D(sTex, uv + vec2(0.008, 0.0)).r;\n"
            + "    t.b = texture2D(sTex, uv - vec2(0.008, 0.0)).b;\n"
            + "  } else if (uMode > 11.5 && uMode < 12.5) {\n"
            + "    vec2 o = vec2(0.006);\n"
            + "    t = t + texture2D(sTex, uv + vec2(o.x, 0.0)) + texture2D(sTex, uv - vec2(o.x, 0.0))\n"
            + "      + texture2D(sTex, uv + vec2(0.0, o.y)) + texture2D(sTex, uv - vec2(0.0, o.y))\n"
            + "      + texture2D(sTex, uv + o) + texture2D(sTex, uv - o)\n"
            + "      + texture2D(sTex, uv + vec2(o.x, -o.y)) + texture2D(sTex, uv + vec2(-o.x, o.y));\n"
            + "    t = t / 9.0;\n"
            + "  }\n"
            + "  if (uMode > 15.5) {\n"
            + "    float tl = (uMode - 16.0) * 0.5;\n"
            + "    vec2 cc = vec2(dot(t.rgb, vec3(-0.169, -0.331, 0.5)), dot(t.rgb, vec3(0.5, -0.419, -0.081)));\n"
            + "    vec2 ck = vec2(dot(uColor, vec3(-0.169, -0.331, 0.5)), dot(uColor, vec3(0.5, -0.419, -0.081)));\n"
            + "    float ka = smoothstep(tl, tl + 0.08, distance(cc, ck));\n"
            + "    gl_FragColor = vec4(t.rgb * ka, ka) * uAlpha;\n"
            + "  } else gl_FragColor = vec4(fx(t.rgb), t.a) * uAlpha;\n"
            + "}\n";

    private static final String FS_FLAT = "precision mediump float;\n"
            + "varying vec2 vTex;\n"
            + "uniform sampler2D sTex;\n"
            + FX
            + "void main() {\n"
            + "  vec2 uv = (uMode > 6.5 && uMode < 7.5) ? (floor(vTex * 90.0) + 0.5) / 90.0 : vTex;\n"
            + "  uv = geoUv(uv);\n"
            + "  if (uMode > 9.5 && uMode < 10.5 && vTex.x > 0.5) uv.x = 1.0 - vTex.x;\n"
            + "  vec4 t = texture2D(sTex, uv);\n"
            + "  if (uGeo > 6.5 && uGeo < 7.5) {\n"
            + "    t.r = texture2D(sTex, uv + vec2(0.012, 0.0)).r;\n"
            + "    t.b = texture2D(sTex, uv - vec2(0.012, 0.0)).b;\n"
            + "  } else if (uGeo > 7.5 && uGeo < 8.5) {\n"
            + "    vec2 d = vec2(0.5) - uv;\n"
            + "    vec4 a = t;\n"
            + "    for (int i = 1; i < 8; i++) a += texture2D(sTex, uv + d * 0.014 * float(i) * (0.6 + 0.4 * sin(uTime * 4.0)));\n"
            + "    t = a / 8.0;\n"
            + "  } else if (uGeo > 9.5 && uGeo < 10.5) {\n"
            + "    t = mix(t, texture2D(sTex, uv + vec2(0.04 * sin(uTime * 3.0), 0.02 * cos(uTime * 2.0))), 0.5);\n"
            + "  }\n"
            + "  if (uMode > 10.5 && uMode < 11.5) {\n"
            + "    t.r = texture2D(sTex, uv + vec2(0.008, 0.0)).r;\n"
            + "    t.b = texture2D(sTex, uv - vec2(0.008, 0.0)).b;\n"
            + "  } else if (uMode > 11.5 && uMode < 12.5) {\n"
            + "    vec2 o = vec2(0.006);\n"
            + "    t = t + texture2D(sTex, uv + vec2(o.x, 0.0)) + texture2D(sTex, uv - vec2(o.x, 0.0))\n"
            + "      + texture2D(sTex, uv + vec2(0.0, o.y)) + texture2D(sTex, uv - vec2(0.0, o.y))\n"
            + "      + texture2D(sTex, uv + o) + texture2D(sTex, uv - o)\n"
            + "      + texture2D(sTex, uv + vec2(o.x, -o.y)) + texture2D(sTex, uv + vec2(-o.x, o.y));\n"
            + "    t = t / 9.0;\n"
            + "  }\n"
            + "  if (uMode > 15.5) {\n"
            + "    float tl = (uMode - 16.0) * 0.5;\n"
            + "    vec2 cc = vec2(dot(t.rgb, vec3(-0.169, -0.331, 0.5)), dot(t.rgb, vec3(0.5, -0.419, -0.081)));\n"
            + "    vec2 ck = vec2(dot(uColor, vec3(-0.169, -0.331, 0.5)), dot(uColor, vec3(0.5, -0.419, -0.081)));\n"
            + "    float ka = smoothstep(tl, tl + 0.08, distance(cc, ck));\n"
            + "    gl_FragColor = vec4(t.rgb * ka, ka) * uAlpha;\n"
            + "  } else gl_FragColor = vec4(fx(t.rgb), t.a) * uAlpha;\n"
            + "}\n";

    private static final String FS_MIX = "precision mediump float;\n"
            + "varying vec2 vTex;\n"
            + "uniform sampler2D sA;\n"
            + "uniform sampler2D sB;\n"
            + "uniform sampler2D sM;\n"
            + "uniform float uThr;\n"
            + "uniform float uSoft;\n"
            + "uniform float uInv;\n"
            + "void main() {\n"
            + "  vec4 a = texture2D(sA, vTex);\n"
            + "  vec4 b = texture2D(sB, vTex);\n"
            + "  float m = texture2D(sM, vec2(vTex.x, 1.0 - vTex.y)).r;\n"
            + "  if (uInv > 0.5) m = 1.0 - m;\n"
            + "  float k = clamp((uThr - m) / uSoft, 0.0, 1.0);\n"
            + "  gl_FragColor = mix(a, b, k);\n"
            + "}\n";

    private static final class Prog {
        int id, pos, tex, mvp, texM, samp, mode, mode2, mode3, amt, color, alpha, geo, time, asp;
    }

    private static final class Frames implements SurfaceTexture.OnFrameAvailableListener {
        private boolean ready;

        @Override
        public synchronized void onFrameAvailable(SurfaceTexture t) {
            ready = true;
            notifyAll();
        }

        synchronized boolean awaitMs(long ms) {
            long limit = SystemClock.uptimeMillis() + ms;
            while (!ready) {
                long left = limit - SystemClock.uptimeMillis();
                if (left <= 0) return false;
                try {
                    wait(left);
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    return false;
                }
            }
            ready = false;
            return true;
        }

        synchronized void await() {
            long limit = SystemClock.uptimeMillis() + 5000;
            while (!ready) {
                long left = limit - SystemClock.uptimeMillis();
                if (left <= 0) throw new RuntimeException("el decoder no entrego frame");
                try {
                    wait(left);
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    throw new RuntimeException("interrumpido");
                }
            }
            ready = false;
        }
    }

    private final int width, height;
    private EGLDisplay dpy = EGL14.EGL_NO_DISPLAY;
    private EGLContext ctx = EGL14.EGL_NO_CONTEXT;
    private EGLSurface surf = EGL14.EGL_NO_SURFACE;
    private Prog oes, flat, mixP;
    private int mA, mB, mM, mThr, mSoft, mInv;
    private final int[] fbo = new int[3];
    private final int[] fboTex = new int[3];
    private boolean fboReady;
    private final float[] ident = new float[16];
    private final FloatBuffer vtx, uv;
    private final float[] mvp = new float[16];
    private final float[] rmat = new float[16];
    private final float[] tmpM = new float[16];
    private int rot;
    private boolean xf, xFill;
    private float xl, xt, xr = 1f, xb = 1f, xAng;
    private final float[] cropC = new float[16], tmX = new float[16], frM = new float[16];
    private final float[] texM = new float[16];
    private final float[] flipM = new float[16];
    private int oesTex;
    private float fxMode;
    private float geoId, geoT, geoCur;
    private float fxM2, fxM3, fxA1 = 1f, fxA2 = 1f, fxA3 = 1f;
    private float curM2, curM3, curA1 = 1f, curA2 = 1f, curA3 = 1f;
    private float fxR, fxG, fxB;
    private float trA = 1f, trX, trY;
    private SurfaceTexture st;
    private HandlerThread ht;
    private final Frames frames = new Frames();

    glglglgl(Surface encoderSurface, int width, int height) {
        this.width = width;
        this.height = height;
        vtx = floats(new float[]{-1f, -1f, 1f, -1f, -1f, 1f, 1f, 1f});
        uv = floats(new float[]{0f, 0f, 1f, 0f, 0f, 1f, 1f, 1f});
        Matrix.setIdentityM(flipM, 0);
        flipM[5] = -1f;
        flipM[13] = 1f;
        Matrix.setIdentityM(texM, 0);
        try {
            init(encoderSurface);
        } catch (RuntimeException e) {
            release();
            throw e;
        }
    }

    private void init(Surface encoderSurface) {
        dpy = EGL14.eglGetDisplay(EGL14.EGL_DEFAULT_DISPLAY);
        if (dpy == EGL14.EGL_NO_DISPLAY) throw new RuntimeException("sin display egl");
        int[] ver = new int[2];
        if (!EGL14.eglInitialize(dpy, ver, 0, ver, 1)) throw new RuntimeException("egl no inicia");
        int[] attribs = {
                EGL14.EGL_RED_SIZE, 8,
                EGL14.EGL_GREEN_SIZE, 8,
                EGL14.EGL_BLUE_SIZE, 8,
                EGL14.EGL_RENDERABLE_TYPE, EGL14.EGL_OPENGL_ES2_BIT,
                0x3142, 1,
                EGL14.EGL_NONE
        };
        EGLConfig[] cfg = new EGLConfig[1];
        int[] num = new int[1];
        if (!EGL14.eglChooseConfig(dpy, attribs, 0, cfg, 0, 1, num, 0) || num[0] < 1) {
            throw new RuntimeException("sin config egl");
        }
        int[] ctxAttr = {EGL14.EGL_CONTEXT_CLIENT_VERSION, 2, EGL14.EGL_NONE};
        ctx = EGL14.eglCreateContext(dpy, cfg[0], EGL14.EGL_NO_CONTEXT, ctxAttr, 0);
        if (ctx == EGL14.EGL_NO_CONTEXT) throw new RuntimeException("sin contexto egl");
        int[] sAttr = {EGL14.EGL_NONE};
        surf = EGL14.eglCreateWindowSurface(dpy, cfg[0], encoderSurface, sAttr, 0);
        if (surf == EGL14.EGL_NO_SURFACE) throw new RuntimeException("sin surface egl");
        if (!EGL14.eglMakeCurrent(dpy, surf, surf, ctx)) throw new RuntimeException("makeCurrent fallo");

        oes = program(FS_OES);
        flat = program(FS_FLAT);
        mixP = program(FS_MIX);
        mA = GLES20.glGetUniformLocation(mixP.id, "sA");
        mB = GLES20.glGetUniformLocation(mixP.id, "sB");
        mM = GLES20.glGetUniformLocation(mixP.id, "sM");
        mThr = GLES20.glGetUniformLocation(mixP.id, "uThr");
        mSoft = GLES20.glGetUniformLocation(mixP.id, "uSoft");
        mInv = GLES20.glGetUniformLocation(mixP.id, "uInv");
        Matrix.setIdentityM(ident, 0);
        oesTex = newTexture(GLES11Ext.GL_TEXTURE_EXTERNAL_OES);
        st = new SurfaceTexture(oesTex);
        if (android.os.Build.VERSION.SDK_INT >= 21) {
            ht = new HandlerThread("ve-frames");
            ht.start();
            st.setOnFrameAvailableListener(frames, new Handler(ht.getLooper()));
        } else {
            st.setOnFrameAvailableListener(frames);
        }
    }

    private static FloatBuffer floats(float[] a) {
        FloatBuffer b = ByteBuffer.allocateDirect(a.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        b.put(a);
        b.position(0);
        return b;
    }

    private static int compile(int type, String src) {
        int s = GLES20.glCreateShader(type);
        GLES20.glShaderSource(s, src);
        GLES20.glCompileShader(s);
        int[] ok = new int[1];
        GLES20.glGetShaderiv(s, GLES20.GL_COMPILE_STATUS, ok, 0);
        if (ok[0] == 0) {
            String log = GLES20.glGetShaderInfoLog(s);
            GLES20.glDeleteShader(s);
            throw new RuntimeException("shader: " + log);
        }
        return s;
    }

    private static Prog program(String fs) {
        int v = compile(GLES20.GL_VERTEX_SHADER, VS);
        int f = compile(GLES20.GL_FRAGMENT_SHADER, fs);
        Prog p = new Prog();
        p.id = GLES20.glCreateProgram();
        GLES20.glAttachShader(p.id, v);
        GLES20.glAttachShader(p.id, f);
        GLES20.glLinkProgram(p.id);
        int[] ok = new int[1];
        GLES20.glGetProgramiv(p.id, GLES20.GL_LINK_STATUS, ok, 0);
        if (ok[0] == 0) throw new RuntimeException("link: " + GLES20.glGetProgramInfoLog(p.id));
        p.pos = GLES20.glGetAttribLocation(p.id, "aPos");
        p.tex = GLES20.glGetAttribLocation(p.id, "aTex");
        p.mvp = GLES20.glGetUniformLocation(p.id, "uMvp");
        p.texM = GLES20.glGetUniformLocation(p.id, "uTexM");
        p.samp = GLES20.glGetUniformLocation(p.id, "sTex");
        p.mode = GLES20.glGetUniformLocation(p.id, "uMode");
        p.mode2 = GLES20.glGetUniformLocation(p.id, "uMode2");
        p.mode3 = GLES20.glGetUniformLocation(p.id, "uMode3");
        p.amt = GLES20.glGetUniformLocation(p.id, "uAmt");
        p.color = GLES20.glGetUniformLocation(p.id, "uColor");
        p.alpha = GLES20.glGetUniformLocation(p.id, "uAlpha");
        p.geo = GLES20.glGetUniformLocation(p.id, "uGeo");
        p.time = GLES20.glGetUniformLocation(p.id, "uTime");
        p.asp = GLES20.glGetUniformLocation(p.id, "uAsp");
        return p;
    }

    private static int newTexture(int target) {
        int[] t = new int[1];
        GLES20.glGenTextures(1, t, 0);
        GLES20.glBindTexture(target, t[0]);
        GLES20.glTexParameteri(target, GLES20.GL_TEXTURE_MIN_FILTER, GLES20.GL_LINEAR);
        GLES20.glTexParameteri(target, GLES20.GL_TEXTURE_MAG_FILTER, GLES20.GL_LINEAR);
        GLES20.glTexParameteri(target, GLES20.GL_TEXTURE_WRAP_S, GLES20.GL_CLAMP_TO_EDGE);
        GLES20.glTexParameteri(target, GLES20.GL_TEXTURE_WRAP_T, GLES20.GL_CLAMP_TO_EDGE);
        return t[0];
    }

    Surface newDecoderSurface() {
        return new Surface(st);
    }

    boolean awaitFrame(long ms) {
        if (!frames.awaitMs(ms)) return false;
        st.updateTexImage();
        st.getTransformMatrix(texM);
        return true;
    }

    void finish() {
        GLES20.glFinish();
    }

    void awaitFrame() {
        frames.await();
        st.updateTexImage();
        st.getTransformMatrix(texM);
    }

    int uploadBitmap(Bitmap b) {
        int tex = newTexture(GLES20.GL_TEXTURE_2D);
        GLUtils.texImage2D(GLES20.GL_TEXTURE_2D, 0, b, 0);
        return tex;
    }

    void deleteTexture(int tex) {
        GLES20.glDeleteTextures(1, new int[]{tex}, 0);
    }

    void begin() {
        GLES20.glViewport(0, 0, width, height);
        GLES20.glClearColor(0f, 0f, 0f, 1f);
        GLES20.glClear(GLES20.GL_COLOR_BUFFER_BIT);
    }

    private void ensureFbo() {
        if (fboReady) return;
        GLES20.glGenFramebuffers(3, fbo, 0);
        for (int i = 0; i < 3; i++) {
            fboTex[i] = newTexture(GLES20.GL_TEXTURE_2D);
            GLES20.glTexImage2D(GLES20.GL_TEXTURE_2D, 0, GLES20.GL_RGBA, width, height, 0,
                    GLES20.GL_RGBA, GLES20.GL_UNSIGNED_BYTE, null);
            GLES20.glBindFramebuffer(GLES20.GL_FRAMEBUFFER, fbo[i]);
            GLES20.glFramebufferTexture2D(GLES20.GL_FRAMEBUFFER, GLES20.GL_COLOR_ATTACHMENT0,
                    GLES20.GL_TEXTURE_2D, fboTex[i], 0);
            if (GLES20.glCheckFramebufferStatus(GLES20.GL_FRAMEBUFFER) != GLES20.GL_FRAMEBUFFER_COMPLETE) {
                throw new RuntimeException("fbo incompleto");
            }
        }
        GLES20.glBindFramebuffer(GLES20.GL_FRAMEBUFFER, 0);
        fboReady = true;
    }

    void bindTarget(int slot) {
        if (slot < 0) {
            GLES20.glBindFramebuffer(GLES20.GL_FRAMEBUFFER, 0);
        } else {
            ensureFbo();
            GLES20.glBindFramebuffer(GLES20.GL_FRAMEBUFFER, fbo[slot]);
        }
        GLES20.glViewport(0, 0, width, height);
    }

    void drawTex(int slot, float sx, float sy) {
        draw(flat, GLES20.GL_TEXTURE_2D, fboTex[slot], ident, sx, sy, 0f);
    }

    void setBlend(boolean on) {
        if (on) {
            GLES20.glEnable(GLES20.GL_BLEND);
            GLES20.glBlendFunc(GLES20.GL_ONE, GLES20.GL_ONE_MINUS_SRC_ALPHA);
        } else {
            GLES20.glDisable(GLES20.GL_BLEND);
        }
    }

    void drawMix(int slotA, int slotB, int maskTex, float thr, float soft, boolean inv) {
        GLES20.glUseProgram(mixP.id);
        GLES20.glActiveTexture(GLES20.GL_TEXTURE0);
        GLES20.glBindTexture(GLES20.GL_TEXTURE_2D, fboTex[slotA]);
        GLES20.glActiveTexture(GLES20.GL_TEXTURE1);
        GLES20.glBindTexture(GLES20.GL_TEXTURE_2D, fboTex[slotB]);
        GLES20.glActiveTexture(GLES20.GL_TEXTURE2);
        GLES20.glBindTexture(GLES20.GL_TEXTURE_2D, maskTex);
        GLES20.glUniform1i(mA, 0);
        GLES20.glUniform1i(mB, 1);
        GLES20.glUniform1i(mM, 2);
        GLES20.glUniform1f(mThr, thr);
        GLES20.glUniform1f(mSoft, soft);
        GLES20.glUniform1f(mInv, inv ? 1f : 0f);
        GLES20.glUniformMatrix4fv(mixP.mvp, 1, false, ident, 0);
        GLES20.glUniformMatrix4fv(mixP.texM, 1, false, ident, 0);
        GLES20.glEnableVertexAttribArray(mixP.pos);
        GLES20.glVertexAttribPointer(mixP.pos, 2, GLES20.GL_FLOAT, false, 8, vtx);
        GLES20.glEnableVertexAttribArray(mixP.tex);
        GLES20.glVertexAttribPointer(mixP.tex, 2, GLES20.GL_FLOAT, false, 8, uv);
        GLES20.glDrawArrays(GLES20.GL_TRIANGLE_STRIP, 0, 4);
        GLES20.glDisableVertexAttribArray(mixP.pos);
        GLES20.glDisableVertexAttribArray(mixP.tex);
        for (int u = 2; u >= 0; u--) {
            GLES20.glActiveTexture(GLES20.GL_TEXTURE0 + u);
            GLES20.glBindTexture(GLES20.GL_TEXTURE_2D, 0);
        }
    }

    void setXform(float l, float t, float r, float b, float ang, boolean fill) {
        xf = true; xl = l; xt = t; xr = r; xb = b; xAng = ang; xFill = fill;
    }

    void clearXform() { xf = false; }

    private float[] withCrop(float[] base) {
        if (!xf || (xl <= 0.0005f && xt <= 0.0005f && xr >= 0.9995f && xb >= 0.9995f)) return base;
        Matrix.setIdentityM(cropC, 0);
        cropC[0] = xr - xl;
        cropC[12] = xl;
        cropC[5] = xb - xt;
        cropC[13] = 1f - xb;
        Matrix.multiplyMM(tmX, 0, base, 0, cropC, 0);
        return tmX;
    }

    void setRot(int deg) {
        rot = deg;
    }

    void setTrans(float a, float x, float y) {
        trA = a;
        trX = x;
        trY = y;
    }

    void setFx(int type, int color) {
        fxMode = type;
        geoId = 0f;
        fxM2 = 0f; fxM3 = 0f; fxA1 = 1f; fxA2 = 1f; fxA3 = 1f;
        fxR = ((color >> 16) & 255) / 255f;
        fxG = ((color >> 8) & 255) / 255f;
        fxB = (color & 255) / 255f;
    }

    void setFxStack(int m2, int m3, float a1, float a2, float a3) {
        fxM2 = m2; fxM3 = m3; fxA1 = a1; fxA2 = a2; fxA3 = a3;
    }

    private void useStack(boolean on) {
        curM2 = on ? fxM2 : 0f; curM3 = on ? fxM3 : 0f;
        curA1 = on ? fxA1 : 1f; curA2 = on ? fxA2 : 1f; curA3 = on ? fxA3 : 1f;
    }

    void setGeo(int id, float seconds) {
        geoId = id;
        geoT = seconds;
    }

    void drawVideo(float sx, float sy) {
        geoCur = geoId;
        useStack(true);
        draw(oes, GLES11Ext.GL_TEXTURE_EXTERNAL_OES, oesTex, withCrop(texM), sx, sy, fxMode);
        geoCur = 0f;
        useStack(false);
    }

    void drawImage(int tex, float[] tm, float sx, float sy) {
        geoCur = geoId;
        useStack(true);
        draw(flat, GLES20.GL_TEXTURE_2D, tex, withCrop(tm == null ? flipM : tm), sx, sy, fxMode);
        geoCur = 0f;
        useStack(false);
    }

    void drawOverlay(int tex, float sx, float sy) {
        GLES20.glEnable(GLES20.GL_BLEND);
        GLES20.glBlendFunc(GLES20.GL_ONE, GLES20.GL_ONE_MINUS_SRC_ALPHA);
        draw(flat, GLES20.GL_TEXTURE_2D, tex, flipM, sx, sy, 0f);
        GLES20.glDisable(GLES20.GL_BLEND);
    }

    void drawOverlay(int tex, float sx, float sy, float dx, float dy, float a) {
        float pa = trA, px = trX, py = trY;
        trA = a;
        trX = px + dx;
        trY = py + dy;
        drawOverlay(tex, sx, sy);
        trA = pa;
        trX = px;
        trY = py;
    }

    static float[] cropM(float l, float t, float r, float b) {
        float[] m = new float[16];
        Matrix.setIdentityM(m, 0);
        m[0] = r - l;
        m[12] = l;
        m[5] = t - b;
        m[13] = b;
        return m;
    }

    private void draw(Prog p, int target, int tex, float[] tm, float sx, float sy, float mode) {
        GLES20.glUseProgram(p.id);
        GLES20.glActiveTexture(GLES20.GL_TEXTURE0);
        GLES20.glBindTexture(target, tex);
        Matrix.setIdentityM(mvp, 0);
        Matrix.translateM(mvp, 0, trX, trY, 0f);
        applyAngle(sx, sy);
        applyRotation(sx, sy);
        setUniforms(p, tm, mode);
        drawQuad(p);
        GLES20.glBindTexture(target, 0);
    }

    private void applyAngle(float sx, float sy) {
        if (xf && Math.abs(xAng) > 0.01f) {
            float asp = width / (float) height;
            double rad = Math.toRadians(-xAng);
            float cs = (float) Math.cos(rad), sn = (float) Math.sin(rad);
            float k = 1f;
            if (xFill) {
                float qw = Math.max(1f, sx * width), qh = Math.max(1f, sy * height);
                float ac = Math.abs(cs), as = Math.abs(sn);
                float kt = Math.max((width * ac + height * as) / qw, (width * as + height * ac) / qh);
                float k0 = Math.max(width / qw, height / qh);
                k = Math.max(1f, kt / k0);
            }
            Matrix.setIdentityM(frM, 0);
            frM[0] = k * cs;
            frM[1] = k * sn * asp;
            frM[4] = -k * sn / asp;
            frM[5] = k * cs;
            Matrix.multiplyMM(tmpM, 0, mvp, 0, frM, 0);
            System.arraycopy(tmpM, 0, mvp, 0, 16);
        }
    }

    private void applyRotation(float sx, float sy) {
        if (rot == 0) {
            Matrix.scaleM(mvp, 0, sx, sy, 1f);
        } else {
            Matrix.setIdentityM(rmat, 0);
            if (rot == 180) {
                rmat[0] = -sx;
                rmat[5] = -sy;
            } else if (rot == 90) {
                rmat[0] = 0f;
                rmat[5] = 0f;
                rmat[4] = sx;
                rmat[1] = -sy;
            } else {
                rmat[0] = 0f;
                rmat[5] = 0f;
                rmat[4] = -sx;
                rmat[1] = sy;
            }
            Matrix.multiplyMM(tmpM, 0, mvp, 0, rmat, 0);
            System.arraycopy(tmpM, 0, mvp, 0, 16);
        }
    }

    private void setUniforms(Prog p, float[] tm, float mode) {
        GLES20.glUniformMatrix4fv(p.mvp, 1, false, mvp, 0);
        GLES20.glUniformMatrix4fv(p.texM, 1, false, tm, 0);
        GLES20.glUniform1i(p.samp, 0);
        GLES20.glUniform1f(p.mode, mode);
        GLES20.glUniform1f(p.alpha, trA);
        GLES20.glUniform1f(p.mode2, curM2);
        GLES20.glUniform1f(p.mode3, curM3);
        GLES20.glUniform3f(p.amt, curA1, curA2, curA3);
        GLES20.glUniform1f(p.geo, geoCur);
        GLES20.glUniform1f(p.time, geoT);
        GLES20.glUniform1f(p.asp, width / (float) Math.max(1, height));
        GLES20.glUniform3f(p.color, fxR, fxG, fxB);
    }

    private void drawQuad(Prog p) {
        GLES20.glEnableVertexAttribArray(p.pos);
        GLES20.glVertexAttribPointer(p.pos, 2, GLES20.GL_FLOAT, false, 8, vtx);
        GLES20.glEnableVertexAttribArray(p.tex);
        GLES20.glVertexAttribPointer(p.tex, 2, GLES20.GL_FLOAT, false, 8, uv);
        GLES20.glDrawArrays(GLES20.GL_TRIANGLE_STRIP, 0, 4);
        GLES20.glDisableVertexAttribArray(p.pos);
        GLES20.glDisableVertexAttribArray(p.tex);
    }


    final class Ext {
        final int tex;
        final SurfaceTexture st;
        final Surface sf;
        final float[] tm = new float[16];
        Runnable onRelease;
        private final Frames fr = new Frames();
        private HandlerThread th;

        Ext() {
            tex = newTexture(GLES11Ext.GL_TEXTURE_EXTERNAL_OES);
            st = new SurfaceTexture(tex);
            if (android.os.Build.VERSION.SDK_INT >= 21) {
                th = new HandlerThread("ve-pip");
                th.start();
                st.setOnFrameAvailableListener(fr, new Handler(th.getLooper()));
            } else {
                st.setOnFrameAvailableListener(fr);
            }
            sf = new Surface(st);
            Matrix.setIdentityM(tm, 0);
        }

        boolean await(long ms) {
            if (!fr.awaitMs(ms)) return false;
            st.updateTexImage();
            st.getTransformMatrix(tm);
            return true;
        }

        void release() {
        for (Ext e : exts) e.release();
        exts.clear();
            if (onRelease != null) {
                try { onRelease.run(); } catch (RuntimeException ignored) { }
            }
            interfaz.release(sf);
            interfaz.release(st);
            if (th != null) th.quit();
        }
    }

    private final java.util.List<Ext> exts = new java.util.ArrayList<Ext>();

    Ext newExt() {
        Ext e = new Ext();
        exts.add(e);
        return e;
    }

    void drawPip(Ext e, int tex, float sx, float sy, float dx, float dy, float a, float mode, int key) {
        float pa = trA, px = trX, py = trY, r = fxR, g = fxG, b = fxB;
        trA = pa * a;
        trX = px + dx;
        trY = py + dy;
        fxR = ((key >> 16) & 255) / 255f;
        fxG = ((key >> 8) & 255) / 255f;
        fxB = (key & 255) / 255f;
        GLES20.glEnable(GLES20.GL_BLEND);
        GLES20.glBlendFunc(GLES20.GL_ONE, GLES20.GL_ONE_MINUS_SRC_ALPHA);
        if (e != null) draw(oes, GLES11Ext.GL_TEXTURE_EXTERNAL_OES, e.tex, e.tm, sx, sy, mode);
        else draw(flat, GLES20.GL_TEXTURE_2D, tex, flipM, sx, sy, mode);
        GLES20.glDisable(GLES20.GL_BLEND);
        trA = pa; trX = px; trY = py;
        fxR = r; fxG = g; fxB = b;
    }

    void swap(long ptsUs) {
        EGLExt.eglPresentationTimeANDROID(dpy, surf, ptsUs * 1000L);
        if (!EGL14.eglSwapBuffers(dpy, surf)) throw new RuntimeException("swap fallo");
    }

    void release() {
        interfaz.release(st);
        st = null;
        if (ht != null) { ht.quit(); ht = null; }
        if (dpy != EGL14.EGL_NO_DISPLAY) {
            EGL14.eglMakeCurrent(dpy, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_CONTEXT);
            if (surf != EGL14.EGL_NO_SURFACE) EGL14.eglDestroySurface(dpy, surf);
            if (ctx != EGL14.EGL_NO_CONTEXT) EGL14.eglDestroyContext(dpy, ctx);
            EGL14.eglReleaseThread();
            EGL14.eglTerminate(dpy);
        }
        dpy = EGL14.EGL_NO_DISPLAY;
        ctx = EGL14.EGL_NO_CONTEXT;
        surf = EGL14.EGL_NO_SURFACE;
    }
}
