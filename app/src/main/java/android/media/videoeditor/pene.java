package android.media.videoeditor;

import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.media.MediaMuxer;
import java.io.File;
import java.io.FileOutputStream;
import java.io.RandomAccessFile;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.List;

final class pene {
    static final int RATE = 44100;

    static final class Reader {
        private final MediaExtractor ex = new MediaExtractor();
        private final MediaFormat fmt;
        private final ByteBuffer buf = ByteBuffer.allocate(64 * 1024);
        private final MediaCodec.BufferInfo info = new MediaCodec.BufferInfo();

        Reader(File f) throws IOException {
            ex.setDataSource(f.getPath());
            if (ex.getTrackCount() < 1) throw new IOException("audio temporal vacio");
            fmt = ex.getTrackFormat(0);
            ex.selectTrack(0);
        }

        MediaFormat format() { return fmt; }

        void pump(long untilUs, MediaMuxer mux, int track) {
            while (true) {
                long ts = ex.getSampleTime();
                if (ts < 0 || ts > untilUs) return;
                buf.clear();
                int n = ex.readSampleData(buf, 0);
                if (n < 0) return;
                info.set(0, n, ts, (ex.getSampleFlags() & MediaExtractor.SAMPLE_FLAG_SYNC) != 0
                        ? MediaCodec.BUFFER_FLAG_SYNC_FRAME : 0);
                mux.writeSampleData(track, buf, info);
                ex.advance();
            }
        }

        void close() {
            interfaz.release(ex);
        }
    }

    private static final class Pcm {
        private final int ch;
        private final double step;
        private double pos;
        private short pl, pr;
        short[] out = new short[0];
        int outN;

        Pcm(int rate, int channels) { this(rate, channels, 1f); }

        Pcm(int rate, int channels, float speed) {
            ch = Math.max(1, channels);
            step = (double) Math.max(8000, rate) * speed / RATE;
        }

        private short left(short[] s, int i) { return s[i * ch]; }
        private short right(short[] s, int i) { return ch >= 2 ? s[i * ch + 1] : s[i * ch]; }

        private static short clip(float v) {
            if (v > 32767f) return 32767;
            if (v < -32768f) return -32768;
            return (short) v;
        }

        void feed(short[] src, int n, float gain) {
            outN = 0;
            if (n <= 0) return;
            int cap = ((int) (n / step) + 4) * 2;
            if (out.length < cap) out = new short[cap];
            while (true) {
                int i0 = (int) Math.floor(pos);
                if (i0 + 1 >= n) break;
                double fr = pos - i0;
                float l0, r0;
                if (i0 < 0) { l0 = pl; r0 = pr; } else { l0 = left(src, i0); r0 = right(src, i0); }
                float l1 = left(src, i0 + 1), r1 = right(src, i0 + 1);
                out[outN * 2] = clip((float) (l0 + (l1 - l0) * fr) * gain);
                out[outN * 2 + 1] = clip((float) (r0 + (r1 - r0) * fr) * gain);
                outN++;
                pos += step;
            }
            pos -= n;
            pl = left(src, n - 1);
            pr = right(src, n - 1);
        }
    }

    static long[] fades(MediaItem it) {
        long len = it.getTimelineDuration();
        Transition tb = it.getBeginTransition(), te = it.getEndTransition();
        long fin = tb == null ? 0 : (compositor.isSnap(tb) ? tb.getDuration() : tb.getDuration() / 2);
        long fout = te == null || compositor.isSnap(te) ? 0 : te.getDuration() / 2;
        return new long[]{Math.min(fin, len / 2), Math.min(fout, len / 2)};
    }

    static float fadeGain(MediaItem it, long relMs) {
        long[] f = fades(it);
        long len = it.getTimelineDuration();
        float g = 1f;
        if (f[0] > 0 && relMs < f[0]) g = relMs / (float) f[0];
        if (f[1] > 0 && relMs > len - f[1]) g = Math.min(g, Math.max(0f, (len - relMs) / (float) f[1]));
        return Math.max(0f, Math.min(1f, g));
    }

