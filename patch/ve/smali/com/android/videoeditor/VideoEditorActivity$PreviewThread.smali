.class Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;
.super Ljava/lang/Thread;
.source "VideoEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/videoeditor/VideoEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewThread"
.end annotation


# instance fields
.field private final OVERLAY_DATA_COUNT:I

.field private final PREVIEW_STATE_STARTED:I

.field private final PREVIEW_STATE_STARTING:I

.field private final PREVIEW_STATE_STOPPED:I

.field private final PREVIEW_STATE_STOPPING:I

.field private final mMainHandler:Landroid/os/Handler;

.field private mOverlayBitmap:Landroid/graphics/Bitmap;

.field private final mOverlayDataQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/media/videoeditor/VideoEditor$OverlayData;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviewState:I

.field private final mProcessQueueRunnable:Ljava/lang/Runnable;

.field private final mQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mThreadHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/videoeditor/VideoEditorActivity;


# direct methods
.method public constructor <init>(Lcom/android/videoeditor/VideoEditorActivity;Landroid/view/SurfaceHolder;)V
    .locals 5
    .param p2, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x0

    .line 1709
    iput-object p1, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1678
    iput v3, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->PREVIEW_STATE_STOPPED:I

    .line 1679
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->PREVIEW_STATE_STARTING:I

    .line 1680
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->PREVIEW_STATE_STARTED:I

    .line 1681
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->PREVIEW_STATE_STOPPING:I

    .line 1683
    iput v4, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->OVERLAY_DATA_COUNT:I

    .line 1693
    new-instance v1, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$1;

    invoke-direct {v1, p0}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$1;-><init>(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)V

    iput-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mProcessQueueRunnable:Ljava/lang/Runnable;

    .line 1710
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mMainHandler:Landroid/os/Handler;

    .line 1711
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mQueue:Ljava/util/Queue;

    .line 1712
    iput-object p2, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1713
    iput v3, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mPreviewState:I

    .line 1715
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mOverlayDataQueue:Ljava/util/Queue;

    .line 1716
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 1717
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mOverlayDataQueue:Ljava/util/Queue;

    new-instance v2, Landroid/media/videoeditor/VideoEditor$OverlayData;

    invoke-direct {v2}, Landroid/media/videoeditor/VideoEditor$OverlayData;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1716
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1720
    :cond_0
    invoke-virtual {p0}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->start()V

    .line 1721
    return-void
.end method

