package android.media.videoeditor;

import android.graphics.Bitmap;
import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.media.MediaMetadataRetriever;
import android.media.MediaMuxer;
import android.os.Build;
import android.view.Surface;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

final class exporter {
    interface Cancel { boolean isCancelled(); }

    private static final int DEFAULT_FPS = 30;

    private static int detectFps(List<MediaItem> items) {
        int best = 0;
        for (MediaItem it : items) {
            if (!(it instanceof MediaVideoItem)) continue;
            MediaExtractor ex = new MediaExtractor();
            try {
                ex.setDataSource(it.getFilename());
                for (int t = 0; t < ex.getTrackCount(); t++) {
                    MediaFormat f = ex.getTrackFormat(t);
                    String m = f.getString(MediaFormat.KEY_MIME);
                    if (m == null || !m.startsWith("video/") || !f.containsKey(MediaFormat.KEY_FRAME_RATE)) continue;
                    int fr;
                    try {
                        fr = f.getInteger(MediaFormat.KEY_FRAME_RATE);
                    } catch (RuntimeException e) {
                        fr = Math.round(f.getFloat(MediaFormat.KEY_FRAME_RATE));
                    }
                    best = Math.max(best, fr);
                }
            } catch (Exception ignored) { } finally {
                ex.release();
            }
        }
        return best <= 0 ? DEFAULT_FPS : Math.max(24, Math.min(60, best));
    }

    private exporter() {}

    static ByteBuffer inBuf(MediaCodec c, int i) {
        return Build.VERSION.SDK_INT >= 21 ? c.getInputBuffer(i) : c.getInputBuffers()[i];
    }

    static boolean feedInput(MediaCodec dec, MediaExtractor ex, long endUs, long slackUs) {
        int index = dec.dequeueInputBuffer(5000);
        if (index < 0) return false;
        ByteBuffer buf = inBuf(dec, index);
        buf.clear();
        int size = ex.readSampleData(buf, 0);
        long ts = ex.getSampleTime();
        if (size < 0 || ts > endUs + slackUs) {
            dec.queueInputBuffer(index, 0, 0, 0, MediaCodec.BUFFER_FLAG_END_OF_STREAM);
            return true;
        }
        dec.queueInputBuffer(index, 0, size, ts, 0);
        ex.advance();
        return false;
    }

    static ByteBuffer outBuf(MediaCodec c, int i) {
        return Build.VERSION.SDK_INT >= 21 ? c.getOutputBuffer(i) : c.getOutputBuffers()[i];
    }

    static void run(VideoEditor ve, List<MediaItem> items, String out, int height, int bitrate,
            VideoEditor.ExportProgressListener l, Cancel cancel) throws IOException {
        if (items.isEmpty()) throw new IOException("el proyecto esta vacio");
        File dst = new File(out);
        if (dst.getParentFile() != null) dst.getParentFile().mkdirs();
        try {
            new Job(ve, items, out, height, bitrate, l, cancel).run();
            return;
        } catch (Throwable ignored) { }
        dst.delete();
        if (cancel.isCancelled()) return;
        remux(ve, items, out, l, cancel);
    }

    static void bake(MediaVideoItem v, float speed, int aspect, String out, int height,
            VideoEditor.ExportProgressListener l, Cancel cancel) throws IOException {
        List<MediaItem> one = new ArrayList<MediaItem>();
        one.add(v);
        File dst = new File(out);
        if (dst.getParentFile() != null) dst.getParentFile().mkdirs();
        try {
            new Job(null, one, out, height, 14000000, l, cancel, speed, aspect).run();
        } catch (IOException e) {
            dst.delete();
            throw e;
        } catch (Exception e) {
            dst.delete();
            throw new IOException(String.valueOf(e));
        }
    }

    private static int pixelHeight(int h) {
        switch (h) {
            case MediaProperties.HEIGHT_144: return 144;
            case MediaProperties.HEIGHT_288: return 288;
            case MediaProperties.HEIGHT_360: return 360;
            case MediaProperties.HEIGHT_480: return 480;
            case MediaProperties.HEIGHT_720: return 720;
            case MediaProperties.HEIGHT_1080: return 1080;
            default: return h >= 96 ? h : 720;
        }
    }

