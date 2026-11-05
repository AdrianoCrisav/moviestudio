package android.media.videoeditor;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.media.MediaPlayer;
import android.view.Surface;
import android.view.SurfaceHolder;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* codigo borrachita daaaaa */
/* Francamente no quisiera poner comentarios por mamón, pero bueno, mi código no debe ser adivinanza. */
class VideoEditorImpl implements VideoEditor {

    final String path;
    final List<MediaItem> items = new ArrayList<MediaItem>();
    final List<Transition> transitions = new ArrayList<Transition>();
    final List<AudioTrack> tracks = new ArrayList<AudioTrack>();
    final List<pipa.Layer> layers = new ArrayList<pipa.Layer>();
    volatile String thumbKey;
    int aspect = MediaProperties.ASPECT_RATIO_UNDEFINED;
    private volatile boolean exportCancelled;
    private volatile boolean stopPreview;
    private volatile long previewPos;
    private volatile boolean mainAudio;
    private MediaPlayer preMp;
    private MediaVideoItem preFor;
    private Thread preThread;
    private Thread previewThread;
    private final Object previewLock = new Object();

    private static final java.util.Map<String, VideoEditorImpl> OPEN = new java.util.HashMap<String, VideoEditorImpl>();

    static volatile VideoEditorImpl LAST;

    VideoEditorImpl(String path) { this.path = path; synchronized (OPEN) { OPEN.put(path, this); } LAST = this; }

    static MediaItem findItem(String id) {
        synchronized (OPEN) {
            for (VideoEditorImpl e : OPEN.values()) {
                MediaItem m = e.getMediaItem(id);
                if (m != null) return m;
            }
        }
        return null;
    }

    static VideoEditorImpl ownerOf(String id) {
        synchronized (OPEN) {
            for (VideoEditorImpl e : OPEN.values()) if (e.getMediaItem(id) != null) return e;
        }
        return null;
    }

    // busca el proyecto abierto por ruta tal
    static VideoEditorImpl find(String path) {
        synchronized (OPEN) {
            VideoEditorImpl e = path == null ? null : OPEN.get(path);
            // si la otra mrd no funciona
            return e != null ? e : LAST;
        }
    }


    @Override public String getPath() { return path; }

    @Override
    public synchronized long getDuration() {
        long d = 0;
        for (MediaItem i : items) d += i.getTimelineDuration();
        return d;
    }

    @Override public synchronized int getAspectRatio() { return aspect; }
    @Override public synchronized void setAspectRatio(int a) { aspect = a; }

    @Override
    public synchronized void addMediaItem(MediaItem item) {
        if (getMediaItem(item.getId()) != null) throw new IllegalArgumentException("id repetido " + item.getId());
        if (items.isEmpty() && aspect == MediaProperties.ASPECT_RATIO_UNDEFINED) aspect = item.getAspectRatio();
        items.add(item);
    }

    @Override
    public synchronized void insertMediaItem(MediaItem item, String afterId) {
        if (afterId == null) {
            if (aspect == MediaProperties.ASPECT_RATIO_UNDEFINED) aspect = item.getAspectRatio();
            items.add(0, item);
            return;
        }
        int at = indexOf(afterId);
        if (at < 0) throw new IllegalArgumentException("no existe " + afterId);
        items.add(at + 1, item);
    }

    @Override
    public synchronized void moveMediaItem(String id, String afterId) {
        int from = indexOf(id);
        if (from < 0) throw new IllegalArgumentException("no existe " + id);
        MediaItem it = items.remove(from);
        dropTransitionsOf(it);
        int at = afterId == null ? -1 : indexOf(afterId);
        if (afterId != null && at < 0) { items.add(from, it); throw new IllegalArgumentException("no existe " + afterId); }
        items.add(at + 1, it);
    }

    @Override
    public synchronized MediaItem removeMediaItem(String id) {
        int at = indexOf(id);
        if (at < 0) throw new IllegalArgumentException("no existe " + id);
        MediaItem it = items.remove(at);
        dropTransitionsOf(it);
        return it;
    }