.method static synthetic access$1000(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 1676
    invoke-direct {p0, p1, p2}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->onSurfaceChanged(II)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    .prologue
    .line 1676
    invoke-direct {p0}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->isStopped()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    .prologue
    .line 1676
    invoke-direct {p0}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->isPlaying()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    .prologue
    .line 1676
    invoke-direct {p0}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->stopPreviewPlayback()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;Lcom/android/videoeditor/service/VideoEditorProject;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;
    .param p1, "x1"    # Lcom/android/videoeditor/service/VideoEditorProject;
    .param p2, "x2"    # J

    .prologue
    .line 1676
    invoke-direct {p0, p1, p2, p3}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->startPreviewPlayback(Lcom/android/videoeditor/service/VideoEditorProject;J)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    .prologue
    .line 1676
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Landroid/view/SurfaceHolder;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    .prologue
    .line 1676
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    .prologue
    .line 1676
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mOverlayBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    .prologue
    .line 1676
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    .prologue
    .line 1676
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mOverlayDataQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    .prologue
    .line 1676
    iget v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mPreviewState:I

    return v0
.end method

.method static synthetic access$2502(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;
    .param p1, "x1"    # I

    .prologue
    .line 1676
    iput p1, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mPreviewState:I

    return p1
.end method

.method static synthetic access$2600(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;
    .param p1, "x1"    # Z

    .prologue
    .line 1676
    invoke-direct {p0, p1}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->previewStopped(Z)V

    return-void
.end method

.method private isPlaying()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2102
    iget v1, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mPreviewState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mPreviewState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isStopped()Z
    .locals 1

    .prologue
    .line 2110
    iget v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mPreviewState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSurfaceChanged(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 2040
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mOverlayBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 2041
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 2056
    :goto_0
    return-void

    .line 2046
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity;->access$2200(Lcom/android/videoeditor/VideoEditorActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2047
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2048
    iput-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 2052
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Overlay size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity;->access$1900(Ljava/lang/String;)V

    .line 2054
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 2055
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity;->access$2200(Lcom/android/videoeditor/VideoEditorActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private previewStarted(Lcom/android/videoeditor/service/VideoEditorProject;)V
    .locals 3
    .param p1, "project"    # Lcom/android/videoeditor/service/VideoEditorProject;

    .prologue
    const/4 v2, 0x1

    .line 1965
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity;->access$2700(Lcom/android/videoeditor/VideoEditorActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1967
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity;->access$100(Lcom/android/videoeditor/VideoEditorActivity;)Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->enableUserScrolling(Z)V

    .line 1968
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity;->access$600(Lcom/android/videoeditor/VideoEditorActivity;)Lcom/android/videoeditor/widgets/MediaLinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->setPlaybackInProgress(Z)V

    .line 1969
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity;->access$2800(Lcom/android/videoeditor/VideoEditorActivity;)Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->setPlaybackInProgress(Z)V

    .line 1970
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity;->access$2900(Lcom/android/videoeditor/VideoEditorActivity;)Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->setPlaybackInProgress(Z)V

    .line 1972
    iput v2, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mPreviewState:I

    .line 1975
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1977
    return-void
.end method

.method private previewStopped(Z)V
    .locals 5
    .param p1, "error"    # Z

    .prologue
    const/4 v4, 0x0

    .line 2064
    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iget-object v2, v2, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-nez v2, :cond_0

    .line 2065
    const-string v2, "VideoEditorActivity"

    const-string v3, "previewStopped: project was deleted."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    :goto_0
    return-void

    .line 2069
    :cond_0
    iget v2, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mPreviewState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 2070
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "previewStopped in state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mPreviewState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2074
    :cond_1
    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-static {v2}, Lcom/android/videoeditor/VideoEditorActivity;->access$2700(Lcom/android/videoeditor/VideoEditorActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    const v3, 0x7f02000e

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2076
    if-nez p1, :cond_2

    .line 2078
    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iget-object v2, v2, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/VideoEditorProject;->stopPreview()J

    move-result-wide v0

    .line 2079
    .local v0, "stopTimeMs":J
    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-virtual {v2, v0, v1}, Lcom/android/videoeditor/VideoEditorActivity;->movePlayhead(J)V

    .line 2080
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PREVIEW_STATE_STOPPED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/videoeditor/VideoEditorActivity;->access$1900(Ljava/lang/String;)V

    .line 2085
    .end local v0    # "stopTimeMs":J
    :goto_1
    iput v4, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mPreviewState:I

    .line 2088
    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-static {v2}, Lcom/android/videoeditor/VideoEditorActivity;->access$100(Lcom/android/videoeditor/VideoEditorActivity;)Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->enableUserScrolling(Z)V

    .line 2089
    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-static {v2}, Lcom/android/videoeditor/VideoEditorActivity;->access$600(Lcom/android/videoeditor/VideoEditorActivity;)Lcom/android/videoeditor/widgets/MediaLinearLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->setPlaybackInProgress(Z)V

    .line 2090
    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-static {v2}, Lcom/android/videoeditor/VideoEditorActivity;->access$2900(Lcom/android/videoeditor/VideoEditorActivity;)Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->setPlaybackInProgress(Z)V

    .line 2091
    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-static {v2}, Lcom/android/videoeditor/VideoEditorActivity;->access$2800(Lcom/android/videoeditor/VideoEditorActivity;)Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->setPlaybackInProgress(Z)V

    .line 2094
    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-virtual {v2}, Lcom/android/videoeditor/VideoEditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    goto/16 :goto_0

    .line 2082
    :cond_2
    const-string v2, "PREVIEW_STATE_STOPPED due to error"

    invoke-static {v2}, Lcom/android/videoeditor/VideoEditorActivity;->access$1900(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private startPreviewPlayback(Lcom/android/videoeditor/service/VideoEditorProject;J)V
    .locals 2
    .param p1, "project"    # Lcom/android/videoeditor/service/VideoEditorProject;
    .param p2, "fromMs"    # J

    .prologue
    .line 1856
    iget v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mPreviewState:I

    if-eqz v0, :cond_1

    .line 1857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Preview did not start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mPreviewState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity;->access$1900(Ljava/lang/String;)V

    .line 1955
    :cond_0
    :goto_0
    return-void

    .line 1861
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->previewStarted(Lcom/android/videoeditor/service/VideoEditorProject;)V

    .line 1862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start preview at: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity;->access$1900(Ljava/lang/String;)V

    .line 1865
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 1866
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mQueue:Ljava/util/Queue;

    new-instance v1, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;-><init>(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;Lcom/android/videoeditor/service/VideoEditorProject;J)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1952
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1953
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mProcessQueueRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private stopPreviewPlayback()V
    .locals 4

    .prologue
    .line 1983
    iget v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mPreviewState:I

    packed-switch v0, :pswitch_data_0

    .line 2027
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopPreviewPlayback state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mPreviewState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1985
    :pswitch_0
    const-string v0, "stopPreviewPlayback: State was PREVIEW_STATE_STOPPED"

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity;->access$1900(Ljava/lang/String;)V

    .line 2031
    :goto_0
    return-void

    .line 1990
    :pswitch_1
    const-string v0, "stopPreviewPlayback: State was PREVIEW_STATE_STOPPING"

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity;->access$1900(Ljava/lang/String;)V

    goto :goto_0

    .line 1995
    :pswitch_2
    const-string v0, "stopPreviewPlayback: State was PREVIEW_STATE_STARTING now PREVIEW_STATE_STOPPING"

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity;->access$1900(Ljava/lang/String;)V

    .line 1997
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mPreviewState:I

    .line 2000
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$5;

    invoke-direct {v1, p0}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$5;-><init>(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2019
    :pswitch_3
    const-string v0, "stopPreviewPlayback: State was PREVIEW_STATE_STARTED"

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity;->access$1900(Ljava/lang/String;)V

    .line 2022
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->previewStopped(Z)V

    goto :goto_0

    .line 1983
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public previewFrame(Lcom/android/videoeditor/service/VideoEditorProject;JZ)V
    .locals 7
    .param p1, "project"    # Lcom/android/videoeditor/service/VideoEditorProject;
    .param p2, "timeMs"    # J
    .param p4, "clear"    # Z

    .prologue
    .line 1732
    iget v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mPreviewState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mPreviewState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1733
    :cond_0
    invoke-direct {p0}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->stopPreviewPlayback()V

    .line 1736
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Preview frame at: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity;->access$1900(Ljava/lang/String;)V

    .line 1739
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 1741
    iget-object v6, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mQueue:Ljava/util/Queue;

    new-instance v0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;

    move-object v1, p0

    move v2, p4

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;-><init>(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;ZLcom/android/videoeditor/service/VideoEditorProject;J)V

    invoke-interface {v6, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1806
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 1807
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mProcessQueueRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1809
    :cond_2
    return-void
.end method

.method public quit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2131
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mOverlayBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 2132
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity;->access$2200(Lcom/android/videoeditor/VideoEditorActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2133
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2134
    iput-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 2137
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 2138
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 2141
    :try_start_0
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2146
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 2147
    return-void

    .line 2142
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public renderMediaItemFrame(Lcom/android/videoeditor/service/MovieMediaItem;J)V
    .locals 3
    .param p1, "mediaItem"    # Lcom/android/videoeditor/service/MovieMediaItem;
    .param p2, "timeMs"    # J

    .prologue
    const/4 v2, 0x2

    .line 1818
    iget v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mPreviewState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mPreviewState:I

    if-ne v0, v2, :cond_1

    .line 1819
    :cond_0
    invoke-direct {p0}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->stopPreviewPlayback()V

    .line 1822
    :cond_1
    const-string v0, "VideoEditorActivity"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1823
    const-string v0, "VideoEditorActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Render media item frame at: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    :cond_2
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 1829
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mQueue:Ljava/util/Queue;

    new-instance v1, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$3;-><init>(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;Lcom/android/videoeditor/service/MovieMediaItem;J)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1844
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 1845
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mProcessQueueRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1847
    :cond_3
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 2115
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->setPriority(I)V

    .line 2116
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2117
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mThreadHandler:Landroid/os/Handler;

    .line 2120
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->mProcessQueueRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2123
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 2124
    return-void
.end method