    interface Sink {
        void put(short[] a, int n) throws IOException;
    }

    static float peak(String file, long beginUs, long endUs) throws IOException {
        final float[] pk = new float[1];
        decode(null, new exporter.Cancel() {
            @Override public boolean isCancelled() { return false; }
        }, file, beginUs, endUs, 1f, new Sink() {
            @Override public void put(short[] a, int n) {
                for (int i = 0; i < n * 2; i++) {
                    int s = Math.abs((int) a[i]);
                    if (s > pk[0]) pk[0] = s;
                }
            }
        }, false);
        return pk[0] / 32768f;
    }

    private static final class CurveSink implements Sink {
        private final Sink to;
        private final String id;
        private final long lenMs;
        private final float norm;
        private long done;

        CurveSink(Sink to, String id, long lenMs) {
            this.to = to;
            this.id = id;
            this.lenMs = lenMs;
            this.norm = volcurve.normOf(id);
        }

        @Override public void put(short[] a, int n) throws IOException {
            for (int i = 0; i < n; i++) {
                float g = volcurve.gain(id, (long) ((done + i) * 1000.0 / RATE), lenMs) * norm;
                if (Math.abs(g - 1f) > 0.001f) {
                    a[i * 2] = clamp(a[i * 2] * g);
                    a[i * 2 + 1] = clamp(a[i * 2 + 1] * g);
                }
            }
            done += n;
            to.put(a, n);
        }

        private static short clamp(float v) { return (short) Math.max(-32768f, Math.min(32767f, v)); }
    }

    private static final class RevSink implements Sink {
        private final Sink to;
        private short[] buf = new short[RATE * 2 * 10];
        private int len;

        RevSink(Sink to) { this.to = to; }

        @Override public void put(short[] a, int n) {
            int add = n * 2;
            if (len + add > buf.length) buf = java.util.Arrays.copyOf(buf, Math.max(buf.length * 2, len + add));
            System.arraycopy(a, 0, buf, len, add);
            len += add;
        }

        void flush() throws IOException {
            short[] out = new short[8192 * 2];
            int frames = len / 2, pos = frames;
            while (pos > 0) {
                int m = Math.min(8192, pos);
                for (int i = 0; i < m; i++) {
                    int s = (pos - 1 - i) * 2;
                    out[i * 2] = buf[s];
                    out[i * 2 + 1] = buf[s + 1];
                }
                to.put(out, m);
                pos -= m;
            }
            len = 0;
        }
    }

    private static final class FadeSink implements Sink {
        private final Sink to;
        private final long inMs, outMs, lenMs;
        private long done;

        FadeSink(Sink to, long inMs, long outMs, long lenMs) {
            this.to = to;
            this.inMs = inMs;
            this.outMs = outMs;
            this.lenMs = lenMs;
        }

        @Override public void put(short[] a, int n) throws IOException {
            if (inMs > 0 || outMs > 0) {
                for (int i = 0; i < n; i++) {
                    double t = (done + i) * 1000.0 / RATE;
                    double g = 1.0;
                    if (inMs > 0 && t < inMs) g = t / inMs;
                    if (outMs > 0 && t > lenMs - outMs) g = Math.min(g, Math.max(0.0, (lenMs - t) / outMs));
                    if (g < 1.0) {
                        a[i * 2] = (short) (a[i * 2] * g);
                        a[i * 2 + 1] = (short) (a[i * 2 + 1] * g);
                    }
                }
            }
            done += n;
            to.put(a, n);
        }
    }

    private static final class BackgroundTrack {
        final File file;
        final long startFrame, len;
        final boolean loop, duck;
        final float duckThr;
        final float duckVol;
        float gain = 1f;
        RandomAccessFile raf;
        byte[] tmp = new byte[0];

        BackgroundTrack(File file, long len, long startFrame, boolean loop, boolean duck, int thr, int vol) {
            this.file = file;
            this.len = len;
            this.startFrame = startFrame;
            this.loop = loop;
            this.duck = duck;
            this.duckThr = (float) Math.pow(10.0, -(90 - Math.max(0, Math.min(90, thr))) / 20.0);
            this.duckVol = Math.max(0, Math.min(100, vol)) / 100f;
        }

