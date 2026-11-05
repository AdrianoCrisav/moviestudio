.class public Lcom/android/videoeditor/VideoEditorActivity;
.super Lcom/android/videoeditor/VideoEditorBaseActivity;
.source "VideoEditorActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;
    }
.end annotation


# static fields
.field private static final DCIM:Ljava/lang/String;

.field public static final DIALOG_CHANGE_RENDERING_MODE_ID:I = 0xc

.field private static final DIALOG_CHOOSE_ASPECT_RATIO_ID:I = 0x3

.field private static final DIALOG_DELETE_PROJECT_ID:I = 0x1

.field private static final DIALOG_EDIT_PROJECT_NAME_ID:I = 0x2

.field private static final DIALOG_EXPORT_OPTIONS_ID:I = 0x4

.field public static final DIALOG_REMOVE_AUDIO_TRACK_ID:I = 0xf

.field public static final DIALOG_REMOVE_EFFECT_ID:I = 0xe

.field public static final DIALOG_REMOVE_MEDIA_ITEM_ID:I = 0xa

.field public static final DIALOG_REMOVE_OVERLAY_ID:I = 0xd

.field public static final DIALOG_REMOVE_TRANSITION_ID:I = 0xb

.field private static final DIRECTORY:Ljava/lang/String;

.field private static final MAX_ZOOM_LEVEL:I = 0x78

.field private static final PARAM_ASPECT_RATIOS_LIST:Ljava/lang/String; = "aspect_ratios"

.field private static final PARAM_CURRENT_ASPECT_RATIO_INDEX:Ljava/lang/String; = "current_aspect_ratio"

.field private static final REQUEST_CODE_CAPTURE_IMAGE:I = 0x5

.field private static final REQUEST_CODE_CAPTURE_VIDEO:I = 0x4

.field public static final REQUEST_CODE_EDIT_TRANSITION:I = 0xa

.field private static final REQUEST_CODE_IMPORT_IMAGE:I = 0x2

.field private static final REQUEST_CODE_IMPORT_MUSIC:I = 0x3

.field private static final REQUEST_CODE_IMPORT_VIDEO:I = 0x1

.field public static final REQUEST_CODE_KEN_BURNS:I = 0xd

.field public static final REQUEST_CODE_PICK_OVERLAY:I = 0xc

.field public static final REQUEST_CODE_PICK_TRANSITION:I = 0xb

.field private static final SHOW_TITLE_THRESHOLD_WIDTH_DIP:I = 0x3e8

.field private static final STATE_CAPTURE_URI:Ljava/lang/String; = "capture_uri"

.field private static final STATE_INSERT_AFTER_MEDIA_ITEM_ID:Ljava/lang/String; = "insert_after_media_item_id"

.field private static final STATE_PLAYING:Ljava/lang/String; = "playing"

.field private static final STATE_SELECTED_POS_ID:Ljava/lang/String; = "selected_pos_id"

.field private static final TAG:Ljava/lang/String; = "VideoEditorActivity"

.field private static final ZOOM_STEP:I = 0x2


# instance fields
.field private mActivityWidth:I

.field private mAddAudioTrackUri:Landroid/net/Uri;

.field private mAddEffectMediaItemId:Ljava/lang/String;

.field private mAddEffectType:I

.field private mAddKenBurnsEndRect:Landroid/graphics/Rect;

.field private mAddKenBurnsStartRect:Landroid/graphics/Rect;

.field private mAddMediaItemImageUri:Landroid/net/Uri;

.field private mAddMediaItemVideoUri:Landroid/net/Uri;

.field private mAddOverlayMediaItemId:Ljava/lang/String;

.field private mAddOverlayUserAttributes:Landroid/os/Bundle;

.field private mAddTransitionAfterMediaId:Ljava/lang/String;

.field private mAddTransitionDurationMs:J

.field private mAddTransitionType:I

.field private mAudioTrackLayout:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

.field private mCaptureMediaUri:Landroid/net/Uri;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mCurrentPlayheadPosMs:J

.field private mEditOverlayId:Ljava/lang/String;

.field private mEditOverlayMediaItemId:Ljava/lang/String;

.field private mEditOverlayUserAttributes:Landroid/os/Bundle;

.field private mEditTransitionAfterMediaId:Ljava/lang/String;

.field private mEditTransitionDurationMs:J

.field private mEditTransitionId:Ljava/lang/String;

.field private mEditTransitionType:I

.field private mEditorEmptyView:Landroid/view/View;

.field private mEditorProjectView:Landroid/view/View;

.field private mExportProgressDialog:Landroid/app/ProgressDialog;

.field private mHaveSurface:Z

.field private mInsertMediaItemAfterMediaItemId:Ljava/lang/String;

.field private final mLayoutCallback:Lcom/android/videoeditor/widgets/TimelineRelativeLayout$LayoutCallback;

.field private mMediaLayout:Lcom/android/videoeditor/widgets/MediaLinearLayout;

.field private mMediaLayoutSelectedPos:I

.field private mOverlayLayout:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

.field private mOverlayView:Landroid/widget/ImageView;

.field private mPlayheadView:Lcom/android/videoeditor/widgets/PlayheadView;

.field private mPreviewNextButton:Landroid/widget/ImageButton;

.field private mPreviewPlayButton:Landroid/widget/ImageButton;

.field private mPreviewPrevButton:Landroid/widget/ImageButton;

.field private mPreviewRewindButton:Landroid/widget/ImageButton;

.field private mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

.field private mRestartPreview:Z

.field private mResumed:Z

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceView:Lcom/android/videoeditor/widgets/PreviewSurfaceView;

.field private mSurfaceWidth:I

.field private mTimeView:Landroid/widget/TextView;

.field private mTimelineLayout:Lcom/android/videoeditor/widgets/TimelineRelativeLayout;

.field private mTimelineScroller:Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

.field private mZoomControl:Lcom/android/videoeditor/widgets/ZoomControl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 100
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/videoeditor/VideoEditorActivity;->DCIM:Ljava/lang/String;

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/videoeditor/VideoEditorActivity;->DCIM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/videoeditor/VideoEditorActivity;->DIRECTORY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/videoeditor/VideoEditorBaseActivity;-><init>()V

    .line 140
    new-instance v0, Lcom/android/videoeditor/VideoEditorActivity$1;

    invoke-direct {v0, p0}, Lcom/android/videoeditor/VideoEditorActivity$1;-><init>(Lcom/android/videoeditor/VideoEditorActivity;)V

    iput-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mLayoutCallback:Lcom/android/videoeditor/widgets/TimelineRelativeLayout$LayoutCallback;

    .line 1676
    return-void
.end method

.method static synthetic access$000(Lcom/android/videoeditor/VideoEditorActivity;JZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/videoeditor/VideoEditorActivity;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/android/videoeditor/VideoEditorActivity;->movePlayhead(JZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/videoeditor/VideoEditorActivity;)Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/VideoEditorActivity;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mTimelineScroller:Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/videoeditor/VideoEditorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/videoeditor/VideoEditorActivity;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/videoeditor/VideoEditorActivity;->showExportProgress()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/videoeditor/VideoEditorActivity;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/VideoEditorActivity;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/videoeditor/VideoEditorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/videoeditor/VideoEditorActivity;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/videoeditor/VideoEditorActivity;->cancelExport()V

    return-void
.end method

.method static synthetic access$1900(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-static {p0}, Lcom/android/videoeditor/VideoEditorActivity;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/videoeditor/VideoEditorActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/videoeditor/VideoEditorActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mInsertMediaItemAfterMediaItemId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/videoeditor/VideoEditorActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/VideoEditorActivity;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mOverlayView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/videoeditor/VideoEditorActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/VideoEditorActivity;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewPlayButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/videoeditor/VideoEditorActivity;)Lcom/android/videoeditor/widgets/OverlayLinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/VideoEditorActivity;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mOverlayLayout:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/videoeditor/VideoEditorActivity;)Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/VideoEditorActivity;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAudioTrackLayout:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/videoeditor/VideoEditorActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/VideoEditorActivity;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/videoeditor/VideoEditorActivity;->isPreviewPlaying()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/videoeditor/VideoEditorActivity;)Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/VideoEditorActivity;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/videoeditor/VideoEditorActivity;)Lcom/android/videoeditor/widgets/TimelineRelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/VideoEditorActivity;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mTimelineLayout:Lcom/android/videoeditor/widgets/TimelineRelativeLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/videoeditor/VideoEditorActivity;)Lcom/android/videoeditor/widgets/MediaLinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/VideoEditorActivity;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mMediaLayout:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/videoeditor/VideoEditorActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/VideoEditorActivity;

    .prologue
    .line 90
    iget v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mActivityWidth:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/videoeditor/VideoEditorActivity;J)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/VideoEditorActivity;
    .param p1, "x1"    # J

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/videoeditor/VideoEditorActivity;->setPlayhead(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/videoeditor/VideoEditorActivity;IZ)I
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/VideoEditorActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/videoeditor/VideoEditorActivity;->zoomTimeline(IZ)I

    move-result v0

    return v0
.end method

.method private cancelExport()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1660
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProjectPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPendingExportFilename:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/videoeditor/service/ApiService;->cancelExportVideoEditor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1662
    iput-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPendingExportFilename:Ljava/lang/String;

    .line 1663
    iput-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mExportProgressDialog:Landroid/app/ProgressDialog;

    .line 1664
    return-void
.end method

.method private createPreviewThreadIfNeeded()V
    .locals 3

    .prologue
    .line 476
    iget-boolean v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mHaveSurface:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mResumed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    if-nez v0, :cond_1

    .line 477
    new-instance v0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {v0, p0, v1}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;-><init>(Lcom/android/videoeditor/VideoEditorActivity;Landroid/view/SurfaceHolder;)V

    iput-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    .line 478
    iget v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mSurfaceWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 479
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    iget v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mSurfaceWidth:I

    iget v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mSurfaceHeight:I

    invoke-static {v0, v1, v2}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$1000(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;II)V

    .line 481
    :cond_0
    invoke-direct {p0}, Lcom/android/videoeditor/VideoEditorActivity;->restartPreview()V

    .line 483
    :cond_1
    return-void
