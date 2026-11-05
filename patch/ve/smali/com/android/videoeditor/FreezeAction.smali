.class public Lcom/android/videoeditor/FreezeAction;
.super Ljava/lang/Object;

.method public static run(Landroid/content/Context;Lcom/android/videoeditor/service/VideoEditorProject;Lcom/android/videoeditor/service/MovieMediaItem;)V
    .locals 40

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->isVideoClip()Z

    move-result v12

    if-eqz v12, :done

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItemBeginTime(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/android/videoeditor/service/VideoEditorProject;->getPlayheadPos()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryBeginTime()J

    move-result-wide v8

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryEndTime()J

    move-result-wide v10

    add-long/2addr v6, v8

    cmp-long v12, v6, v8

    if-gez v12, :c1

    move-wide v6, v8

    :c1
    cmp-long v12, v6, v10

    if-lez v12, :c2

    move-wide v6, v10

    :c2
    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getFilename()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12, v6, v7}, Landroid/media/videoeditor/freeze;->grab(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :done

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const-wide/16 v18, 0x12c

    sub-long v16, v6, v8

    cmp-long v32, v16, v18

    if-ltz v32, :nosplit

    sub-long v16, v10, v6

    cmp-long v32, v16, v18

    if-ltz v32, :nosplit

    invoke-virtual {v2}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v33

    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->generateId()Ljava/lang/String;

    move-result-object v34

    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v15}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v36

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppRenderingMode()I

    move-result v37

    move-object/from16 v20, v1

    move-object/from16 v21, v33

    move-object/from16 v22, v34

    move-object/from16 v23, v0

    move-object/from16 v24, v36

    move/from16 v25, v37

    const/16 v26, 0x0

    invoke-static/range {v20 .. v26}, Lcom/android/videoeditor/service/ApiService;->addMediaItemVideoUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ILjava/lang/String;)V

    move-object/from16 v22, v0

    move-wide/from16 v23, v8

    move-wide/from16 v25, v6

    invoke-static/range {v20 .. v26}, Lcom/android/videoeditor/service/ApiService;->setMediaItemBoundaries(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJ)V

    move-object/from16 v22, v34

    move-wide/from16 v23, v6

    move-wide/from16 v25, v10

    invoke-static/range {v20 .. v26}, Lcom/android/videoeditor/service/ApiService;->setMediaItemBoundaries(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppVolume()I

    move-result v38

    move/from16 v23, v38

    invoke-static/range {v20 .. v23}, Lcom/android/videoeditor/service/ApiService;->setMediaItemVolume(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->isAppMuted()Z

    move-result v38

    move/from16 v23, v38

    invoke-static/range {v20 .. v23}, Lcom/android/videoeditor/service/ApiService;->setMediaItemMute(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Landroid/media/videoeditor/MediaItem;->rotOf(Ljava/lang/String;)I

    move-result v38

    div-int/lit8 v38, v38, 0x5a

    :rotloop
    if-lez v38, :rotdone

    const/high16 v39, 0x10000

    move/from16 v23, v39

    invoke-static/range {v20 .. v23}, Lcom/android/videoeditor/service/ApiService;->setMediaItemRenderingMode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v38, v38, -1

    goto :rotloop

    :rotdone
    sub-long v28, v6, v8
    sub-long v26, v10, v8
    move-object/from16 v20, v1
    move-object/from16 v21, v33
    move-object/from16 v22, v0
    move-object/from16 v23, v34
    move-wide/from16 v24, v28
    invoke-static/range {v20 .. v27}, Landroid/media/videoeditor/cloner;->afterSplit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    :nosplit
    invoke-virtual {v2}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v33

    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->generateId()Ljava/lang/String;

    move-result-object v34

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppRenderingMode()I

    move-result v37

    invoke-virtual {v2}, Lcom/android/videoeditor/service/VideoEditorProject;->getTheme()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v20, v1

    move-object/from16 v21, v33

    move-object/from16 v22, v34

    move-object/from16 v23, v0

    move-object/from16 v24, v14

    move/from16 v25, v37

    const-wide/16 v26, 0xbb8

    move-object/from16 v28, v38

    invoke-static/range {v20 .. v28}, Lcom/android/videoeditor/service/ApiService;->addMediaItemImageUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IJLjava/lang/String;)V

    :done
    return-void
.end method