    private void dropTransitionsOf(MediaItem it) {
        Transition b = it.getBeginTransition(), e = it.getEndTransition();
        if (b != null) removeTransition(b.getId());
        if (e != null) removeTransition(e.getId());
    }

    private int indexOf(String id) {
        for (int i = 0; i < items.size(); i++) if (items.get(i).getId().equals(id)) return i;
        return -1;
    }

    @Override
    public synchronized MediaItem getMediaItem(String id) {
        int i = indexOf(id);
        return i < 0 ? null : items.get(i);
    }

    @Override public synchronized List<MediaItem> getAllMediaItems() { return new ArrayList<MediaItem>(items); }

    @Override
    public synchronized void addTransition(Transition t) {
        if (getTransition(t.getId()) != null) throw new IllegalArgumentException("id repetido " + t.getId());
        if (t.getAfterMediaItem() != null) t.getAfterMediaItem().setEndTransition(t);
        if (t.getBeforeMediaItem() != null) t.getBeforeMediaItem().setBeginTransition(t);
        transitions.add(t);
    }

    @Override
    public synchronized Transition removeTransition(String id) {
        for (int i = 0; i < transitions.size(); i++) {
            Transition t = transitions.get(i);
            if (t.getId().equals(id)) {
                transitions.remove(i);
                if (t.getAfterMediaItem() != null) t.getAfterMediaItem().setEndTransition(null);
                if (t.getBeforeMediaItem() != null) t.getBeforeMediaItem().setBeginTransition(null);
                return t;
            }
        }
        throw new IllegalArgumentException("no existe " + id);
    }

    @Override
    public synchronized Transition getTransition(String id) {
        for (Transition t : transitions) if (t.getId().equals(id)) return t;
        return null;
    }

    @Override public synchronized void addAudioTrack(AudioTrack a) {
        Long start = splitter.takeStart(a.getId());
        if (start != null) a.setStartTime(start);
        tracks.add(a);
    }

    @Override
    public synchronized AudioTrack removeAudioTrack(String id) {
        for (int i = 0; i < tracks.size(); i++) if (tracks.get(i).getId().equals(id)) return tracks.remove(i);
        throw new IllegalArgumentException("no existe " + id);
    }

    @Override
    public synchronized AudioTrack getAudioTrack(String id) {
        for (AudioTrack a : tracks) if (a.getId().equals(id)) return a;
        return null;
    }

    @Override public synchronized List<AudioTrack> getAllAudioTracks() { return new ArrayList<AudioTrack>(tracks); }

    // ay mis 16 capas, ay mis 16 capas!
    public static final int MAX_ROWS = 16;

    public synchronized List<pipa.Layer> getLayers() { return new ArrayList<pipa.Layer>(layers); }

    public synchronized void putLayer(pipa.Layer p) {

        if (p.id == null) p.id = "L" + System.currentTimeMillis() + "_" + layers.size();
        for (int i = 0; i < layers.size(); i++) if (layers.get(i).id.equals(p.id)) { layers.set(i, p); return; }
        layers.add(p);
    }

    private static final int UNDO_MAX = 50;
    private final List<String> undoStack = new ArrayList<String>();
    private final List<String> redoStack = new ArrayList<String>();
    private String pendingEdit;

    private String snapshot() {
        org.json.JSONArray a = new org.json.JSONArray();
        for (pipa.Layer q : layers) {
            org.json.JSONObject o = pipa.toJsonP(q);
            if (o != null) a.put(o);
        }
        return a.toString();
    }

    private void restore(String json) {
        layers.clear();
        try {
            org.json.JSONArray a = new org.json.JSONArray(json);
            for (int i = 0; i < a.length(); i++) {
                pipa.Layer q = pipa.fromJsonP(a.optJSONObject(i));
                if (q != null) layers.add(q);
            }
        } catch (org.json.JSONException ignored) { }
    }

    public synchronized void beginEdit() {
        if (pendingEdit == null) pendingEdit = snapshot();
    }

