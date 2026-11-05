.class public Lcom/android/videoeditor/VolumeAction;
.super Ljava/lang/Object;

.method public static run(Landroid/content/Context;Lcom/android/videoeditor/service/VideoEditorProject;Lcom/android/videoeditor/service/MovieMediaItem;)V
    .locals 4

    invoke-virtual {p2}, Lcom/android/videoeditor/service/MovieMediaItem;->isVideoClip()Z
    move-result v0
    if-eqz v0, :done

    invoke-virtual {p1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;
    move-result-object v1
    invoke-virtual {p2}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;
    move-result-object v2
    invoke-static {p0, v1, v2}, Landroid/media/videoeditor/volcurve;->ask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :done
    return-void
.end method