.end method

.method private getVideoOutputMediaFileTitle()Ljava/lang/String;
    .locals 6

    .prologue
    .line 661
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 662
    .local v2, "dateTaken":J
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 663
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "\'VID\'_yyyyMMdd_HHmmss"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 665
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private isPreviewPlaying()Z
    .locals 1

    .prologue
    .line 1667
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    if-nez v0, :cond_0

    .line 1668
    const/4 v0, 0x0

    .line 1670
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$1300(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Z

    move-result v0

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 2151
    const-string v0, "VideoEditorActivity"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2152
    const-string v0, "VideoEditorActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    :cond_0
    return-void
.end method

.method private movePlayhead(JZ)V
    .locals 2
    .param p1, "timeMs"    # J
    .param p3, "smooth"    # Z

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-nez v0, :cond_1

    .line 1352
    :cond_0
    :goto_0
    return-void

    .line 1347
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/videoeditor/VideoEditorActivity;->setPlayhead(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1350
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mTimelineScroller:Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    invoke-direct {p0, p1, p2}, Lcom/android/videoeditor/VideoEditorActivity;->timeToDimension(J)I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->appScrollTo(IZ)V

    goto :goto_0
.end method

.method private restartPreview()V
    .locals 4

    .prologue
    .line 1601
    iget-boolean v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mRestartPreview:Z

    if-nez v0, :cond_1

    .line 1613
    :cond_0
    :goto_0
    return-void

    .line 1605
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 1609
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    if-eqz v0, :cond_0

    .line 1610
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mRestartPreview:Z

    .line 1611
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/VideoEditorProject;->getPlayheadPos()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$1500(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;Lcom/android/videoeditor/service/VideoEditorProject;J)V

    goto :goto_0
.end method

.method private setPlayhead(J)Z
    .locals 3
    .param p1, "timeMs"    # J

    .prologue
    const/4 v0, 0x0

    .line 1363
    iget-wide v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mCurrentPlayheadPosMs:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_1

    .line 1379
    :cond_0
    :goto_0
    return v0

    .line 1369
    :cond_1
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    .line 1371
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->computeDuration()J

    move-result-wide v1

    cmp-long v1, p1, v1

    if-gtz v1, :cond_0

    .line 1375
    iput-wide p1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mCurrentPlayheadPosMs:J

    .line 1377
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mTimeView:Landroid/widget/TextView;

    invoke-static {p0, p1, p2}, Lcom/android/videoeditor/util/StringUtils;->getTimestampAsString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1378
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0, p1, p2}, Lcom/android/videoeditor/service/VideoEditorProject;->setPlayheadPos(J)V

    .line 1379
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private showExportProgress()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1620
    new-instance v0, Lcom/android/videoeditor/VideoEditorActivity$23;

    invoke-direct {v0, p0, p0}, Lcom/android/videoeditor/VideoEditorActivity$23;-><init>(Lcom/android/videoeditor/VideoEditorActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mExportProgressDialog:Landroid/app/ProgressDialog;

    .line 1632
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mExportProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f090058

    invoke-virtual {p0, v1}, Lcom/android/videoeditor/VideoEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1633
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mExportProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1634
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mExportProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1636
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mExportProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1637
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mExportProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/videoeditor/VideoEditorActivity$24;

    invoke-direct {v1, p0}, Lcom/android/videoeditor/VideoEditorActivity$24;-><init>(Lcom/android/videoeditor/VideoEditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1643
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mExportProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1644
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mExportProgressDialog:Landroid/app/ProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 1645
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mExportProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1646
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mExportProgressDialog:Landroid/app/ProgressDialog;

    const/high16 v1, 0x1040000

    invoke-virtual {p0, v1}, Lcom/android/videoeditor/VideoEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/videoeditor/VideoEditorActivity$25;

    invoke-direct {v2, p0}, Lcom/android/videoeditor/VideoEditorActivity$25;-><init>(Lcom/android/videoeditor/VideoEditorActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1654
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mExportProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1655
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mExportProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1656
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mExportProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 1657
    return-void
.end method

.method private stopPreviewThread()V
    .locals 1

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    if-eqz v0, :cond_0

    .line 1218
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$1400(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)V

    .line 1219
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->quit()V

    .line 1220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    .line 1222
    :cond_0
    return-void
.end method

.method private timeToDimension(J)I
    .locals 4
    .param p1, "durationMs"    # J

    .prologue
    .line 1309
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/VideoEditorProject;->getZoomLevel()I

    move-result v0

    iget v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mActivityWidth:I

    mul-int/2addr v0, v1

    int-to-long v0, v0

    mul-long/2addr v0, p1

    const-wide/32 v2, 0x124f80

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private zoomTimeline(IZ)I
    .locals 4
    .param p1, "level"    # I
    .param p2, "updateControl"    # Z

    .prologue
    .line 1320
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x78

    if-le p1, v0, :cond_2

    .line 1321
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/VideoEditorProject;->getZoomLevel()I

    move-result p1

    .line 1334
    .end local p1    # "level":I
    :cond_1
    :goto_0
    return p1

    .line 1324
    .restart local p1    # "level":I
    :cond_2
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0, p1}, Lcom/android/videoeditor/service/VideoEditorProject;->setZoomLevel(I)V

    .line 1325
    const-string v0, "VideoEditorActivity"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1326
    const-string v0, "VideoEditorActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zoomTimeline level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v2, v3}, Lcom/android/videoeditor/VideoEditorActivity;->timeToDimension(J)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pix/s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    :cond_3
    invoke-virtual {p0}, Lcom/android/videoeditor/VideoEditorActivity;->updateTimelineDuration()V

    .line 1331
    if-eqz p2, :cond_1

    .line 1332
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mZoomControl:Lcom/android/videoeditor/widgets/ZoomControl;

    invoke-virtual {v0, p1}, Lcom/android/videoeditor/widgets/ZoomControl;->setProgress(I)V

    goto :goto_0
.end method


# virtual methods
.method protected enterDisabledState(I)V
    .locals 3
    .param p1, "statusStringId"    # I

    .prologue
    const/16 v2, 0x8

    .line 1235
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mEditorProjectView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1236
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mEditorEmptyView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1238
    invoke-virtual {p0}, Lcom/android/videoeditor/VideoEditorActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 1240
    const v0, 0x7f08000b

    invoke-virtual {p0, v0}, Lcom/android/videoeditor/VideoEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1241
    const v0, 0x7f08000a

    invoke-virtual {p0, v0}, Lcom/android/videoeditor/VideoEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1242
    return-void
.end method

.method protected enterReadyState()V
    .locals 2

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mEditorProjectView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1247
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mEditorEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1248
    return-void
.end method

.method protected enterTransitionalState(I)V
    .locals 3
    .param p1, "statusStringId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1226
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mEditorProjectView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1227
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mEditorEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1229
    const v0, 0x7f08000b

    invoke-virtual {p0, v0}, Lcom/android/videoeditor/VideoEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1230
    const v0, 0x7f08000a

    invoke-virtual {p0, v0}, Lcom/android/videoeditor/VideoEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1231
    return-void
.end method

.method protected getAudioTrackLayout()Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;
    .locals 1

    .prologue
    .line 1435
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAudioTrackLayout:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    return-object v0
.end method

.method protected getMediaLayout()Lcom/android/videoeditor/widgets/MediaLinearLayout;
    .locals 1

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mMediaLayout:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    return-object v0
.end method

.method protected getOverlayLayout()Lcom/android/videoeditor/widgets/OverlayLinearLayout;
    .locals 1

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mOverlayLayout:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    return-object v0
.end method

.method protected initializeFromProject(Z)V
    .locals 12
    .param p1, "updateUI"    # Z

    .prologue
    const/4 v11, 0x1

    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 1470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Project was clean: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->isClean()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity;->logd(Ljava/lang/String;)V

    .line 1472
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/VideoEditorProject;->isClean()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1473
    :cond_0
    invoke-virtual {p0}, Lcom/android/videoeditor/VideoEditorActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1477
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mMediaLayout:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mTimelineScroller:Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->setParentTimelineScrollView(Landroid/view/View;)V

    .line 1478
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mMediaLayout:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->setProject(Lcom/android/videoeditor/service/VideoEditorProject;)V

    .line 1479
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mOverlayLayout:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->setProject(Lcom/android/videoeditor/service/VideoEditorProject;)V

    .line 1480
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAudioTrackLayout:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->setProject(Lcom/android/videoeditor/service/VideoEditorProject;)V

    .line 1481
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPlayheadView:Lcom/android/videoeditor/widgets/PlayheadView;

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/PlayheadView;->setProject(Lcom/android/videoeditor/service/VideoEditorProject;)V

    .line 1484
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mMediaLayout:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->addMediaItems(Ljava/util/List;)V

    .line 1485
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mMediaLayout:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    iget v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mMediaLayoutSelectedPos:I

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->setSelectedView(I)V

    .line 1488
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mOverlayLayout:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->addMediaItems(Ljava/util/List;)V

    .line 1491
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAudioTrackLayout:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getAudioTracks()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->addAudioTracks(Ljava/util/List;)V

    .line 1493
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/VideoEditorProject;->getAspectRatio()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/videoeditor/VideoEditorActivity;->setAspectRatio(I)V

    .line 1496
    :cond_1
    invoke-virtual {p0}, Lcom/android/videoeditor/VideoEditorActivity;->updateTimelineDuration()V

    .line 1497
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/VideoEditorProject;->getZoomLevel()I

    move-result v0

    invoke-direct {p0, v0, v11}, Lcom/android/videoeditor/VideoEditorActivity;->zoomTimeline(IZ)I

    .line 1501
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    .line 1502
    .local v9, "handler":Landroid/os/Handler;
    new-instance v0, Lcom/android/videoeditor/VideoEditorActivity$22;

    invoke-direct {v0, p0, v9}, Lcom/android/videoeditor/VideoEditorActivity$22;-><init>(Lcom/android/videoeditor/VideoEditorActivity;Landroid/os/Handler;)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1520
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAddMediaItemVideoUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 1521
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProjectPath:Ljava/lang/String;

    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->generateId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/videoeditor/VideoEditorActivity;->mInsertMediaItemAfterMediaItemId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAddMediaItemVideoUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/VideoEditorProject;->getTheme()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/videoeditor/service/ApiService;->addMediaItemVideoUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ILjava/lang/String;)V

    .line 1525
    iput-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAddMediaItemVideoUri:Landroid/net/Uri;

    .line 1526
    iput-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mInsertMediaItemAfterMediaItemId:Ljava/lang/String;

    .line 1529
    :cond_2
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAddMediaItemImageUri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    .line 1530
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProjectPath:Ljava/lang/String;

    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->generateId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/videoeditor/VideoEditorActivity;->mInsertMediaItemAfterMediaItemId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAddMediaItemImageUri:Landroid/net/Uri;

    invoke-static {}, Lcom/android/videoeditor/util/MediaItemUtils;->getDefaultImageDuration()J

    move-result-wide v6

    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/VideoEditorProject;->getTheme()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/android/videoeditor/service/ApiService;->addMediaItemImageUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IJLjava/lang/String;)V

    .line 1534
    iput-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAddMediaItemImageUri:Landroid/net/Uri;

    .line 1535
    iput-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mInsertMediaItemAfterMediaItemId:Ljava/lang/String;

    .line 1538
    :cond_3
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAddAudioTrackUri:Landroid/net/Uri;

    if-eqz v0, :cond_4

    .line 1539
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->generateId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAddAudioTrackUri:Landroid/net/Uri;

    invoke-static {p0, v0, v1, v2, v11}, Lcom/android/videoeditor/service/ApiService;->addAudioTrack(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 1541
    iput-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAddAudioTrackUri:Landroid/net/Uri;

    .line 1544
    :cond_4
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAddTransitionAfterMediaId:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 1545
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mMediaLayout:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAddTransitionAfterMediaId:Ljava/lang/String;

    iget v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAddTransitionType:I

    iget-wide v3, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAddTransitionDurationMs:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->addTransition(Ljava/lang/String;IJ)V

    .line 1547
    iput-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAddTransitionAfterMediaId:Ljava/lang/String;

    .line 1550
    :cond_5
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mEditTransitionId:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 1551
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mMediaLayout:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mEditTransitionAfterMediaId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mEditTransitionId:Ljava/lang/String;

    iget v3, p0, Lcom/android/videoeditor/VideoEditorActivity;->mEditTransitionType:I

    iget-wide v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mEditTransitionDurationMs:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->editTransition(Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 1553
    iput-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mEditTransitionId:Ljava/lang/String;

    .line 1554
    iput-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mEditTransitionAfterMediaId:Ljava/lang/String;

    .line 1557
    :cond_6
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAddOverlayMediaItemId:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1558
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAddOverlayMediaItemId:Ljava/lang/String;

    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->generateId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAddOverlayUserAttributes:Landroid/os/Bundle;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0xbb8

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/android/videoeditor/service/ApiService;->addOverlay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;JJ)V

    .line 1561
    iput-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAddOverlayMediaItemId:Ljava/lang/String;

    .line 1562
    iput-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAddOverlayUserAttributes:Landroid/os/Bundle;

    .line 1565
    :cond_7
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mEditOverlayMediaItemId:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 1566
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mEditOverlayMediaItemId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mEditOverlayId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/videoeditor/VideoEditorActivity;->mEditOverlayUserAttributes:Landroid/os/Bundle;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/videoeditor/service/ApiService;->setOverlayUserAttributes(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1568
    iput-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mEditOverlayMediaItemId:Ljava/lang/String;

    .line 1569
    iput-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mEditOverlayId:Ljava/lang/String;

    .line 1570
    iput-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mEditOverlayUserAttributes:Landroid/os/Bundle;

    .line 1573
    :cond_8
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAddEffectMediaItemId:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 1574
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mMediaLayout:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    iget v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAddEffectType:I

    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAddEffectMediaItemId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAddKenBurnsStartRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAddKenBurnsEndRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->addEffect(ILjava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1576
    iput-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAddEffectMediaItemId:Ljava/lang/String;

    .line 1579
    :cond_9
    invoke-virtual {p0}, Lcom/android/videoeditor/VideoEditorActivity;->enterReadyState()V

    .line 1581
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPendingExportFilename:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 1582
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProjectPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPendingExportFilename:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/videoeditor/service/ApiService;->isVideoEditorExportPending(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1585
    invoke-direct {p0}, Lcom/android/videoeditor/VideoEditorActivity;->showExportProgress()V

    .line 1592
    :cond_a
    :goto_0
    invoke-virtual {p0}, Lcom/android/videoeditor/VideoEditorActivity;->invalidateOptionsMenu()V

    .line 1594
    invoke-direct {p0}, Lcom/android/videoeditor/VideoEditorActivity;->restartPreview()V

    .line 1595
    return-void

    .line 1588
    :cond_b
    iput-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPendingExportFilename:Ljava/lang/String;

    goto :goto_0
.end method

.method protected movePlayhead(J)V
    .locals 1
    .param p1, "timeMs"    # J

    .prologue
    .line 1339
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/videoeditor/VideoEditorActivity;->movePlayhead(JZ)V

    .line 1340
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 29
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "extras"    # Landroid/content/Intent;

    .prologue
    .line 982
    invoke-super/range {p0 .. p3}, Lcom/android/videoeditor/VideoEditorBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 983
    if-nez p2, :cond_1

    .line 984
    packed-switch p1, :pswitch_data_0

    .line 1185
    :cond_0
    :goto_0
    return-void

    .line 987
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/videoeditor/VideoEditorActivity;->mCaptureMediaUri:Landroid/net/Uri;

    if-eqz v4, :cond_0

    .line 988
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/VideoEditorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/videoeditor/VideoEditorActivity;->mCaptureMediaUri:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 989
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/videoeditor/VideoEditorActivity;->mCaptureMediaUri:Landroid/net/Uri;

    goto :goto_0

    .line 1001
    :cond_1
    packed-switch p1, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    .line 1034
    :pswitch_2
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 1035
    .local v8, "mediaUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v4, :cond_5

    .line 1036
    const-string v4, "media"

    invoke-virtual {v8}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1037
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProjectPath:Ljava/lang/String;

    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->generateId()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/videoeditor/VideoEditorActivity;->mInsertMediaItemAfterMediaItemId:Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/VideoEditorProject;->getTheme()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v10}, Lcom/android/videoeditor/service/ApiService;->addMediaItemVideoUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ILjava/lang/String;)V

    .line 1048
    :goto_1
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/videoeditor/VideoEditorActivity;->mInsertMediaItemAfterMediaItemId:Ljava/lang/String;

    goto :goto_0

    .line 1003
    .end local v8    # "mediaUri":Landroid/net/Uri;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v4, :cond_2

    .line 1004
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProjectPath:Ljava/lang/String;

    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->generateId()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/videoeditor/VideoEditorActivity;->mInsertMediaItemAfterMediaItemId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/videoeditor/VideoEditorActivity;->mCaptureMediaUri:Landroid/net/Uri;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/VideoEditorProject;->getTheme()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v10}, Lcom/android/videoeditor/service/ApiService;->addMediaItemVideoUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ILjava/lang/String;)V

    .line 1008
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/videoeditor/VideoEditorActivity;->mInsertMediaItemAfterMediaItemId:Ljava/lang/String;

    .line 1013
    :goto_2
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/videoeditor/VideoEditorActivity;->mCaptureMediaUri:Landroid/net/Uri;

    goto/16 :goto_0

    .line 1011
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/videoeditor/VideoEditorActivity;->mCaptureMediaUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/videoeditor/VideoEditorActivity;->mAddMediaItemVideoUri:Landroid/net/Uri;

    goto :goto_2

    .line 1018
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v4, :cond_3

    .line 1019
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProjectPath:Ljava/lang/String;

    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->generateId()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/videoeditor/VideoEditorActivity;->mInsertMediaItemAfterMediaItemId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/videoeditor/VideoEditorActivity;->mCaptureMediaUri:Landroid/net/Uri;

    const/4 v9, 0x0

    invoke-static {}, Lcom/android/videoeditor/util/MediaItemUtils;->getDefaultImageDuration()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/VideoEditorProject;->getTheme()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v12}, Lcom/android/videoeditor/service/ApiService;->addMediaItemImageUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IJLjava/lang/String;)V

    .line 1024
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/videoeditor/VideoEditorActivity;->mInsertMediaItemAfterMediaItemId:Ljava/lang/String;

    .line 1029
    :goto_3
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/videoeditor/VideoEditorActivity;->mCaptureMediaUri:Landroid/net/Uri;

    goto/16 :goto_0

    .line 1027
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/videoeditor/VideoEditorActivity;->mCaptureMediaUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/videoeditor/VideoEditorActivity;->mAddMediaItemImageUri:Landroid/net/Uri;

    goto :goto_3

    .line 1043
    .restart local v8    # "mediaUri":Landroid/net/Uri;
    :cond_4
    const v4, 0x7f090029

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/videoeditor/VideoEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1046
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProjectPath:Ljava/lang/String;

    const-string v5, "video/*"

    move-object/from16 v0, p0

    invoke-static {v0, v4, v8, v5}, Lcom/android/videoeditor/service/ApiService;->loadMediaItem(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1051
    :cond_5
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/videoeditor/VideoEditorActivity;->mAddMediaItemVideoUri:Landroid/net/Uri;

    goto/16 :goto_0

    .line 1057
    .end local v8    # "mediaUri":Landroid/net/Uri;
    :pswitch_5
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 1058
    .restart local v8    # "mediaUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v4, :cond_7

    .line 1059
    const-string v4, "media"

    invoke-virtual {v8}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1060
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProjectPath:Ljava/lang/String;

    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->generateId()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/videoeditor/VideoEditorActivity;->mInsertMediaItemAfterMediaItemId:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {}, Lcom/android/videoeditor/util/MediaItemUtils;->getDefaultImageDuration()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/VideoEditorProject;->getTheme()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v12}, Lcom/android/videoeditor/service/ApiService;->addMediaItemImageUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IJLjava/lang/String;)V

    .line 1071
    :goto_4
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/videoeditor/VideoEditorActivity;->mInsertMediaItemAfterMediaItemId:Ljava/lang/String;

    goto/16 :goto_0

    .line 1066
    :cond_6
    const v4, 0x7f09002a

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/videoeditor/VideoEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1069
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProjectPath:Ljava/lang/String;

    const-string v5, "image/*"

    move-object/from16 v0, p0

    invoke-static {v0, v4, v8, v5}, Lcom/android/videoeditor/service/ApiService;->loadMediaItem(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_4

    .line 1074
    :cond_7
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/videoeditor/VideoEditorActivity;->mAddMediaItemImageUri:Landroid/net/Uri;

    goto/16 :goto_0

    .line 1080
    .end local v8    # "mediaUri":Landroid/net/Uri;
    :pswitch_6
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v24

    .line 1081
    .local v24, "data":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v4, :cond_8

    .line 1082
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProjectPath:Ljava/lang/String;

    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->generateId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-static {v0, v4, v5, v1, v6}, Lcom/android/videoeditor/service/ApiService;->addAudioTrack(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)V

    goto/16 :goto_0

    .line 1085
    :cond_8
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/videoeditor/VideoEditorActivity;->mAddAudioTrackUri:Landroid/net/Uri;

    goto/16 :goto_0

    .line 1091
    .end local v24    # "data":Landroid/net/Uri;
    :pswitch_7
    const-string v4, "transition"

    const/4 v5, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 1092
    .local v12, "type":I
    const-string v4, "media_item_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1094
    .local v10, "afterMediaId":Ljava/lang/String;
    const-string v4, "transition_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1096
    .local v11, "transitionId":Ljava/lang/String;
    const-string v4, "duration"

    const-wide/16 v5, 0x1f4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v13

    .line 1098
    .local v13, "transitionDurationMs":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v4, :cond_9

    .line 1099
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/videoeditor/VideoEditorActivity;->mMediaLayout:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual/range {v9 .. v14}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->editTransition(Ljava/lang/String;Ljava/lang/String;IJ)V

    goto/16 :goto_0

    .line 1103
    :cond_9
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/videoeditor/VideoEditorActivity;->mEditTransitionAfterMediaId:Ljava/lang/String;

    .line 1104
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/videoeditor/VideoEditorActivity;->mEditTransitionId:Ljava/lang/String;

    .line 1105
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/videoeditor/VideoEditorActivity;->mEditTransitionType:I

    .line 1106
    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/videoeditor/VideoEditorActivity;->mEditTransitionDurationMs:J

    goto/16 :goto_0

    .line 1112
    .end local v10    # "afterMediaId":Ljava/lang/String;
    .end local v11    # "transitionId":Ljava/lang/String;
    .end local v12    # "type":I
    .end local v13    # "transitionDurationMs":J
    :pswitch_8
    const-string v4, "transition"

    const/4 v5, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 1113
    .restart local v12    # "type":I
    const-string v4, "media_item_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1115
    .restart local v10    # "afterMediaId":Ljava/lang/String;
    const-string v4, "duration"

    const-wide/16 v5, 0x1f4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v13

    .line 1117
    .restart local v13    # "transitionDurationMs":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v4, :cond_a

    .line 1118
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/videoeditor/VideoEditorActivity;->mMediaLayout:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v4, v10, v12, v13, v14}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->addTransition(Ljava/lang/String;IJ)V

    goto/16 :goto_0

    .line 1121
    :cond_a
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/videoeditor/VideoEditorActivity;->mAddTransitionAfterMediaId:Ljava/lang/String;

    .line 1122
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/videoeditor/VideoEditorActivity;->mAddTransitionType:I

    .line 1123
    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/videoeditor/VideoEditorActivity;->mAddTransitionDurationMs:J

    goto/16 :goto_0

    .line 1131
    .end local v10    # "afterMediaId":Ljava/lang/String;
    .end local v12    # "type":I
    .end local v13    # "transitionDurationMs":J
    :pswitch_9
    const-string v4, "media_item_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1133
    .local v17, "mediaItemId":Ljava/lang/String;
    const-string v4, "overlay_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1135
    .local v27, "overlayId":Ljava/lang/String;
    const-string v4, "attributes"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v19

    .line 1137
    .local v19, "bundle":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v4, :cond_c

    .line 1138
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v26

    .line 1139
    .local v26, "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    if-eqz v26, :cond_0

    .line 1140
    if-nez v27, :cond_b

    .line 1141
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->generateId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v26 .. v26}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryBeginTime()J

    move-result-wide v20

    const-wide/16 v22, 0xbb8

    move-object/from16 v15, p0

    invoke-static/range {v15 .. v23}, Lcom/android/videoeditor/service/ApiService;->addOverlay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;JJ)V

    .line 1149
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/videoeditor/VideoEditorActivity;->mOverlayLayout:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-virtual {v4}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->invalidateCAB()V

    goto/16 :goto_0

    .line 1146
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v27

    move-object/from16 v3, v19

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/videoeditor/service/ApiService;->setOverlayUserAttributes(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_5

    .line 1153
    .end local v26    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_c
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/videoeditor/VideoEditorActivity;->mAddOverlayMediaItemId:Ljava/lang/String;

    .line 1154
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/videoeditor/VideoEditorActivity;->mAddOverlayUserAttributes:Landroid/os/Bundle;

    .line 1155
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/videoeditor/VideoEditorActivity;->mEditOverlayId:Ljava/lang/String;

    goto/16 :goto_0

    .line 1161
    .end local v17    # "mediaItemId":Ljava/lang/String;
    .end local v19    # "bundle":Landroid/os/Bundle;
    .end local v27    # "overlayId":Ljava/lang/String;
    :pswitch_a
    const-string v4, "media_item_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1163
    .restart local v17    # "mediaItemId":Ljava/lang/String;
    const-string v4, "start_rect"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v28

    check-cast v28, Landroid/graphics/Rect;

    .line 1165
    .local v28, "startRect":Landroid/graphics/Rect;
    const-string v4, "end_rect"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v25

    check-cast v25, Landroid/graphics/Rect;

    .line 1167
    .local v25, "endRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v4, :cond_d

    .line 1168
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/videoeditor/VideoEditorActivity;->mMediaLayout:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    const/4 v5, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    move-object/from16 v2, v25

    invoke-virtual {v4, v5, v0, v1, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->addEffect(ILjava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1170
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/videoeditor/VideoEditorActivity;->mMediaLayout:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v4}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->invalidateActionBar()V

    goto/16 :goto_0

    .line 1173
    :cond_d
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/videoeditor/VideoEditorActivity;->mAddEffectMediaItemId:Ljava/lang/String;

    .line 1174
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/videoeditor/VideoEditorActivity;->mAddEffectType:I

    .line 1175
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/videoeditor/VideoEditorActivity;->mAddKenBurnsStartRect:Landroid/graphics/Rect;

    .line 1176
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/videoeditor/VideoEditorActivity;->mAddKenBurnsEndRect:Landroid/graphics/Rect;

    goto/16 :goto_0

    .line 984
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1001
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public onClickHandler(Landroid/view/View;)V
    .locals 8
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const-wide/16 v6, 0x0

    .line 893
    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/VideoEditorProject;->getPlayheadPos()J

    move-result-wide v1

    .line 895
    .local v1, "playheadPosMs":J
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 978
    :cond_0
    :goto_0
    return-void

    .line 897
    :pswitch_0
    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    if-eqz v4, :cond_0

    .line 898
    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v4}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$1300(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 899
    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v4}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$1400(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)V

    goto :goto_0

    .line 900
    :cond_1
    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItemCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 901
    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    iget-object v5, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-static {v4, v5, v1, v2}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$1500(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;Lcom/android/videoeditor/service/VideoEditorProject;J)V

    goto :goto_0

    .line 908
    :pswitch_1
    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    if-eqz v4, :cond_0

    .line 909
    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v4}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$1300(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 910
    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v4}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$1400(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)V

    .line 911
    invoke-virtual {p0, v6, v7}, Lcom/android/videoeditor/VideoEditorActivity;->movePlayhead(J)V

    .line 912
    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    iget-object v5, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-static {v4, v5, v6, v7}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$1500(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;Lcom/android/videoeditor/service/VideoEditorProject;J)V

    goto :goto_0

    .line 914
    :cond_2
    invoke-virtual {p0, v6, v7}, Lcom/android/videoeditor/VideoEditorActivity;->movePlayhead(J)V

    .line 915
    invoke-virtual {p0}, Lcom/android/videoeditor/VideoEditorActivity;->showPreviewFrame()Z

    goto :goto_0

    .line 922
    :pswitch_2
    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    if-eqz v4, :cond_0

    .line 924
    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v4}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$1300(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 925
    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v4}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$1400(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)V

    .line 926
    const/4 v3, 0x1

    .line 931
    .local v3, "restartPreview":Z
    :goto_1
    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v4, v1, v2}, Lcom/android/videoeditor/service/VideoEditorProject;->getNextMediaItem(J)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v0

    .line 932
    .local v0, "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    if-eqz v0, :cond_5

    .line 933
    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItemBeginTime(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/videoeditor/VideoEditorActivity;->movePlayhead(J)V

    .line 934
    if-eqz v3, :cond_4

    .line 935
    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    iget-object v5, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    iget-object v6, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v6}, Lcom/android/videoeditor/service/VideoEditorProject;->getPlayheadPos()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$1500(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;Lcom/android/videoeditor/service/VideoEditorProject;J)V

    goto/16 :goto_0

    .line 928
    .end local v0    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v3    # "restartPreview":Z
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "restartPreview":Z
    goto :goto_1

    .line 938
    .restart local v0    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_4
    invoke-virtual {p0}, Lcom/android/videoeditor/VideoEditorActivity;->showPreviewFrame()Z

    goto/16 :goto_0

    .line 941
    :cond_5
    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/VideoEditorProject;->computeDuration()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/videoeditor/VideoEditorActivity;->movePlayhead(J)V

    .line 942
    invoke-virtual {p0}, Lcom/android/videoeditor/VideoEditorActivity;->showPreviewFrame()Z

    goto/16 :goto_0

    .line 949
    .end local v0    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v3    # "restartPreview":Z
    :pswitch_3
    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    if-eqz v4, :cond_0

    .line 951
    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v4}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$1300(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 952
    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v4}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$1400(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)V

    .line 953
    const/4 v3, 0x1

    .line 958
    .restart local v3    # "restartPreview":Z
    :goto_2
    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v4, v1, v2}, Lcom/android/videoeditor/service/VideoEditorProject;->getPreviousMediaItem(J)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v0

    .line 959
    .restart local v0    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    if-eqz v0, :cond_7

    .line 960
    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItemBeginTime(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/videoeditor/VideoEditorActivity;->movePlayhead(J)V

    .line 965
    :goto_3
    if-eqz v3, :cond_8

    .line 966
    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    iget-object v5, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    iget-object v6, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v6}, Lcom/android/videoeditor/service/VideoEditorProject;->getPlayheadPos()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$1500(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;Lcom/android/videoeditor/service/VideoEditorProject;J)V

    goto/16 :goto_0

    .line 955
    .end local v0    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v3    # "restartPreview":Z
    :cond_6
    const/4 v3, 0x0

    .restart local v3    # "restartPreview":Z
    goto :goto_2

    .line 962
    .restart local v0    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_7
    invoke-virtual {p0, v6, v7}, Lcom/android/videoeditor/VideoEditorActivity;->movePlayhead(J)V

    goto :goto_3

    .line 968
    :cond_8
    invoke-virtual {p0}, Lcom/android/videoeditor/VideoEditorActivity;->showPreviewFrame()Z

    goto/16 :goto_0

    .line 895
    nop

    :pswitch_data_0
    .packed-switch 0x7f080026
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 207
    invoke-super {p0, p1}, Lcom/android/videoeditor/VideoEditorBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 209
    invoke-virtual {p0}, Lcom/android/videoeditor/VideoEditorActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 210
    .local v0, "actionBar":Landroid/app/ActionBar;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 211
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/videoeditor/VideoEditorActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 213
    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    iget v6, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v5, v6

    float-to-int v4, v5

    .line 214
    .local v4, "widthDip":I
    const/16 v5, 0x3e8

    if-lt v4, v5, :cond_0

    .line 215
    invoke-virtual {v0}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v5

    or-int/lit8 v5, v5, 0x8

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 216
    const v5, 0x7f090001

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setTitle(I)V

    .line 220
    :cond_0
    const v5, 0x7f08002b

    invoke-virtual {p0, v5}, Lcom/android/videoeditor/VideoEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/widgets/PreviewSurfaceView;

    iput-object v5, p0, Lcom/android/videoeditor/VideoEditorActivity;->mSurfaceView:Lcom/android/videoeditor/widgets/PreviewSurfaceView;

    .line 221
    iget-object v5, p0, Lcom/android/videoeditor/VideoEditorActivity;->mSurfaceView:Lcom/android/videoeditor/widgets/PreviewSurfaceView;

    invoke-virtual {v5}, Lcom/android/videoeditor/widgets/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v5

    iput-object v5, p0, Lcom/android/videoeditor/VideoEditorActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 222
    iget-object v5, p0, Lcom/android/videoeditor/VideoEditorActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v5, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 223
    iget-object v5, p0, Lcom/android/videoeditor/VideoEditorActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 225
    const v5, 0x7f08002c

    invoke-virtual {p0, v5}, Lcom/android/videoeditor/VideoEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/videoeditor/VideoEditorActivity;->mOverlayView:Landroid/widget/ImageView;

    .line 227
    const v5, 0x7f080023

    invoke-virtual {p0, v5}, Lcom/android/videoeditor/VideoEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/videoeditor/VideoEditorActivity;->mEditorProjectView:Landroid/view/View;

    .line 228
    const v5, 0x7f080009

    invoke-virtual {p0, v5}, Lcom/android/videoeditor/VideoEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/videoeditor/VideoEditorActivity;->mEditorEmptyView:Landroid/view/View;

    .line 230
    const v5, 0x7f080031

    invoke-virtual {p0, v5}, Lcom/android/videoeditor/VideoEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    iput-object v5, p0, Lcom/android/videoeditor/VideoEditorActivity;->mTimelineScroller:Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    .line 231
    const v5, 0x7f080032

    invoke-virtual {p0, v5}, Lcom/android/videoeditor/VideoEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/widgets/TimelineRelativeLayout;

    iput-object v5, p0, Lcom/android/videoeditor/VideoEditorActivity;->mTimelineLayout:Lcom/android/videoeditor/widgets/TimelineRelativeLayout;

    .line 232
    const v5, 0x7f080033

    invoke-virtual {p0, v5}, Lcom/android/videoeditor/VideoEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/widgets/MediaLinearLayout;

    iput-object v5, p0, Lcom/android/videoeditor/VideoEditorActivity;->mMediaLayout:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    .line 233
    const v5, 0x7f080034

    invoke-virtual {p0, v5}, Lcom/android/videoeditor/VideoEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    iput-object v5, p0, Lcom/android/videoeditor/VideoEditorActivity;->mOverlayLayout:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    .line 234
    const v5, 0x7f080035

    invoke-virtual {p0, v5}, Lcom/android/videoeditor/VideoEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    iput-object v5, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAudioTrackLayout:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    .line 235
    const v5, 0x7f080036

    invoke-virtual {p0, v5}, Lcom/android/videoeditor/VideoEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/widgets/PlayheadView;

    iput-object v5, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPlayheadView:Lcom/android/videoeditor/widgets/PlayheadView;

    .line 237
    const v5, 0x7f080028

    invoke-virtual {p0, v5}, Lcom/android/videoeditor/VideoEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewPlayButton:Landroid/widget/ImageButton;

    .line 238
    const v5, 0x7f080027

    invoke-virtual {p0, v5}, Lcom/android/videoeditor/VideoEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewRewindButton:Landroid/widget/ImageButton;

    .line 239
    const v5, 0x7f080029

    invoke-virtual {p0, v5}, Lcom/android/videoeditor/VideoEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewNextButton:Landroid/widget/ImageButton;

    .line 240
    const v5, 0x7f080026

    invoke-virtual {p0, v5}, Lcom/android/videoeditor/VideoEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewPrevButton:Landroid/widget/ImageButton;

    .line 242
    const v5, 0x7f08002a

    invoke-virtual {p0, v5}, Lcom/android/videoeditor/VideoEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/videoeditor/VideoEditorActivity;->mTimeView:Landroid/widget/TextView;

    .line 244
    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 246
    iget-object v5, p0, Lcom/android/videoeditor/VideoEditorActivity;->mMediaLayout:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    new-instance v6, Lcom/android/videoeditor/VideoEditorActivity$2;

    invoke-direct {v6, p0}, Lcom/android/videoeditor/VideoEditorActivity$2;-><init>(Lcom/android/videoeditor/VideoEditorActivity;)V

    invoke-virtual {v5, v6}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->setListener(Lcom/android/videoeditor/widgets/MediaLinearLayoutListener;)V

    .line 296
    iget-object v5, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAudioTrackLayout:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    new-instance v6, Lcom/android/videoeditor/VideoEditorActivity$3;

    invoke-direct {v6, p0}, Lcom/android/videoeditor/VideoEditorActivity$3;-><init>(Lcom/android/videoeditor/VideoEditorActivity;)V

    invoke-virtual {v5, v6}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->setListener(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTracksLayoutListener;)V

    .line 305
    iget-object v5, p0, Lcom/android/videoeditor/VideoEditorActivity;->mTimelineScroller:Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    new-instance v6, Lcom/android/videoeditor/VideoEditorActivity$4;

    invoke-direct {v6, p0}, Lcom/android/videoeditor/VideoEditorActivity$4;-><init>(Lcom/android/videoeditor/VideoEditorActivity;)V

    invoke-virtual {v5, v6}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->addScrollListener(Lcom/android/videoeditor/widgets/ScrollViewListener;)V

    .line 337
    iget-object v5, p0, Lcom/android/videoeditor/VideoEditorActivity;->mTimelineScroller:Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    new-instance v6, Lcom/android/videoeditor/VideoEditorActivity$5;

    invoke-direct {v6, p0}, Lcom/android/videoeditor/VideoEditorActivity$5;-><init>(Lcom/android/videoeditor/VideoEditorActivity;)V

    invoke-virtual {v5, v6}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->setScaleListener(Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;)V

    .line 387
    if-eqz p1, :cond_1

    .line 388
    const-string v5, "insert_after_media_item_id"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/videoeditor/VideoEditorActivity;->mInsertMediaItemAfterMediaItemId:Ljava/lang/String;

    .line 390
    const-string v5, "playing"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/videoeditor/VideoEditorActivity;->mRestartPreview:Z

    .line 391
    const-string v5, "capture_uri"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    iput-object v5, p0, Lcom/android/videoeditor/VideoEditorActivity;->mCaptureMediaUri:Landroid/net/Uri;

    .line 392
    const-string v5, "selected_pos_id"

    invoke-virtual {p1, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/videoeditor/VideoEditorActivity;->mMediaLayoutSelectedPos:I

    .line 399
    :goto_0
    invoke-virtual {p0}, Lcom/android/videoeditor/VideoEditorActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 400
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v5

    iput v5, p0, Lcom/android/videoeditor/VideoEditorActivity;->mActivityWidth:I

    .line 402
    iget-object v5, p0, Lcom/android/videoeditor/VideoEditorActivity;->mSurfaceView:Lcom/android/videoeditor/widgets/PreviewSurfaceView;

    new-instance v6, Landroid/view/GestureDetector;

    new-instance v7, Lcom/android/videoeditor/VideoEditorActivity$6;

    invoke-direct {v7, p0}, Lcom/android/videoeditor/VideoEditorActivity$6;-><init>(Lcom/android/videoeditor/VideoEditorActivity;)V

    invoke-direct {v6, p0, v7}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    invoke-virtual {v5, v6}, Lcom/android/videoeditor/widgets/PreviewSurfaceView;->setGestureListener(Landroid/view/GestureDetector;)V

    .line 427
    const v5, 0x7f080024

    invoke-virtual {p0, v5}, Lcom/android/videoeditor/VideoEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/widgets/ZoomControl;

    iput-object v5, p0, Lcom/android/videoeditor/VideoEditorActivity;->mZoomControl:Lcom/android/videoeditor/widgets/ZoomControl;

    .line 428
    iget-object v5, p0, Lcom/android/videoeditor/VideoEditorActivity;->mZoomControl:Lcom/android/videoeditor/widgets/ZoomControl;

    const/16 v6, 0x78

    invoke-virtual {v5, v6}, Lcom/android/videoeditor/widgets/ZoomControl;->setMax(I)V

    .line 429
    iget-object v5, p0, Lcom/android/videoeditor/VideoEditorActivity;->mZoomControl:Lcom/android/videoeditor/widgets/ZoomControl;

    new-instance v6, Lcom/android/videoeditor/VideoEditorActivity$7;

    invoke-direct {v6, p0}, Lcom/android/videoeditor/VideoEditorActivity$7;-><init>(Lcom/android/videoeditor/VideoEditorActivity;)V

    invoke-virtual {v5, v6}, Lcom/android/videoeditor/widgets/ZoomControl;->setOnZoomChangeListener(Lcom/android/videoeditor/widgets/ZoomControl$OnZoomChangeListener;)V

    .line 439
    const-string v5, "power"

    invoke-virtual {p0, v5}, Lcom/android/videoeditor/VideoEditorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 440
    .local v3, "pm":Landroid/os/PowerManager;
    const-string v5, "Video Editor Activity CPU Wake Lock"

    invoke-virtual {v3, v8, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/videoeditor/VideoEditorActivity;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 441
    return-void

    .line 394
    .end local v1    # "display":Landroid/view/Display;
    .end local v3    # "pm":Landroid/os/PowerManager;
    :cond_1
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/videoeditor/VideoEditorActivity;->mRestartPreview:Z

    .line 395
    iput v7, p0, Lcom/android/videoeditor/VideoEditorActivity;->mMediaLayoutSelectedPos:I

    goto :goto_0
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 19
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 670
    sparse-switch p1, :sswitch_data_0

    .line 881
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 672
    :sswitch_0
    new-instance v16, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 673
    .local v16, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f09000b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/videoeditor/VideoEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 674
    const-string v2, "aspect_ratios"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    .line 676
    .local v15, "aspectRatios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 677
    .local v17, "count":I
    move/from16 v0, v17

    new-array v14, v0, [Ljava/lang/CharSequence;

    .line 678
    .local v14, "aspectRatioStrings":[Ljava/lang/CharSequence;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    .line 679
    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 680
    .local v13, "aspectRatio":I
    packed-switch v13, :pswitch_data_0

    .line 678
    :goto_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 682
    :pswitch_0
    const v2, 0x7f090033

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/videoeditor/VideoEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v14, v18

    goto :goto_2

    .line 687
    :pswitch_1
    const v2, 0x7f090034

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/videoeditor/VideoEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v14, v18

    goto :goto_2

    .line 692
    :pswitch_2
    const v2, 0x7f090035

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/videoeditor/VideoEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v14, v18

    goto :goto_2

    .line 697
    :pswitch_3
    const v2, 0x7f090036

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/videoeditor/VideoEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v14, v18

    goto :goto_2

    .line 702
    :pswitch_4
    const v2, 0x7f090037

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/videoeditor/VideoEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v14, v18

    goto :goto_2

    .line 712
    .end local v13    # "aspectRatio":I
    :cond_0
    const-string v2, "current_aspect_ratio"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/android/videoeditor/VideoEditorActivity$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v15}, Lcom/android/videoeditor/VideoEditorActivity$8;-><init>(Lcom/android/videoeditor/VideoEditorActivity;Ljava/util/ArrayList;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 724
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 725
    new-instance v2, Lcom/android/videoeditor/VideoEditorActivity$9;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/videoeditor/VideoEditorActivity$9;-><init>(Lcom/android/videoeditor/VideoEditorActivity;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 731
    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_0

    .line 735
    .end local v14    # "aspectRatioStrings":[Ljava/lang/CharSequence;
    .end local v15    # "aspectRatios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v16    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v17    # "count":I
    .end local v18    # "i":I
    :sswitch_1
    const v2, 0x7f09000d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/videoeditor/VideoEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const v2, 0x7f090010

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/videoeditor/VideoEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v2, 0x7f09008a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/videoeditor/VideoEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/videoeditor/VideoEditorActivity$10;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/videoeditor/VideoEditorActivity$10;-><init>(Lcom/android/videoeditor/VideoEditorActivity;)V

    const v2, 0x7f09008b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/videoeditor/VideoEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/android/videoeditor/VideoEditorActivity$11;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/videoeditor/VideoEditorActivity$11;-><init>(Lcom/android/videoeditor/VideoEditorActivity;)V

    new-instance v10, Lcom/android/videoeditor/VideoEditorActivity$12;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/android/videoeditor/VideoEditorActivity$12;-><init>(Lcom/android/videoeditor/VideoEditorActivity;)V

    const/4 v11, 0x1

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v11}, Lcom/android/videoeditor/AlertDialogs;->createAlert(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Z)Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_0

    .line 763
    :sswitch_2
    const v2, 0x7f09000d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/videoeditor/VideoEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const v2, 0x7f09003a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/videoeditor/VideoEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v2, 0x7f09008a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/videoeditor/VideoEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/videoeditor/VideoEditorActivity$13;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v7, v0, v1}, Lcom/android/videoeditor/VideoEditorActivity$13;-><init>(Lcom/android/videoeditor/VideoEditorActivity;Landroid/os/Bundle;)V

    const v2, 0x7f09008b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/videoeditor/VideoEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/android/videoeditor/VideoEditorActivity$14;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/videoeditor/VideoEditorActivity$14;-><init>(Lcom/android/videoeditor/VideoEditorActivity;)V

    new-instance v10, Lcom/android/videoeditor/VideoEditorActivity$15;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/android/videoeditor/VideoEditorActivity$15;-><init>(Lcom/android/videoeditor/VideoEditorActivity;)V

    const/4 v11, 0x1

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v11}, Lcom/android/videoeditor/AlertDialogs;->createAlert(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Z)Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_0

    .line 789
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-nez v2, :cond_1

    .line 790
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 793
    :cond_1
    const v2, 0x7f09000c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/videoeditor/VideoEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/VideoEditorProject;->getName()Ljava/lang/String;

    move-result-object v4

    const v2, 0x104000a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/videoeditor/VideoEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/videoeditor/VideoEditorActivity$16;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/videoeditor/VideoEditorActivity$16;-><init>(Lcom/android/videoeditor/VideoEditorActivity;)V

    const/high16 v2, 0x1040000

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/videoeditor/VideoEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/videoeditor/VideoEditorActivity$17;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/videoeditor/VideoEditorActivity$17;-><init>(Lcom/android/videoeditor/VideoEditorActivity;)V

    new-instance v9, Lcom/android/videoeditor/VideoEditorActivity$18;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/videoeditor/VideoEditorActivity$18;-><init>(Lcom/android/videoeditor/VideoEditorActivity;)V

    const/4 v10, 0x0

    const/16 v11, 0x20

    const/4 v12, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v12}, Lcom/android/videoeditor/AlertDialogs;->createEditDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;IILjava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_0

    .line 826
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-nez v2, :cond_2

    .line 827
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 830
    :cond_2
    new-instance v2, Lcom/android/videoeditor/VideoEditorActivity$19;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/videoeditor/VideoEditorActivity$19;-><init>(Lcom/android/videoeditor/VideoEditorActivity;)V

    new-instance v3, Lcom/android/videoeditor/VideoEditorActivity$20;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/videoeditor/VideoEditorActivity$20;-><init>(Lcom/android/videoeditor/VideoEditorActivity;)V

    new-instance v4, Lcom/android/videoeditor/VideoEditorActivity$21;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/videoeditor/VideoEditorActivity$21;-><init>(Lcom/android/videoeditor/VideoEditorActivity;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v5}, Lcom/android/videoeditor/service/VideoEditorProject;->getAspectRatio()I

    move-result v5

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/videoeditor/ExportOptionsDialog;->create(Landroid/content/Context;Lcom/android/videoeditor/ExportOptionsDialog$ExportOptionsListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;I)Landroid/app/Dialog;

    move-result-object v2

    goto/16 :goto_0

    .line 857
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/videoeditor/VideoEditorActivity;->mMediaLayout:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v2

    goto/16 :goto_0

    .line 861
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/videoeditor/VideoEditorActivity;->mMediaLayout:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v2

    goto/16 :goto_0

    .line 865
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/videoeditor/VideoEditorActivity;->mMediaLayout:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v2

    goto/16 :goto_0

    .line 869
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/videoeditor/VideoEditorActivity;->mOverlayLayout:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v2

    goto/16 :goto_0

    .line 873
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/videoeditor/VideoEditorActivity;->mMediaLayout:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v2

    goto/16 :goto_0

    .line 877
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/videoeditor/VideoEditorActivity;->mAudioTrackLayout:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v2

    goto/16 :goto_0

    .line 670
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_3
        0x3 -> :sswitch_0
        0x4 -> :sswitch_4
        0xa -> :sswitch_5
        0xb -> :sswitch_7
        0xc -> :sswitch_6
        0xd -> :sswitch_8
        0xe -> :sswitch_9
        0xf -> :sswitch_a
        0x64 -> :sswitch_2
    .end sparse-switch

    .line 680
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/android/videoeditor/VideoEditorActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 498
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v1, 0x7f0b0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 499
    const/4 v1, 0x1

    return v1
.end method

.method protected onExportComplete()V
    .locals 1

    .prologue
    .line 1447
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mExportProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1448
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mExportProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1449
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mExportProgressDialog:Landroid/app/ProgressDialog;

    .line 1451
    :cond_0
    return-void
.end method

.method protected onExportProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mExportProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1441
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mExportProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 1443
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 537
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v10

    const v11, 0x7f080079

    if-ne v10, v11, :vs_not_layer

    invoke-static {p0}, Landroid/media/videoeditor/layertrack;->addFromMenu(Landroid/app/Activity;)V

    const/4 v10, 0x1

    return v10

    :vs_not_layer
    const v11, 0x7f08007a

    if-ne v10, v11, :vs_not_undo

    invoke-static {p0}, Landroid/media/videoeditor/layertrack;->undoFromMenu(Landroid/app/Activity;)V

    const/4 v10, 0x1

    return v10

    :vs_not_undo
    const v11, 0x7f08007b

    if-ne v10, v11, :vs_not_redo

    invoke-static {p0}, Landroid/media/videoeditor/layertrack;->redoFromMenu(Landroid/app/Activity;)V

    const/4 v10, 0x1

    return v10

    :vs_not_redo
    sparse-switch v10, :sswitch_data_0

    .line 655
    const/4 v10, 0x0

    :goto_0
    return v10

    .line 540
    :sswitch_0
    new-instance v6, Landroid/content/Intent;

    const-class v10, Lcom/android/videoeditor/ProjectsActivity;

    invoke-direct {v6, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 541
    .local v6, "intent":Landroid/content/Intent;
    const/high16 v10, 0x4000000

    invoke-virtual {v6, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 542
    invoke-virtual {p0, v6}, Lcom/android/videoeditor/VideoEditorActivity;->startActivity(Landroid/content/Intent;)V

    .line 543
    invoke-virtual {p0}, Lcom/android/videoeditor/VideoEditorActivity;->finish()V

    .line 544
    const/4 v10, 0x1

    goto :goto_0

    .line 548
    .end local v6    # "intent":Landroid/content/Intent;
    :sswitch_1
    iget-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v10}, Lcom/android/videoeditor/service/VideoEditorProject;->getLastMediaItemId()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mInsertMediaItemAfterMediaItemId:Ljava/lang/String;

    .line 551
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 552
    .local v8, "values":Landroid/content/ContentValues;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/android/videoeditor/VideoEditorActivity;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x2f

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0}, Lcom/android/videoeditor/VideoEditorActivity;->getVideoOutputMediaFileTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".mp4"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 553
    .local v9, "videoFilename":Ljava/lang/String;
    const-string v10, "_data"

    invoke-virtual {v8, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    invoke-virtual {p0}, Lcom/android/videoeditor/VideoEditorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v11, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    iput-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mCaptureMediaUri:Landroid/net/Uri;

    .line 556
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 557
    .restart local v6    # "intent":Landroid/content/Intent;
    const-string v10, "output"

    iget-object v11, p0, Lcom/android/videoeditor/VideoEditorActivity;->mCaptureMediaUri:Landroid/net/Uri;

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 558
    const/4 v10, 0x4

    invoke-virtual {p0, v6, v10}, Lcom/android/videoeditor/VideoEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 559
    const/4 v10, 0x1

    goto :goto_0

    .line 563
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v8    # "values":Landroid/content/ContentValues;
    .end local v9    # "videoFilename":Ljava/lang/String;
    :sswitch_2
    iget-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v10}, Lcom/android/videoeditor/service/VideoEditorProject;->getLastMediaItemId()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mInsertMediaItemAfterMediaItemId:Ljava/lang/String;

    .line 566
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 567
    .restart local v8    # "values":Landroid/content/ContentValues;
    invoke-virtual {p0}, Lcom/android/videoeditor/VideoEditorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v11, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    iput-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mCaptureMediaUri:Landroid/net/Uri;

    .line 569
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 570
    .restart local v6    # "intent":Landroid/content/Intent;
    const-string v10, "output"

    iget-object v11, p0, Lcom/android/videoeditor/VideoEditorActivity;->mCaptureMediaUri:Landroid/net/Uri;

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 571
    const/4 v10, 0x5

    invoke-virtual {p0, v6, v10}, Lcom/android/videoeditor/VideoEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 572
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 576
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v8    # "values":Landroid/content/ContentValues;
    :sswitch_3
    iget-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v10}, Lcom/android/videoeditor/service/VideoEditorProject;->getLastMediaItemId()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mInsertMediaItemAfterMediaItemId:Ljava/lang/String;

    .line 577
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.PICK"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 578
    .restart local v6    # "intent":Landroid/content/Intent;
    sget-object v10, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 579
    const/4 v10, 0x1

    invoke-virtual {p0, v6, v10}, Lcom/android/videoeditor/VideoEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 580
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 584
    .end local v6    # "intent":Landroid/content/Intent;
    :sswitch_4
    iget-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v10}, Lcom/android/videoeditor/service/VideoEditorProject;->getLastMediaItemId()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mInsertMediaItemAfterMediaItemId:Ljava/lang/String;

    .line 585
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.PICK"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 586
    .restart local v6    # "intent":Landroid/content/Intent;
    sget-object v10, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 587
    const/4 v10, 0x2

    invoke-virtual {p0, v6, v10}, Lcom/android/videoeditor/VideoEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 588
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 592
    .end local v6    # "intent":Landroid/content/Intent;
    :sswitch_5
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.PICK"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 593
    .restart local v6    # "intent":Landroid/content/Intent;
    sget-object v10, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 594
    const/4 v10, 0x3

    invoke-virtual {p0, v6, v10}, Lcom/android/videoeditor/VideoEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 595
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 599
    .end local v6    # "intent":Landroid/content/Intent;
    :sswitch_6
    iget-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v10}, Lcom/android/videoeditor/service/VideoEditorProject;->getUniqueAspectRatiosList()Ljava/util/ArrayList;

    move-result-object v1

    .line 600
    .local v1, "aspectRatiosList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 601
    .local v7, "size":I
    const/4 v10, 0x1

    if-le v7, v10, :cond_1

    .line 602
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 603
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v10, "aspect_ratios"

    invoke-virtual {v2, v10, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 606
    iget-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v10}, Lcom/android/videoeditor/service/VideoEditorProject;->getAspectRatio()I

    move-result v3

    .line 607
    .local v3, "currentAspectRatio":I
    const/4 v4, 0x0

    .line 608
    .local v4, "currentAspectRatioIndex":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v7, :cond_0

    .line 609
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 610
    .local v0, "aspectRatio":I
    if-ne v0, v3, :cond_2

    .line 611
    move v4, v5

    .line 615
    .end local v0    # "aspectRatio":I
    :cond_0
    const-string v10, "current_aspect_ratio"

    invoke-virtual {v2, v10, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 616
    const/4 v10, 0x3

    invoke-virtual {p0, v10, v2}, Lcom/android/videoeditor/VideoEditorActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 618
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "currentAspectRatio":I
    .end local v4    # "currentAspectRatioIndex":I
    .end local v5    # "i":I
    :cond_1
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 608
    .restart local v0    # "aspectRatio":I
    .restart local v2    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "currentAspectRatio":I
    .restart local v4    # "currentAspectRatioIndex":I
    .restart local v5    # "i":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 622
    .end local v0    # "aspectRatio":I
    .end local v1    # "aspectRatiosList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "currentAspectRatio":I
    .end local v4    # "currentAspectRatioIndex":I
    .end local v5    # "i":I
    .end local v7    # "size":I
    :sswitch_7
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/android/videoeditor/VideoEditorActivity;->showDialog(I)V

    .line 623
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 628
    :sswitch_8
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/videoeditor/VideoEditorActivity;->showDialog(I)V

    .line 629
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 634
    :sswitch_9
    const/4 v10, 0x4

    invoke-virtual {p0, v10}, Lcom/android/videoeditor/VideoEditorActivity;->showDialog(I)V

    .line 635
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 639
    :sswitch_a
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 640
    .restart local v6    # "intent":Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v10}, Lcom/android/videoeditor/service/VideoEditorProject;->getExportedMovieUri()Landroid/net/Uri;

    move-result-object v10

    const-string v11, "video/*"

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 641
    const-string v10, "android.intent.extra.finishOnCompletion"

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 642
    invoke-virtual {p0, v6}, Lcom/android/videoeditor/VideoEditorActivity;->startActivity(Landroid/content/Intent;)V

    .line 643
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 647
    .end local v6    # "intent":Landroid/content/Intent;
    :sswitch_b
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.SEND"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 648
    .restart local v6    # "intent":Landroid/content/Intent;
    const-string v10, "android.intent.extra.STREAM"

    iget-object v11, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v11}, Lcom/android/videoeditor/service/VideoEditorProject;->getExportedMovieUri()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 649
    const-string v10, "video/*"

    invoke-virtual {v6, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 650
    invoke-virtual {p0, v6}, Lcom/android/videoeditor/VideoEditorActivity;->startActivity(Landroid/content/Intent;)V

    .line 651
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 537
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f08003b -> :sswitch_1
        0x7f08003c -> :sswitch_2
        0x7f08003d -> :sswitch_3
        0x7f08003e -> :sswitch_4
        0x7f08003f -> :sswitch_5
        0x7f080040 -> :sswitch_6
        0x7f080041 -> :sswitch_7
        0x7f080042 -> :sswitch_9
        0x7f080043 -> :sswitch_8
        0x7f080044 -> :sswitch_a
        0x7f080045 -> :sswitch_b
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 445
    invoke-super {p0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->onPause()V

    .line 446
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mResumed:Z

    .line 450
    invoke-direct {p0}, Lcom/android/videoeditor/VideoEditorActivity;->stopPreviewThread()V

    .line 454
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mExportProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mExportProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 456
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mExportProgressDialog:Landroid/app/ProgressDialog;

    .line 458
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 504
    iget-object v5, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v5, :cond_2

    move v2, v3

    .line 505
    .local v2, "haveProject":Z
    :goto_0
    if-eqz v2, :cond_3

    iget-object v5, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v5}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItemCount()I

    move-result v5

    if-lez v5, :cond_3

    move v1, v3

    .line 506
    .local v1, "haveMediaItems":Z
    :goto_1
    const v5, 0x7f08003b

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 507
    const v5, 0x7f08003c

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 508
    const v5, 0x7f08003d

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 509
    const v5, 0x7f08003e

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 510
    const v5, 0x7f08003f

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    if-eqz v2, :cond_4

    iget-object v5, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v5}, Lcom/android/videoeditor/service/VideoEditorProject;->getAudioTracks()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_4

    if-eqz v1, :cond_4

    move v5, v3

    :goto_2
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 512
    const v5, 0x7f080040

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    if-eqz v2, :cond_5

    iget-object v5, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v5}, Lcom/android/videoeditor/service/VideoEditorProject;->hasMultipleAspectRatios()Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v3

    :goto_3
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 514
    const v5, 0x7f080041

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 517
    move v0, v2

    .line 518
    .local v0, "enableMenu":Z
    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    if-eqz v5, :cond_0

    .line 520
    iget-object v5, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v5}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$1100(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Z

    move-result v0

    .line 521
    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProjectPath:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 522
    iget-object v5, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProjectPath:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/videoeditor/service/ApiService;->isProjectBeingEdited(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    move v0, v3

    .line 526
    :cond_0
    :goto_4
    const v5, 0x7f080042

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    move v5, v3

    :goto_5
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 527
    const v5, 0x7f080043

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 528
    const v5, 0x7f080044

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    if-eqz v0, :cond_8

    iget-object v5, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v5}, Lcom/android/videoeditor/service/VideoEditorProject;->getExportedMovieUri()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_8

    move v5, v3

    :goto_6
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 530
    const v5, 0x7f080045

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-eqz v0, :cond_1

    iget-object v6, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v6}, Lcom/android/videoeditor/service/VideoEditorProject;->getExportedMovieUri()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_1

    move v4, v3

    :cond_1
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 532
    return v3

    .end local v0    # "enableMenu":Z
    .end local v1    # "haveMediaItems":Z
    .end local v2    # "haveProject":Z
    :cond_2
    move v2, v4

    .line 504
    goto/16 :goto_0

    .restart local v2    # "haveProject":Z
    :cond_3
    move v1, v4

    .line 505
    goto/16 :goto_1

    .restart local v1    # "haveMediaItems":Z
    :cond_4
    move v5, v4

    .line 510
    goto/16 :goto_2

    :cond_5
    move v5, v4

    .line 512
    goto :goto_3

    .restart local v0    # "enableMenu":Z
    :cond_6
    move v0, v4

    .line 522
    goto :goto_4

    :cond_7
    move v5, v4

    .line 526
    goto :goto_5

    :cond_8
    move v5, v4

    .line 528
    goto :goto_6