    private static final class Job {
        private final VideoEditor ve;
        private final List<MediaItem> items;
        private final String out;
        private final VideoEditor.ExportProgressListener l;
        private final Cancel cancel;
        private final int w, h, bitrate, fps;
        private final boolean hevc;
        private final float speed;
        private final boolean bake;
        private final long totalMs;
        private final MediaCodec.BufferInfo info = new MediaCodec.BufferInfo();
        private MediaCodec enc;
        private boolean encStarted;
        private MediaMuxer mux;
        private boolean muxStarted;
        private int vTrack = -1, aTrack = -1;
        private glglglgl gl;
        private pene.Reader reader;
        private long offsetUs;
        private compositor comp;
        private int lastPct = -1;

        private boolean fmtOn, fmtBlur;

        Job(VideoEditor ve, List<MediaItem> items, String out, int height, int bitrate,
                VideoEditor.ExportProgressListener l, Cancel cancel) {
            this(ve, items, out, height, bitrate, l, cancel, 1f, -1);
        }

        Job(VideoEditor ve, List<MediaItem> items, String out, int height, int bitrate,
                VideoEditor.ExportProgressListener l, Cancel cancel, float speed, int aspectOv) {
            this.speed = speed;
            this.bake = aspectOv >= 0;
            this.ve = ve;
            this.items = items;
            this.out = out;
            this.l = l;
            this.cancel = cancel;
            int ph = pixelHeight(height) & ~1;
            double ratio = MediaProperties.ratioOf(aspectOv >= 0 ? aspectOv : ve.getAspectRatio());
            // el mejor programador de encuentros gays lima peru
            int fpsCode = (bitrate >>> 25) & 3;
            int fmt = (bitrate >>> 27) & 7;
            this.fps = fpsCode == 1 ? 24 : fpsCode == 2 ? 30 : fpsCode == 3 ? 60 : detectFps(items);
            int hh = ph, ww = ((int) Math.round(ph * ratio)) & ~1;
            if (aspectOv < 0 && fmt > 0) {
                int k = (fmt - 1) / 2;
                ww = (k == 0 ? ph : k == 1 ? ph : (ph * 16 / 9)) & ~1;
                hh = (k == 0 ? (ph * 16 / 9) : ph) & ~1;
                this.fmtBlur = (fmt & 1) == 1;
                this.fmtOn = true;
            }
            this.h = hh;
            this.w = ww;
            this.hevc = Build.VERSION.SDK_INT >= 24 && (bitrate & 0x40000000) != 0;
            bitrate &= 0x1ffffff;
            int base = bitrate >= 100000 ? bitrate
                    : (int) Math.max(800000L, Math.min(12000000L, (long) (w * h * fps * 0.1)));
            double bitsPerPixel = base <= 600000 ? 0.07 : base <= 2500000 ? 0.12 : base <= 9000000 ? 0.16 : 0.2;
            if (this.hevc) bitsPerPixel *= 0.7;
            this.bitrate = (int) Math.min(60000000L, Math.max(base, (long) (w * (long) h * fps * bitsPerPixel)));
            long t = 0;
            for (MediaItem it : items) t += it.getTimelineDuration();
            this.totalMs = (long) (t / speed);
        }

        void run() throws Exception {
            File aud = new File(out + ".aud.m4a");
            try {
                boolean haveAudio = false;
                try {
                    haveAudio = bake ? pene.buildSpeed((MediaVideoItem) items.get(0), speed, aud, cancel)
                            : pene.build(items, ve.getAllAudioTracks(), aud, cancel);
                } catch (Exception ignored) { }
                if (cancel.isCancelled()) return;
                if (haveAudio) reader = new pene.Reader(aud);
                setup();
                for (MediaItem it : items) {
                    if (cancel.isCancelled()) break;
                    comp.begin(it);
                    if (it instanceof MediaVideoItem) video((MediaVideoItem) it); else image(it);
                    comp.end();
                    offsetUs += it.getTimelineDuration() * 1000L;
                }
                if (!cancel.isCancelled()) finish();
            } finally {
                closeAll();
                aud.delete();
                if (cancel.isCancelled()) new File(out).delete();
            }
            if (!cancel.isCancelled() && l != null) l.onProgress(ve, out, 100);
        }

