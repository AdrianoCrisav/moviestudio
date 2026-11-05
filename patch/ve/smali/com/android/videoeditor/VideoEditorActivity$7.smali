.class Lcom/android/videoeditor/VideoEditorActivity$7;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Lcom/android/videoeditor/widgets/ZoomControl$OnZoomChangeListener;


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
    .line 429
    iput-object p1, p0, Lcom/android/videoeditor/VideoEditorActivity$7;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(IZ)V
    .locals 2
    .param p1, "progress"    # I
    .param p2, "fromUser"    # Z

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$7;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$7;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/videoeditor/VideoEditorActivity;->access$900(Lcom/android/videoeditor/VideoEditorActivity;IZ)I

    .line 436
    :cond_0
    return-void
.end method
