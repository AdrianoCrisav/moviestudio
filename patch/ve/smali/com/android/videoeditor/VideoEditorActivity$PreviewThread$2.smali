.class Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->previewFrame(Lcom/android/videoeditor/service/VideoEditorProject;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

.field final synthetic val$clear:Z

.field final synthetic val$project:Lcom/android/videoeditor/service/VideoEditorProject;

.field final synthetic val$timeMs:J


# direct methods
.method constructor <init>(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;ZLcom/android/videoeditor/service/VideoEditorProject;J)V
    .locals 0

    .prologue
    .line 1741
    iput-object p1, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    iput-boolean p2, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;->val$clear:Z

    iput-object p3, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;->val$project:Lcom/android/videoeditor/service/VideoEditorProject;

    iput-wide p4, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;->val$timeMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1744
    iget-boolean v2, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;->val$clear:Z

    if-eqz v2, :cond_0

    .line 1746
    :try_start_0
    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;->val$project:Lcom/android/videoeditor/service/VideoEditorProject;

    iget-object v3, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v3}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$2000(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/videoeditor/service/VideoEditorProject;->clearSurface(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1751
    :goto_0
    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v2}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$2300(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2$1;

    invoke-direct {v3, p0}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2$1;-><init>(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1803
    :goto_1
    return-void

    .line 1747
    :catch_0
    move-exception v0

    .line 1748
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "VideoEditorActivity"

    const-string v3, "Surface cannot be cleared"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1763
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v2}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$2400(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/videoeditor/VideoEditor$OverlayData;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1770
    .local v1, "overlayData":Landroid/media/videoeditor/VideoEditor$OverlayData;
    :try_start_2
    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;->val$project:Lcom/android/videoeditor/service/VideoEditorProject;

    iget-object v3, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v3}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$2000(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Landroid/view/SurfaceHolder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;->val$timeMs:J

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->renderPreviewFrame(Landroid/view/SurfaceHolder;JLandroid/media/videoeditor/VideoEditor$OverlayData;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 1772
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot render preview frame at: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;->val$timeMs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    iget-object v3, v3, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iget-object v3, v3, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v3}, Lcom/android/videoeditor/service/VideoEditorProject;->computeDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/videoeditor/VideoEditorActivity;->access$1900(Ljava/lang/String;)V

    .line 1775
    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v2}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$2400(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1798
    :catch_1
    move-exception v0

    .line 1799
    .restart local v0    # "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "renderPreviewFrame failed at timeMs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;->val$timeMs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/videoeditor/VideoEditorActivity;->access$1900(Ljava/lang/String;)V

    .line 1800
    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v2}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$2400(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1764
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "overlayData":Landroid/media/videoeditor/VideoEditor$OverlayData;
    :catch_2
    move-exception v0

    .line 1765
    .local v0, "ex":Ljava/util/NoSuchElementException;
    const-string v2, "VideoEditorActivity"

    const-string v3, "Out of OverlayData elements"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1777
    .end local v0    # "ex":Ljava/util/NoSuchElementException;
    .restart local v1    # "overlayData":Landroid/media/videoeditor/VideoEditor$OverlayData;
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Landroid/media/videoeditor/VideoEditor$OverlayData;->needsRendering()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1778
    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v2}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$2300(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2$2;

    invoke-direct {v3, p0, v1}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2$2;-><init>(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;Landroid/media/videoeditor/VideoEditor$OverlayData;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 1795
    :cond_2
    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v2}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$2400(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1
.end method
