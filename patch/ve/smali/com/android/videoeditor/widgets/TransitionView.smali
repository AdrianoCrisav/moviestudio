.class public Lcom/android/videoeditor/widgets/TransitionView;
.super Landroid/widget/ImageView;
.source "TransitionView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TransitionView"


# instance fields
.field private mBitmaps:[Landroid/graphics/Bitmap;

.field private mGeneratingTransitionProgress:I

.field private final mGeneratingTransitionProgressDestRect:Landroid/graphics/Rect;

.field private mGestureListener:Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

.field private mIsPlaying:Z

.field private mIsScrolling:Z

.field private mProjectPath:Ljava/lang/String;

.field private mScreenWidth:I

.field private final mScrollListener:Lcom/android/videoeditor/widgets/ScrollViewListener;

.field private mScrollView:Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

.field private mScrollX:I

.field private final mSeparatorPaint:Landroid/graphics/Paint;

.field private final mSimpleGestureDetector:Landroid/view/GestureDetector;

.field private mTimeline:Lcom/android/videoeditor/widgets/MediaLinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/videoeditor/widgets/TransitionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/videoeditor/widgets/TransitionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    new-instance v5, Landroid/view/GestureDetector;

    new-instance v6, Lcom/android/videoeditor/widgets/TransitionView$1;

    invoke-direct {v6, p0}, Lcom/android/videoeditor/widgets/TransitionView$1;-><init>(Lcom/android/videoeditor/widgets/TransitionView;)V

    invoke-direct {v5, p1, v6}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v5, p0, Lcom/android/videoeditor/widgets/TransitionView;->mSimpleGestureDetector:Landroid/view/GestureDetector;

    .line 90
    new-instance v5, Lcom/android/videoeditor/widgets/TransitionView$2;

    invoke-direct {v5, p0}, Lcom/android/videoeditor/widgets/TransitionView$2;-><init>(Lcom/android/videoeditor/widgets/TransitionView;)V

    iput-object v5, p0, Lcom/android/videoeditor/widgets/TransitionView;->mScrollListener:Lcom/android/videoeditor/widgets/ScrollViewListener;

    .line 112
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 114
    .local v4, "resources":Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/android/videoeditor/widgets/ProgressBar;->getProgressBar(Landroid/content/Context;)Lcom/android/videoeditor/widgets/ProgressBar;

    move-result-object v3

    .line 115
    .local v3, "progressBar":Lcom/android/videoeditor/widgets/ProgressBar;
    const v5, 0x7f070008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    const v6, 0x7f07000f

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    sub-float/2addr v5, v6

    const v6, 0x7f07001a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    mul-float/2addr v6, v10

    sub-float/2addr v5, v6

    float-to-int v1, v5

    .line 118
    .local v1, "layoutHeight":I
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getPaddingLeft()I

    move-result v6

    invoke-virtual {v3}, Lcom/android/videoeditor/widgets/ProgressBar;->getHeight()I

    move-result v7

    sub-int v7, v1, v7

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getPaddingBottom()I

    move-result v9

    sub-int v9, v1, v9

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Lcom/android/videoeditor/widgets/TransitionView;->mGeneratingTransitionProgressDestRect:Landroid/graphics/Rect;

    .line 123
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/videoeditor/widgets/TransitionView;->mGeneratingTransitionProgress:I

    .line 126
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

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

    iput v5, p0, Lcom/android/videoeditor/widgets/TransitionView;->mScreenWidth:I

    .line 133
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/android/videoeditor/widgets/TransitionView;->mSeparatorPaint:Landroid/graphics/Paint;

    .line 134
    iget-object v5, p0, Lcom/android/videoeditor/widgets/TransitionView;->mSeparatorPaint:Landroid/graphics/Paint;

    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    iget-object v5, p0, Lcom/android/videoeditor/widgets/TransitionView;->mSeparatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/android/videoeditor/widgets/TransitionView;)Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/TransitionView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/videoeditor/widgets/TransitionView;->mGestureListener:Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/videoeditor/widgets/TransitionView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/TransitionView;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/videoeditor/widgets/TransitionView;->mIsScrolling:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/videoeditor/widgets/TransitionView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/TransitionView;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/android/videoeditor/widgets/TransitionView;->mScrollX:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/videoeditor/widgets/TransitionView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/TransitionView;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/TransitionView;->requestThumbnails()Z

    move-result v0

    return v0
.end method

