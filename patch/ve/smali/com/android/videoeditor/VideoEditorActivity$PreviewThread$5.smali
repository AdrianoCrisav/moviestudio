.class Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$5;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->stopPreviewPlayback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)V
    .locals 0

    .prologue
    .line 2000
    iput-object p1, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$5;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2003
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$5;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$2500(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2004
    const-string v0, "stopPreviewPlayback: Now PREVIEW_STATE_STARTED"

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity;->access$1900(Ljava/lang/String;)V

    .line 2005
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$5;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$2600(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;Z)V

    .line 2013
    :goto_0
    return-void

    .line 2006
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$5;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$2500(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 2008
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$5;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$2300(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2009
    const-string v0, "stopPreviewPlayback: Waiting for PREVIEW_STATE_STARTED"

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity;->access$1900(Ljava/lang/String;)V

    goto :goto_0

    .line 2011
    :cond_1
    const-string v0, "stopPreviewPlayback: PREVIEW_STATE_STOPPED while waiting"

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity;->access$1900(Ljava/lang/String;)V

    goto :goto_0
.end method
