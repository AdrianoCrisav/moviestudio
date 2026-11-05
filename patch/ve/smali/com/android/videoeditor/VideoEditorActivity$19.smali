.class Lcom/android/videoeditor/VideoEditorActivity$19;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Lcom/android/videoeditor/ExportOptionsDialog$ExportOptionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/VideoEditorActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
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
    .line 831
    iput-object p1, p0, Lcom/android/videoeditor/VideoEditorActivity$19;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExportOptions(II)V
    .locals 3
    .param p1, "movieHeight"    # I
    .param p2, "movieBitrate"    # I

    .prologue
    .line 834
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$19;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/videoeditor/util/FileUtils;->createMovieName(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/videoeditor/VideoEditorActivity;->mPendingExportFilename:Ljava/lang/String;

    .line 836
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$19;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity$19;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iget-object v1, v1, Lcom/android/videoeditor/VideoEditorActivity;->mProjectPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity$19;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iget-object v2, v2, Lcom/android/videoeditor/VideoEditorActivity;->mPendingExportFilename:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/videoeditor/service/ApiService;->exportVideoEditor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 839
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$19;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/VideoEditorActivity;->removeDialog(I)V

    .line 841
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$19;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity;->access$1200(Lcom/android/videoeditor/VideoEditorActivity;)V

    .line 842
    return-void
.end method