.method private requestThumbnails()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 324
    iget-object v6, p0, Lcom/android/videoeditor/widgets/TransitionView;->mBitmaps:[Landroid/graphics/Bitmap;

    if-eqz v6, :cond_1

    .line 325
    const/4 v5, 0x1

    .line 368
    :cond_0
    :goto_0
    return v5

    .line 329
    :cond_1
    iget-boolean v6, p0, Lcom/android/videoeditor/widgets/TransitionView;->mIsScrolling:Z

    if-nez v6, :cond_0

    .line 333
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/videoeditor/service/MovieTransition;

    .line 335
    .local v4, "transition":Lcom/android/videoeditor/service/MovieTransition;
    iget-object v6, p0, Lcom/android/videoeditor/widgets/TransitionView;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieTransition;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/videoeditor/service/ApiService;->isTransitionThumbnailsPending(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 339
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getLeft()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getPaddingLeft()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/videoeditor/widgets/TransitionView;->mScrollX:I

    sub-int v2, v6, v7

    .line 340
    .local v2, "start":I
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getRight()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/videoeditor/widgets/TransitionView;->mScrollX:I

    sub-int v0, v6, v7

    .line 342
    .local v0, "end":I
    iget v6, p0, Lcom/android/videoeditor/widgets/TransitionView;->mScreenWidth:I

    if-ge v2, v6, :cond_2

    if-ltz v0, :cond_2

    if-ne v2, v0, :cond_6

    .line 343
    :cond_2
    const-string v6, "TransitionView"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 344
    const-string v6, "TransitionView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Transition view is off screen: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieTransition;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", from: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_3
    iget-object v6, p0, Lcom/android/videoeditor/widgets/TransitionView;->mBitmaps:[Landroid/graphics/Bitmap;

    if-eqz v6, :cond_0

    .line 350
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/videoeditor/widgets/TransitionView;->mBitmaps:[Landroid/graphics/Bitmap;

    array-length v6, v6

    if-ge v1, v6, :cond_5

    .line 351
    iget-object v6, p0, Lcom/android/videoeditor/widgets/TransitionView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v6, v6, v1

    if-eqz v6, :cond_4

    .line 352
    iget-object v6, p0, Lcom/android/videoeditor/widgets/TransitionView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 350
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 356
    :cond_5
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/videoeditor/widgets/TransitionView;->mBitmaps:[Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 363
    .end local v1    # "i":I
    :cond_6
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getPaddingBottom()I

    move-result v7

    sub-int v3, v6, v7

    .line 365
    .local v3, "thumbnailHeight":I
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/videoeditor/widgets/TransitionView;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieTransition;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8, v3}, Lcom/android/videoeditor/service/ApiService;->getTransitionThumbnails(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public isGeneratingTransition()Z
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/android/videoeditor/widgets/TransitionView;->mGeneratingTransitionProgress:I

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
    .line 149
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080031

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    iput-object v0, p0, Lcom/android/videoeditor/widgets/TransitionView;->mScrollView:Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    .line 151
    iget-object v0, p0, Lcom/android/videoeditor/widgets/TransitionView;->mScrollView:Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    iget-object v1, p0, Lcom/android/videoeditor/widgets/TransitionView;->mScrollListener:Lcom/android/videoeditor/widgets/ScrollViewListener;

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->addScrollListener(Lcom/android/videoeditor/widgets/ScrollViewListener;)V

    .line 152
    iget-object v0, p0, Lcom/android/videoeditor/widgets/TransitionView;->mScrollView:Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/android/videoeditor/widgets/TransitionView;->mScrollX:I

    .line 154
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080033

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;

    iput-object v0, p0, Lcom/android/videoeditor/widgets/TransitionView;->mTimeline:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    .line 155
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 160
    iget-object v1, p0, Lcom/android/videoeditor/widgets/TransitionView;->mScrollView:Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    iget-object v2, p0, Lcom/android/videoeditor/widgets/TransitionView;->mScrollListener:Lcom/android/videoeditor/widgets/ScrollViewListener;

    invoke-virtual {v1, v2}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->removeScrollListener(Lcom/android/videoeditor/widgets/ScrollViewListener;)V

    .line 163
    iget-object v1, p0, Lcom/android/videoeditor/widgets/TransitionView;->mBitmaps:[Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 164
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/videoeditor/widgets/TransitionView;->mBitmaps:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 165
    iget-object v1, p0, Lcom/android/videoeditor/widgets/TransitionView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/android/videoeditor/widgets/TransitionView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 164
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/videoeditor/widgets/TransitionView;->mBitmaps:[Landroid/graphics/Bitmap;

    .line 172
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/high16 v8, -0x1000000

    .line 253
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 256
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    iget v0, p0, Lcom/android/videoeditor/widgets/TransitionView;->mGeneratingTransitionProgress:I

    if-ltz v0, :cond_2

    .line 261
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/videoeditor/widgets/ProgressBar;->getProgressBar(Landroid/content/Context;)Lcom/android/videoeditor/widgets/ProgressBar;

    move-result-object v0

    iget v2, p0, Lcom/android/videoeditor/widgets/TransitionView;->mGeneratingTransitionProgress:I

    iget-object v3, p0, Lcom/android/videoeditor/widgets/TransitionView;->mGeneratingTransitionProgressDestRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getPaddingRight()I

    move-result v5

    sub-int v5, v1, v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/videoeditor/widgets/ProgressBar;->draw(Landroid/graphics/Canvas;ILandroid/graphics/Rect;II)V

    goto :goto_0

    .line 264
    :cond_2
    iget-object v0, p0, Lcom/android/videoeditor/widgets/TransitionView;->mBitmaps:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 265
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getWidth()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .line 268
    .local v6, "halfWidth":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 269
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1, v0, v1, v6, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 272
    iget-object v0, p0, Lcom/android/videoeditor/widgets/TransitionView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v5

    if-eqz v0, :cond_3

    .line 273
    iget-object v0, p0, Lcom/android/videoeditor/widgets/TransitionView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v5

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 277
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 280
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 281
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1, v6, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 283
    iget-object v0, p0, Lcom/android/videoeditor/widgets/TransitionView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v4

    if-eqz v0, :cond_4

    .line 284
    iget-object v0, p0, Lcom/android/videoeditor/widgets/TransitionView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v4

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/videoeditor/widgets/TransitionView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 290
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 292
    int-to-float v1, v6

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getPaddingTop()I

    move-result v0

    int-to-float v2, v0

    int-to-float v3, v6

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/videoeditor/widgets/TransitionView;->mSeparatorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 297
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/videoeditor/widgets/TransitionView;->mTimeline:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->hasItemSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 299
    .local v7, "paint":Landroid/graphics/Paint;
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 300
    const/16 v0, 0xc0

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 301
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 275
    .end local v7    # "paint":Landroid/graphics/Paint;
    :cond_3
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_1

    .line 288
    :cond_4
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_2

    .line 303
    .end local v6    # "halfWidth":I
    :cond_5
    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/TransitionView;->mIsPlaying:Z

    if-nez v0, :cond_0

    .line 304
    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/TransitionView;->mIsScrolling:Z

    if-nez v0, :cond_0

    .line 306
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/TransitionView;->requestThumbnails()Z

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/videoeditor/widgets/TransitionView;->mSimpleGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 314
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public resetGeneratingTransitionProgress()V
    .locals 1

    .prologue
    .line 192
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/videoeditor/widgets/TransitionView;->setGeneratingTransitionProgress(I)V

    .line 193
    return-void
.end method

.method public setBitmaps([Landroid/graphics/Bitmap;)Z
    .locals 2
    .param p1, "bitmaps"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 232
    iget v1, p0, Lcom/android/videoeditor/widgets/TransitionView;->mGeneratingTransitionProgress:I

    if-ltz v1, :cond_0

    .line 233
    const/4 v1, 0x0

    .line 248
    :goto_0
    return v1

    .line 237
    :cond_0
    iget-object v1, p0, Lcom/android/videoeditor/widgets/TransitionView;->mBitmaps:[Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 238
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/videoeditor/widgets/TransitionView;->mBitmaps:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 239
    iget-object v1, p0, Lcom/android/videoeditor/widgets/TransitionView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 240
    iget-object v1, p0, Lcom/android/videoeditor/widgets/TransitionView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 238
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 245
    .end local v0    # "i":I
    :cond_2
    iput-object p1, p0, Lcom/android/videoeditor/widgets/TransitionView;->mBitmaps:[Landroid/graphics/Bitmap;

    .line 246
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->invalidate()V

    .line 248
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setGeneratingTransitionProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 199
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 201
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/TransitionView;->requestThumbnails()Z

    .line 202
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/videoeditor/widgets/TransitionView;->mGeneratingTransitionProgress:I

    .line 207
    :goto_0
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->invalidate()V

    .line 208
    return-void

    .line 204
    :cond_0
    iput p1, p0, Lcom/android/videoeditor/widgets/TransitionView;->mGeneratingTransitionProgress:I

    goto :goto_0
.end method

.method public setGestureListener(Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/videoeditor/widgets/TransitionView;->mGestureListener:Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

    .line 186
    return-void
.end method

.method public setPlaybackMode(Z)V
    .locals 0
    .param p1, "playback"    # Z

    .prologue
    .line 223
    iput-boolean p1, p0, Lcom/android/videoeditor/widgets/TransitionView;->mIsPlaying:Z

    .line 224
    return-void
.end method

.method public setProjectPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "projectPath"    # Ljava/lang/String;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/videoeditor/widgets/TransitionView;->mProjectPath:Ljava/lang/String;

    .line 179
    return-void
.end method
