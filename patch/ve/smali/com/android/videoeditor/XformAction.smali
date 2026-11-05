.class public Lcom/android/videoeditor/XformAction;
.super Ljava/lang/Object;

.method public static run(Landroid/content/Context;Lcom/android/videoeditor/service/VideoEditorProject;Lcom/android/videoeditor/service/MovieMediaItem;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;
    move-result-object v1
    invoke-virtual {p2}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;
    move-result-object v2
    invoke-static {p0, v1, v2}, Landroid/media/videoeditor/xformdialog;->ask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    return-void
.end method
