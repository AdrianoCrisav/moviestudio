.class public Lcom/android/videoeditor/service/VideoEditorProject;
.super Ljava/lang/Object;
.source "VideoEditorProject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/videoeditor/service/VideoEditorProject$1;,
        Lcom/android/videoeditor/service/VideoEditorProject$Download;
    }
.end annotation


# static fields
.field private static final ATTR_DURATION:Ljava/lang/String; = "duration"

.field private static final ATTR_FILENAME:Ljava/lang/String; = "filename"

.field private static final ATTR_MIME:Ljava/lang/String; = "mime"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PLAYHEAD_POSITION:Ljava/lang/String; = "playhead"

.field private static final ATTR_SAVED:Ljava/lang/String; = "saved"

.field private static final ATTR_THEME:Ljava/lang/String; = "theme"

.field private static final ATTR_TIME:Ljava/lang/String; = "time"

.field private static final ATTR_URI:Ljava/lang/String; = "uri"

.field private static final ATTR_ZOOM_LEVEL:Ljava/lang/String; = "zoom_level"

.field public static final DEFAULT_ZOOM_LEVEL:I = 0x14

.field private static final PROJECT_METADATA_FILENAME:Ljava/lang/String; = "metadata.xml"

.field private static final TAG_DOWNLOAD:Ljava/lang/String; = "download"

.field private static final TAG_MOVIE:Ljava/lang/String; = "movie"

.field private static final TAG_PROJECT:Ljava/lang/String; = "project"


# instance fields
.field private mAspectRatio:I

.field private mAudioTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/videoeditor/service/MovieAudioTrack;",
            ">;"
        }
    .end annotation
.end field

.field private mClean:Z

.field private final mDownloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/videoeditor/service/VideoEditorProject$Download;",
            ">;"
        }
    .end annotation
.end field

.field private mExportedMovieUri:Landroid/net/Uri;

.field private mLastSaved:J

.field private mMediaItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/videoeditor/service/MovieMediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayheadPosMs:J

.field private final mProjectDurationMs:J

.field private mProjectName:Ljava/lang/String;

.field private final mProjectPath:Ljava/lang/String;

.field private mTheme:Ljava/lang/String;

.field private final mVideoEditor:Landroid/media/videoeditor/VideoEditor;

.field private mZoomLevel:I


# direct methods
.method constructor <init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;JJJILandroid/net/Uri;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "videoEditor"    # Landroid/media/videoeditor/VideoEditor;
    .param p2, "projectPath"    # Ljava/lang/String;
    .param p3, "projectName"    # Ljava/lang/String;
    .param p4, "lastSaved"    # J
    .param p6, "playheadPosMs"    # J
    .param p8, "durationMs"    # J
    .param p10, "zoomLevel"    # I
    .param p11, "exportedMovieUri"    # Landroid/net/Uri;
    .param p12, "theme"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/videoeditor/VideoEditor;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJJI",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/videoeditor/service/VideoEditorProject$Download;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p13, "downloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/videoeditor/service/VideoEditorProject$Download;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mAudioTracks:Ljava/util/List;

    .line 152
    iput-object p1, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    .line 153
    if-eqz p1, :cond_0

    .line 154
    invoke-interface {p1}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v0

    iput v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mAspectRatio:I

    .line 157
    :cond_0
    if-eqz p13, :cond_1

    .line 158
    iput-object p13, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mDownloads:Ljava/util/List;

    .line 162
    :goto_0
    iput-object p2, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mProjectPath:Ljava/lang/String;

    .line 163
    iput-object p3, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mProjectName:Ljava/lang/String;

    .line 164
    iput-wide p4, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mLastSaved:J

    .line 165
    iput-wide p6, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mPlayheadPosMs:J

    .line 166
    iput-wide p8, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mProjectDurationMs:J

    .line 167
    iput p10, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mZoomLevel:I

    .line 168
    iput-object p11, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mExportedMovieUri:Landroid/net/Uri;

    .line 169
    iput-object p12, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mTheme:Ljava/lang/String;

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mClean:Z

    .line 171
    return-void

    .line 160
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mDownloads:Ljava/util/List;

    goto :goto_0
.end method