        private MediaCodec mk(String mime) throws IOException {
            boolean avc = "video/avc".equals(mime);
            RuntimeException last = null;
            for (int attempt = 0; attempt < 3; attempt++) {
                MediaFormat f = MediaFormat.createVideoFormat(mime, w, h);
                f.setInteger(MediaFormat.KEY_COLOR_FORMAT, MediaCodecInfo.CodecCapabilities.COLOR_FormatSurface);
                f.setInteger(MediaFormat.KEY_BIT_RATE, bitrate);
                f.setInteger(MediaFormat.KEY_FRAME_RATE, fps);
                f.setInteger(MediaFormat.KEY_I_FRAME_INTERVAL, 2);
                if (Build.VERSION.SDK_INT >= 21) {
                    if (attempt < 2) f.setInteger(MediaFormat.KEY_BITRATE_MODE, MediaCodecInfo.EncoderCapabilities.BITRATE_MODE_VBR);
                    if (attempt == 0 && avc) f.setInteger(MediaFormat.KEY_PROFILE, MediaCodecInfo.CodecProfileLevel.AVCProfileHigh);
                }
                MediaCodec codec = MediaCodec.createEncoderByType(mime);
                try {
                    codec.configure(f, null, null, MediaCodec.CONFIGURE_FLAG_ENCODE);
                    return codec;
                } catch (RuntimeException ex) {
                    codec.release();
                    last = ex;
                }
            }
            throw last;
        }

        private void setup() throws IOException {
            enc = null;
            if (hevc) {
                try {
                    enc = mk("video/hevc");
                } catch (Exception e) {

                    enc = null;
                }
            }
            if (enc == null) enc = mk("video/avc");
            Surface es = enc.createInputSurface();
            enc.start();
            encStarted = true;
            gl = new glglglgl(es, w, h);
            comp = new compositor(gl, w, h);
            if (fmtOn) comp.setFormat(fmtBlur);
            mux = new MediaMuxer(out, MediaMuxer.OutputFormat.MUXER_OUTPUT_MPEG_4);
        }

        private void videoReverse(MediaVideoItem v) throws IOException {
            android.media.MediaMetadataRetriever r = new android.media.MediaMetadataRetriever();
            try {
                r.setDataSource(v.getFilename());
                long beginUs = v.fileBegin() * 1000L, endUs = v.fileEnd() * 1000L;
                double sp = v.getSpeed();
                int tex = -1, bw = 0, bh = 0;
                try {
                    for (long k = 0; !cancel.isCancelled(); k++) {
                        long outUs = k * 1000000L / fps;
                        long srcUs = endUs - (long) (outUs * sp) - 1000L;
                        if (srcUs < beginUs) break;
                        Bitmap b = MediaVideoItem.revFrame(r, srcUs / 1000L, 1920);
                        if (b != null) {
                            if (tex >= 0) gl.deleteTexture(tex);
                            bw = b.getWidth();
                            bh = b.getHeight();
                            tex = gl.uploadBitmap(b);
                            b.recycle();
                        }
                        if (tex < 0) continue;
                        comp.image(v, tex, bw, bh, outUs / 1000L);
                        gl.swap(offsetUs + outUs);
                        drain(false);
                        report(offsetUs / 1000L + outUs / 1000L);
                    }
                } finally {
                    if (tex >= 0) gl.deleteTexture(tex);
                }
            } finally {
                interfaz.release(r);
            }
        }

        private long lastPts;
        private long nextK;

