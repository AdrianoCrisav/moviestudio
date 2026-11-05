.class Lcom/android/videoeditor/VideoEditorActivity$10;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 738
    iput-object p1, p0, Lcom/android/videoeditor/VideoEditorActivity$10;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 741
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$10;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity$10;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iget-object v1, v1, Lcom/android/videoeditor/VideoEditorActivity;->mProjectPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/videoeditor/service/ApiService;->deleteProject(Landroid/content/Context;Ljava/lang/String;)V

    .line 742
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$10;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iput-object v2, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProjectPath:Ljava/lang/String;

    .line 743
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$10;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iput-object v2, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    .line 744
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$10;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/VideoEditorActivity;->enterDisabledState(I)V

    .line 746
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$10;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/VideoEditorActivity;->removeDialog(I)V

    .line 747
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$10;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorActivity;->finish()V

    .line 748
    return-void
.end method
