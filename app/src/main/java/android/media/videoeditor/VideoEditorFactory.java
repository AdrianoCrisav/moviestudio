package android.media.videoeditor;

import java.io.File;
import java.io.IOException;

/* pos nomas */
public final class VideoEditorFactory {
    private VideoEditorFactory() {}

    public static VideoEditor create(String projectPath) throws IOException {
        File d = new File(projectPath);
        if (!d.isDirectory() && !d.mkdirs()) throw new IOException("no se pudo crear " + projectPath);
        return new VideoEditorImpl(projectPath);
    }

    public static VideoEditor load(String projectPath, boolean generatePreview) throws IOException {
        File d = new File(projectPath);
        if (!d.isDirectory()) throw new IOException("proyecto inexistente: " + projectPath);
        return VideoEditorImpl.load(projectPath);
    }
}