        private static short soft(int v) {
            int m = Math.abs(v);
            if (m <= 28000) return (short) v;
            float x = Math.min(1f, (m - 28000) / 4767f);
            int o = 28000 + (int) (4767 * (1f - (1f - x) * (1f - x)));
            return (short) (v < 0 ? -Math.min(o, 32767) : Math.min(o, 32767));
        }

        void mix(short[] a, int n, long frame0, float peak) throws IOException {
            if (len <= 0) return;
            if (raf == null) raf = new RandomAccessFile(file, "r");
            float target = duck && peak >= duckThr ? duckVol : 1f;
            int i = 0;
            while (i < n) {
                long t = frame0 + i - startFrame;
                if (t < 0) { i++; continue; }
                if (!loop && t >= len) break;
                long pos = loop ? t % len : t;
                int c = (int) Math.min(n - i, len - pos);
                if (!loop && c <= 0) break;
                if (tmp.length < c * 4) tmp = new byte[c * 4];
                raf.seek(pos * 4);
                raf.readFully(tmp, 0, c * 4);
                for (int k = 0; k < c; k++) {
                    gain += (target - gain) * 0.002f;
                    int o = (i + k) * 2;
                    float l = (short) ((tmp[k * 4] & 255) | (tmp[k * 4 + 1] << 8));
                    float r = (short) ((tmp[k * 4 + 2] & 255) | (tmp[k * 4 + 3] << 8));
                    float g = gain;
                    long tt = t + k;
                    long ramp = RATE / 2;
                    if (tt < ramp) g *= (float) tt / ramp;
                    if (!loop && len - tt < ramp) g *= Math.max(0f, (float) (len - tt) / ramp);
                    int vl = (int) (a[o] + l * g), vr = (int) (a[o + 1] + r * g);
                    a[o] = soft(vl);
                    a[o + 1] = soft(vr);
                }
                i += c;
            }
        }

        void close() {
            interfaz.close(raf);
            file.delete();
        }
    }

    private final java.util.ArrayList<BackgroundTrack> bgs = new java.util.ArrayList<BackgroundTrack>();
    private final MediaCodec enc;
    private final MediaMuxer mux;
    private final MediaCodec.BufferInfo info = new MediaCodec.BufferInfo();
    private final exporter.Cancel cancel;
    private int track = -1;
    private boolean started;
    private long frames;
    private long limit;

    private pene(File tmp, exporter.Cancel cancel) throws IOException {
        this.cancel = cancel;
        MediaFormat f = MediaFormat.createAudioFormat("audio/mp4a-latm", RATE, 2);
        f.setInteger(MediaFormat.KEY_AAC_PROFILE, MediaCodecInfo.CodecProfileLevel.AACObjectLC);
        f.setInteger(MediaFormat.KEY_BIT_RATE, 128000);
        f.setInteger(MediaFormat.KEY_MAX_INPUT_SIZE, 65536);
        MediaCodec e = MediaCodec.createEncoderByType("audio/mp4a-latm");
        MediaMuxer m = null;
        try {
            e.configure(f, null, null, MediaCodec.CONFIGURE_FLAG_ENCODE);
            e.start();
            m = new MediaMuxer(tmp.getPath(), MediaMuxer.OutputFormat.MUXER_OUTPUT_MPEG_4);
        } catch (RuntimeException ex) {
            e.release();
            if (m != null) m.release();
            throw ex;
        }
        enc = e;
        mux = m;
    }

    static boolean hasAudio(MediaVideoItem v) {
        if (v.isMuted() || v.getVolume() <= 0) return false;
        return hasAudioTrack(v);
    }

