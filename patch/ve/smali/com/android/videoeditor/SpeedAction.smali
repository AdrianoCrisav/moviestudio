.class public Lcom/android/videoeditor/SpeedAction;
.super Ljava/lang/Object;

.method public static run(Landroid/content/Context;Lcom/android/videoeditor/service/VideoEditorProject;Lcom/android/videoeditor/service/MovieMediaItem;)V
    .locals 32

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->isVideoClip()Z

    move-result v0

    if-eqz v0, :done

    move-object/from16 v20, v1

    invoke-virtual {v2}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getFilename()Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryBeginTime()J

    move-result-wide v24

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryEndTime()J

    move-result-wide v26

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppRenderingMode()I

    move-result v28

    invoke-virtual {v2}, Lcom/android/videoeditor/service/VideoEditorProject;->getAspectRatio()I

    move-result v29

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppVolume()I

    move-result v30

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->isAppMuted()Z

    move-result v31

    invoke-static/range {v20 .. v31}, Landroid/media/videoeditor/speedbake;->ask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIIIZ)V

    :done
    return-void
.end method