    public synchronized void endEdit() {
        if (pendingEdit == null) return;
        if (!pendingEdit.equals(snapshot())) {
            undoStack.add(pendingEdit);
            if (undoStack.size() > UNDO_MAX) undoStack.remove(0);
            redoStack.clear();
        }
        pendingEdit = null;
    }

    private boolean swapState(List<String> from, List<String> to) {
        endEdit();
        if (from.isEmpty()) return false;
        to.add(snapshot());
        restore(from.remove(from.size() - 1));
        return true;
    }

    public synchronized boolean undo() { return swapState(undoStack, redoStack); }

    public synchronized boolean redo() { return swapState(redoStack, undoStack); }

    public synchronized void removeLayer(String id) {
        for (int i = 0; i < layers.size(); i++) if (layers.get(i).id.equals(id)) { layers.remove(i); return; }
    }

    public synchronized long startOf(String itemId) {
        long t = 0;
        for (MediaItem it : items) {
            if (it.getId().equals(itemId)) return t;
            t += it.getTimelineDuration();
        }
        return 0L;
    }

    public synchronized boolean rowFree(int r, long s, long e, String exceptId) {
        for (pipa.Layer q : layers) if (q.row == r && !q.id.equals(exceptId) && q.start < e && q.end > s) return false;
        return true;
    }

    public synchronized int freeRow(long s, long e, String exceptId) {
        for (int r = 0; r < MAX_ROWS; r++) {
            boolean ok = true;
            for (pipa.Layer q : layers) {
                if (q.row == r && !q.id.equals(exceptId) && q.start < e && q.end > s) { ok = false; break; }
            }
            if (ok) return r;
        }
        return MAX_ROWS - 1;
    }

    static List<pipa.Layer> layersFor(MediaItem it) {
        VideoEditorImpl e = it == null ? null : ownerOf(it.getId());
        return e == null ? new ArrayList<pipa.Layer>() : e.getLayers();
    }

    // siiii ahora son capas global- oe ya mucho comentario no?
    void migrateLayers() {
        long off = 0;
        for (MediaItem it : items) {
            long d = it.getTimelineDuration();
            for (int n = 0; n < pipa.LAYERS; n++) {
                String k = pipa.key(it.getId(), n);
                pipa.Layer p = pipa.of(k);
                if (p == null) continue;
                pipa.Layer q = p.dup();
                q.start = off + p.start;
                q.end = off + (p.end < 0 ? d : Math.min(d, p.end));
                q.row = n;
                q.id = "L" + it.getId() + "_" + n;
                if (q.end > q.start) putLayer(q);
                pipa.set(k, null);
            }
            off += d;
        }
    }


    @Override public void generatePreview(MediaProcessingProgressListener l) {}

    // un cuadro a la vez, pero con cautela nomas hijo
    private final Object frameLock = new Object();
    private final Object rrLock = new Object();
    private volatile SurfaceHolder lastHolder;
    private volatile long lastTime;
    private volatile OverlayData lastOd;
    private boolean rrBusy, rrAgain;
    volatile String hiddenId;

    void hideLayer(String id) {
        hiddenId = id;
        rerender();
    }

    @Override
    public long renderPreviewFrame(SurfaceHolder h, long timeMs, OverlayData od) {
        lastHolder = h;
        lastTime = timeMs;
        lastOd = od;
        synchronized (frameLock) { return renderPreviewFrame0(h, timeMs, od); }
    }

    // renderizacion del ultimo cuadro, uno a la vez, cuando se mueve una capa
    public void rerender() {
        final SurfaceHolder h = lastHolder;
        if (h == null) return;
        Thread pt = previewThread;
        if (pt != null && pt.isAlive()) return;
        synchronized (rrLock) {
            if (rrBusy) { rrAgain = true; return; }
            rrBusy = true;
        }
        new Thread(new Runnable() {
            @Override public void run() {
                while (true) {
                    synchronized (rrLock) { rrAgain = false; }
                    try { renderPreviewFrame(h, lastTime, lastOd); } catch (Throwable ignored) { }
                    synchronized (rrLock) {
                        if (!rrAgain) { rrBusy = false; return; }
                    }
                }
            }
        }, "ve-rerender").start();
    }

