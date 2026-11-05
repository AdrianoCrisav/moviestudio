.class public Lcom/android/videoeditor/widgets/MediaItemView;
.super Landroid/view/View;
.source "MediaItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/videoeditor/widgets/MediaItemView$1;,
        Lcom/android/videoeditor/widgets/MediaItemView$MediaItemShadowBuilder;,
        Lcom/android/videoeditor/widgets/MediaItemView$MyScrollViewListener;,
        Lcom/android/videoeditor/widgets/MediaItemView$MyGestureListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaItemView"

.field private static sAddTransitionDrawable:Landroid/graphics/drawable/Drawable;

.field private static sEmptyFrameDrawable:Landroid/graphics/drawable/Drawable;

.field private static sGenerationCounter:I

.field private static sThumbnailCache:Lcom/android/videoeditor/widgets/ThumbnailCache;


# instance fields
.field private mBeginTimeMs:J

.field private mEndTimeMs:J

.field private mGeneratingEffectProgress:I

.field private final mGeneratingEffectProgressDestRect:Landroid/graphics/Rect;

.field private mGeneration:I

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

.field private mIsPlaying:Z

.field private mIsScrolling:Z

.field private mLeftState:[I

.field private mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

.field private mNumberOfThumbnails:I

.field private mPending:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mProjectPath:Ljava/lang/String;

.field private mRightState:[I

.field private mScreenWidth:I

.field private final mScrollListener:Lcom/android/videoeditor/widgets/ScrollViewListener;

.field private mScrollView:Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

.field private mScrollX:I

.field private mThumbnailHeight:I

.field private mThumbnailWidth:I

.field private mTimeline:Lcom/android/videoeditor/widgets/MediaLinearLayout;

.field private mWantThumbnails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/videoeditor/widgets/MediaItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/videoeditor/widgets/MediaItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v6, 0x0

    .line 108
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 111
    sget-object v4, Lcom/android/videoeditor/widgets/MediaItemView;->sAddTransitionDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sput-object v4, Lcom/android/videoeditor/widgets/MediaItemView;->sAddTransitionDrawable:Landroid/graphics/drawable/Drawable;

    .line 114
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020050

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sput-object v4, Lcom/android/videoeditor/widgets/MediaItemView;->sEmptyFrameDrawable:Landroid/graphics/drawable/Drawable;

    .line 118
    new-instance v4, Lcom/android/videoeditor/widgets/ThumbnailCache;

    const/high16 v5, 0x300000

    invoke-direct {v4, v5}, Lcom/android/videoeditor/widgets/ThumbnailCache;-><init>(I)V

    sput-object v4, Lcom/android/videoeditor/widgets/MediaItemView;->sThumbnailCache:Lcom/android/videoeditor/widgets/ThumbnailCache;

    .line 122
    :cond_0
    const-string v4, "window"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 124
    .local v0, "display":Landroid/view/Display;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 125
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 126
    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mScreenWidth:I

    .line 129
    new-instance v4, Landroid/view/GestureDetector;

    new-instance v5, Lcom/android/videoeditor/widgets/MediaItemView$MyGestureListener;

    invoke-direct {v5, p0, v6}, Lcom/android/videoeditor/widgets/MediaItemView$MyGestureListener;-><init>(Lcom/android/videoeditor/widgets/MediaItemView;Lcom/android/videoeditor/widgets/MediaItemView$1;)V

    invoke-direct {v4, p1, v5}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v4, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 130
    new-instance v4, Lcom/android/videoeditor/widgets/MediaItemView$MyScrollViewListener;

    invoke-direct {v4, p0, v6}, Lcom/android/videoeditor/widgets/MediaItemView$MyScrollViewListener;-><init>(Lcom/android/videoeditor/widgets/MediaItemView;Lcom/android/videoeditor/widgets/MediaItemView$1;)V

    iput-object v4, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mScrollListener:Lcom/android/videoeditor/widgets/ScrollViewListener;

    .line 133
    invoke-static {p1}, Lcom/android/videoeditor/widgets/ProgressBar;->getProgressBar(Landroid/content/Context;)Lcom/android/videoeditor/widgets/ProgressBar;

    move-result-object v3

    .line 134
    .local v3, "progressBar":Lcom/android/videoeditor/widgets/ProgressBar;
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v1, v4

    .line 137
    .local v1, "layoutHeight":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {v3}, Lcom/android/videoeditor/widgets/ProgressBar;->getHeight()I

    move-result v6

    sub-int v6, v1, v6

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingBottom()I

    move-result v8

    sub-int v8, v1, v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mGeneratingEffectProgressDestRect:Landroid/graphics/Rect;

    .line 142
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mGeneratingEffectProgress:I

    .line 145
    sget-object v4, Landroid/view/View;->EMPTY_STATE_SET:[I

    iput-object v4, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mLeftState:[I

    .line 146
    sget-object v4, Landroid/view/View;->EMPTY_STATE_SET:[I

    iput-object v4, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mRightState:[I

    .line 149
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mWantThumbnails:Ljava/util/ArrayList;

    .line 152
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mPending:Ljava/util/HashSet;

    .line 155
    sget v4, Lcom/android/videoeditor/widgets/MediaItemView;->sGenerationCounter:I

    add-int/lit8 v5, v4, 0x1

    sput v5, Lcom/android/videoeditor/widgets/MediaItemView;->sGenerationCounter:I

    iput v4, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mGeneration:I

    .line 156
    return-void
.end method

.method static synthetic access$1000(Lcom/android/videoeditor/widgets/MediaItemView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/MediaItemView;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getOneThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/videoeditor/widgets/MediaItemView;)Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/MediaItemView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mGestureListener:Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/videoeditor/widgets/MediaItemView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/MediaItemView;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->hasSpaceForAddTransitionIcons()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/videoeditor/widgets/MediaItemView;)Lcom/android/videoeditor/service/MovieMediaItem;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/MediaItemView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    return-object v0
.end method

.method static synthetic access$500()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/android/videoeditor/widgets/MediaItemView;->sAddTransitionDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/videoeditor/widgets/MediaItemView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/MediaItemView;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mIsScrolling:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/videoeditor/widgets/MediaItemView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/MediaItemView;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mScrollX:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/videoeditor/widgets/MediaItemView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/MediaItemView;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getShadowWidth()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/videoeditor/widgets/MediaItemView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/MediaItemView;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getShadowHeight()I

    move-result v0

    return v0
.end method

.method private static clamp(III)I
    .locals 1
    .param p0, "v"    # I
    .param p1, "low"    # I
    .param p2, "high"    # I

    .prologue
    .line 537
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private drawAddTransitionIcons(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 499
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->hasSpaceForAddTransitionIcons()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v0

    if-nez v0, :cond_0

    .line 501
    sget-object v0, Lcom/android/videoeditor/widgets/MediaItemView;->sAddTransitionDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mLeftState:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 502
    sget-object v0, Lcom/android/videoeditor/widgets/MediaItemView;->sAddTransitionDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingTop()I

    move-result v2

    sget-object v3, Lcom/android/videoeditor/widgets/MediaItemView;->sAddTransitionDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingTop()I

    move-result v4

    sget-object v5, Lcom/android/videoeditor/widgets/MediaItemView;->sAddTransitionDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 505
    sget-object v0, Lcom/android/videoeditor/widgets/MediaItemView;->sAddTransitionDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v0

    if-nez v0, :cond_1

    .line 509
    sget-object v0, Lcom/android/videoeditor/widgets/MediaItemView;->sAddTransitionDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mRightState:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 510
    sget-object v0, Lcom/android/videoeditor/widgets/MediaItemView;->sAddTransitionDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    sget-object v2, Lcom/android/videoeditor/widgets/MediaItemView;->sAddTransitionDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingTop()I

    move-result v4

    sget-object v5, Lcom/android/videoeditor/widgets/MediaItemView;->sAddTransitionDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 515
    sget-object v0, Lcom/android/videoeditor/widgets/MediaItemView;->sAddTransitionDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 518
    :cond_1
    return-void
.end method

.method private drawThumbnails(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v12, 0x0

    .line 445
    iget-object v10, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mWantThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 448
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getLeft()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingLeft()I

    move-result v11

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mScrollX:I

    sub-int v4, v10, v11

    .line 450
    .local v4, "left":I
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getRight()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mScrollX:I

    sub-int v5, v10, v11

    .line 452
    .local v5, "right":I
    iget v10, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mScreenWidth:I

    if-ge v4, v10, :cond_0

    if-lez v5, :cond_0

    if-lt v4, v5, :cond_1

    .line 491
    :cond_0
    return-void

    .line 457
    :cond_1
    rsub-int/lit8 v10, v4, 0x0

    iget v11, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mThumbnailWidth:I

    div-int v7, v10, v11

    .line 458
    .local v7, "startIdx":I
    iget v10, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mScreenWidth:I

    add-int/lit8 v10, v10, -0x1

    sub-int/2addr v10, v4

    iget v11, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mThumbnailWidth:I

    div-int v1, v10, v11

    .line 460
    .local v1, "endIdx":I
    iget v10, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mNumberOfThumbnails:I

    add-int/lit8 v10, v10, -0x1

    invoke-static {v7, v12, v10}, Lcom/android/videoeditor/widgets/MediaItemView;->clamp(III)I

    move-result v7

    .line 461
    iget v10, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mNumberOfThumbnails:I

    add-int/lit8 v10, v10, -0x1

    invoke-static {v1, v12, v10}, Lcom/android/videoeditor/widgets/MediaItemView;->clamp(III)I

    move-result v1

    .line 464
    new-instance v3, Lcom/android/videoeditor/widgets/ThumbnailKey;

    invoke-direct {v3}, Lcom/android/videoeditor/widgets/ThumbnailKey;-><init>()V

    .line 465
    .local v3, "key":Lcom/android/videoeditor/widgets/ThumbnailKey;
    iget-object v10, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v10}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/android/videoeditor/widgets/ThumbnailKey;->mediaItemId:Ljava/lang/String;

    .line 466
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingLeft()I

    move-result v10

    iget v11, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mThumbnailWidth:I

    mul-int/2addr v11, v7

    add-int v8, v10, v11

    .line 467
    .local v8, "x":I
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingTop()I

    move-result v9

    .line 470
    .local v9, "y":I
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getHeight()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingTop()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingBottom()I

    move-result v11

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mThumbnailHeight:I

    sub-int/2addr v10, v11

    div-int/lit8 v6, v10, 0x2

    .line 472
    .local v6, "spacing":I
    add-int/2addr v9, v6

    .line 475
    move v2, v7

    .local v2, "i":I
    :goto_0
    if-gt v2, v1, :cond_0

    .line 476
    iput v2, v3, Lcom/android/videoeditor/widgets/ThumbnailKey;->index:I

    .line 477
    sget-object v10, Lcom/android/videoeditor/widgets/MediaItemView;->sThumbnailCache:Lcom/android/videoeditor/widgets/ThumbnailCache;

    invoke-virtual {v10, v3}, Lcom/android/videoeditor/widgets/ThumbnailCache;->get(Lcom/android/videoeditor/widgets/ThumbnailKey;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 478
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_3

    .line 480
    sget-object v10, Lcom/android/videoeditor/widgets/MediaItemView;->sEmptyFrameDrawable:Landroid/graphics/drawable/Drawable;

    iget v11, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mThumbnailWidth:I

    add-int/2addr v11, v8

    iget v12, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mThumbnailHeight:I

    add-int/2addr v12, v9

    invoke-virtual {v10, v8, v9, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 482
    sget-object v10, Lcom/android/videoeditor/widgets/MediaItemView;->sEmptyFrameDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 483
    iget-object v10, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mPending:Ljava/util/HashSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 484
    iget-object v10, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mWantThumbnails:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    :cond_2
    :goto_1
    iget v10, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mThumbnailWidth:I

    add-int/2addr v8, v10

    .line 475
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 487
    :cond_3
    int-to-float v10, v8

    int-to-float v11, v9

    const/4 v12, 0x0

    invoke-virtual {p1, v0, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method private getOneThumbnail()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 287
    new-instance v2, Lcom/android/videoeditor/widgets/ThumbnailKey;

    invoke-direct {v2}, Lcom/android/videoeditor/widgets/ThumbnailKey;-><init>()V

    .line 288
    .local v2, "key":Lcom/android/videoeditor/widgets/ThumbnailKey;
    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/videoeditor/widgets/ThumbnailKey;->mediaItemId:Ljava/lang/String;

    .line 291
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mNumberOfThumbnails:I

    if-ge v1, v3, :cond_1

    .line 292
    iput v1, v2, Lcom/android/videoeditor/widgets/ThumbnailKey;->index:I

    .line 293
    sget-object v3, Lcom/android/videoeditor/widgets/MediaItemView;->sThumbnailCache:Lcom/android/videoeditor/widgets/ThumbnailCache;

    invoke-virtual {v3, v2}, Lcom/android/videoeditor/widgets/ThumbnailCache;->get(Lcom/android/videoeditor/widgets/ThumbnailKey;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 294
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 299
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    return-object v0

    .line 291
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getShadowHeight()I
    .locals 1

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getHeight()I

    move-result v0

    return v0
.end method

.method private getShadowWidth()I
    .locals 4

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingBottom()I

    move-result v3

    sub-int v0, v2, v3

    .line 274
    .local v0, "thumbnailHeight":I
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getWidth()I

    move-result v2

    mul-int/2addr v2, v0

    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getHeight()I

    move-result v3

    div-int v1, v2, v3

    .line 276
    .local v1, "thumbnailWidth":I
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    return v2
.end method

.method private hasSpaceForAddTransitionIcons()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 525
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mTimeline:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->isTrimming()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 529
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    sget-object v2, Lcom/android/videoeditor/widgets/MediaItemView;->sAddTransitionDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private releaseBitmapsAndClear()V
    .locals 2

    .prologue
    .line 603
    sget-object v0, Lcom/android/videoeditor/widgets/MediaItemView;->sThumbnailCache:Lcom/android/videoeditor/widgets/ThumbnailCache;

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/ThumbnailCache;->clearForMediaItemId(Ljava/lang/String;)V

    .line 604
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mPending:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 605
    sget v0, Lcom/android/videoeditor/widgets/MediaItemView;->sGenerationCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/videoeditor/widgets/MediaItemView;->sGenerationCounter:I

    iput v0, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mGeneration:I

    .line 606
    return-void
.end method

.method private requestThumbnails()V
    .locals 13

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mWantThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v11, v0, [I

    .line 546
    .local v11, "indices":[I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mWantThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v12, v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mWantThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v11, v12

    .line 546
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mPending:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mWantThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 553
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mProjectPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mThumbnailWidth:I

    iget v4, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mThumbnailHeight:I

    iget-wide v5, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mBeginTimeMs:J

    iget-wide v7, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mEndTimeMs:J

    iget v9, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mNumberOfThumbnails:I

    iget v10, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mGeneration:I

    invoke-static/range {v0 .. v11}, Lcom/android/videoeditor/service/ApiService;->getMediaItemThumbnails(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIJJII[I)V

    .line 557
    return-void
.end method


# virtual methods
.method public getShadowBuilder()Landroid/view/View$DragShadowBuilder;
    .locals 1

    .prologue
    .line 234
    new-instance v0, Lcom/android/videoeditor/widgets/MediaItemView$MediaItemShadowBuilder;

    invoke-direct {v0, p0, p0}, Lcom/android/videoeditor/widgets/MediaItemView$MediaItemShadowBuilder;-><init>(Lcom/android/videoeditor/widgets/MediaItemView;Landroid/view/View;)V

    return-object v0
.end method

.method public isGeneratingEffect()Z
    .locals 1

    .prologue
    .line 381
    iget v0, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mGeneratingEffectProgress:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/service/MovieMediaItem;

    iput-object v0, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    .line 214
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080031

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    iput-object v0, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mScrollView:Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    .line 216
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mScrollView:Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mScrollListener:Lcom/android/videoeditor/widgets/ScrollViewListener;

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->addScrollListener(Lcom/android/videoeditor/widgets/ScrollViewListener;)V

    .line 218
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mScrollView:Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mScrollX:I

    .line 220
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080033

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;

    iput-object v0, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mTimeline:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    .line 221
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mScrollView:Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mScrollListener:Lcom/android/videoeditor/widgets/ScrollViewListener;

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->removeScrollListener(Lcom/android/videoeditor/widgets/ScrollViewListener;)V

    .line 227
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->releaseBitmapsAndClear()V

    .line 228
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 408
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 409
    iget v0, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mGeneratingEffectProgress:I

    if-ltz v0, :cond_1

    .line 410
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/videoeditor/widgets/ProgressBar;->getProgressBar(Landroid/content/Context;)Lcom/android/videoeditor/widgets/ProgressBar;

    move-result-object v0

    iget v2, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mGeneratingEffectProgress:I

    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mGeneratingEffectProgressDestRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingRight()I

    move-result v5

    sub-int v5, v1, v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/videoeditor/widgets/ProgressBar;->draw(Landroid/graphics/Canvas;ILandroid/graphics/Rect;II)V

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 420
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/MediaItemView;->drawThumbnails(Landroid/graphics/Canvas;)V

    .line 423
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 424
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/MediaItemView;->drawAddTransitionIcons(Landroid/graphics/Canvas;)V

    .line 435
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mIsPlaying:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mTimeline:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->isTrimming()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mIsScrolling:Z

    if-eqz v0, :cond_5

    :cond_3
    const/4 v6, 0x1

    .line 436
    .local v6, "isBusy":Z
    :goto_2
    if-nez v6, :cond_0

    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mWantThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 437
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->requestThumbnails()V

    goto :goto_0

    .line 425
    .end local v6    # "isBusy":Z
    :cond_4
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mTimeline:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->hasItemSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 428
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 429
    .local v7, "paint":Landroid/graphics/Paint;
    const/high16 v0, -0x1000000

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 430
    const/16 v0, 0xc0

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 431
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    goto :goto_1

    .line 435
    .end local v7    # "paint":Landroid/graphics/Paint;
    :cond_5
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public onLayoutPerformed(II)V
    .locals 4
    .param p1, "oldLeft"    # I
    .param p2, "oldRight"    # I

    .prologue
    const/16 v3, 0x800

    .line 358
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mThumbnailHeight:I

    .line 359
    iget v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mThumbnailHeight:I

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getWidth()I

    move-result v2

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getHeight()I

    move-result v2

    div-int/2addr v1, v2

    iput v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mThumbnailWidth:I

    .line 362
    :goto_0
    iget v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mThumbnailWidth:I

    if-gt v1, v3, :cond_0

    iget v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mThumbnailHeight:I

    if-le v1, v3, :cond_1

    .line 363
    :cond_0
    iget v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mThumbnailHeight:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mThumbnailHeight:I

    .line 364
    iget v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mThumbnailWidth:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mThumbnailWidth:I

    goto :goto_0

    .line 367
    :cond_1
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingRight()I

    move-result v2

    sub-int v0, v1, v2

    .line 369
    .local v0, "usableWidth":I
    iget v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mThumbnailWidth:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mThumbnailWidth:I

    div-int/2addr v1, v2

    iput v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mNumberOfThumbnails:I

    .line 370
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryBeginTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mBeginTimeMs:J

    .line 371
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryEndTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mEndTimeMs:J

    .line 373
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->releaseBitmapsAndClear()V

    .line 374
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->invalidate()V

    .line 375
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 563
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 565
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 599
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 567
    :pswitch_1
    sget-object v0, Landroid/view/View;->EMPTY_STATE_SET:[I

    iput-object v0, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mLeftState:[I

    .line 568
    sget-object v0, Landroid/view/View;->EMPTY_STATE_SET:[I

    iput-object v0, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mRightState:[I

    .line 569
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->hasSpaceForAddTransitionIcons()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sget-object v1, Lcom/android/videoeditor/widgets/MediaItemView;->sAddTransitionDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 572
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v0

    if-nez v0, :cond_0

    .line 573
    sget-object v0, Landroid/view/View;->PRESSED_WINDOW_FOCUSED_STATE_SET:[I

    iput-object v0, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mLeftState:[I

    .line 582
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->invalidate()V

    goto :goto_0

    .line 575
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    sget-object v2, Lcom/android/videoeditor/widgets/MediaItemView;->sAddTransitionDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v0

    if-nez v0, :cond_0

    .line 578
    sget-object v0, Landroid/view/View;->PRESSED_WINDOW_FOCUSED_STATE_SET:[I

    iput-object v0, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mRightState:[I

    goto :goto_1

    .line 588
    :pswitch_2
    sget-object v0, Landroid/view/View;->EMPTY_STATE_SET:[I

    iput-object v0, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mRightState:[I

    .line 589
    sget-object v0, Landroid/view/View;->EMPTY_STATE_SET:[I

    iput-object v0, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mLeftState:[I

    .line 590
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->invalidate()V

    goto :goto_0

    .line 565
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public resetGeneratingEffectProgress()V
    .locals 1

    .prologue
    .line 330
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/videoeditor/widgets/MediaItemView;->setGeneratingEffectProgress(I)V

    .line 331
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;II)Z
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "index"    # I
    .param p3, "token"    # I

    .prologue
    const/4 v1, 0x0

    .line 386
    iget v2, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mGeneration:I

    if-eq p3, v2, :cond_0

    .line 403
    :goto_0
    return v1

    .line 389
    :cond_0
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mPending:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 390
    const-string v2, "MediaItemView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "received unasked bitmap, index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 393
    :cond_1
    if-nez p1, :cond_2

    .line 394
    const-string v2, "MediaItemView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive null bitmap for index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 398
    :cond_2
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mPending:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 399
    new-instance v0, Lcom/android/videoeditor/widgets/ThumbnailKey;

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/android/videoeditor/widgets/ThumbnailKey;-><init>(Ljava/lang/String;I)V

    .line 400
    .local v0, "key":Lcom/android/videoeditor/widgets/ThumbnailKey;
    sget-object v1, Lcom/android/videoeditor/widgets/MediaItemView;->sThumbnailCache:Lcom/android/videoeditor/widgets/ThumbnailCache;

    invoke-virtual {v1, v0, p1}, Lcom/android/videoeditor/widgets/ThumbnailCache;->put(Lcom/android/videoeditor/widgets/ThumbnailKey;Landroid/graphics/Bitmap;)V

    .line 402
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->invalidate()V

    .line 403
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setGeneratingEffectProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 337
    if-nez p1, :cond_0

    .line 338
    iput p1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mGeneratingEffectProgress:I

    .line 340
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->releaseBitmapsAndClear()V

    .line 347
    :goto_0
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->invalidate()V

    .line 348
    return-void

    .line 341
    :cond_0
    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    .line 342
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mGeneratingEffectProgress:I

    goto :goto_0

    .line 344
    :cond_1
    iput p1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mGeneratingEffectProgress:I

    goto :goto_0
.end method

.method public setGestureListener(Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mGestureListener:Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

    .line 314
    return-void
.end method

.method public setPlaybackMode(Z)V
    .locals 0
    .param p1, "playback"    # Z

    .prologue
    .line 322
    iput-boolean p1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mIsPlaying:Z

    .line 323
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->invalidate()V

    .line 324
    return-void
.end method

.method public setProjectPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "projectPath"    # Ljava/lang/String;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mProjectPath:Ljava/lang/String;

    .line 307
    return-void
.end method