        private void video(MediaVideoItem v) throws IOException {
            if (v.isReversed()) { videoReverse(v); return; }
            MediaExtractor ex = new MediaExtractor();
            MediaCodec dec = null;
            Surface ds = null;
            try {
                ex.setDataSource(v.getFilename());
                MediaFormat fmt = selectVideoTrack(ex, v);
                long beginUs = v.fileBegin() * 1000L;
                long endUs = v.fileEnd() * 1000L;
                ex.seekTo(beginUs, MediaExtractor.SEEK_TO_PREVIOUS_SYNC);
                ds = gl.newDecoderSurface();
                dec = MediaCodec.createDecoderByType(fmt.getString(MediaFormat.KEY_MIME));
                dec.configure(fmt, ds, null, 0);
                dec.start();
                decodeLoop(v, ex, dec, beginUs, endUs);
            } finally {
                if (dec != null) {
                    interfaz.stop(dec);
                    dec.release();
                }
                if (ds != null) ds.release();
                ex.release();
            }
        }

        private MediaFormat selectVideoTrack(MediaExtractor ex, MediaVideoItem v) throws IOException {
            int track = -1;
            for (int t = 0; t < ex.getTrackCount(); t++) {
                String mime = ex.getTrackFormat(t).getString(MediaFormat.KEY_MIME);
                if (mime != null && mime.startsWith("video/")) { track = t; break; }
            }
            if (track < 0) throw new IOException("sin pista de video en " + v.getFilename());
            ex.selectTrack(track);
            MediaFormat fmt = ex.getTrackFormat(track);
            if (Build.VERSION.SDK_INT >= 21 && !fmt.containsKey("rotation-degrees")) {
                int rot = rotationOf(v.getFilename());
                if (rot != 0) fmt.setInteger("rotation-degrees", rot);
            }
            return fmt;
        }

        private void decodeLoop(MediaVideoItem v, MediaExtractor ex, MediaCodec dec, long beginUs, long endUs) throws IOException {
            final float speed = v.getSpeed();
            MediaCodec.BufferInfo info = new MediaCodec.BufferInfo();
            boolean inDone = false, outDone = false;
            int idle = 0;
            lastPts = -1;
            nextK = 0;
            while (!outDone && !cancel.isCancelled()) {
                if (!inDone) inDone = feedInput(dec, ex, endUs, 500000L);
                int outIndex = dec.dequeueOutputBuffer(info, 5000);
                if (outIndex >= 0) {
                    idle = 0;
                    long pts = info.presentationTimeUs;
                    boolean eos = (info.flags & MediaCodec.BUFFER_FLAG_END_OF_STREAM) != 0;
                    boolean render = info.size > 0 && pts >= beginUs && pts < endUs;
                    dec.releaseOutputBuffer(outIndex, render);
                    if (render) renderDecoded(v, pts, beginUs, endUs, speed);
                    if (eos || pts >= endUs) outDone = true;
                } else if (outIndex == MediaCodec.INFO_TRY_AGAIN_LATER) {
                    if (inDone && ++idle > 400) outDone = true;
                }
            }
            if (speed != 1f && lastPts >= 0 && !cancel.isCancelled()) emit(v, nextK, beginUs, endUs, endUs);
        }

        private void renderDecoded(MediaVideoItem v, long pts, long beginUs, long endUs, float speed) throws IOException {
            gl.awaitFrame();
            if (speed == 1f) {
                long relMs = (pts - beginUs) / 1000L;
                comp.video(v, relMs);
                gl.swap(offsetUs + (pts - beginUs));
                drain(false);
                report(offsetUs / 1000L + (pts - beginUs) / 1000L);
                return;
            }
            long frameUs = lastPts >= 0 && pts > lastPts ? pts - lastPts : 1000000L / Math.max(1, fps);
            lastPts = pts;
            nextK = emit(v, nextK, beginUs, endUs, pts + frameUs / 2);
        }