    private long renderPreviewFrame0(SurfaceHolder h, long timeMs, OverlayData od) {
        long tl = 0;
        for (MediaItem it : getAllMediaItems()) {
            long dur = it.getTimelineDuration();
            if (timeMs < tl + dur || it == lastOf(items)) {
                long off = Math.max(0, Math.min(dur, timeMs - tl));
                try {
                    if (renderGl(h, it, off)) {
                    } else if (it instanceof MediaVideoItem) {
                        ((MediaVideoItem) it).renderFrame(h, ((MediaVideoItem) it).fileBegin() + (long) (off * (double) ((MediaVideoItem) it).getSpeed()));
                    } else {
                        Bitmap b = it.getThumbnail(0, 0, 0);
                        MediaItem.drawFit(h, b);
                        if (b != null) b.recycle();
                    }
                } catch (IOException e) {
                    return -1;
                }
                if (od != null) {
                    od.setClear();
                    for (Overlay o : it.getAllOverlays()) {
                        if (o instanceof OverlayFrame && off >= o.getStartTime() && off < o.getStartTime() + o.getDuration()) {
                            od.set(((OverlayFrame) o).getBitmap());
                            break;
                        }
                    }
                }
                return timeMs;
            }
            tl += dur;
        }
        return -1;
    }

    private static int[] surfSize(SurfaceHolder h) {
        Rect f = h.getSurfaceFrame();
        int sw = f == null ? 0 : f.width(), sh = f == null ? 0 : f.height();
        if (sw < 2 || sh < 2) { sw = 640; sh = 360; }
        return new int[]{sw & ~1, sh & ~1};
    }

    private boolean renderGl(SurfaceHolder h, MediaItem it, long off) {
        glglglgl g = null;
        compositor c = null;
        int tex = 0;
        try {
            int[] sz = surfSize(h);
            Bitmap b = it instanceof MediaVideoItem
                    ? ((MediaVideoItem) it).frameAt(0, 0, ((MediaVideoItem) it).fileBegin() + (long) (off * (double) ((MediaVideoItem) it).getSpeed()))
                    : it.getThumbnail(0, 0, 0);
            if (b == null) return false;
            g = new glglglgl(h.getSurface(), sz[0], sz[1]);
            c = new compositor(g, sz[0], sz[1]);
            c.overlaysOn = false;
            int bw = b.getWidth(), bh = b.getHeight();
            tex = g.uploadBitmap(b);
            b.recycle();
            c.begin(it);
            c.image(it, tex, bw, bh, off);
            g.swap(System.nanoTime() / 1000L);
            g.finish();
            c.end();
            g.deleteTexture(tex);
            return true;
        } catch (Throwable e) {
            return false;
        } finally {
            if (g != null) {
                interfaz.releaseGl(g);
            }
        }
    }

    private static MediaItem lastOf(List<MediaItem> l) { return l.isEmpty() ? null : l.get(l.size() - 1); }

    @Override
    public void startPreview(final SurfaceHolder h, final long from, final long to, final boolean loop,
            final int intervalMs, final PreviewProgressListener l) {
        synchronized (previewLock) {
            stopPreviewLocked();
            stopPreview = false;
            previewPos = from;
            previewThread = new Thread(new Runnable() {
                @Override public void run() { runPreview(h, from, to, loop, intervalMs, l); }
            }, "ve-preview");
            previewThread.start();
        }
    }

    @Override
    public long stopPreview() {
        synchronized (previewLock) {
            stopPreviewLocked();
            return previewPos;
        }
    }

    private void stopPreviewLocked() {
        Thread t = previewThread;
        stopPreview = true;
        if (t != null && t != Thread.currentThread()) {
            try { t.join(800); } catch (InterruptedException ignored) { Thread.currentThread().interrupt(); }
        }
        previewThread = null;
    }

