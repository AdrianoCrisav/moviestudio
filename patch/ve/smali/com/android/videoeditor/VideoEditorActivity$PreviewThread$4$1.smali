.class Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;)V
    .locals 0

    .prologue
    .line 1871
    iput-object p1, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1;->this$2:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/videoeditor/VideoEditor;I)V
    .locals 3
    .param p1, "videoEditor"    # Landroid/media/videoeditor/VideoEditor;
    .param p2, "error"    # I

    .prologue
    .line 1913
    const-string v0, "VideoEditorActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PreviewProgressListener onError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1;->this$2:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$2300(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1$3;

    invoke-direct {v1, p0}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1$3;-><init>(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1925
    invoke-virtual {p0, p1}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1;->onStop(Landroid/media/videoeditor/VideoEditor;)V

    .line 1926
    return-void
.end method

.method public onProgress(Landroid/media/videoeditor/VideoEditor;JLandroid/media/videoeditor/VideoEditor$OverlayData;)V
    .locals 2
    .param p1, "videoEditor"    # Landroid/media/videoeditor/VideoEditor;
    .param p2, "timeMs"    # J
    .param p4, "overlayData"    # Landroid/media/videoeditor/VideoEditor$OverlayData;

    .prologue
    .line 1879
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1;->this$2:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$2300(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1$1;

    invoke-direct {v1, p0, p4, p2, p3}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1$1;-><init>(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1;Landroid/media/videoeditor/VideoEditor$OverlayData;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1897
    return-void
.end method

.method public onStart(Landroid/media/videoeditor/VideoEditor;)V
    .locals 0
    .param p1, "videoEditor"    # Landroid/media/videoeditor/VideoEditor;

    .prologue
    .line 1874
    return-void
.end method

.method public onStop(Landroid/media/videoeditor/VideoEditor;)V
    .locals 2
    .param p1, "videoEditor"    # Landroid/media/videoeditor/VideoEditor;

    .prologue
    .line 1901
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1;->this$2:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$2300(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1$2;

    invoke-direct {v1, p0}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1$2;-><init>(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1910
    return-void
.end method