        private long emit(MediaVideoItem v, long k, long beginUs, long endUs, long limitUs) throws IOException {
            while (!cancel.isCancelled()) {
                long outUs = k * 1000000L / fps;
                long srcUs = beginUs + (long) (outUs * (double) speed);
                if (srcUs >= limitUs || srcUs >= endUs) break;
                comp.video(v, outUs / 1000L);
                gl.swap(offsetUs + outUs);
                drain(false);
                report(offsetUs / 1000L + outUs / 1000L);
                k++;
            }
            return k;
        }

        private void image(MediaItem it) throws IOException {
            Bitmap b = it.getThumbnail(0, 0, 0);
            if (b == null) throw new IOException("imagen ilegible: " + it.getFilename());
            int bw = b.getWidth(), bh = b.getHeight();
            int tex = gl.uploadBitmap(b);
            b.recycle();
            try {
                long durUs = it.getTimelineDuration() * 1000L;
                int n = (int) Math.max(1L, durUs * fps / 1000000L);
                for (int k = 0; k < n && !cancel.isCancelled(); k++) {
                    long rel = k * 1000000L / fps;
                    long relMs = rel / 1000L;
                    comp.image(it, tex, bw, bh, relMs);
                    gl.swap(offsetUs + rel);
                    drain(false);
                    report(offsetUs / 1000L + relMs);
                }
            } finally {
                gl.deleteTexture(tex);
            }
        }

        private void report(long posMs) {
            if (l == null || totalMs <= 0) return;
            int p = (int) Math.min(99L, Math.max(0L, posMs * 100L / totalMs));
            if (p > lastPct) {
                lastPct = p;
                l.onProgress(ve, out, p);
            }
        }

        private void finish() throws IOException {
            enc.signalEndOfInputStream();
            drain(true);
            if (!muxStarted) throw new IOException("el encoder no produjo video");
            if (reader != null) reader.pump(Long.MAX_VALUE, mux, aTrack);
        }

        private void drain(boolean end) throws IOException {
            int tries = 0;
            while (true) {
                int oi = enc.dequeueOutputBuffer(info, end ? 10000 : 0);
                if (oi == MediaCodec.INFO_TRY_AGAIN_LATER) {
                    if (!end || ++tries > 500) break;
                    continue;
                }
                if (oi == MediaCodec.INFO_OUTPUT_FORMAT_CHANGED) {
                    vTrack = mux.addTrack(enc.getOutputFormat());
                    if (reader != null) aTrack = mux.addTrack(reader.format());
                    mux.start();
                    muxStarted = true;
                    continue;
                }
                if (oi < 0) continue;
                ByteBuffer b = outBuf(enc, oi);
                if ((info.flags & MediaCodec.BUFFER_FLAG_CODEC_CONFIG) != 0) info.size = 0;
                if (info.size > 0 && muxStarted) {
                    if (reader != null) reader.pump(info.presentationTimeUs, mux, aTrack);
                    b.position(info.offset);
                    b.limit(info.offset + info.size);
                    mux.writeSampleData(vTrack, b, info);
                }
                enc.releaseOutputBuffer(oi, false);
                if ((info.flags & MediaCodec.BUFFER_FLAG_END_OF_STREAM) != 0) break;
            }
        }

        private void closeAll() {
            if (enc != null) {
                if (encStarted) {
                    interfaz.stop(enc);
                }
                enc.release();
                enc = null;
            }
            if (gl != null) {
                interfaz.releaseGl(gl);
                gl = null;
            }
            if (reader != null) { reader.close(); reader = null; }
            if (mux != null) {
                try {
                    if (muxStarted) mux.stop();
                } catch (RuntimeException ignored) { }
                mux.release();
                mux = null;
            }
        }
    }

