.class public Lcom/android/videoeditor/service/MovieTheme;
.super Ljava/lang/Object;
.source "MovieTheme.java"


# static fields
.field public static final THEME_FILM:Ljava/lang/String; = "film"

.field public static final THEME_ROCKANDROLL:Ljava/lang/String; = "rockandroll"

.field public static final THEME_SURFING:Ljava/lang/String; = "surfing"

.field public static final THEME_TRAVEL:Ljava/lang/String; = "travel"


# instance fields
.field private final mAudioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;

.field private final mBeginTransition:Lcom/android/videoeditor/service/MovieTransition;

.field private final mEndTransition:Lcom/android/videoeditor/service/MovieTransition;

.field private final mId:Ljava/lang/String;

.field private final mMidTransition:Lcom/android/videoeditor/service/MovieTransition;

.field private final mNameResId:I

.field private final mOverlay:Lcom/android/videoeditor/service/MovieOverlay;

.field private final mPreviewImageResId:I

.field private final mPreviewMovieResId:I


# direct methods
.method private constructor <init>(Ljava/lang/String;IIILcom/android/videoeditor/service/MovieTransition;Lcom/android/videoeditor/service/MovieTransition;Lcom/android/videoeditor/service/MovieTransition;Lcom/android/videoeditor/service/MovieOverlay;Lcom/android/videoeditor/service/MovieAudioTrack;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "nameResId"    # I
    .param p3, "previewImageResId"    # I
    .param p4, "previewMovieResId"    # I
    .param p5, "beginTransition"    # Lcom/android/videoeditor/service/MovieTransition;
    .param p6, "midTransition"    # Lcom/android/videoeditor/service/MovieTransition;
    .param p7, "endTransition"    # Lcom/android/videoeditor/service/MovieTransition;
    .param p8, "overlay"    # Lcom/android/videoeditor/service/MovieOverlay;
    .param p9, "audioTrack"    # Lcom/android/videoeditor/service/MovieAudioTrack;

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/android/videoeditor/service/MovieTheme;->mId:Ljava/lang/String;

    .line 135
    iput p2, p0, Lcom/android/videoeditor/service/MovieTheme;->mNameResId:I

    .line 136
    iput p3, p0, Lcom/android/videoeditor/service/MovieTheme;->mPreviewImageResId:I

    .line 137
    iput p4, p0, Lcom/android/videoeditor/service/MovieTheme;->mPreviewMovieResId:I

    .line 139
    iput-object p5, p0, Lcom/android/videoeditor/service/MovieTheme;->mBeginTransition:Lcom/android/videoeditor/service/MovieTransition;

    .line 140
    iput-object p6, p0, Lcom/android/videoeditor/service/MovieTheme;->mMidTransition:Lcom/android/videoeditor/service/MovieTransition;

    .line 141
    iput-object p7, p0, Lcom/android/videoeditor/service/MovieTheme;->mEndTransition:Lcom/android/videoeditor/service/MovieTransition;

    .line 143
    iput-object p8, p0, Lcom/android/videoeditor/service/MovieTheme;->mOverlay:Lcom/android/videoeditor/service/MovieOverlay;

    .line 145
    iput-object p9, p0, Lcom/android/videoeditor/service/MovieTheme;->mAudioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;

    .line 146
    return-void
.end method

.method public static getTheme(Landroid/content/Context;Ljava/lang/String;)Lcom/android/videoeditor/service/MovieTheme;
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "theme"    # Ljava/lang/String;

    .prologue
    .line 46
    const-string v1, "travel"

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    new-instance v15, Lcom/android/videoeditor/service/MovieTheme;

    const-string v13, "travel"

    const v16, 0x7f090062

    const v17, 0x7f020049

    const/16 v18, 0x0

    new-instance v1, Lcom/android/videoeditor/service/MovieTransition;

    const-class v2, Landroid/media/videoeditor/TransitionFadeBlack;

    const/4 v3, 0x0

    const-wide/16 v4, 0x5dc

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/videoeditor/service/MovieTransition;-><init>(Ljava/lang/Class;Ljava/lang/String;JI)V

    new-instance v2, Lcom/android/videoeditor/service/MovieTransition;

    const-class v3, Landroid/media/videoeditor/TransitionCrossfade;

    const/4 v4, 0x0

    const-wide/16 v5, 0x3e8

    const/4 v7, 0x2

    invoke-direct/range {v2 .. v7}, Lcom/android/videoeditor/service/MovieTransition;-><init>(Ljava/lang/Class;Ljava/lang/String;JI)V

    new-instance v3, Lcom/android/videoeditor/service/MovieTransition;

    const-class v4, Landroid/media/videoeditor/TransitionFadeBlack;

    const/4 v5, 0x0

    const-wide/16 v6, 0x5dc

    const/4 v8, 0x1

    invoke-direct/range {v3 .. v8}, Lcom/android/videoeditor/service/MovieTransition;-><init>(Ljava/lang/Class;Ljava/lang/String;JI)V

    new-instance v4, Lcom/android/videoeditor/service/MovieOverlay;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x3e8

    const v10, 0x7f090063

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f090064

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/android/videoeditor/service/MovieOverlay;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;I)V

    new-instance v14, Lcom/android/videoeditor/service/MovieAudioTrack;

    const v5, 0x7f050005

    invoke-direct {v14, v5}, Lcom/android/videoeditor/service/MovieAudioTrack;-><init>(I)V

    move-object v5, v15

    move-object v6, v13

    move/from16 v7, v16

    move/from16 v8, v17

    move/from16 v9, v18

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    invoke-direct/range {v5 .. v14}, Lcom/android/videoeditor/service/MovieTheme;-><init>(Ljava/lang/String;IIILcom/android/videoeditor/service/MovieTransition;Lcom/android/videoeditor/service/MovieTransition;Lcom/android/videoeditor/service/MovieTransition;Lcom/android/videoeditor/service/MovieOverlay;Lcom/android/videoeditor/service/MovieAudioTrack;)V

    move-object v1, v15

    .line 102
    :goto_0
    return-object v1

    .line 59
    :cond_0
    const-string v1, "surfing"

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    new-instance v15, Lcom/android/videoeditor/service/MovieTheme;

    const-string v13, "surfing"

    const v16, 0x7f090065

    const v17, 0x7f020048

    const/16 v18, 0x0

    new-instance v1, Lcom/android/videoeditor/service/MovieTransition;

    const-class v2, Landroid/media/videoeditor/TransitionFadeBlack;

    const/4 v3, 0x0

    const-wide/16 v4, 0x5dc

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/videoeditor/service/MovieTransition;-><init>(Ljava/lang/Class;Ljava/lang/String;JI)V

    new-instance v2, Lcom/android/videoeditor/service/MovieTransition;

    const-class v3, Landroid/media/videoeditor/TransitionAlpha;

    const/4 v4, 0x0

    const-wide/16 v5, 0x3e8

    const/4 v7, 0x2

    const v8, 0x7f050001

    const/16 v9, 0x32

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/android/videoeditor/service/MovieTransition;-><init>(Ljava/lang/Class;Ljava/lang/String;JIIIZ)V

    new-instance v3, Lcom/android/videoeditor/service/MovieTransition;

    const-class v4, Landroid/media/videoeditor/TransitionFadeBlack;

    const/4 v5, 0x0

    const-wide/16 v6, 0x5dc

    const/4 v8, 0x1

    invoke-direct/range {v3 .. v8}, Lcom/android/videoeditor/service/MovieTransition;-><init>(Ljava/lang/Class;Ljava/lang/String;JI)V

    new-instance v4, Lcom/android/videoeditor/service/MovieOverlay;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x3e8

    const v10, 0x7f090066

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f090067

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-direct/range {v4 .. v12}, Lcom/android/videoeditor/service/MovieOverlay;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;I)V

    new-instance v14, Lcom/android/videoeditor/service/MovieAudioTrack;

    const v5, 0x7f050004

    invoke-direct {v14, v5}, Lcom/android/videoeditor/service/MovieAudioTrack;-><init>(I)V

    move-object v5, v15

    move-object v6, v13

    move/from16 v7, v16

    move/from16 v8, v17

    move/from16 v9, v18

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    invoke-direct/range {v5 .. v14}, Lcom/android/videoeditor/service/MovieTheme;-><init>(Ljava/lang/String;IIILcom/android/videoeditor/service/MovieTransition;Lcom/android/videoeditor/service/MovieTransition;Lcom/android/videoeditor/service/MovieTransition;Lcom/android/videoeditor/service/MovieOverlay;Lcom/android/videoeditor/service/MovieAudioTrack;)V

    move-object v1, v15

    goto :goto_0

    .line 73
    :cond_1
    const-string v1, "film"

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 74
    new-instance v15, Lcom/android/videoeditor/service/MovieTheme;

    const-string v13, "film"

    const v16, 0x7f090068

    const v17, 0x7f020046

    const/16 v18, 0x0

    new-instance v1, Lcom/android/videoeditor/service/MovieTransition;

    const-class v2, Landroid/media/videoeditor/TransitionFadeBlack;

    const/4 v3, 0x0

    const-wide/16 v4, 0x5dc

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/videoeditor/service/MovieTransition;-><init>(Ljava/lang/Class;Ljava/lang/String;JI)V

    new-instance v2, Lcom/android/videoeditor/service/MovieTransition;

    const-class v3, Landroid/media/videoeditor/TransitionCrossfade;

    const/4 v4, 0x0

    const-wide/16 v5, 0x3e8

    const/4 v7, 0x2

    invoke-direct/range {v2 .. v7}, Lcom/android/videoeditor/service/MovieTransition;-><init>(Ljava/lang/Class;Ljava/lang/String;JI)V

    new-instance v3, Lcom/android/videoeditor/service/MovieTransition;

    const-class v4, Landroid/media/videoeditor/TransitionFadeBlack;

    const/4 v5, 0x0

    const-wide/16 v6, 0x5dc

    const/4 v8, 0x1

    invoke-direct/range {v3 .. v8}, Lcom/android/videoeditor/service/MovieTransition;-><init>(Ljava/lang/Class;Ljava/lang/String;JI)V

    new-instance v4, Lcom/android/videoeditor/service/MovieOverlay;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x3e8

    const v10, 0x7f090069

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f09006a

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-direct/range {v4 .. v12}, Lcom/android/videoeditor/service/MovieOverlay;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;I)V

    new-instance v14, Lcom/android/videoeditor/service/MovieAudioTrack;

    const v5, 0x7f050002

    invoke-direct {v14, v5}, Lcom/android/videoeditor/service/MovieAudioTrack;-><init>(I)V

    move-object v5, v15

    move-object v6, v13

    move/from16 v7, v16

    move/from16 v8, v17

    move/from16 v9, v18

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    invoke-direct/range {v5 .. v14}, Lcom/android/videoeditor/service/MovieTheme;-><init>(Ljava/lang/String;IIILcom/android/videoeditor/service/MovieTransition;Lcom/android/videoeditor/service/MovieTransition;Lcom/android/videoeditor/service/MovieTransition;Lcom/android/videoeditor/service/MovieOverlay;Lcom/android/videoeditor/service/MovieAudioTrack;)V

    move-object v1, v15

    goto/16 :goto_0

    .line 86
    :cond_2
    const-string v1, "rockandroll"

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 87
    new-instance v15, Lcom/android/videoeditor/service/MovieTheme;

    const-string v13, "rockandroll"

    const v16, 0x7f09006b

    const v17, 0x7f020047

    const/16 v18, 0x0

    new-instance v1, Lcom/android/videoeditor/service/MovieTransition;

    const-class v2, Landroid/media/videoeditor/TransitionFadeBlack;

    const/4 v3, 0x0

    const-wide/16 v4, 0x5dc

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/videoeditor/service/MovieTransition;-><init>(Ljava/lang/Class;Ljava/lang/String;JI)V

    new-instance v2, Lcom/android/videoeditor/service/MovieTransition;

    const-class v3, Landroid/media/videoeditor/TransitionSliding;

    const/4 v4, 0x0

    const-wide/16 v5, 0x3e8

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/android/videoeditor/service/MovieTransition;-><init>(Ljava/lang/Class;Ljava/lang/String;JII)V

    new-instance v3, Lcom/android/videoeditor/service/MovieTransition;

    const-class v4, Landroid/media/videoeditor/TransitionFadeBlack;

    const/4 v5, 0x0

    const-wide/16 v6, 0x5dc

    const/4 v8, 0x1

    invoke-direct/range {v3 .. v8}, Lcom/android/videoeditor/service/MovieTransition;-><init>(Ljava/lang/Class;Ljava/lang/String;JI)V

    new-instance v4, Lcom/android/videoeditor/service/MovieOverlay;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x3e8

    const v10, 0x7f09006c

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f09006d

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-direct/range {v4 .. v12}, Lcom/android/videoeditor/service/MovieOverlay;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;I)V

    new-instance v14, Lcom/android/videoeditor/service/MovieAudioTrack;

    const v5, 0x7f050003

    invoke-direct {v14, v5}, Lcom/android/videoeditor/service/MovieAudioTrack;-><init>(I)V

    move-object v5, v15

    move-object v6, v13

    move/from16 v7, v16

    move/from16 v8, v17

    move/from16 v9, v18

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    invoke-direct/range {v5 .. v14}, Lcom/android/videoeditor/service/MovieTheme;-><init>(Ljava/lang/String;IIILcom/android/videoeditor/service/MovieTransition;Lcom/android/videoeditor/service/MovieTransition;Lcom/android/videoeditor/service/MovieTransition;Lcom/android/videoeditor/service/MovieOverlay;Lcom/android/videoeditor/service/MovieAudioTrack;)V

    move-object v1, v15

    goto/16 :goto_0

    .line 102
    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public getAudioTrack()Lcom/android/videoeditor/service/MovieAudioTrack;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/videoeditor/service/MovieTheme;->mAudioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;

    return-object v0
.end method

.method public getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/videoeditor/service/MovieTheme;->mBeginTransition:Lcom/android/videoeditor/service/MovieTransition;

    return-object v0
.end method

.method public getEndTransition()Lcom/android/videoeditor/service/MovieTransition;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/videoeditor/service/MovieTheme;->mEndTransition:Lcom/android/videoeditor/service/MovieTransition;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/videoeditor/service/MovieTheme;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getMidTransition()Lcom/android/videoeditor/service/MovieTransition;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/videoeditor/service/MovieTheme;->mMidTransition:Lcom/android/videoeditor/service/MovieTransition;

    return-object v0
.end method

.method public getNameResId()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/android/videoeditor/service/MovieTheme;->mNameResId:I

    return v0
.end method

.method public getOverlay()Lcom/android/videoeditor/service/MovieOverlay;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/videoeditor/service/MovieTheme;->mOverlay:Lcom/android/videoeditor/service/MovieOverlay;

    return-object v0
.end method

.method public getPreviewImageResId()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/android/videoeditor/service/MovieTheme;->mPreviewImageResId:I

    return v0
.end method

.method public getPreviewMovieResId()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/android/videoeditor/service/MovieTheme;->mPreviewMovieResId:I

    return v0
.end method
