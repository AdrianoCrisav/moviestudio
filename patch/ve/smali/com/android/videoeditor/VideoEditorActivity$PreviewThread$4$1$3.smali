.class Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1$3;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1;->onError(Landroid/media/videoeditor/VideoEditor;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1;)V
    .locals 0

    .prologue
    .line 1916
    iput-object p1, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1$3;->this$3:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1919
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1$3;->this$3:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1;

    iget-object v1, v1, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1;->this$2:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;

    iget-object v1, v1, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    iget-object v1, v1, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    const v2, 0x7f090057

    invoke-virtual {v1, v2}, Lcom/android/videoeditor/VideoEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1920
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1$3;->this$3:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1;

    iget-object v1, v1, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1;->this$2:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;

    iget-object v1, v1, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    iget-object v1, v1, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1922
    return-void
.end method