    // respaldin din din
    private static void remux(VideoEditor ve, List<MediaItem> items, String out,
            VideoEditor.ExportProgressListener l, Cancel cancel) throws IOException {
        long total = 0;
        MediaVideoItem first = null;
        for (MediaItem it : items) {
            if (it instanceof MediaVideoItem) {
                if (first == null) first = (MediaVideoItem) it;
                total += it.getTimelineDuration();
            }
        }
        if (first == null) throw new IOException("no hay clips de video que exportar");

        File dst = new File(out);
        if (dst.getParentFile() != null) dst.getParentFile().mkdirs();
        MediaMuxer mux = new MediaMuxer(out, MediaMuxer.OutputFormat.MUXER_OUTPUT_MPEG_4);
        boolean started = false;
        try {
            mux.setOrientationHint(rotationOf(first.getFilename()));
            Map<String, Integer> outTracks = new HashMap<String, Integer>();
            long offsetUs = 0, doneMs = 0;
            ByteBuffer buf = ByteBuffer.allocate(2 * 1024 * 1024);
            MediaCodec.BufferInfo info = new MediaCodec.BufferInfo();

            for (MediaItem it : items) {
                if (!(it instanceof MediaVideoItem)) continue;
                MediaVideoItem v = (MediaVideoItem) it;
                MediaExtractor ex = new MediaExtractor();
                try {
                    ex.setDataSource(v.getFilename());
                    Map<Integer, Integer> map = new HashMap<Integer, Integer>();
                    for (int t = 0; t < ex.getTrackCount(); t++) {
                        MediaFormat f = ex.getTrackFormat(t);
                        String mime = f.getString(MediaFormat.KEY_MIME);
                        if (mime == null || !(mime.startsWith("video/") || (mime.startsWith("audio/") && !v.isMuted()))) continue;
                        Integer idx = outTracks.get(mime);
                        if (idx == null) {
                            if (started) continue;
                            idx = mux.addTrack(f);
                            outTracks.put(mime, idx);
                        }
                        map.put(t, idx);
                        ex.selectTrack(t);
                    }
                    if (!started) { mux.start(); started = true; }
                    long beginUs = v.fileBegin() * 1000L, endUs = v.fileEnd() * 1000L;
                    ex.seekTo(beginUs, MediaExtractor.SEEK_TO_PREVIOUS_SYNC);
                    long base = -1;
                    while (!cancel.isCancelled()) {
                        int track = ex.getSampleTrackIndex();
                        if (track < 0) break;
                        long ts = ex.getSampleTime();
                        if (ts > endUs) break;
                        if (base < 0) base = ts;
                        Integer idx = map.get(track);
                        if (idx != null) {
                            buf.clear();
                            int n = ex.readSampleData(buf, 0);
                            if (n < 0) break;
                            info.set(0, n, offsetUs + (ts - base),
                                    (ex.getSampleFlags() & MediaExtractor.SAMPLE_FLAG_SYNC) != 0 ? MediaCodec.BUFFER_FLAG_SYNC_FRAME : 0);
                            mux.writeSampleData(idx, buf, info);
                        }
                        if (l != null && total > 0) {
                            long pos = doneMs + Math.max(0, (ts - beginUs) / 1000);
                            l.onProgress(ve, out, (int) Math.min(99, pos * 100 / total));
                        }
                        ex.advance();
                    }
                } finally {
                    ex.release();
                }
                offsetUs += (v.fileEnd() - v.fileBegin()) * 1000L;
                doneMs += v.getTimelineDuration();
                if (cancel.isCancelled()) break;
            }
        } finally {
            try {
                if (started) mux.stop();
            } catch (RuntimeException ignored) { }
            mux.release();
        }
        if (cancel.isCancelled()) { dst.delete(); return; }
        if (l != null) l.onProgress(ve, out, 100);
    }

    private static int rotationOf(String file) {
        if (Build.VERSION.SDK_INT < 17) return 0;
        MediaMetadataRetriever r = new MediaMetadataRetriever();
        try {
            r.setDataSource(file);
            String s = r.extractMetadata(MediaMetadataRetriever.METADATA_KEY_VIDEO_ROTATION);
            return s == null ? 0 : Integer.parseInt(s);
        } catch (RuntimeException e) {
            return 0;
        } finally {
            MediaItem.quiet(r);
        }
    }
}