.method public static fromXml(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;
    .locals 26
    .param p0, "videoEditor"    # Landroid/media/videoeditor/VideoEditor;
    .param p1, "projectPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1178
    new-instance v17, Ljava/io/File;

    const-string v2, "metadata.xml"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    .local v17, "file":Ljava/io/File;
    new-instance v18, Ljava/io/FileInputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1180
    .local v18, "fis":Ljava/io/FileInputStream;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1183
    .local v15, "downloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/videoeditor/service/VideoEditorProject$Download;>;"
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v22

    .line 1184
    .local v22, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v2, "UTF-8"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1185
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v16

    .line 1187
    .local v16, "eventType":I
    const/16 v25, 0x0

    .line 1188
    .local v25, "projectName":Ljava/lang/String;
    const/4 v14, 0x0

    .line 1189
    .local v14, "themeId":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1190
    .local v13, "exportedMovieUri":Landroid/net/Uri;
    const-wide/16 v19, 0x0

    .line 1191
    .local v19, "lastSaved":J
    const-wide/16 v23, 0x0

    .line 1192
    .local v23, "playheadPosMs":J
    const-wide/16 v10, 0x0

    .line 1193
    .local v10, "durationMs":J
    const/16 v12, 0x14

    .line 1194
    .local v12, "zoomLevel":I
    :goto_0
    const/4 v2, 0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_4

    .line 1195
    const/16 v21, 0x0

    .line 1196
    .local v21, "name":Ljava/lang/String;
    packed-switch v16, :pswitch_data_0

    .line 1225
    :cond_0
    :goto_1
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v16

    .line 1226
    goto :goto_0

    .line 1198
    :pswitch_0
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v21

    .line 1199
    const-string v2, "project"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1200
    const-string v2, ""

    const-string v3, "name"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1201
    const-string v2, ""

    const-string v3, "theme"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1202
    const-string v2, ""

    const-string v3, "saved"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    .line 1203
    const-string v2, ""

    const-string v3, "playhead"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v23

    .line 1205
    const-string v2, ""

    const-string v3, "duration"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 1207
    const-string v2, ""

    const-string v3, "zoom_level"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    goto :goto_1

    .line 1209
    :cond_1
    const-string v2, "movie"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1210
    const-string v2, ""

    const-string v3, "uri"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    goto :goto_1

    .line 1211
    :cond_2
    const-string v2, "download"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1212
    new-instance v2, Lcom/android/videoeditor/service/VideoEditorProject$Download;

    const-string v3, ""

    const-string v4, "uri"

    move-object/from16 v0, v22

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, "mime"

    move-object/from16 v0, v22

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const-string v6, "filename"

    move-object/from16 v0, v22

    invoke-interface {v0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const-string v7, "time"

    move-object/from16 v0, v22

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/android/videoeditor/service/VideoEditorProject$Download;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/android/videoeditor/service/VideoEditorProject$1;)V

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 1231
    .end local v10    # "durationMs":J
    .end local v12    # "zoomLevel":I
    .end local v13    # "exportedMovieUri":Landroid/net/Uri;
    .end local v14    # "themeId":Ljava/lang/String;
    .end local v16    # "eventType":I
    .end local v19    # "lastSaved":J
    .end local v21    # "name":Ljava/lang/String;
    .end local v22    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v23    # "playheadPosMs":J
    .end local v25    # "projectName":Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v18, :cond_3

    .line 1232
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V

    :cond_3
    throw v2

    .line 1228
    .restart local v10    # "durationMs":J
    .restart local v12    # "zoomLevel":I
    .restart local v13    # "exportedMovieUri":Landroid/net/Uri;
    .restart local v14    # "themeId":Ljava/lang/String;
    .restart local v16    # "eventType":I
    .restart local v19    # "lastSaved":J
    .restart local v22    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v23    # "playheadPosMs":J
    .restart local v25    # "projectName":Ljava/lang/String;
    :cond_4
    :try_start_1
    new-instance v2, Lcom/android/videoeditor/service/VideoEditorProject;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, v25

    move-wide/from16 v6, v19

    move-wide/from16 v8, v23

    invoke-direct/range {v2 .. v15}, Lcom/android/videoeditor/service/VideoEditorProject;-><init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;JJJILandroid/net/Uri;Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1231
    if-eqz v18, :cond_5

    .line 1232
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V

    :cond_5
    return-object v2

    .line 1196
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private static getEndTransitionDuration(Lcom/android/videoeditor/service/MovieMediaItem;)J
    .locals 2
    .param p0, "mediaItem"    # Lcom/android/videoeditor/service/MovieMediaItem;

    .prologue
    .line 650
    invoke-virtual {p0}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 651
    invoke-virtual {p0}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieTransition;->getAppDuration()J

    move-result-wide v0

    .line 653
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method addAudioTrack(Lcom/android/videoeditor/service/MovieAudioTrack;)V
    .locals 1
    .param p1, "audioTrack"    # Lcom/android/videoeditor/service/MovieAudioTrack;

    .prologue
    .line 921
    iget-object v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mAudioTracks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 922
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mClean:Z

    .line 923
    return-void
.end method

.method public addDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "mediaUri"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;

    .prologue
    .line 1134
    iget-object v7, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mDownloads:Ljava/util/List;

    new-instance v0, Lcom/android/videoeditor/service/VideoEditorProject$Download;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/videoeditor/service/VideoEditorProject$Download;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/android/videoeditor/service/VideoEditorProject$1;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mClean:Z

    .line 1136
    return-void
.end method

.method addEffect(Ljava/lang/String;Lcom/android/videoeditor/service/MovieEffect;)V
    .locals 3
    .param p1, "mediaItemId"    # Ljava/lang/String;
    .param p2, "effect"    # Lcom/android/videoeditor/service/MovieEffect;

    .prologue
    .line 870
    invoke-virtual {p0, p1}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v0

    .line 872
    .local v0, "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getEffect()Lcom/android/videoeditor/service/MovieEffect;

    move-result-object v1

    .line 873
    .local v1, "oldEffect":Lcom/android/videoeditor/service/MovieEffect;
    if-eqz v1, :cond_0

    .line 874
    invoke-virtual {v1}, Lcom/android/videoeditor/service/MovieEffect;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/videoeditor/service/MovieMediaItem;->removeEffect(Ljava/lang/String;)V

    .line 877
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/videoeditor/service/MovieMediaItem;->addEffect(Lcom/android/videoeditor/service/MovieEffect;)V

    .line 878
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mClean:Z

    .line 879
    return-void
.end method

.method addExportedMovieUri(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mExportedMovieUri:Landroid/net/Uri;

    .line 277
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mClean:Z

    .line 278
    return-void
.end method

.method addOverlay(Ljava/lang/String;Lcom/android/videoeditor/service/MovieOverlay;)V
    .locals 3
    .param p1, "mediaItemId"    # Ljava/lang/String;
    .param p2, "overlay"    # Lcom/android/videoeditor/service/MovieOverlay;

    .prologue
    .line 827
    invoke-virtual {p0, p1}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v0

    .line 830
    .local v0, "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getOverlay()Lcom/android/videoeditor/service/MovieOverlay;

    move-result-object v1

    .line 831
    .local v1, "oldOverlay":Lcom/android/videoeditor/service/MovieOverlay;
    if-eqz v1, :cond_0

    .line 832
    invoke-virtual {v1}, Lcom/android/videoeditor/service/MovieOverlay;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/videoeditor/service/MovieMediaItem;->removeOverlay(Ljava/lang/String;)V

    .line 835
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/videoeditor/service/MovieMediaItem;->addOverlay(Lcom/android/videoeditor/service/MovieOverlay;)V

    .line 836
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mClean:Z

    .line 837
    return-void
.end method

.method addTransition(Lcom/android/videoeditor/service/MovieTransition;Ljava/lang/String;)V
    .locals 9
    .param p1, "transition"    # Lcom/android/videoeditor/service/MovieTransition;
    .param p2, "afterMediaItemId"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 733
    iget-object v6, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 734
    .local v3, "count":I
    if-eqz p2, :cond_4

    .line 735
    const/4 v0, 0x0

    .line 736
    .local v0, "afterMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    const/4 v1, -0x1

    .line 737
    .local v1, "afterMediaItemIndex":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 738
    iget-object v6, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 739
    .local v5, "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 740
    move-object v0, v5

    .line 741
    move v1, v4

    .line 747
    .end local v5    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_0
    if-nez v0, :cond_2

    .line 748
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Media item not found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 737
    .restart local v5    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 751
    .end local v5    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_2
    invoke-virtual {v0, p1}, Lcom/android/videoeditor/service/MovieMediaItem;->setEndTransition(Lcom/android/videoeditor/service/MovieTransition;)V

    .line 753
    add-int/lit8 v6, v3, -0x1

    if-ge v1, v6, :cond_3

    .line 754
    iget-object v6, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    add-int/lit8 v7, v1, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 755
    .local v2, "beforeMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v2, p1}, Lcom/android/videoeditor/service/MovieMediaItem;->setBeginTransition(Lcom/android/videoeditor/service/MovieTransition;)V

    .line 766
    .end local v0    # "afterMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v1    # "afterMediaItemIndex":I
    .end local v2    # "beforeMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v4    # "i":I
    :cond_3
    :goto_1
    iput-boolean v8, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mClean:Z

    .line 767
    return-void

    .line 758
    :cond_4
    if-nez v3, :cond_5

    .line 759
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Media item not found at the beginning"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 762
    :cond_5
    iget-object v6, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 763
    .restart local v2    # "beforeMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v2, p1}, Lcom/android/videoeditor/service/MovieMediaItem;->setBeginTransition(Lcom/android/videoeditor/service/MovieTransition;)V

    goto :goto_1
.end method

.method public clearSurface(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    if-eqz v0, :cond_0

    .line 1116
    iget-object v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v0, p1}, Landroid/media/videoeditor/VideoEditor;->clearSurface(Landroid/view/SurfaceHolder;)V

    .line 1118
    :cond_0
    return-void
.end method

.method public computeDuration()J
    .locals 7

    .prologue
    .line 995
    const-wide/16 v3, 0x0

    .line 996
    .local v3, "totalDurationMs":J
    iget-object v5, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 997
    .local v2, "mediaItemsCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 998
    iget-object v5, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 999
    .local v1, "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v1}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 1001
    invoke-virtual {v1}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1002
    add-int/lit8 v5, v2, -0x1

    if-ge v0, v5, :cond_0

    .line 1003
    invoke-virtual {v1}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieTransition;->getAppDuration()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 997
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1008
    .end local v1    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_1
    return-wide v3
.end method

.method public getAspectRatio()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mAspectRatio:I

    return v0
.end method

.method public getAudioTrack(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieAudioTrack;
    .locals 3
    .param p1, "audioTrackId"    # Ljava/lang/String;

    .prologue
    .line 954
    iget-object v2, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mAudioTracks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/service/MovieAudioTrack;

    .line 955
    .local v0, "audioTrack":Lcom/android/videoeditor/service/MovieAudioTrack;
    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieAudioTrack;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 960
    .end local v0    # "audioTrack":Lcom/android/videoeditor/service/MovieAudioTrack;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAudioTracks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/videoeditor/service/MovieAudioTrack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 946
    iget-object v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mAudioTracks:Ljava/util/List;

    return-object v0
.end method

.method public getDownloads()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/videoeditor/service/VideoEditorProject$Download;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mDownloads:Ljava/util/List;

    return-object v0
.end method

.method public getEffect(Ljava/lang/String;Ljava/lang/String;)Lcom/android/videoeditor/service/MovieEffect;
    .locals 2
    .param p1, "mediaItemId"    # Ljava/lang/String;
    .param p2, "effectId"    # Ljava/lang/String;

    .prologue
    .line 901
    invoke-virtual {p0, p1}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v0

    .line 902
    .local v0, "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getEffect()Lcom/android/videoeditor/service/MovieEffect;

    move-result-object v1

    return-object v1
.end method

.method public getExportedMovieUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mExportedMovieUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getFirstMediaItem()Lcom/android/videoeditor/service/MovieMediaItem;
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 451
    const/4 v0, 0x0

    .line 453
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/service/MovieMediaItem;

    goto :goto_0
.end method

.method public getInsertAfterMediaItem(J)Lcom/android/videoeditor/service/MovieMediaItem;
    .locals 12
    .param p1, "timeMs"    # J

    .prologue
    .line 665
    const-wide/16 v0, 0x0

    .line 666
    .local v0, "beginMs":J
    const-wide/16 v2, 0x0

    .line 667
    .local v2, "endMs":J
    const/4 v7, 0x0

    .line 668
    .local v7, "prevMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    iget-object v8, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    .line 669
    .local v6, "mediaItemsCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_3

    .line 670
    iget-object v8, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 672
    .local v5, "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v8

    add-long v2, v0, v8

    .line 674
    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 675
    add-int/lit8 v8, v6, -0x1

    if-ge v4, v8, :cond_0

    .line 676
    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/videoeditor/service/MovieTransition;->getAppDuration()J

    move-result-wide v8

    sub-long/2addr v2, v8

    .line 680
    :cond_0
    cmp-long v8, p1, v0

    if-ltz v8, :cond_2

    cmp-long v8, p1, v2

    if-gtz v8, :cond_2

    .line 681
    sub-long v8, p1, v0

    sub-long v10, v2, p1

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    .line 692
    .end local v5    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v7    # "prevMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :goto_1
    return-object v7

    .restart local v5    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    .restart local v7    # "prevMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_1
    move-object v7, v5

    .line 684
    goto :goto_1

    .line 688
    :cond_2
    move-wide v0, v2

    .line 689
    move-object v7, v5

    .line 669
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 692
    .end local v5    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_3
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public getLastMediaItem()Lcom/android/videoeditor/service/MovieMediaItem;
    .locals 3

    .prologue
    .line 477
    iget-object v1, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 478
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 479
    const/4 v1, 0x0

    .line 481
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/videoeditor/service/MovieMediaItem;

    goto :goto_0
.end method

.method public getLastMediaItemId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/android/videoeditor/service/VideoEditorProject;->getLastMediaItem()Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v0

    .line 492
    .local v0, "lastMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    if-eqz v0, :cond_0

    .line 493
    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v1

    .line 494
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLastSaved()J
    .locals 2

    .prologue
    .line 213
    iget-wide v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mLastSaved:J

    return-wide v0
.end method

.method public getMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;
    .locals 3
    .param p1, "mediaItemId"    # Ljava/lang/String;

    .prologue
    .line 437
    iget-object v2, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 438
    .local v1, "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v1}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 443
    .end local v1    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMediaItemBeginTime(Ljava/lang/String;)J
    .locals 7
    .param p1, "mediaItemId"    # Ljava/lang/String;

    .prologue
    .line 971
    const-wide/16 v0, 0x0

    .line 972
    .local v0, "beginMs":J
    iget-object v5, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .line 973
    .local v3, "mediaItemsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 974
    iget-object v5, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 975
    .local v4, "mi":Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 988
    .end local v4    # "mi":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_0
    return-wide v0

    .line 979
    .restart local v4    # "mi":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_1
    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v5

    add-long/2addr v0, v5

    .line 981
    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 982
    add-int/lit8 v5, v3, -0x1

    if-ge v2, v5, :cond_2

    .line 983
    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieTransition;->getAppDuration()J

    move-result-wide v5

    sub-long/2addr v0, v5

    .line 973
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getMediaItemCount()I
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMediaItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/videoeditor/service/MovieMediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mProjectName:Ljava/lang/String;

    return-object v0
.end method

.method public getNextMediaItem(J)Lcom/android/videoeditor/service/MovieMediaItem;
    .locals 10
    .param p1, "positionMs"    # J

    .prologue
    const/4 v5, 0x0

    .line 590
    const-wide/16 v3, 0x0

    .line 591
    .local v3, "startTimeMs":J
    iget-object v6, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 592
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 593
    iget-object v6, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 594
    .local v2, "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    cmp-long v6, p1, v3

    if-ltz v6, :cond_1

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v6

    add-long/2addr v6, v3

    invoke-static {v2}, Lcom/android/videoeditor/service/VideoEditorProject;->getEndTransitionDuration(Lcom/android/videoeditor/service/MovieMediaItem;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    cmp-long v6, p1, v6

    if-gez v6, :cond_1

    .line 597
    add-int/lit8 v6, v0, -0x1

    if-ge v1, v6, :cond_0

    .line 598
    iget-object v5, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    add-int/lit8 v6, v1, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 615
    .end local v2    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_0
    :goto_1
    return-object v5

    .line 602
    .restart local v2    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_1
    cmp-long v6, p1, v3

    if-ltz v6, :cond_2

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v6

    add-long/2addr v6, v3

    cmp-long v6, p1, v6

    if-gez v6, :cond_2

    .line 604
    add-int/lit8 v6, v0, -0x2

    if-ge v1, v6, :cond_0

    .line 605
    iget-object v5, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    add-int/lit8 v6, v1, 0x2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/MovieMediaItem;

    goto :goto_1

    .line 610
    :cond_2
    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v6

    add-long/2addr v3, v6

    .line 611
    invoke-static {v2}, Lcom/android/videoeditor/service/VideoEditorProject;->getEndTransitionDuration(Lcom/android/videoeditor/service/MovieMediaItem;)J

    move-result-wide v6

    sub-long/2addr v3, v6

    .line 592
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getNextMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;
    .locals 5
    .param p1, "mediaItemId"    # Ljava/lang/String;

    .prologue
    .line 539
    const/4 v1, 0x0

    .line 540
    .local v1, "getNext":Z
    iget-object v4, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 541
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 542
    iget-object v4, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 543
    .local v3, "mi":Lcom/android/videoeditor/service/MovieMediaItem;
    if-eqz v1, :cond_0

    .line 552
    .end local v3    # "mi":Lcom/android/videoeditor/service/MovieMediaItem;
    :goto_1
    return-object v3

    .line 546
    .restart local v3    # "mi":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_0
    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 547
    const/4 v1, 0x1

    .line 541
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 552
    .end local v3    # "mi":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getOverlay(Ljava/lang/String;Ljava/lang/String;)Lcom/android/videoeditor/service/MovieOverlay;
    .locals 2
    .param p1, "mediaItemId"    # Ljava/lang/String;
    .param p2, "overlayId"    # Ljava/lang/String;

    .prologue
    .line 859
    invoke-virtual {p0, p1}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v0

    .line 860
    .local v0, "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getOverlay()Lcom/android/videoeditor/service/MovieOverlay;

    move-result-object v1

    return-object v1
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mProjectPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayheadPos()J
    .locals 2

    .prologue
    .line 252
    iget-wide v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mPlayheadPosMs:J

    return-wide v0
.end method

.method public getPreviousMediaItem(J)Lcom/android/videoeditor/service/MovieMediaItem;
    .locals 7
    .param p1, "positionMs"    # J

    .prologue
    .line 562
    const-wide/16 v3, 0x0

    .line 563
    .local v3, "startTimeMs":J
    const/4 v2, 0x0

    .line 564
    .local v2, "prevMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    iget-object v5, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 565
    .local v1, "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    cmp-long v5, p1, v3

    if-nez v5, :cond_3

    .end local v1    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_1
    move-object v1, v2

    .line 580
    :cond_2
    return-object v1

    .line 567
    .restart local v1    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_3
    cmp-long v5, p1, v3

    if-lez v5, :cond_4

    invoke-virtual {v1}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v5

    add-long/2addr v5, v3

    cmp-long v5, p1, v5

    if-ltz v5, :cond_2

    .line 571
    :cond_4
    move-object v2, v1

    .line 574
    invoke-virtual {v1}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 575
    invoke-virtual {v1}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 576
    invoke-virtual {v1}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieTransition;->getAppDuration()J

    move-result-wide v5

    sub-long/2addr v3, v5

    goto :goto_0
.end method

.method public getPreviousMediaItem(Lcom/android/videoeditor/service/MovieTransition;)Lcom/android/videoeditor/service/MovieMediaItem;
    .locals 5
    .param p1, "transition"    # Lcom/android/videoeditor/service/MovieTransition;

    .prologue
    const/4 v3, 0x0

    .line 626
    iget-object v4, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 627
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 628
    iget-object v4, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 629
    .local v2, "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    if-nez v1, :cond_1

    .line 630
    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v4

    if-ne v4, p1, :cond_1

    move-object v2, v3

    .line 640
    .end local v2    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_0
    :goto_1
    return-object v2

    .line 635
    .restart local v2    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_1
    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v4

    if-eq v4, p1, :cond_0

    .line 627
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_2
    move-object v2, v3

    .line 640
    goto :goto_1
.end method

.method public getPreviousMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;
    .locals 4
    .param p1, "mediaItemId"    # Ljava/lang/String;

    .prologue
    .line 520
    const/4 v2, 0x0

    .line 521
    .local v2, "prevMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    iget-object v3, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 522
    .local v1, "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v1}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 529
    .end local v1    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_0
    return-object v2

    .line 525
    .restart local v1    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_1
    move-object v2, v1

    goto :goto_0
.end method

.method public getProjectDuration()J
    .locals 2

    .prologue
    .line 224
    iget-wide v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mProjectDurationMs:J

    return-wide v0
.end method

.method public getTheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mTheme:Ljava/lang/String;

    return-object v0
.end method

.method public getTransition(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieTransition;
    .locals 7
    .param p1, "transitionId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 800
    invoke-virtual {p0}, Lcom/android/videoeditor/service/VideoEditorProject;->getFirstMediaItem()Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v2

    .line 801
    .local v2, "firstMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    if-nez v2, :cond_1

    move-object v0, v5

    .line 817
    :cond_0
    :goto_0
    return-object v0

    .line 805
    :cond_1
    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v0

    .line 806
    .local v0, "beginTransition":Lcom/android/videoeditor/service/MovieTransition;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieTransition;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 810
    :cond_2
    iget-object v6, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 811
    .local v4, "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v1

    .line 812
    .local v1, "endTransition":Lcom/android/videoeditor/service/MovieTransition;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/videoeditor/service/MovieTransition;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v0, v1

    .line 813
    goto :goto_0

    .end local v1    # "endTransition":Lcom/android/videoeditor/service/MovieTransition;
    .end local v4    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_4
    move-object v0, v5

    .line 817
    goto :goto_0
.end method

.method public getUniqueAspectRatiosList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 715
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 716
    .local v1, "aspectRatiosList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 717
    .local v3, "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getAspectRatio()I

    move-result v0

    .line 718
    .local v0, "aspectRatio":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 719
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 723
    .end local v0    # "aspectRatio":I
    .end local v3    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_1
    return-object v1
.end method

.method public getZoomLevel()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mZoomLevel:I

    return v0
.end method

.method public hasMultipleAspectRatios()Z
    .locals 4

    .prologue
    .line 699
    const/4 v0, 0x0

    .line 700
    .local v0, "aspectRatio":I
    iget-object v3, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 701
    .local v2, "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    if-nez v0, :cond_1

    .line 702
    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getAspectRatio()I

    move-result v0

    goto :goto_0

    .line 703
    :cond_1
    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getAspectRatio()I

    move-result v3

    if-eq v3, v0, :cond_0

    .line 704
    const/4 v3, 0x1

    .line 708
    .end local v2    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :goto_1
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method insertMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;Ljava/lang/String;)V
    .locals 8
    .param p1, "mediaItem"    # Lcom/android/videoeditor/service/MovieMediaItem;
    .param p2, "afterMediaItemId"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 319
    if-nez p2, :cond_1

    .line 320
    iget-object v4, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 322
    iget-object v4, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 323
    .local v0, "firstMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 324
    invoke-virtual {v0, v7}, Lcom/android/videoeditor/service/MovieMediaItem;->setBeginTransition(Lcom/android/videoeditor/service/MovieTransition;)V

    .line 328
    .end local v0    # "firstMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_0
    iget-object v4, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v4, v6, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 329
    iput-boolean v6, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mClean:Z

    .line 351
    :goto_0
    return-void

    .line 331
    :cond_1
    iget-object v4, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 332
    .local v2, "mediaItemCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 333
    iget-object v4, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 334
    .local v3, "mi":Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 336
    invoke-virtual {v3, v7}, Lcom/android/videoeditor/service/MovieMediaItem;->setEndTransition(Lcom/android/videoeditor/service/MovieTransition;)V

    .line 338
    add-int/lit8 v4, v2, -0x1

    if-ge v1, v4, :cond_2

    .line 339
    iget-object v4, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    add-int/lit8 v5, v1, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v4, v7}, Lcom/android/videoeditor/service/MovieMediaItem;->setBeginTransition(Lcom/android/videoeditor/service/MovieTransition;)V

    .line 343
    :cond_2
    iget-object v4, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    add-int/lit8 v5, v1, 0x1

    invoke-interface {v4, v5, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 344
    iput-boolean v6, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mClean:Z

    goto :goto_0

    .line 332
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 349
    .end local v3    # "mi":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MediaItem not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public isClean()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mClean:Z

    return v0
.end method

.method public isFirstMediaItem(Ljava/lang/String;)Z
    .locals 2
    .param p1, "mediaItemId"    # Ljava/lang/String;

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/android/videoeditor/service/VideoEditorProject;->getFirstMediaItem()Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v0

    .line 466
    .local v0, "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    if-nez v0, :cond_0

    .line 467
    const/4 v1, 0x0

    .line 469
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public isLastMediaItem(Ljava/lang/String;)Z
    .locals 2
    .param p1, "mediaItemId"    # Ljava/lang/String;

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/android/videoeditor/service/VideoEditorProject;->getLastMediaItem()Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v0

    .line 506
    .local v0, "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    if-nez v0, :cond_0

    .line 507
    const/4 v1, 0x0

    .line 509
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 1124
    return-void
.end method

.method removeAudioTrack(Ljava/lang/String;)V
    .locals 4
    .param p1, "audioTrackId"    # Ljava/lang/String;

    .prologue
    .line 931
    iget-object v3, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mAudioTracks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 932
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 933
    iget-object v3, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mAudioTracks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/service/MovieAudioTrack;

    .line 934
    .local v0, "audioTrack":Lcom/android/videoeditor/service/MovieAudioTrack;
    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieAudioTrack;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 935
    iget-object v3, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mAudioTracks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 936
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mClean:Z

    .line 940
    .end local v0    # "audioTrack":Lcom/android/videoeditor/service/MovieAudioTrack;
    :cond_0
    return-void

    .line 932
    .restart local v0    # "audioTrack":Lcom/android/videoeditor/service/MovieAudioTrack;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public removeDownload(Ljava/lang/String;)V
    .locals 6
    .param p1, "mediaUri"    # Ljava/lang/String;

    .prologue
    .line 1144
    iget-object v5, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mDownloads:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 1145
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 1146
    iget-object v5, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mDownloads:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/videoeditor/service/VideoEditorProject$Download;

    .line 1147
    .local v1, "download":Lcom/android/videoeditor/service/VideoEditorProject$Download;
    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject$Download;->getMediaUri()Ljava/lang/String;

    move-result-object v4

    .line 1148
    .local v4, "uri":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1150
    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject$Download;->getFilename()Ljava/lang/String;

    move-result-object v2

    .line 1151
    .local v2, "filename":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1154
    iget-object v5, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mDownloads:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1155
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mClean:Z

    .line 1159
    .end local v1    # "download":Lcom/android/videoeditor/service/VideoEditorProject$Download;
    .end local v2    # "filename":Ljava/lang/String;
    .end local v4    # "uri":Ljava/lang/String;
    :cond_0
    return-void

    .line 1145
    .restart local v1    # "download":Lcom/android/videoeditor/service/VideoEditorProject$Download;
    .restart local v4    # "uri":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method removeEffect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "mediaItemId"    # Ljava/lang/String;
    .param p2, "effectId"    # Ljava/lang/String;

    .prologue
    .line 888
    invoke-virtual {p0, p1}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v0

    .line 889
    .local v0, "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v0, p2}, Lcom/android/videoeditor/service/MovieMediaItem;->removeEffect(Ljava/lang/String;)V

    .line 890
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mClean:Z

    .line 891
    return-void
.end method

.method removeMediaItem(Ljava/lang/String;Lcom/android/videoeditor/service/MovieTransition;)V
    .locals 9
    .param p1, "mediaItemId"    # Ljava/lang/String;
    .param p2, "transition"    # Lcom/android/videoeditor/service/MovieTransition;

    .prologue
    const/4 v8, 0x0

    .line 390
    const/4 v5, 0x0

    .line 391
    .local v5, "prevMediaItemId":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 392
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 393
    iget-object v6, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 394
    .local v2, "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 395
    iget-object v6, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 396
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mClean:Z

    .line 397
    if-eqz p2, :cond_1

    .line 398
    invoke-virtual {p0, p2, v5}, Lcom/android/videoeditor/service/VideoEditorProject;->addTransition(Lcom/android/videoeditor/service/MovieTransition;Ljava/lang/String;)V

    .line 415
    .end local v2    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_0
    :goto_1
    return-void

    .line 400
    .restart local v2    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_1
    if-lez v1, :cond_2

    .line 401
    iget-object v6, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    add-int/lit8 v7, v1, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 402
    .local v4, "prevMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v4, v8}, Lcom/android/videoeditor/service/MovieMediaItem;->setEndTransition(Lcom/android/videoeditor/service/MovieTransition;)V

    .line 405
    .end local v4    # "prevMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_2
    add-int/lit8 v6, v0, -0x1

    if-ge v1, v6, :cond_0

    .line 406
    iget-object v6, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 407
    .local v3, "nextMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v3, v8}, Lcom/android/videoeditor/service/MovieMediaItem;->setBeginTransition(Lcom/android/videoeditor/service/MovieTransition;)V

    goto :goto_1

    .line 413
    .end local v3    # "nextMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_3
    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v5

    .line 392
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method removeOverlay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "mediaItemId"    # Ljava/lang/String;
    .param p2, "overlayId"    # Ljava/lang/String;

    .prologue
    .line 846
    invoke-virtual {p0, p1}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v0

    .line 847
    .local v0, "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v0, p2}, Lcom/android/videoeditor/service/MovieMediaItem;->removeOverlay(Ljava/lang/String;)V

    .line 848
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mClean:Z

    .line 849
    return-void
.end method

.method removeTransition(Ljava/lang/String;)V
    .locals 7
    .param p1, "transitionId"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 775
    iget-object v5, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .line 776
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 777
    iget-object v5, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 778
    .local v4, "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieMediaItem;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v0

    .line 779
    .local v0, "beginTransition":Lcom/android/videoeditor/service/MovieTransition;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieTransition;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 780
    invoke-virtual {v4, v6}, Lcom/android/videoeditor/service/MovieMediaItem;->setBeginTransition(Lcom/android/videoeditor/service/MovieTransition;)V

    .line 790
    .end local v0    # "beginTransition":Lcom/android/videoeditor/service/MovieTransition;
    .end local v4    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_0
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mClean:Z

    .line 791
    return-void

    .line 784
    .restart local v0    # "beginTransition":Lcom/android/videoeditor/service/MovieTransition;
    .restart local v4    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_1
    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v2

    .line 785
    .local v2, "endTransition":Lcom/android/videoeditor/service/MovieTransition;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieTransition;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 786
    invoke-virtual {v4, v6}, Lcom/android/videoeditor/service/MovieMediaItem;->setEndTransition(Lcom/android/videoeditor/service/MovieTransition;)V

    .line 776
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public renderMediaItemFrame(Landroid/view/SurfaceHolder;Ljava/lang/String;J)J
    .locals 3
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;
    .param p2, "mediaItemId"    # Ljava/lang/String;
    .param p3, "timeMs"    # J

    .prologue
    .line 1049
    iget-object v1, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    if-eqz v1, :cond_1

    .line 1050
    iget-object v1, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v1, p2}, Landroid/media/videoeditor/VideoEditor;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v0

    check-cast v0, Landroid/media/videoeditor/MediaVideoItem;

    .line 1052
    .local v0, "mediaItem":Landroid/media/videoeditor/MediaVideoItem;
    if-eqz v0, :cond_0

    .line 1053
    invoke-virtual {v0, p1, p3, p4}, Landroid/media/videoeditor/MediaVideoItem;->renderFrame(Landroid/view/SurfaceHolder;J)J

    move-result-wide v1

    .line 1058
    .end local v0    # "mediaItem":Landroid/media/videoeditor/MediaVideoItem;
    :goto_0
    return-wide v1

    .line 1055
    .restart local v0    # "mediaItem":Landroid/media/videoeditor/MediaVideoItem;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0

    .line 1058
    .end local v0    # "mediaItem":Landroid/media/videoeditor/MediaVideoItem;
    :cond_1
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public renderPreviewFrame(Landroid/view/SurfaceHolder;JLandroid/media/videoeditor/VideoEditor$OverlayData;)J
    .locals 2
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;
    .param p2, "timeMs"    # J
    .param p4, "overlayData"    # Landroid/media/videoeditor/VideoEditor$OverlayData;

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    if-eqz v0, :cond_0

    .line 1028
    iget-object v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/media/videoeditor/VideoEditor;->renderPreviewFrame(Landroid/view/SurfaceHolder;JLandroid/media/videoeditor/VideoEditor$OverlayData;)J

    move-result-wide v0

    .line 1030
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public saveToXml()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1242
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 1243
    .local v3, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    .line 1244
    .local v4, "writer":Ljava/io/StringWriter;
    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 1245
    const-string v5, "UTF-8"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1246
    const-string v5, ""

    const-string v6, "project"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1247
    iget-object v5, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mProjectName:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 1248
    const-string v5, ""

    const-string v6, "name"

    iget-object v7, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mProjectName:Ljava/lang/String;

    invoke-interface {v3, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1250
    :cond_0
    iget-object v5, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mTheme:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 1251
    const-string v5, ""

    const-string v6, "theme"

    iget-object v7, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mTheme:Ljava/lang/String;

    invoke-interface {v3, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1254
    :cond_1
    const-string v5, ""

    const-string v6, "playhead"

    iget-wide v7, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mPlayheadPosMs:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1255
    const-string v5, ""

    const-string v6, "duration"

    invoke-virtual {p0}, Lcom/android/videoeditor/service/VideoEditorProject;->computeDuration()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1256
    const-string v5, ""

    const-string v6, "zoom_level"

    iget v7, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mZoomLevel:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mLastSaved:J

    .line 1259
    const-string v5, ""

    const-string v6, "saved"

    iget-wide v7, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mLastSaved:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1260
    iget-object v5, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mExportedMovieUri:Landroid/net/Uri;

    if-eqz v5, :cond_2

    .line 1261
    const-string v5, ""

    const-string v6, "movie"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1262
    const-string v5, ""

    const-string v6, "uri"

    iget-object v7, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mExportedMovieUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1263
    const-string v5, ""

    const-string v6, "movie"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1266
    :cond_2
    iget-object v5, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mDownloads:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/service/VideoEditorProject$Download;

    .line 1267
    .local v0, "download":Lcom/android/videoeditor/service/VideoEditorProject$Download;
    const-string v5, ""

    const-string v6, "download"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1268
    const-string v5, ""

    const-string v6, "uri"

    invoke-virtual {v0}, Lcom/android/videoeditor/service/VideoEditorProject$Download;->getMediaUri()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1269
    const-string v5, ""

    const-string v6, "mime"

    invoke-virtual {v0}, Lcom/android/videoeditor/service/VideoEditorProject$Download;->getMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1270
    const-string v5, ""

    const-string v6, "filename"

    invoke-virtual {v0}, Lcom/android/videoeditor/service/VideoEditorProject$Download;->getFilename()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1271
    const-string v5, ""

    const-string v6, "time"

    invoke-virtual {v0}, Lcom/android/videoeditor/service/VideoEditorProject$Download;->getTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1272
    const-string v5, ""

    const-string v6, "download"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 1274
    .end local v0    # "download":Lcom/android/videoeditor/service/VideoEditorProject$Download;
    :cond_3
    const-string v5, ""

    const-string v6, "project"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1275
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1278
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v6}, Landroid/media/videoeditor/VideoEditor;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "metadata.xml"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1280
    .local v2, "out":Ljava/io/FileOutputStream;
    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 1281
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 1282
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1283
    return-void
.end method

.method setAspectRatio(I)V
    .locals 1
    .param p1, "aspectRatio"    # I

    .prologue
    .line 266
    iput p1, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mAspectRatio:I

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mClean:Z

    .line 268
    return-void
.end method

.method setAudioTracks(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/videoeditor/service/MovieAudioTrack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 911
    .local p1, "audioTracks":Ljava/util/List;, "Ljava/util/List<Lcom/android/videoeditor/service/MovieAudioTrack;>;"
    iput-object p1, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mAudioTracks:Ljava/util/List;

    .line 912
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mClean:Z

    .line 913
    return-void
.end method

.method public setClean(Z)V
    .locals 0
    .param p1, "clean"    # Z

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mClean:Z

    .line 178
    return-void
.end method

.method setMediaItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/videoeditor/service/MovieMediaItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 308
    .local p1, "mediaItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/videoeditor/service/MovieMediaItem;>;"
    iput-object p1, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    .line 309
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mClean:Z

    .line 310
    return-void
.end method

.method public setPlayheadPos(J)V
    .locals 0
    .param p1, "playheadPosMs"    # J

    .prologue
    .line 259
    iput-wide p1, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mPlayheadPosMs:J

    .line 260
    return-void
.end method

.method public setProjectName(Ljava/lang/String;)V
    .locals 1
    .param p1, "projectName"    # Ljava/lang/String;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mProjectName:Ljava/lang/String;

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mClean:Z

    .line 200
    return-void
.end method

.method setTheme(Ljava/lang/String;)V
    .locals 1
    .param p1, "theme"    # Ljava/lang/String;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mTheme:Ljava/lang/String;

    .line 292
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mClean:Z

    .line 293
    return-void
.end method

.method public setZoomLevel(I)V
    .locals 0
    .param p1, "zoomLevel"    # I

    .prologue
    .line 238
    iput p1, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mZoomLevel:I

    .line 239
    return-void
.end method

.method public startPreview(Landroid/view/SurfaceHolder;JJZILandroid/media/videoeditor/VideoEditor$PreviewProgressListener;)V
    .locals 9
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;
    .param p2, "fromMs"    # J
    .param p4, "toMs"    # J
    .param p6, "loop"    # Z
    .param p7, "callbackAfterFrameCount"    # I
    .param p8, "listener"    # Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    if-eqz v0, :cond_0

    .line 1089
    iget-object v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Landroid/media/videoeditor/VideoEditor;->startPreview(Landroid/view/SurfaceHolder;JJZILandroid/media/videoeditor/VideoEditor$PreviewProgressListener;)V

    .line 1092
    :cond_0
    return-void
.end method

.method public stopPreview()J
    .locals 2

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    if-eqz v0, :cond_0

    .line 1103
    iget-object v0, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v0}, Landroid/media/videoeditor/VideoEditor;->stopPreview()J

    move-result-wide v0

    .line 1105
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method updateMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;)V
    .locals 8
    .param p1, "newMediaItem"    # Lcom/android/videoeditor/service/MovieMediaItem;

    .prologue
    .line 360
    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v3

    .line 361
    .local v3, "newMediaItemId":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 362
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 363
    iget-object v6, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 364
    .local v2, "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 365
    iget-object v6, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    invoke-interface {v6, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 366
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mClean:Z

    .line 368
    if-lez v1, :cond_0

    .line 369
    iget-object v6, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    add-int/lit8 v7, v1, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 370
    .local v5, "prevMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/videoeditor/service/MovieMediaItem;->setEndTransition(Lcom/android/videoeditor/service/MovieTransition;)V

    .line 373
    .end local v5    # "prevMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_0
    add-int/lit8 v6, v0, -0x1

    if-ge v1, v6, :cond_1

    .line 374
    iget-object v6, p0, Lcom/android/videoeditor/service/VideoEditorProject;->mMediaItems:Ljava/util/List;

    add-int/lit8 v7, v1, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 375
    .local v4, "nextMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/videoeditor/service/MovieMediaItem;->setBeginTransition(Lcom/android/videoeditor/service/MovieTransition;)V

    .line 380
    .end local v2    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v4    # "nextMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_1
    return-void

    .line 362
    .restart local v2    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
