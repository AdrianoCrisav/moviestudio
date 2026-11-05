.class Lcom/android/videoeditor/VideoEditorActivity$23;
.super Landroid/app/ProgressDialog;
.source "VideoEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/VideoEditorActivity;->showExportProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/VideoEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/VideoEditorActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 1620
    iput-object p1, p0, Lcom/android/videoeditor/VideoEditorActivity$23;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-direct {p0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 1

    .prologue
    .line 1623
    invoke-super {p0}, Landroid/app/ProgressDialog;->onStart()V

    .line 1624
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$23;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity;->access$1600(Lcom/android/videoeditor/VideoEditorActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1625
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1628
    invoke-super {p0}, Landroid/app/ProgressDialog;->onStop()V

    .line 1629
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$23;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity;->access$1600(Lcom/android/videoeditor/VideoEditorActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1630
    return-void
.end method