    static boolean buildSpeed(MediaVideoItem v, float speed, File tmp, exporter.Cancel cancel) throws IOException {
        if (!hasAudioTrack(v)) return false;
        pene a = new pene(tmp, cancel);
        try {
            long outMs = (long) ((v.getBoundaryEndTime() - v.getBoundaryBeginTime()) / speed);
            a.limit = outMs * RATE / 1000L;
            decode(a, cancel, v.getFilename(), v.getBoundaryBeginTime() * 1000L, v.getBoundaryEndTime() * 1000L,
                    1f, a.pushSink, true, speed);
            a.fillSilence();
            a.finish();
        } finally {
            a.close();
        }
        return !cancel.isCancelled();
    }

    private static boolean hasAudioTrack(MediaVideoItem v) {
        MediaExtractor ex = new MediaExtractor();
        try {
            ex.setDataSource(v.getFilename());
            for (int t = 0; t < ex.getTrackCount(); t++) {
                String m = ex.getTrackFormat(t).getString(MediaFormat.KEY_MIME);
                if (m != null && m.startsWith("audio/")) return true;
            }
            return false;
        } catch (IOException e) {
            return false;
        } catch (RuntimeException e) {
            return false;
        } finally {
            ex.release();
        }
    }

    static boolean build(List<MediaItem> items, List<AudioTrack> tracks, File tmp, exporter.Cancel cancel) throws IOException {
        final List<pipa.Layer> lys = items.isEmpty() ? new java.util.ArrayList<pipa.Layer>() : VideoEditorImpl.layersFor(items.get(0));
        if (!hasAnyAudio(items, tracks, lys)) return false;
        long totalMs = 0;
        for (MediaItem it : items) totalMs += it.getTimelineDuration();
        pene a = new pene(tmp, cancel);
        try {
            a.addBackgrounds(tracks, tmp, totalMs);
            a.addLayerSounds(lys, tmp, totalMs);
            a.mixItems(items);
            a.finish();
        } finally {
            a.close();
        }
        return !cancel.isCancelled();
    }

    private static boolean hasAnyAudio(List<MediaItem> items, List<AudioTrack> tracks, List<pipa.Layer> lys) {
        for (MediaItem it : items) {
            if (it instanceof MediaVideoItem && hasAudio((MediaVideoItem) it)) return true;
        }
        if (tracks != null) {
            for (AudioTrack t : tracks) if (!t.isMuted() && t.getVolume() > 0) return true;
        }
        for (pipa.Layer layer : lys) if (layer.video && layer.sound && layer.file != null) return true;
        return false;
    }

    private void addBackgrounds(List<AudioTrack> tracks, File tmp, long totalMs) {
        if (tracks == null) return;
        int n = 0;
        for (AudioTrack t : tracks) {
            if (cancel.isCancelled()) break;
            if (t.isMuted() || t.getVolume() <= 0) continue;
            try {
                addBg(t, new File(tmp.getPath() + ".bg" + (n++) + ".pcm"), totalMs);
            } catch (Exception ignored) { }
        }
    }

    private void addLayerSounds(List<pipa.Layer> lys, File tmp, long totalMs) {
        int n = 0;
        for (pipa.Layer layer : lys) {
            if (!(layer.video && layer.sound && layer.file != null) || cancel.isCancelled()) continue;
            try {
                AudioTrack track = new AudioTrack(null, "pip" + n, layer.file);
                long len = layer.end - layer.start;
                long from = Math.max(0L, Math.min(layer.offset, track.getDuration() - 1));
                track.setExtractBoundaries(from, Math.min(track.getDuration(), from + Math.max(1L, len)));
                track.setStartTime(layer.start);
                addBg(track, new File(tmp.getPath() + ".pip" + (n++) + ".pcm"), totalMs);
            } catch (Exception ignored) { }
        }
    }

    private void mixItems(List<MediaItem> items) throws IOException {
        long cumMs = 0;
        for (MediaItem it : items) {
            if (cancel.isCancelled()) break;
            cumMs += it.getTimelineDuration();
            limit = cumMs * RATE / 1000L;
            if (it instanceof MediaVideoItem && hasAudio((MediaVideoItem) it)) decodeItem((MediaVideoItem) it);
            fillSilence();
        }
    }

