.class Lcom/android/videoeditor/VideoEditorActivity$2;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Lcom/android/videoeditor/widgets/MediaLinearLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/VideoEditorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/VideoEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/VideoEditorActivity;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/videoeditor/VideoEditorActivity$2;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddMediaItem(Ljava/lang/String;)V
    .locals 3
    .param p1, "afterMediaItemId"    # Ljava/lang/String;

    .prologue
    .line 259
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity$2;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-static {v1, p1}, Lcom/android/videoeditor/VideoEditorActivity;->access$202(Lcom/android/videoeditor/VideoEditorActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 260
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 261
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 262
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity$2;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/videoeditor/VideoEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 263
    return-void
.end method

.method public onRequestMovePlayhead(JZ)V
    .locals 1
    .param p1, "scrollToTime"    # J
    .param p3, "smooth"    # Z

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$2;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-virtual {v0, p1, p2}, Lcom/android/videoeditor/VideoEditorActivity;->movePlayhead(J)V

    .line 255
    return-void
.end method

.method public onRequestScrollBy(IZ)V
    .locals 1
    .param p1, "scrollBy"    # I
    .param p2, "smooth"    # Z

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$2;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity;->access$100(Lcom/android/videoeditor/VideoEditorActivity;)Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->appScrollBy(IZ)V

    .line 250
    return-void
.end method

.method public onTrimMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;J)V
    .locals 5
    .param p1, "mediaItem"    # Lcom/android/videoeditor/service/MovieMediaItem;
    .param p2, "timeMs"    # J

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$2;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorActivity;->updateTimelineDuration()V

    .line 273
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$2;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$2;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity;->access$300(Lcom/android/videoeditor/VideoEditorActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->isVideoClip()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$2;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity;->access$400(Lcom/android/videoeditor/VideoEditorActivity;)Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->renderMediaItemFrame(Lcom/android/videoeditor/service/MovieMediaItem;J)V

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$2;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity;->access$400(Lcom/android/videoeditor/VideoEditorActivity;)Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    move-result-object v1

    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$2;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iget-object v2, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$2;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItemBeginTime(Ljava/lang/String;)J

    move-result-wide v3

    add-long/2addr v3, p2

    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$2;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItemCount()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->previewFrame(Lcom/android/videoeditor/service/VideoEditorProject;JZ)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onTrimMediaItemBegin(Lcom/android/videoeditor/service/MovieMediaItem;)V
    .locals 2
    .param p1, "mediaItem"    # Lcom/android/videoeditor/service/MovieMediaItem;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$2;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/VideoEditorActivity;->onProjectEditStateChange(Z)V

    .line 268
    return-void
.end method

.method public onTrimMediaItemEnd(Lcom/android/videoeditor/service/MovieMediaItem;J)V
    .locals 2
    .param p1, "mediaItem"    # Lcom/android/videoeditor/service/MovieMediaItem;
    .param p2, "timeMs"    # J

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$2;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/VideoEditorActivity;->onProjectEditStateChange(Z)V

    .line 291
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$2;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity;->access$500(Lcom/android/videoeditor/VideoEditorActivity;)Lcom/android/videoeditor/widgets/TimelineRelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/TimelineRelativeLayout;->invalidate()V

    .line 292
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$2;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorActivity;->showPreviewFrame()Z

    .line 293
    return-void
.end method