.end method

.method protected onProjectEditStateChange(Z)V
    .locals 4
    .param p1, "projectEdited"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onProjectEditStateChange: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity;->logd(Ljava/lang/String;)V

    .line 1457
    iget-object v3, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewPlayButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    const/16 v0, 0x64

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setAlpha(I)V

    .line 1458
    iget-object v3, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewPlayButton:Landroid/widget/ImageButton;

    if-nez p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1459
    iget-object v3, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewRewindButton:Landroid/widget/ImageButton;

    if-nez p1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1460
    iget-object v3, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewNextButton:Landroid/widget/ImageButton;

    if-nez p1, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1461
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewPrevButton:Landroid/widget/ImageButton;

    if-nez p1, :cond_4

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1463
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mMediaLayout:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->invalidateActionBar()V

    .line 1464
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mOverlayLayout:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->invalidateCAB()V

    .line 1465
    invoke-virtual {p0}, Lcom/android/videoeditor/VideoEditorActivity;->invalidateOptionsMenu()V

    .line 1466
    return-void

    .line 1457
    :cond_0
    const/16 v0, 0xff

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1458
    goto :goto_1

    :cond_2
    move v0, v2

    .line 1459
    goto :goto_2

    :cond_3
    move v0, v2

    .line 1460
    goto :goto_3

    :cond_4
    move v1, v2

    .line 1461
    goto :goto_4
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 462
    invoke-super {p0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->onResume()V

    .line 463
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mResumed:Z

    .line 465
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mMediaLayout:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->onResume()V

    .line 467
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAudioTrackLayout:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->onResume()V

    .line 470
    :cond_0
    invoke-direct {p0}, Lcom/android/videoeditor/VideoEditorActivity;->createPreviewThreadIfNeeded()V

    .line 471
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 487
    invoke-super {p0, p1}, Lcom/android/videoeditor/VideoEditorBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 489
    const-string v0, "insert_after_media_item_id"

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mInsertMediaItemAfterMediaItemId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    const-string v1, "playing"

    invoke-direct {p0}, Lcom/android/videoeditor/VideoEditorActivity;->isPreviewPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mRestartPreview:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 491
    const-string v0, "capture_uri"

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mCaptureMediaUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 492
    const-string v0, "selected_pos_id"

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mMediaLayout:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getSelectedViewPos()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 493
    return-void

    .line 490
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setAspectRatio(I)V
    .locals 3
    .param p1, "aspectRatio"    # I

    .prologue
    .line 1384
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mSurfaceView:Lcom/android/videoeditor/widgets/PreviewSurfaceView;

    invoke-virtual {v1}, Lcom/android/videoeditor/widgets/PreviewSurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1387
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    packed-switch p1, :pswitch_data_0

    .line 1418
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAspectRatio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/videoeditor/VideoEditorActivity;->logd(Ljava/lang/String;)V

    .line 1419
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mSurfaceView:Lcom/android/videoeditor/widgets/PreviewSurfaceView;

    invoke-virtual {v1, v0}, Lcom/android/videoeditor/widgets/PreviewSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1420
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity;->mOverlayView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1421
    return-void

    .line 1389
    :pswitch_0
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    mul-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0

    .line 1394
    :pswitch_1
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0

    .line 1399
    :pswitch_2
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0

    .line 1404
    :pswitch_3
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    mul-int/lit8 v1, v1, 0xb

    div-int/lit8 v1, v1, 0x9

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0

    .line 1409
    :pswitch_4
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    mul-int/lit8 v1, v1, 0x10

    div-int/lit8 v1, v1, 0x9

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0

    .line 1387
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected showPreviewFrame()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1252
    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    if-nez v2, :cond_0

    .line 1263
    :goto_0
    return v0

    .line 1257
    :cond_0
    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v2}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$1300(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPendingExportFilename:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 1259
    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    iget-object v3, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/VideoEditorProject;->getPlayheadPos()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v6}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItemCount()I

    move-result v6

    if-nez v6, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->previewFrame(Lcom/android/videoeditor/service/VideoEditorProject;JZ)V

    :cond_2
    move v0, v1

    .line 1263
    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 1198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity;->logd(Ljava/lang/String;)V

    .line 1200
    iput p3, p0, Lcom/android/videoeditor/VideoEditorActivity;->mSurfaceWidth:I

    .line 1201
    iput p4, p0, Lcom/android/videoeditor/VideoEditorActivity;->mSurfaceHeight:I

    .line 1203
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    if-eqz v0, :cond_0

    .line 1204
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mPreviewThread:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v0, p3, p4}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$1000(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;II)V

    .line 1206
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 1189
    const-string v0, "surfaceCreated"

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity;->logd(Ljava/lang/String;)V

    .line 1191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mHaveSurface:Z

    .line 1192
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mSurfaceWidth:I

    .line 1193
    invoke-direct {p0}, Lcom/android/videoeditor/VideoEditorActivity;->createPreviewThreadIfNeeded()V

    .line 1194
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 1210
    const-string v0, "surfaceDestroyed"

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity;->logd(Ljava/lang/String;)V

    .line 1211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/videoeditor/VideoEditorActivity;->mHaveSurface:Z

    .line 1212
    invoke-direct {p0}, Lcom/android/videoeditor/VideoEditorActivity;->stopPreviewThread()V

    .line 1213
    return-void