    @Override
    public void clearSurface(SurfaceHolder h) {
        android.graphics.Canvas c = h.lockCanvas();
        if (c == null) return;
        try { c.drawColor(0xFF000000); } finally { h.unlockCanvasAndPost(c); }
    }

    private void runPreview(SurfaceHolder h, long from, long to, boolean loop, int interval, PreviewProgressListener l) {
        glglglgl g = null;
        try {
            int[] sz = surfSize(h);
            g = new glglglgl(h.getSurface(), sz[0], sz[1]);
            runPreviewGl(g, sz[0], sz[1], from, to, loop, interval, l);
            return;
        } catch (Throwable e) {
            if (g != null) {
                interfaz.releaseGl(g);
                g = null;
            }
        }
        runPreviewCanvas(h, from, to, loop, interval, l);
    }

    private void runPreviewGl(glglglgl g, int sw, int sh, long from, long to, boolean loop, int interval,
            PreviewProgressListener l) throws Exception {
        compositor comp = new compositor(g, sw, sh);
        Surface ds = g.newDecoderSurface();
        boolean started = false;
        BgPlay bg = null;
        try {
            Exception err = null;
            if (l != null) l.onStart(this);
            started = true;
            bg = new BgPlay(getAllAudioTracks());
            bg.start();
            try {
                long start = from;
                do {
                    long tl = 0;
                    for (MediaItem it : getAllMediaItems()) {
                        if (stopPreview) return;
                        long dur = it.getTimelineDuration();
                        long limit = to < 0 ? Long.MAX_VALUE : to;
                        if (tl + dur > start && tl < limit) {
                            long off = Math.max(0, start - tl);
                            long stopAt = Math.min(dur, limit - tl);
                            primeIfNeeded(g, comp, it, off);
                            comp.begin(it);
                            try {
                                playGl(g, comp, ds, it, tl, off, stopAt, l);
                            } finally {
                                comp.end();
                            }
                        }
                        tl += dur;
                    }
                    start = 0;
                } while (loop && !stopPreview);
            } catch (Exception e) {
                err = e;
            }
            if (err != null && l != null) l.onError(this, 1);
        } finally {
            if (bg != null) {
                bg.quit = true;
                try { bg.join(1500); } catch (InterruptedException ignored) { Thread.currentThread().interrupt(); }
            }
            dropPre();
            ds.release();
            g.release();
            if (started && l != null) l.onStop(this);
        }
    }

    private void primeIfNeeded(glglglgl g, compositor comp, MediaItem it, long off) {
        Transition tb = it.getBeginTransition();
        if (tb == null || !compositor.isSnap(tb) || off >= tb.getDuration()) return;
        MediaItem a = tb.getAfterMediaItem();
        if (a == null) return;
        try {
            Bitmap b = a instanceof MediaVideoItem
                    ? ((MediaVideoItem) a).frameAt(0, 0, ((MediaVideoItem) a).fileEnd() - 1)
                    : a.getThumbnail(0, 0, 0);
            comp.prime(a, b);
            if (b != null) b.recycle();
        } catch (Throwable ignored) { }
    }

    private void dropPre() {
        Thread t = preThread;
        if (t != null) {
            try { t.join(2000); } catch (InterruptedException ignored) { Thread.currentThread().interrupt(); }
        }
        MediaPlayer m = preMp;
        preMp = null;
        preFor = null;
        preThread = null;
        if (m != null) {
            interfaz.release(m);
        }
    }

    private void preload(final MediaVideoItem next) {
        dropPre();
        preFor = next;
        Thread t = new Thread(new Runnable() {
            @Override public void run() {
                MediaPlayer m = new MediaPlayer();
                try {
                    m.setDataSource(next.getFilename());
                    m.prepare();
                    preMp = m;
                } catch (Exception e) {
                    interfaz.release(m);
                }
            }
        }, "ve-preload");
        preThread = t;
        t.start();
    }

