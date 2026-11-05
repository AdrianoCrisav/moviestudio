.class Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1$1;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1;->onProgress(Landroid/media/videoeditor/VideoEditor;JLandroid/media/videoeditor/VideoEditor$OverlayData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1;

.field final synthetic val$overlayData:Landroid/media/videoeditor/VideoEditor$OverlayData;

.field final synthetic val$timeMs:J


# direct methods
.method constructor <init>(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1;Landroid/media/videoeditor/VideoEditor$OverlayData;J)V
    .locals 0

    .prologue
    .line 1879
    iput-object p1, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1$1;->this$3:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1;

    iput-object p2, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1$1;->val$overlayData:Landroid/media/videoeditor/VideoEditor$OverlayData;

    iput-wide p3, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1$1;->val$timeMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1882
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1$1;->val$overlayData:Landroid/media/videoeditor/VideoEditor$OverlayData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1$1;->val$overlayData:Landroid/media/videoeditor/VideoEditor$OverlayData;

    invoke-virtual {v0}, Landroid/media/videoeditor/VideoEditor$OverlayData;->needsRendering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1883
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1$1;->this$3:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1;->this$2:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$2100(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1884
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1$1;->val$overlayData:Landroid/media/videoeditor/VideoEditor$OverlayData;

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1$1;->this$3:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1;

    iget-object v1, v1, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1;->this$2:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;

    iget-object v1, v1, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v1}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$2100(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/VideoEditor$OverlayData;->renderOverlay(Landroid/graphics/Bitmap;)V

    .line 1885
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1$1;->this$3:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1;->this$2:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity;->access$2200(Lcom/android/videoeditor/VideoEditorActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 1891
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1$1;->this$3:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1;->this$2:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$2500(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1$1;->this$3:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1;->this$2:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$2500(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1893
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1$1;->this$3:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1;->this$2:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iget-wide v1, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1$1;->val$timeMs:J

    invoke-virtual {v0, v1, v2}, Lcom/android/videoeditor/VideoEditorActivity;->movePlayhead(J)V

    .line 1895
    :cond_2
    return-void

    .line 1887
    :cond_3
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1$1;->val$overlayData:Landroid/media/videoeditor/VideoEditor$OverlayData;

    invoke-virtual {v0}, Landroid/media/videoeditor/VideoEditor$OverlayData;->release()V

    goto :goto_0
.end method