    private void decodeItem(MediaVideoItem v) {
        try {
            long len = v.getTimelineDuration();
            long[] fd = fades(v);
            Sink sk = new FadeSink(pushSink, fd[0], fd[1], len);
            if (volcurve.get(v.getId()) != null || Math.abs(volcurve.normOf(v.getId()) - 1f) > 0.001f)
                sk = new CurveSink(sk, v.getId(), len);
            RevSink rs = v.isReversed() ? new RevSink(sk) : null;
            decode(this, cancel, v.getFilename(), v.fileBegin() * 1000L, v.fileEnd() * 1000L,
                    v.getVolume() / 100f, rs != null ? rs : sk, true, v.getSpeed());
            if (rs != null && !cancel.isCancelled()) rs.flush();
        } catch (Exception ignored) { }
    }

    private final Sink pushSink = new Sink() {
        @Override public void put(short[] a, int n) throws IOException { push(a, n); }
    };

    private void addBg(AudioTrack t, File raw, long totalMs) throws IOException {
        final FileOutputStream fo = new FileOutputStream(raw);
        final long[] cnt = new long[1];
        try {
            Sink sink = new Sink() {
                private byte[] bb = new byte[0];
                @Override public void put(short[] a, int n) throws IOException {
                    if (bb.length < n * 4) bb = new byte[n * 4];
                    for (int i = 0; i < n * 2; i++) {
                        bb[i * 2] = (byte) a[i];
                        bb[i * 2 + 1] = (byte) (a[i] >> 8);
                    }
                    fo.write(bb, 0, n * 4);
                    cnt[0] += n;
                }
            };
            long bUs = t.getBoundaryBeginTime() * 1000L;
            long eUs = Math.min(t.getBoundaryEndTime() * 1000L, bUs + Math.max(0L, totalMs - t.getStartTime()) * 1000L);
            decode(this, cancel, t.getFilename(), bUs, eUs, t.getVolume() / 100f, sink, false);
        } finally {
            fo.close();
        }
        if (cnt[0] <= 0) { raw.delete(); return; }
        bgs.add(new BackgroundTrack(raw, cnt[0], t.getStartTime() * RATE / 1000L, t.isLooping(),
                t.isDuckingEnabled(), t.duckThreshold(), t.duckVolume()));
    }

    static short[] waveform(String file, long durationMs, ExtractAudioWaveformProgressListener l) throws IOException {
        return waveform(file, 0L, durationMs, l);
    }

    static short[] waveform(String file, long beginMs, long endMs, ExtractAudioWaveformProgressListener l) throws IOException {
        final long durationMs = Math.max(WaveformData.FRAME_MS, endMs - beginMs);
        final int per = RATE * WaveformData.FRAME_MS / 1000;
        final int total = (int) Math.max(1, durationMs / WaveformData.FRAME_MS);
        final short[] g = new short[total];
        final int[] st = new int[3];
        final float[] pk = new float[1];
        final ExtractAudioWaveformProgressListener fl = l;
        Sink sink = new Sink() {
            @Override public void put(short[] a, int n) {
                for (int i = 0; i < n; i++) {
                    float v = Math.max(Math.abs(a[i * 2]), Math.abs(a[i * 2 + 1])) / 32768f;
                    if (v > pk[0]) pk[0] = v;
                    if (++st[1] >= per) {
                        if (st[0] < total) g[st[0]] = (short) Math.min(255f, pk[0] * 255f);
                        st[0]++;
                        st[1] = 0;
                        pk[0] = 0f;
                        int pct = Math.min(99, st[0] * 100 / total);
                        if (fl != null && pct > st[2]) { st[2] = pct; fl.onProgress(pct); }
                    }
                }
            }
        };
        decode(null, new exporter.Cancel() {
            @Override public boolean isCancelled() { return false; }
        }, file, beginMs * 1000L, endMs * 1000L, 1f, sink, false);
        return g;
    }