    private MediaVideoItem nextVideoAfter(MediaItem it) {
        List<MediaItem> all = getAllMediaItems();
        int i = all.indexOf(it);
        if (i >= 0 && i + 1 < all.size() && all.get(i + 1) instanceof MediaVideoItem) {
            return (MediaVideoItem) all.get(i + 1);
        }
        return null;
    }

    private final class BgPlay extends Thread {
        private final List<AudioTrack> tl;
        volatile boolean quit;

        BgPlay(List<AudioTrack> t) {
            super("ve-bgaudio");
            tl = t;
        }

        @Override public void run() {
            int n = tl.size();
            MediaPlayer[] mps = new MediaPlayer[n];
            boolean[] on = new boolean[n];
            try {
                for (int i = 0; i < n; i++) {
                    AudioTrack a = tl.get(i);
                    if (a.isMuted() || a.getVolume() <= 0) continue;
                    MediaPlayer m = new MediaPlayer();
                    try {
                        m.setDataSource(a.getFilename());
                        m.prepare();
                        mps[i] = m;
                    } catch (Exception e) {
                        interfaz.release(m);
                    }
                }
                while (!quit && !stopPreview) {
                    long pos = previewPos;
                    for (int i = 0; i < n; i++) {
                        MediaPlayer m = mps[i];
                        if (m == null) continue;
                        AudioTrack a = tl.get(i);
                        long b = a.getBoundaryBeginTime(), len = a.getBoundaryEndTime() - b;
                        long d = pos - a.getStartTime();
                        boolean should = len > 0 && d >= 0 && (a.isLooping() || d < len);
                        float vol = a.getVolume() / 100f;
                        if (a.isDuckingEnabled() && mainAudio) vol *= a.duckVolume() / 100f;
                        if (d >= 0 && d < 500) vol *= d / 500f;
                        if (!a.isLooping() && len > 0 && d >= 0 && len - d < 500) vol *= Math.max(0f, (len - d) / 500f);
                        try {
                            m.setVolume(vol, vol);
                            if (should) {
                                long want = b + d % len;
                                if (!on[i]) {
                                    m.seekTo((int) want);
                                    m.start();
                                    on[i] = true;
                                } else {
                                    int cur = m.getCurrentPosition();
                                    if (cur >= b + len) {
                                        if (a.isLooping()) m.seekTo((int) b); else { m.pause(); on[i] = false; }
                                    } else if (Math.abs(cur - want) > 700 && want > b + 800 && want < b + len - 800) {
                                        m.seekTo((int) want);
                                    }
                                }
                            } else if (on[i]) {
                                m.pause();
                                on[i] = false;
                            }
                        } catch (RuntimeException ignored) { }
                    }
                    try { Thread.sleep(50); } catch (InterruptedException e) { return; }
                }
            } finally {
                for (MediaPlayer m : mps) {
                    if (m != null) {
                        interfaz.release(m);
                    }
                }
            }
        }
    }

