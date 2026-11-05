.class public Lcom/android/videoeditor/widgets/AudioTrackView;
.super Landroid/view/View;
.source "AudioTrackView.java"


# instance fields
.field private mGestureListener:Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

.field private final mLinePaint:Landroid/graphics/Paint;

.field private final mLoopPaint:Landroid/graphics/Paint;

.field private mNormalizedGains:[D

.field private mProgress:I

.field private final mProgressDestRect:Landroid/graphics/Rect;

.field private mScreenWidth:I

.field private final mScrollListener:Lcom/android/videoeditor/widgets/ScrollViewListener;

.field private mScrollX:I

.field private final mSimpleGestureDetector:Landroid/view/GestureDetector;

.field private mTimelineDurationMs:J

.field private mWaveformData:Landroid/media/videoeditor/WaveformData;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/videoeditor/widgets/AudioTrackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/videoeditor/widgets/AudioTrackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 64
    .local v4, "resources":Landroid/content/res/Resources;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/android/videoeditor/widgets/AudioTrackView;->mLinePaint:Landroid/graphics/Paint;

    .line 65
    iget-object v5, p0, Lcom/android/videoeditor/widgets/AudioTrackView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 66
    iget-object v5, p0, Lcom/android/videoeditor/widgets/AudioTrackView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 67
    iget-object v5, p0, Lcom/android/videoeditor/widgets/AudioTrackView;->mLinePaint:Landroid/graphics/Paint;

    const v6, 0x7f060002

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/android/videoeditor/widgets/AudioTrackView;->mLoopPaint:Landroid/graphics/Paint;

    .line 71
    iget-object v5, p0, Lcom/android/videoeditor/widgets/AudioTrackView;->mLoopPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    iget-object v5, p0, Lcom/android/videoeditor/widgets/AudioTrackView;->mLoopPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 73
    iget-object v5, p0, Lcom/android/videoeditor/widgets/AudioTrackView;->mLoopPaint:Landroid/graphics/Paint;

    const v6, 0x7f060003

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    invoke-static {p1}, Lcom/android/videoeditor/widgets/ProgressBar;->getProgressBar(Landroid/content/Context;)Lcom/android/videoeditor/widgets/ProgressBar;

    move-result-object v3

    .line 77
    .local v3, "progressBar":Lcom/android/videoeditor/widgets/ProgressBar;
    const v5, 0x7f07000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    .line 78
    .local v1, "layoutHeight":I
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackView;->getPaddingLeft()I

    move-result v6

    invoke-virtual {v3}, Lcom/android/videoeditor/widgets/ProgressBar;->getHeight()I

    move-result v7

    sub-int v7, v1, v7

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackView;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackView;->getPaddingBottom()I

    move-result v8

    sub-int v8, v1, v8

    invoke-direct {v5, v6, v7, v9, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Lcom/android/videoeditor/widgets/AudioTrackView;->mProgressDestRect:Landroid/graphics/Rect;

    .line 83
    new-instance v5, Landroid/view/GestureDetector;

    new-instance v6, Lcom/android/videoeditor/widgets/AudioTrackView$1;

    invoke-direct {v6, p0}, Lcom/android/videoeditor/widgets/AudioTrackView$1;-><init>(Lcom/android/videoeditor/widgets/AudioTrackView;)V

    invoke-direct {v5, p1, v6}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v5, p0, Lcom/android/videoeditor/widgets/AudioTrackView;->mSimpleGestureDetector:Landroid/view/GestureDetector;

    .line 109
    new-instance v5, Lcom/android/videoeditor/widgets/AudioTrackView$2;

    invoke-direct {v5, p0}, Lcom/android/videoeditor/widgets/AudioTrackView$2;-><init>(Lcom/android/videoeditor/widgets/AudioTrackView;)V

    iput-object v5, p0, Lcom/android/videoeditor/widgets/AudioTrackView;->mScrollListener:Lcom/android/videoeditor/widgets/ScrollViewListener;

    .line 126
    const-string v5, "window"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 128
    .local v0, "display":Landroid/view/Display;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 129
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 130
    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v5, p0, Lcom/android/videoeditor/widgets/AudioTrackView;->mScreenWidth:I

    .line 132
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/videoeditor/widgets/AudioTrackView;->mProgress:I

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/android/videoeditor/widgets/AudioTrackView;)Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/AudioTrackView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackView;->mGestureListener:Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/videoeditor/widgets/AudioTrackView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/AudioTrackView;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/android/videoeditor/widgets/AudioTrackView;->mScrollX:I

    return p1
.end method


# virtual methods
.method public getWaveformData()Landroid/media/videoeditor/WaveformData;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackView;->mWaveformData:Landroid/media/videoeditor/WaveformData;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    .line 147
    .local v0, "scrollView":Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;
    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->getScrollX()I

    move-result v1

    iput v1, p0, Lcom/android/videoeditor/widgets/AudioTrackView;->mScrollX:I

    .line 148
    iget-object v1, p0, Lcom/android/videoeditor/widgets/AudioTrackView;->mScrollListener:Lcom/android/videoeditor/widgets/ScrollViewListener;

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->addScrollListener(Lcom/android/videoeditor/widgets/ScrollViewListener;)V

    .line 149
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    .line 155
    .local v0, "scrollView":Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;
    iget-object v1, p0, Lcom/android/videoeditor/widgets/AudioTrackView;->mScrollListener:Lcom/android/videoeditor/widgets/ScrollViewListener;

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->removeScrollListener(Lcom/android/videoeditor/widgets/ScrollViewListener;)V

    .line 156
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 290
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 292
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/videoeditor/widgets/AudioTrackView;->mWaveformData:Landroid/media/videoeditor/WaveformData;

    if-nez v1, :cond_1

    .line 293
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/videoeditor/widgets/AudioTrackView;->mProgress:I

    if-ltz v1, :cond_0

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/AudioTrackView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/videoeditor/widgets/ProgressBar;->getProgressBar(Landroid/content/Context;)Lcom/android/videoeditor/widgets/ProgressBar;

    move-result-object v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/videoeditor/widgets/AudioTrackView;->mProgress:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/videoeditor/widgets/AudioTrackView;->mProgressDestRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/AudioTrackView;->getPaddingLeft()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/AudioTrackView;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/AudioTrackView;->getPaddingRight()I

    move-result v6

    sub-int v6, v2, v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/videoeditor/widgets/ProgressBar;->draw(Landroid/graphics/Canvas;ILandroid/graphics/Rect;II)V

    .line 339
    :cond_0
    return-void

    .line 297
    :cond_1
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/videoeditor/widgets/AudioTrackView;->mTimelineDurationMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/AudioTrackView;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/videoeditor/service/MovieAudioTrack;

    .line 300
    .local v7, "audioTrack":Lcom/android/videoeditor/service/MovieAudioTrack;
    invoke-virtual {v7}, Lcom/android/videoeditor/service/MovieAudioTrack;->getBoundaryBeginTime()J

    move-result-wide v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/videoeditor/widgets/AudioTrackView;->mWaveformData:Landroid/media/videoeditor/WaveformData;

    invoke-virtual {v3}, Landroid/media/videoeditor/WaveformData;->getFrameDuration()I

    move-result v3

    int-to-long v3, v3

    div-long/2addr v1, v3

    long-to-int v15, v1

    .line 302
    .local v15, "startFrame":I
    invoke-virtual {v7}, Lcom/android/videoeditor/service/MovieAudioTrack;->getTimelineDuration()J

    move-result-wide v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/videoeditor/widgets/AudioTrackView;->mWaveformData:Landroid/media/videoeditor/WaveformData;

    invoke-virtual {v3}, Landroid/media/videoeditor/WaveformData;->getFrameDuration()I

    move-result v3

    int-to-long v3, v3

    div-long/2addr v1, v3

    long-to-int v13, v1

    .line 305
    .local v13, "numFrames":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/AudioTrackView;->getHeight()I

    move-result v1

    div-int/lit8 v8, v1, 0x2

    .line 308
    .local v8, "ctr":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/videoeditor/widgets/AudioTrackView;->mScrollX:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/videoeditor/widgets/AudioTrackView;->mScreenWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/AudioTrackView;->getPaddingLeft()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 309
    .local v14, "start":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/videoeditor/widgets/AudioTrackView;->mScrollX:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/videoeditor/widgets/AudioTrackView;->mScreenWidth:I

    add-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/AudioTrackView;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/AudioTrackView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 310
    .local v12, "limit":I
    invoke-virtual {v7}, Lcom/android/videoeditor/service/MovieAudioTrack;->isAppLooping()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 312
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/videoeditor/widgets/AudioTrackView;->mTimelineDurationMs:J

    long-to-float v2, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/videoeditor/widgets/AudioTrackView;->mWaveformData:Landroid/media/videoeditor/WaveformData;

    invoke-virtual {v1}, Landroid/media/videoeditor/WaveformData;->getFrameDuration()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/AudioTrackView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/videoeditor/widgets/AudioTrackView;->mScreenWidth:I

    sub-int/2addr v1, v4

    mul-int/2addr v1, v3

    int-to-float v1, v1

    div-float v9, v2, v1

    .line 316
    .local v9, "framesPerPixel":F
    move v10, v14

    .local v10, "i":I
    :goto_0
    if-ge v10, v12, :cond_0

    .line 317
    int-to-float v1, v10

    mul-float/2addr v1, v9

    float-to-int v1, v1

    add-int v11, v15, v1

    .line 318
    .local v11, "index":I
    rem-int/2addr v11, v13

    .line 319
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/videoeditor/widgets/AudioTrackView;->mNormalizedGains:[D

    aget-wide v1, v1, v11

    double-to-int v1, v1

    int-to-short v0, v1

    move/from16 v16, v0

    .line 320
    .local v16, "value":S
    int-to-float v2, v10

    sub-int v1, v8, v16

    int-to-float v3, v1

    int-to-float v4, v10

    add-int/lit8 v1, v8, 0x1

    add-int v1, v1, v16

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/videoeditor/widgets/AudioTrackView;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 322
    if-ne v11, v15, :cond_2

    .line 323
    int-to-float v2, v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/AudioTrackView;->getPaddingTop()I

    move-result v1

    int-to-float v3, v1

    int-to-float v4, v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/AudioTrackView;->getHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/AudioTrackView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v1, v5

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/videoeditor/widgets/AudioTrackView;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 316
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 329
    .end local v9    # "framesPerPixel":F
    .end local v10    # "i":I
    .end local v11    # "index":I
    .end local v16    # "value":S
    :cond_3
    invoke-virtual {v7}, Lcom/android/videoeditor/service/MovieAudioTrack;->getTimelineDuration()J

    move-result-wide v1

    long-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/videoeditor/widgets/AudioTrackView;->mWaveformData:Landroid/media/videoeditor/WaveformData;

    invoke-virtual {v2}, Landroid/media/videoeditor/WaveformData;->getFrameDuration()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/AudioTrackView;->getWidth()I

    move-result v3

    mul-int/2addr v2, v3

    int-to-float v2, v2

    div-float v9, v1, v2

    .line 332
    .restart local v9    # "framesPerPixel":F
    move v10, v14

    .restart local v10    # "i":I
    :goto_1
    if-ge v10, v12, :cond_0

    .line 333
    int-to-float v1, v10

    mul-float/2addr v1, v9

    float-to-int v1, v1

    add-int v11, v15, v1

    .line 334
    .restart local v11    # "index":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/videoeditor/widgets/AudioTrackView;->mNormalizedGains:[D

    aget-wide v1, v1, v11

    double-to-int v1, v1

    int-to-short v0, v1

    move/from16 v16, v0

    .line 335
    .restart local v16    # "value":S
    int-to-float v2, v10

    sub-int v1, v8, v16

    int-to-float v3, v1

    int-to-float v4, v10

    add-int/lit8 v1, v8, 0x1

    add-int v1, v1, v16

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/videoeditor/widgets/AudioTrackView;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 332
    add-int/lit8 v10, v10, 0x1

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackView;->mSimpleGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 346
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 347
    const/4 v0, 0x1

    return v0
.end method

.method public setGestureListener(Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/videoeditor/widgets/AudioTrackView;->mGestureListener:Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

    .line 163
    return-void
.end method

.method public setProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 276
    iput p1, p0, Lcom/android/videoeditor/widgets/AudioTrackView;->mProgress:I

    .line 278
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackView;->invalidate()V

    .line 279
    return-void
.end method

.method public setWaveformData(Landroid/media/videoeditor/WaveformData;)V
    .locals 29
    .param p1, "waveformData"    # Landroid/media/videoeditor/WaveformData;

    .prologue
    .line 171
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/videoeditor/widgets/AudioTrackView;->mWaveformData:Landroid/media/videoeditor/WaveformData;

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/AudioTrackView;->mWaveformData:Landroid/media/videoeditor/WaveformData;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/media/videoeditor/WaveformData;->getFramesCount()I

    move-result v11

    .line 173
    .local v11, "numFrames":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/AudioTrackView;->mWaveformData:Landroid/media/videoeditor/WaveformData;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/media/videoeditor/WaveformData;->getFrameGains()[S

    move-result-object v3

    .line 174
    .local v3, "frameGains":[S
    new-array v0, v11, [D

    move-object/from16 v18, v0

    .line 176
    .local v18, "smoothedGains":[D
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v11, v0, :cond_2

    .line 177
    const/16 v22, 0x0

    const/16 v23, 0x0

    aget-short v23, v3, v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    aput-wide v23, v18, v22

    .line 192
    :cond_0
    :goto_0
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 193
    .local v7, "maxGain":D
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v11, :cond_5

    .line 194
    aget-wide v22, v18, v6

    cmpl-double v22, v22, v7

    if-lez v22, :cond_1

    .line 195
    aget-wide v7, v18, v6

    .line 193
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 178
    .end local v6    # "i":I
    .end local v7    # "maxGain":D
    :cond_2
    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v11, v0, :cond_3

    .line 179
    const/16 v22, 0x0

    const/16 v23, 0x0

    aget-short v23, v3, v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    aput-wide v23, v18, v22

    .line 180
    const/16 v22, 0x1

    const/16 v23, 0x1

    aget-short v23, v3, v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    aput-wide v23, v18, v22

    goto :goto_0

    .line 181
    :cond_3
    const/16 v22, 0x2

    move/from16 v0, v22

    if-le v11, v0, :cond_0

    .line 182
    const/16 v22, 0x0

    const/16 v23, 0x0

    aget-short v23, v3, v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide/high16 v25, 0x4000000000000000L    # 2.0

    div-double v23, v23, v25

    const/16 v25, 0x1

    aget-short v25, v3, v25

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    const-wide/high16 v27, 0x4000000000000000L    # 2.0

    div-double v25, v25, v27

    add-double v23, v23, v25

    aput-wide v23, v18, v22

    .line 183
    const/4 v6, 0x1

    .restart local v6    # "i":I
    :goto_2
    add-int/lit8 v22, v11, -0x1

    move/from16 v0, v22

    if-ge v6, v0, :cond_4

    .line 184
    add-int/lit8 v22, v6, -0x1

    aget-short v22, v3, v22

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4008000000000000L    # 3.0

    div-double v22, v22, v24

    aget-short v24, v3, v6

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x4008000000000000L    # 3.0

    div-double v24, v24, v26

    add-double v22, v22, v24

    add-int/lit8 v24, v6, 0x1

    aget-short v24, v3, v24

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x4008000000000000L    # 3.0

    div-double v24, v24, v26

    add-double v22, v22, v24

    aput-wide v22, v18, v6

    .line 183
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 187
    :cond_4
    add-int/lit8 v22, v11, -0x1

    add-int/lit8 v23, v11, -0x2

    aget-short v23, v3, v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide/high16 v25, 0x4000000000000000L    # 2.0

    div-double v23, v23, v25

    add-int/lit8 v25, v11, -0x1

    aget-short v25, v3, v25

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    const-wide/high16 v27, 0x4000000000000000L    # 2.0

    div-double v25, v25, v27

    add-double v23, v23, v25

    aput-wide v23, v18, v22

    goto/16 :goto_0

    .line 199
    .restart local v7    # "maxGain":D
    :cond_5
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    .line 200
    .local v15, "scaleFactor":D
    const-wide v22, 0x406fe00000000000L    # 255.0

    cmpl-double v22, v7, v22

    if-lez v22, :cond_6

    .line 201
    const-wide v22, 0x406fe00000000000L    # 255.0

    div-double v15, v22, v7

    .line 205
    :cond_6
    const-wide/16 v7, 0x0

    .line 206
    const/16 v22, 0x100

    move/from16 v0, v22

    new-array v4, v0, [I

    .line 207
    .local v4, "gainHist":[I
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v11, :cond_a

    .line 208
    aget-wide v22, v18, v6

    mul-double v22, v22, v15

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v17, v0

    .line 209
    .local v17, "smoothedGain":I
    if-gez v17, :cond_7

    .line 210
    const/16 v17, 0x0

    .line 212
    :cond_7
    const/16 v22, 0xff

    move/from16 v0, v17

    move/from16 v1, v22

    if-le v0, v1, :cond_8

    .line 213
    const/16 v17, 0xff

    .line 216
    :cond_8
    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v22, v0

    cmpl-double v22, v22, v7

    if-lez v22, :cond_9

    .line 217
    move/from16 v0, v17

    int-to-double v7, v0

    .line 220
    :cond_9
    aget v22, v4, v17

    add-int/lit8 v22, v22, 0x1

    aput v22, v4, v17

    .line 207
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 224
    .end local v17    # "smoothedGain":I
    :cond_a
    const-wide/16 v9, 0x0

    .line 225
    .local v9, "minGain":D
    const/16 v19, 0x0

    .line 226
    .local v19, "sum":I
    :goto_4
    const-wide v22, 0x406fe00000000000L    # 255.0

    cmpg-double v22, v9, v22

    if-gez v22, :cond_b

    div-int/lit8 v22, v11, 0x14

    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_b

    .line 227
    double-to-int v0, v9

    move/from16 v22, v0

    aget v22, v4, v22

    add-int v19, v19, v22

    .line 228
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    add-double v9, v9, v22

    goto :goto_4

    .line 232
    :cond_b
    const/16 v19, 0x0

    .line 233
    :goto_5
    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    cmpl-double v22, v7, v22

    if-lez v22, :cond_c

    div-int/lit8 v22, v11, 0x64

    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_c

    .line 234
    double-to-int v0, v7

    move/from16 v22, v0

    aget v22, v4, v22

    add-int v19, v19, v22

    .line 235
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    sub-double v7, v7, v22

    goto :goto_5

    .line 239
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/AudioTrackView;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f07000c

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/AudioTrackView;->getPaddingTop()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v22, v22, v23

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/AudioTrackView;->getPaddingBottom()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v22, v22, v23

    const/high16 v23, 0x40800000    # 4.0f

    sub-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v5, v0

    .line 242
    .local v5, "halfHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/AudioTrackView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/videoeditor/service/MovieAudioTrack;

    .line 244
    .local v2, "audioTrack":Lcom/android/videoeditor/service/MovieAudioTrack;
    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieAudioTrack;->getDuration()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/AudioTrackView;->mWaveformData:Landroid/media/videoeditor/WaveformData;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/media/videoeditor/WaveformData;->getFrameDuration()I

    move-result v23

    div-int v12, v22, v23

    .line 245
    .local v12, "numFramesComp":I
    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [D

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/videoeditor/widgets/AudioTrackView;->mNormalizedGains:[D

    .line 246
    sub-double v13, v7, v9

    .line 247
    .local v13, "range":D
    const/4 v6, 0x0

    :goto_6
    if-ge v6, v11, :cond_f

    .line 248
    aget-wide v22, v18, v6

    mul-double v22, v22, v15

    sub-double v22, v22, v9

    div-double v20, v22, v13

    .line 249
    .local v20, "value":D
    const-wide/16 v22, 0x0

    cmpg-double v22, v20, v22

    if-gez v22, :cond_d

    .line 250
    const-wide/16 v20, 0x0

    .line 253
    :cond_d
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    cmpl-double v22, v20, v22

    if-lez v22, :cond_e

    .line 254
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    .line 257
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/AudioTrackView;->mNormalizedGains:[D

    move-object/from16 v22, v0

    mul-double v23, v20, v20

    int-to-double v0, v5

    move-wide/from16 v25, v0

    mul-double v23, v23, v25

    aput-wide v23, v22, v6

    .line 247
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 259
    .end local v20    # "value":D
    :cond_f
    return-void
.end method

.method public updateTimelineDuration(J)V
    .locals 0
    .param p1, "timelineDurationMs"    # J

    .prologue
    .line 267
    iput-wide p1, p0, Lcom/android/videoeditor/widgets/AudioTrackView;->mTimelineDurationMs:J

    .line 268
    return-void
.end method