    private static void decode(pene self, exporter.Cancel cancel, String file, long beginUs, long endUs, float gain, Sink sink, boolean main) throws IOException {
        decode(self, cancel, file, beginUs, endUs, gain, sink, main, 1f);
    }

    private static void decode(pene self, exporter.Cancel cancel, String file, long beginUs, long endUs, float gain, Sink sink, boolean main, float speed) throws IOException {
        MediaExtractor ex = new MediaExtractor();
        MediaCodec dec = null;
        try {
            ex.setDataSource(file);
            MediaFormat fmt = selectAudioTrack(ex);
            if (fmt == null) return;
            ex.seekTo(beginUs, MediaExtractor.SEEK_TO_PREVIOUS_SYNC);
            dec = MediaCodec.createDecoderByType(fmt.getString(MediaFormat.KEY_MIME));
            dec.configure(fmt, null, null, 0);
            dec.start();

            int inRate = fmt.containsKey(MediaFormat.KEY_SAMPLE_RATE) ? fmt.getInteger(MediaFormat.KEY_SAMPLE_RATE) : RATE;
            int inCh = fmt.containsKey(MediaFormat.KEY_CHANNEL_COUNT) ? fmt.getInteger(MediaFormat.KEY_CHANNEL_COUNT) : 2;
            Pcm pcm = new Pcm(inRate, inCh, speed);
            MediaCodec.BufferInfo info = new MediaCodec.BufferInfo();
            boolean inDone = false, outDone = false;
            int idle = 0;
            while (!outDone && (!main || self.frames < self.limit) && !cancel.isCancelled()) {
                if (!inDone) inDone = exporter.feedInput(dec, ex, endUs, 200000L);
                int outIndex = dec.dequeueOutputBuffer(info, 5000);
                if (outIndex == MediaCodec.INFO_OUTPUT_FORMAT_CHANGED) {
                    MediaFormat outFmt = dec.getOutputFormat();
                    int newRate = outFmt.containsKey(MediaFormat.KEY_SAMPLE_RATE) ? outFmt.getInteger(MediaFormat.KEY_SAMPLE_RATE) : inRate;
                    int newCh = outFmt.containsKey(MediaFormat.KEY_CHANNEL_COUNT) ? outFmt.getInteger(MediaFormat.KEY_CHANNEL_COUNT) : inCh;
                    if (newRate != inRate || newCh != inCh) { inRate = newRate; inCh = newCh; pcm = new Pcm(inRate, inCh, speed); }
                } else if (outIndex >= 0) {
                    idle = 0;
                    if (info.size > 0) feedChunk(exporter.outBuf(dec, outIndex), info, inRate, inCh, beginUs, endUs, gain, pcm, sink);
                    dec.releaseOutputBuffer(outIndex, false);
                    if ((info.flags & MediaCodec.BUFFER_FLAG_END_OF_STREAM) != 0) outDone = true;
                } else if (outIndex == MediaCodec.INFO_TRY_AGAIN_LATER) {
                    if (inDone && ++idle > 400) outDone = true;
                }
            }
        } finally {
            if (dec != null) {
                interfaz.stop(dec);
                dec.release();
            }
            ex.release();
        }
    }

    private static MediaFormat selectAudioTrack(MediaExtractor ex) {
        for (int t = 0; t < ex.getTrackCount(); t++) {
            MediaFormat f = ex.getTrackFormat(t);
            String mime = f.getString(MediaFormat.KEY_MIME);
            if (mime != null && mime.startsWith("audio/")) {
                ex.selectTrack(t);
                return f;
            }
        }
        return null;
    }