    private void playGl(glglglgl g, compositor comp, Surface ds, MediaItem it, long tl, long off, long stopAt,
            PreviewProgressListener l) throws Exception {
        if (!(it instanceof MediaVideoItem)) {
            mainAudio = false;
            Bitmap b = it.getThumbnail(0, 0, 0);
            if (b == null) return;
            int bw = b.getWidth(), bh = b.getHeight();
            int tex = g.uploadBitmap(b);
            b.recycle();
            try {
                long t0 = System.currentTimeMillis() - off;
                while (!stopPreview) {
                    long now = System.currentTimeMillis() - t0;
                    if (now >= stopAt) break;
                    comp.image(it, tex, bw, bh, now);
                    g.swap(System.nanoTime() / 1000L);
                    tick(l, tl, now);
                    Thread.sleep(33);
                }
            } finally {
                g.deleteTexture(tex);
            }
            return;
        }
        MediaVideoItem vi = (MediaVideoItem) it;
        if (vi.isReversed()) {
            playReverse(g, comp, vi, tl, off, stopAt, l);
            return;
        }
        final CountDownLatch seeked = new CountDownLatch(1);
        final boolean[] done = {false};
        MediaPlayer mp = null;
        if (preFor == vi && off == 0) {
            Thread t = preThread;
            if (t != null) { try { t.join(3000); } catch (InterruptedException ignored) { Thread.currentThread().interrupt(); } }
            mp = preMp;
            preMp = null;
            preFor = null;
            preThread = null;
        }
        try {
            if (mp == null) {
                mp = new MediaPlayer();
                mp.setDataSource(vi.getFilename());
                mp.setSurface(ds);
                mp.prepare();
            } else {
                mp.setSurface(ds);
            }
            final float v = vi.isMuted() ? 0f : vi.getVolume() / 100f;
            mainAudio = v > 0f;
            mp.setVolume(v, v);
            mp.setOnSeekCompleteListener(new MediaPlayer.OnSeekCompleteListener() {
                @Override public void onSeekComplete(MediaPlayer p) { seeked.countDown(); }
            });
            mp.setOnCompletionListener(new MediaPlayer.OnCompletionListener() {
                @Override public void onCompletion(MediaPlayer p) { done[0] = true; }
            });
            long b0 = vi.fileBegin();
            final float sp = vi.getSpeed();
            mp.seekTo((int) (b0 + (long) (off * (double) sp)));
            seeked.await(2, TimeUnit.SECONDS);
            mp.start();
            if (sp != 1f && android.os.Build.VERSION.SDK_INT >= 23) {
                try { mp.setPlaybackParams(new android.media.PlaybackParams().setSpeed(sp)); } catch (RuntimeException ignored) { }
            }
            MediaVideoItem nx = nextVideoAfter(vi);
            if (nx != null) preload(nx);
            long endSrc = b0 + (long) (stopAt * (double) sp);
            while (!stopPreview && !done[0]) {
                boolean got = g.awaitFrame(60);
                int pos = mp.getCurrentPosition();
                if (pos >= endSrc) break;
                long rel0 = Math.max(0, (long) ((pos - b0) / sp));
                float fg = pene.fadeGain(vi, rel0);
                float cg = Math.min(1f, v * fg * volcurve.gain(vi.getId(), rel0, vi.getTimelineDuration()) * volcurve.normOf(vi.getId()));
                mp.setVolume(cg, cg);
                if (got) {
                    long rel = rel0;
                    comp.video(vi, rel);
                    g.swap(System.nanoTime() / 1000L);
                    tick(l, tl, rel);
                }
            }
        } finally {
            interfaz.release(mp);
        }
    }

    // pos aca anda el fallback del canvas por si tu alcatel no aguanta el GL :v
    private void runPreviewCanvas(SurfaceHolder h, long from, long to, boolean loop, int interval, PreviewProgressListener l) {
        int step = Math.max(20, Math.min(100, interval));
        try {
            if (l != null) l.onStart(this);
            long start = from;
            do {
                long tl = 0;
                for (MediaItem it : getAllMediaItems()) {
                    if (stopPreview) return;
                    long dur = it.getTimelineDuration();
                    long limit = to < 0 ? Long.MAX_VALUE : to;
                    if (tl + dur > start && tl < limit) {
                        long off = Math.max(0, start - tl);
                        long stopAt = Math.min(dur, limit - tl);
                        playSegment(h, it, tl, off, stopAt, step, l);
                    }
                    tl += dur;
                }
                start = 0;
            } while (loop && !stopPreview);
        } catch (Exception e) {
            if (l != null) l.onError(this, 1);
        } finally {
            if (l != null) l.onStop(this);
        }
    }

