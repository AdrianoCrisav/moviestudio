import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.FileVisitResult;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.SimpleFileVisitor;
import java.nio.file.StandardCopyOption;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class VePatch {
    private static final String PKG = "com.holorom.moviestudio";

    public static void main(String[] a) throws Exception {
        if (a.length < 5) {
            System.err.println("uso: VePatch build|install <rootDir> <debugApk> <sdkDir> <serial|-> [fresh]");
            System.exit(2);
        }
        String mode = a[0];
        File root = new File(a[1]);
        File shimApk = new File(a[2]);
        File sdk = new File(a[3]);
        String serial = a[4].equals("-") ? null : a[4];
        boolean fresh = a.length > 5 && a[5].equals("fresh");
        String ksPath = a.length > 6 && !a[6].equals("-") ? a[6] : null;
        String ksPass = a.length > 7 && !a[7].isEmpty() ? a[7] : "android";
        String ksAlias = a.length > 8 && !a[8].equals("-") ? a[8] : null;
        try {
            File out = build(root, shimApk, sdk, ksPath, ksPass, ksAlias);
            if (mode.equals("install")) install(sdk, serial, fresh, out);
        } catch (Failure e) {
            System.err.println("\nERROR: " + e.getMessage());
            System.exit(1);
        }
    }

    private static final class Failure extends Exception {
        Failure(String m) { super(m); }
    }

    private static File build(File root, File shimApk, File sdk, String ksPath, String ksPass, String ksAlias) throws Exception {
        File patch = new File(root, "patch");
        File ve = new File(patch, "ve");
        File apktool = new File(patch, "apktool.jar");
        if (!shimApk.isFile()) throw new Failure("no existe " + shimApk + " (corrio assembleDebug?)");
        if (!ve.isDirectory() || !apktool.isFile()) throw new Failure("falta patch/ve o patch/apktool.jar");

        File work = new File(root, "build" + File.separator + "patched");
        deleteTree(work.toPath());
        Files.createDirectories(work.toPath());
        File veWork = new File(work, "ve");
        File shim = new File(work, "shim");

        String java = System.getProperty("java.home") + File.separator + "bin" + File.separator
                + (isWindows() ? "java.exe" : "java");

        step("copiando base");
        copyTree(ve.toPath(), veWork.toPath(), "build");
        File[] rs = new File(veWork, "res").listFiles();
        if (rs != null) for (File r : rs) {
            String n = r.getName();
            if (n.matches("values-[a-z]{2,3}(-r[A-Z]{2})?") && !n.startsWith("values-es")) deleteTree(r.toPath());
        }

        step("decodificando shim");
        run(Arrays.asList(java, "-jar", apktool.getPath(), "d", "-r", "-f", shimApk.getPath(), "-o", shim.getPath()));

        step("fusionando shim");
        File[] kids = shim.listFiles();
        int merged = 0;
        if (kids != null) {
            for (File k : kids) {
                if (!k.isDirectory() || !k.getName().startsWith("smali")) continue;
                File src = new File(k, "android");
                if (src.isDirectory()) {
                    copyTree(src.toPath(), new File(veWork, "smali" + File.separator + "android").toPath(), null);
                    merged++;
                }
            }
        }
        if (merged == 0) throw new Failure("el apk del shim no trajo smali/android");

        step("empaquetando");
        File unsigned = new File(work, "unsigned.apk");
        run(Arrays.asList(java, "-jar", apktool.getPath(), "b", veWork.getPath(), "-o", unsigned.getPath()));

        File bt = buildTools(sdk);
        File aligned = new File(work, "aligned.apk");
        step("zipalign (" + bt.getName() + ")");
        File zipalign = new File(bt, isWindows() ? "zipalign.exe" : "zipalign");
        run(Arrays.asList(zipalign.getPath(), "-f", "4", unsigned.getPath(), aligned.getPath()));

        step("firmando");
        File signer = new File(bt, "lib" + File.separator + "apksigner.jar");
        File ks = ksPath != null ? new File(ksPath)
                : new File(System.getProperty("user.home"), ".android" + File.separator + "debug.keystore");
        if (!ks.isFile()) throw new Failure("no hay keystore en " + ks);
        File finalApk = new File(root, "VideoEditor_patched.apk");
        List<String> sign = new ArrayList<String>(Arrays.asList(java, "-jar", signer.getPath(), "sign", "--ks", ks.getPath(),
                "--ks-pass", "pass:" + ksPass));
        if (ksAlias != null) { sign.add("--ks-key-alias"); sign.add(ksAlias); }
        sign.addAll(Arrays.asList("--out", finalApk.getPath(), aligned.getPath()));
        run(sign);

        System.out.println("\nlisto: " + finalApk.getPath());
        return finalApk;
    }

    private static void install(File sdk, String serial, boolean fresh, File apk) throws Exception {
        File adb = new File(sdk, "platform-tools" + File.separator + (isWindows() ? "adb.exe" : "adb"));
        if (!adb.isFile()) throw new Failure("no encuentro adb en " + adb);
        List<String> base = new ArrayList<String>();
        base.add(adb.getPath());
        if (serial != null) { base.add("-s"); base.add(serial); }
        if (fresh) {
            step("desinstalando version anterior");
            List<String> u = new ArrayList<String>(base);
            u.add("uninstall");
            u.add(PKG);
            exec(u, false);
        }
        step("instalando");
        List<String> c = new ArrayList<String>(base);
        c.add("install");
        c.add("-r");
        c.add(apk.getPath());
        String log = exec(c, false);
        if (log.contains("INSTALL_FAILED_UPDATE_INCOMPATIBLE")) {
            throw new Failure("la firma cambio: repite con -Pfresh (desinstala antes)");
        }
        if (log.contains("more than one device") || log.contains("multiple devices")) {
            throw new Failure("hay varios dispositivos: usa -Pserial=SERIAL");
        }
        if (!log.contains("Success")) throw new Failure("adb no confirmo la instalacion");
        System.out.println("\ninstalado");
    }

    private static File buildTools(File sdk) throws Failure {
        File dir = new File(sdk, "build-tools");
        File[] vs = dir.listFiles();
        if (vs == null || vs.length == 0) throw new Failure("no hay build-tools en " + dir);
        File best = null;
        for (File v : vs) {
            if (!new File(v, "lib" + File.separator + "apksigner.jar").isFile()) continue;
            if (best == null || compare(v.getName(), best.getName()) > 0) best = v;
        }
        if (best == null) throw new Failure("ningun build-tools trae apksigner (instala uno desde el SDK Manager)");
        return best;
    }

    private static int compare(String x, String y) {
        String[] p = x.split("[.-]"), q = y.split("[.-]");
        for (int i = 0; i < Math.max(p.length, q.length); i++) {
            int a = i < p.length ? num(p[i]) : 0, b = i < q.length ? num(q[i]) : 0;
            if (a != b) return a < b ? -1 : 1;
        }
        return 0;
    }

    private static int num(String s) {
        try { return Integer.parseInt(s); } catch (NumberFormatException e) { return -1; }
    }

    private static void step(String s) {
        System.out.println(">> " + s);
    }

    private static void run(List<String> cmd) throws Exception {
        exec(cmd, true);
    }

    private static String exec(List<String> cmd, boolean strict) throws Exception {
        ProcessBuilder pb = new ProcessBuilder(cmd);
        pb.redirectErrorStream(true);
        Process p;
        try {
            p = pb.start();
        } catch (IOException e) {
            throw new Failure("no pude ejecutar " + cmd.get(0) + ": " + e.getMessage());
        }
        StringBuilder sb = new StringBuilder();
        InputStream in = p.getInputStream();
        byte[] buf = new byte[4096];
        int n;
        while ((n = in.read(buf)) > 0) sb.append(new String(buf, 0, n));
        int code = p.waitFor();
        System.out.print(sb);
        if (strict && code != 0) throw new Failure(cmd.get(0) + " termino con codigo " + code);
        return sb.toString();
    }

    private static boolean isWindows() {
        return System.getProperty("os.name").toLowerCase().contains("win");
    }

    private static void deleteTree(Path p) throws IOException {
        if (!Files.exists(p)) return;
        Files.walkFileTree(p, new SimpleFileVisitor<Path>() {
            @Override public FileVisitResult visitFile(Path f, BasicFileAttributes at) throws IOException {
                Files.delete(f);
                return FileVisitResult.CONTINUE;
            }
            @Override public FileVisitResult postVisitDirectory(Path d, IOException e) throws IOException {
                Files.delete(d);
                return FileVisitResult.CONTINUE;
            }
        });
    }

    private static void copyTree(final Path from, final Path to, final String skipTop) throws IOException {
        Files.walkFileTree(from, new SimpleFileVisitor<Path>() {
            @Override public FileVisitResult preVisitDirectory(Path d, BasicFileAttributes at) throws IOException {
                if (skipTop != null && !d.equals(from) && d.getParent().equals(from) && d.getFileName().toString().equals(skipTop)) {
                    return FileVisitResult.SKIP_SUBTREE;
                }
                Files.createDirectories(to.resolve(from.relativize(d).toString()));
                return FileVisitResult.CONTINUE;
            }
            @Override public FileVisitResult visitFile(Path f, BasicFileAttributes at) throws IOException {
                Files.copy(f, to.resolve(from.relativize(f).toString()), StandardCopyOption.REPLACE_EXISTING);
                return FileVisitResult.CONTINUE;
            }
        });
    }
}