    private static void feedChunk(ByteBuffer out, MediaCodec.BufferInfo info, int inRate, int inCh, long beginUs, long endUs, float gain, Pcm pcm, Sink sink) throws IOException {
        out.position(info.offset);
        out.limit(info.offset + info.size);
        java.nio.ShortBuffer sb = out.order(ByteOrder.nativeOrder()).asShortBuffer();
        short[] src = new short[sb.remaining()];
        sb.get(src);
        int chs = Math.max(1, inCh);
        int n = src.length / chs;
        long chunkUs = info.presentationTimeUs;
        long chunkEndUs = chunkUs + n * 1000000L / inRate;
        if (chunkEndUs <= beginUs || chunkUs >= endUs) return;
        int skip = chunkUs < beginUs ? (int) ((beginUs - chunkUs) * inRate / 1000000L) : 0;
        if (skip >= n) return;
        if (skip > 0) {
            short[] cut = new short[(n - skip) * chs];
            System.arraycopy(src, skip * chs, cut, 0, cut.length);
            src = cut;
            n -= skip;
        }
        pcm.feed(src, n, gain);
        sink.put(pcm.out, pcm.outN);
    }

    private void fillSilence() throws IOException {
        short[] z = new short[4096 * 2];
        while (frames < limit && !cancel.isCancelled()) {
            long room = limit - frames;
            java.util.Arrays.fill(z, (short) 0);
            push(z, (int) Math.min(4096, room));
        }
    }

    private void push(short[] a, int nFrames) throws IOException {
        long room = limit - frames;
        if (nFrames > room) nFrames = (int) room;
        if (nFrames > 0 && !bgs.isEmpty()) {
            float peak = 0f;
            for (int i = 0; i < nFrames * 2; i++) peak = Math.max(peak, Math.abs(a[i]) / 32768f);
            for (BackgroundTrack g : bgs) g.mix(a, nFrames, frames, peak);
        }
        int off = 0;
        int stuck = 0;
        while (nFrames > 0 && !cancel.isCancelled()) {
            int ii = enc.dequeueInputBuffer(10000);
            if (ii < 0) {
                drain(false);
                if (++stuck > 500) throw new IOException("encoder de audio trabado");
                continue;
            }
            stuck = 0;
            ByteBuffer b = exporter.inBuf(enc, ii);
            b.clear();
            int take = Math.min(nFrames, b.capacity() / 4);
            b.order(ByteOrder.nativeOrder()).asShortBuffer().put(a, off * 2, take * 2);
            enc.queueInputBuffer(ii, 0, take * 4, frames * 1000000L / RATE, 0);
            frames += take;
            off += take;
            nFrames -= take;
            drain(false);
        }
    }

    private void finish() throws IOException {
        int stuck = 0;
        while (!cancel.isCancelled()) {
            int ii = enc.dequeueInputBuffer(10000);
            if (ii >= 0) {
                enc.queueInputBuffer(ii, 0, 0, frames * 1000000L / RATE, MediaCodec.BUFFER_FLAG_END_OF_STREAM);
                break;
            }
            drain(false);
            if (++stuck > 500) throw new IOException("encoder de audio trabado");
        }
        drain(true);
    }

    private void drain(boolean end) {
        int tries = 0;
        while (true) {
            int oi = enc.dequeueOutputBuffer(info, end ? 10000 : 0);
            if (oi == MediaCodec.INFO_TRY_AGAIN_LATER) {
                if (!end || ++tries > 300) break;
                continue;
            }
            if (oi == MediaCodec.INFO_OUTPUT_FORMAT_CHANGED) {
                track = mux.addTrack(enc.getOutputFormat());
                mux.start();
                started = true;
                continue;
            }
            if (oi < 0) continue;
            ByteBuffer b = exporter.outBuf(enc, oi);
            if ((info.flags & MediaCodec.BUFFER_FLAG_CODEC_CONFIG) != 0) info.size = 0;
            if (info.size > 0 && started) {
                b.position(info.offset);
                b.limit(info.offset + info.size);
                mux.writeSampleData(track, b, info);
            }
            enc.releaseOutputBuffer(oi, false);
            if ((info.flags & MediaCodec.BUFFER_FLAG_END_OF_STREAM) != 0) break;
        }
    }

    private void close() {
        for (BackgroundTrack g : bgs) g.close();
        interfaz.stop(enc);
        enc.release();
        try {
            if (started) mux.stop();
        } catch (RuntimeException ignored) { }
        mux.release();
    }
}