    private void playReverse(glglglgl g, compositor comp, MediaVideoItem vi, long tl, long off, long stopAt,
            PreviewProgressListener l) throws Exception {
        mainAudio = false;
        android.media.MediaMetadataRetriever r = new android.media.MediaMetadataRetriever();
        try {
            r.setDataSource(vi.getFilename());
            double sp = vi.getSpeed();
            long t0 = System.nanoTime() / 1000000L - off;
            while (!stopPreview) {
                long rel = System.nanoTime() / 1000000L - t0;
                if (rel >= stopAt) break;
                long srcMs = vi.fileEnd() - (long) (rel * sp) - 1;
                if (srcMs < vi.fileBegin()) break;
                Bitmap b = MediaVideoItem.revFrame(r, srcMs, 640);
                if (b == null) { Thread.sleep(10); continue; }
                int bw = b.getWidth(), bh = b.getHeight();
                int tex = g.uploadBitmap(b);
                b.recycle();
                try {
                    comp.image(vi, tex, bw, bh, rel);
                    g.swap(System.nanoTime() / 1000L);
                } finally {
                    g.deleteTexture(tex);
                }
                tick(l, tl, rel);
            }
        } finally {
            interfaz.release(r);
        }
    }

    private void tick(PreviewProgressListener l, long tl, long inItem) {
        previewPos = tl + inItem;
        if (l != null) l.onProgress(this, previewPos, null);
    }

    private void playSegment(SurfaceHolder h, MediaItem it, long tl, long off, long stopAt, int step,
            PreviewProgressListener l) throws Exception {
        if (!(it instanceof MediaVideoItem)) {
            Bitmap b = it.getThumbnail(0, 0, 0);
            MediaItem.drawFit(h, b);
            if (b != null) b.recycle();
            long t0 = System.currentTimeMillis() - off;
            while (!stopPreview) {
                long now = System.currentTimeMillis() - t0;
                if (now >= stopAt) break;
                tick(l, tl, now);
                Thread.sleep(step);
            }
            return;
        }
        MediaVideoItem vi = (MediaVideoItem) it;
        final CountDownLatch seeked = new CountDownLatch(1);
        final boolean[] done = {false};
        MediaPlayer mp = new MediaPlayer();
        try {
            mp.setDataSource(vi.getFilename());
            mp.setDisplay(h);
            mp.prepare();
            float v = vi.isMuted() ? 0f : vi.getVolume() / 100f;
            mp.setVolume(v, v);
            mp.setOnSeekCompleteListener(new MediaPlayer.OnSeekCompleteListener() {
                @Override public void onSeekComplete(MediaPlayer p) { seeked.countDown(); }
            });
            mp.setOnCompletionListener(new MediaPlayer.OnCompletionListener() {
                @Override public void onCompletion(MediaPlayer p) { done[0] = true; }
            });
            long b0 = vi.fileBegin();
            final float sp = vi.getSpeed();
            mp.seekTo((int) (b0 + (long) (off * (double) sp)));
            seeked.await(2, TimeUnit.SECONDS);
            mp.start();
            if (sp != 1f && android.os.Build.VERSION.SDK_INT >= 23) {
                try { mp.setPlaybackParams(new android.media.PlaybackParams().setSpeed(sp)); } catch (RuntimeException ignored) { }
            }
            long endSrc = b0 + (long) (stopAt * (double) sp);
            while (!stopPreview && !done[0]) {
                int pos = mp.getCurrentPosition();
                if (pos >= endSrc) break;
                tick(l, tl, Math.max(0, (long) ((pos - b0) / sp)));
                Thread.sleep(step);
            }
        } finally {
            interfaz.release(mp);
        }
    }


    @Override
    public void export(String filename, int height, int bitrate, ExportProgressListener l) throws IOException {
        exportCancelled = false;
        exporter.run(this, getAllMediaItems(), filename, height, bitrate, l, new exporter.Cancel() {
            @Override public boolean isCancelled() { return exportCancelled; }
        });
    }

    @Override public void cancelExport(String filename) { exportCancelled = true; }


    @Override
    public synchronized void save() throws IOException {
        store.save(this);
    }

    static VideoEditorImpl load(String path) throws IOException {
        return store.load(path);
    }

    @Override
    public void release() {
        stopPreview();
        synchronized (this) {
            for (MediaItem it : items) if (it instanceof MediaVideoItem) ((MediaVideoItem) it).close();
        }
    }
}