.end method

.method protected updateTimelineDuration()V
    .locals 9

    .prologue
    .line 1268
    iget-object v7, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-nez v7, :cond_0

    .line 1293
    :goto_0
    return-void

    .line 1272
    :cond_0
    iget-object v7, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-static {p0, v7}, Landroid/media/videoeditor/titleinfo;->apply(Landroid/app/Activity;Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v7}, Lcom/android/videoeditor/service/VideoEditorProject;->computeDuration()J

    move-result-wide v2

    .line 1275
    .local v2, "durationMs":J
    iget v7, p0, Lcom/android/videoeditor/VideoEditorActivity;->mActivityWidth:I

    invoke-direct {p0, v2, v3}, Lcom/android/videoeditor/VideoEditorActivity;->timeToDimension(J)I

    move-result v8

    add-int v6, v7, v8

    .line 1276
    .local v6, "zoomWidth":I
    iget-object v7, p0, Lcom/android/videoeditor/VideoEditorActivity;->mTimelineLayout:Lcom/android/videoeditor/widgets/TimelineRelativeLayout;

    invoke-virtual {v7}, Lcom/android/videoeditor/widgets/TimelineRelativeLayout;->getChildCount()I

    move-result v1

    .line 1277
    .local v1, "childrenCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_1

    .line 1278
    iget-object v7, p0, Lcom/android/videoeditor/VideoEditorActivity;->mTimelineLayout:Lcom/android/videoeditor/widgets/TimelineRelativeLayout;

    invoke-virtual {v7, v4}, Lcom/android/videoeditor/widgets/TimelineRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1279
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 1280
    .local v5, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1281
    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1277
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1284
    .end local v0    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget-object v7, p0, Lcom/android/videoeditor/VideoEditorActivity;->mTimelineLayout:Lcom/android/videoeditor/widgets/TimelineRelativeLayout;

    iget-object v8, p0, Lcom/android/videoeditor/VideoEditorActivity;->mLayoutCallback:Lcom/android/videoeditor/widgets/TimelineRelativeLayout$LayoutCallback;

    invoke-virtual {v7, v8}, Lcom/android/videoeditor/widgets/TimelineRelativeLayout;->requestLayout(Lcom/android/videoeditor/widgets/TimelineRelativeLayout$LayoutCallback;)V

    .line 1288
    iget-object v7, p0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v7}, Lcom/android/videoeditor/service/VideoEditorProject;->getPlayheadPos()J

    move-result-wide v7

    cmp-long v7, v7, v2

    if-lez v7, :cond_2

    .line 1289
    invoke-virtual {p0, v2, v3}, Lcom/android/videoeditor/VideoEditorActivity;->movePlayhead(J)V

    .line 1292
    :cond_2
    iget-object v7, p0, Lcom/android/videoeditor/VideoEditorActivity;->mAudioTrackLayout:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    invoke-virtual {v7}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->updateTimelineDuration()V

    goto :goto_0
.end method
