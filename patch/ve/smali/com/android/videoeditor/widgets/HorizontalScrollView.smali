.class public Lcom/android/videoeditor/widgets/HorizontalScrollView;
.super Landroid/widget/FrameLayout;
.source "HorizontalScrollView.java"


# static fields
.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final MAX_SCROLL_FACTOR:F = 0.5f


# instance fields
.field private mChildToScrollTo:Landroid/view/View;

.field private mEdgeGlowLeft:Landroid/widget/EdgeEffect;

.field private mEdgeGlowRight:Landroid/widget/EdgeEffect;

.field private mFillViewport:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mHasLastFocusX:Z

.field private mIsBeingDragged:Z

.field private mIsLayoutDirty:Z

.field private mLastFocusX:I

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field private mScroller:Landroid/widget/OverScroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 135
    const v0, 0x1010353

    invoke-direct {p0, p1, p2, v0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 139
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 90
    iput-boolean v3, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mIsLayoutDirty:Z

    .line 97
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 104
    iput-boolean v2, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mIsBeingDragged:Z

    .line 121
    iput-boolean v3, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mSmoothScrollingEnabled:Z

    .line 140
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->initScrollView()V

    .line 142
    sget-object v1, Landroid/R$styleable;->HorizontalScrollView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 145
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->setFillViewport(Z)V

    .line 147
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 148
    return-void
.end method

.method private canScroll()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 242
    invoke-virtual {p0, v2}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 243
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 245
    .local v1, "childWidth":I
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mPaddingLeft:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mPaddingRight:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    .line 247
    .end local v1    # "childWidth":I
    :cond_0
    return v2
.end method

.method private static clamp(III)I
    .locals 1
    .param p0, "n"    # I
    .param p1, "my"    # I
    .param p2, "child"    # I

    .prologue
    .line 1580
    if-ge p1, p2, :cond_0

    if-gez p0, :cond_2

    .line 1581
    :cond_0
    const/4 p0, 0x0

    .line 1586
    .end local p0    # "n":I
    :cond_1
    :goto_0
    return p0

    .line 1583
    .restart local p0    # "n":I
    :cond_2
    add-int v0, p1, p0

    if-le v0, p2, :cond_1

    .line 1584
    sub-int p0, p2, p1

    goto :goto_0
.end method

.method private doScrollX(I)V
    .locals 2
    .param p1, "delta"    # I

    .prologue
    const/4 v1, 0x0

    .line 1110
    if-eqz p1, :cond_0

    .line 1111
    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    .line 1112
    invoke-virtual {p0, p1, v1}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->smoothScrollBy(II)V

    .line 1117
    :cond_0
    :goto_0
    return-void

    .line 1114
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 11
    .param p1, "leftFocus"    # Z
    .param p2, "left"    # I
    .param p3, "right"    # I

    .prologue
    .line 856
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 857
    .local v2, "focusables":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 866
    .local v1, "focusCandidate":Landroid/view/View;
    const/4 v3, 0x0

    .line 868
    .local v3, "foundFullyContainedFocusable":Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 869
    .local v0, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_8

    .line 870
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 871
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 872
    .local v8, "viewLeft":I
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v9

    .line 874
    .local v9, "viewRight":I
    if-ge p2, v9, :cond_0

    if-ge v8, p3, :cond_0

    .line 880
    if-ge p2, v8, :cond_1

    if-ge v9, p3, :cond_1

    const/4 v7, 0x1

    .line 883
    .local v7, "viewIsFullyContained":Z
    :goto_1
    if-nez v1, :cond_2

    .line 885
    move-object v1, v5

    .line 886
    move v3, v7

    .line 869
    .end local v7    # "viewIsFullyContained":Z
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 880
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 888
    .restart local v7    # "viewIsFullyContained":Z
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    if-lt v8, v10, :cond_4

    :cond_3
    if-nez p1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v10

    if-le v9, v10, :cond_5

    :cond_4
    const/4 v6, 0x1

    .line 892
    .local v6, "viewIsCloserToBoundary":Z
    :goto_3
    if-eqz v3, :cond_6

    .line 893
    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    .line 899
    move-object v1, v5

    goto :goto_2

    .line 888
    .end local v6    # "viewIsCloserToBoundary":Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_3

    .line 902
    .restart local v6    # "viewIsCloserToBoundary":Z
    :cond_6
    if-eqz v7, :cond_7

    .line 904
    move-object v1, v5

    .line 905
    const/4 v3, 0x1

    goto :goto_2

    .line 906
    :cond_7
    if-eqz v6, :cond_0

    .line 911
    move-object v1, v5

    goto :goto_2

    .line 918
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "viewIsCloserToBoundary":Z
    .end local v7    # "viewIsFullyContained":Z
    .end local v8    # "viewLeft":I
    .end local v9    # "viewRight":I
    :cond_8
    return-object v1
.end method

.method private findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;
    .locals 4
    .param p1, "leftFocus"    # Z
    .param p2, "left"    # I
    .param p3, "preferredFocusable"    # Landroid/view/View;

    .prologue
    .line 825
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 826
    .local v0, "fadingEdgeLength":I
    add-int v1, p2, v0

    .line 827
    .local v1, "leftWithoutFadingEdge":I
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getWidth()I

    move-result v3

    add-int/2addr v3, p2

    sub-int v2, v3, v0

    .line 829
    .local v2, "rightWithoutFadingEdge":I
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v3

    if-ge v3, v2, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 835
    .end local p3    # "preferredFocusable":Landroid/view/View;
    :goto_0
    return-object p3

    .restart local p3    # "preferredFocusable":Landroid/view/View;
    :cond_0
    invoke-direct {p0, p1, v1, v2}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object p3

    goto :goto_0
.end method

.method private static getFocusX(Landroid/view/MotionEvent;)I
    .locals 10
    .param p0, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 412
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 413
    .local v0, "action":I
    and-int/lit16 v8, v0, 0xff

    const/4 v9, 0x6

    if-ne v8, v9, :cond_0

    const/4 v5, 0x1

    .line 415
    .local v5, "pointerUp":Z
    :goto_0
    if-eqz v5, :cond_1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    .line 418
    .local v6, "skipIndex":I
    :goto_1
    const/4 v7, 0x0

    .line 419
    .local v7, "sumX":F
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 420
    .local v1, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v1, :cond_3

    .line 421
    if-ne v6, v4, :cond_2

    .line 420
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 413
    .end local v1    # "count":I
    .end local v4    # "i":I
    .end local v5    # "pointerUp":Z
    .end local v6    # "skipIndex":I
    .end local v7    # "sumX":F
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 415
    .restart local v5    # "pointerUp":Z
    :cond_1
    const/4 v6, -0x1

    goto :goto_1

    .line 422
    .restart local v1    # "count":I
    .restart local v4    # "i":I
    .restart local v6    # "skipIndex":I
    .restart local v7    # "sumX":F
    :cond_2
    invoke-virtual {p0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    add-float/2addr v7, v8

    goto :goto_3

    .line 424
    :cond_3
    if-eqz v5, :cond_4

    add-int/lit8 v2, v1, -0x1

    .line 425
    .local v2, "div":I
    :goto_4
    int-to-float v8, v2

    div-float v3, v7, v8

    .line 426
    .local v3, "focusX":F
    float-to-int v8, v3

    return v8

    .end local v2    # "div":I
    .end local v3    # "focusX":F
    :cond_4
    move v2, v1

    .line 424
    goto :goto_4
.end method

.method private getScrollRange()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 793
    const/4 v1, 0x0

    .line 794
    .local v1, "scrollRange":I
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 795
    invoke-virtual {p0, v5}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 796
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 799
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return v1
.end method

.method private inChild(II)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 379
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 380
    iget v1, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScrollX:I

    .line 381
    .local v1, "scrollX":I
    invoke-virtual {p0, v2}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 382
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt p1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge p1, v3, :cond_0

    const/4 v2, 0x1

    .line 387
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "scrollX":I
    :cond_0
    return v2
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 392
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 396
    :goto_0
    return-void

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initScrollView()V
    .locals 3

    .prologue
    .line 190
    new-instance v1, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 191
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->setFocusable(Z)V

    .line 192
    const/high16 v1, 0x40000

    invoke-virtual {p0, v1}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->setDescendantFocusability(I)V

    .line 193
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->setWillNotDraw(Z)V

    .line 194
    iget-object v1, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 195
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mTouchSlop:I

    .line 196
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mMinimumVelocity:I

    .line 197
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mMaximumVelocity:I

    .line 198
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mOverscrollDistance:I

    .line 199
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mOverflingDistance:I

    .line 200
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 400
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 402
    :cond_0
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2
    .param p1, "descendant"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 1089
    invoke-direct {p0, p1, v0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .param p0, "child"    # Landroid/view/View;
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 1470
    if-ne p0, p1, :cond_1

    .line 1475
    :cond_0
    :goto_0
    return v1

    .line 1474
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1475
    .local v0, "theParent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0    # "theParent":Landroid/view/ViewParent;
    invoke-static {v0, p1}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;I)Z
    .locals 3
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "delta"    # I

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1098
    iget-object v0, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1100
    iget-object v0, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getScrollX()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 669
    invoke-static {p1}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getFocusX(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mLastFocusX:I

    .line 670
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mHasLastFocusX:Z

    .line 671
    iget-object v0, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 674
    :cond_0
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 407
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 409
    :cond_0
    return-void
.end method

.method private scrollAndFocus(III)Z
    .locals 8
    .param p1, "direction"    # I
    .param p2, "left"    # I
    .param p3, "right"    # I

    .prologue
    .line 1001
    const/4 v4, 0x1

    .line 1003
    .local v4, "handled":Z
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getWidth()I

    move-result v6

    .line 1004
    .local v6, "width":I
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getScrollX()I

    move-result v0

    .line 1005
    .local v0, "containerLeft":I
    add-int v1, v0, v6

    .line 1006
    .local v1, "containerRight":I
    const/16 v7, 0x11

    if-ne p1, v7, :cond_2

    const/4 v3, 0x1

    .line 1008
    .local v3, "goLeft":Z
    :goto_0
    invoke-direct {p0, v3, p2, p3}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 1009
    .local v5, "newFocused":Landroid/view/View;
    if-nez v5, :cond_0

    .line 1010
    move-object v5, p0

    .line 1013
    :cond_0
    if-lt p2, v0, :cond_3

    if-gt p3, v1, :cond_3

    .line 1014
    const/4 v4, 0x0

    .line 1020
    :goto_1
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v7

    if-eq v5, v7, :cond_1

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1022
    :cond_1
    return v4

    .line 1006
    .end local v3    # "goLeft":Z
    .end local v5    # "newFocused":Landroid/view/View;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 1016
    .restart local v3    # "goLeft":Z
    .restart local v5    # "newFocused":Landroid/view/View;
    :cond_3
    if-eqz v3, :cond_4

    sub-int v2, p2, v0

    .line 1017
    .local v2, "delta":I
    :goto_2
    invoke-direct {p0, v2}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->doScrollX(I)V

    goto :goto_1

    .line 1016
    .end local v2    # "delta":I
    :cond_4
    sub-int v2, p3, v1

    goto :goto_2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1272
    iget-object v1, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1275
    iget-object v1, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1277
    iget-object v1, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1279
    .local v0, "scrollDelta":I
    if-eqz v0, :cond_0

    .line 1280
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->scrollBy(II)V

    .line 1282
    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "immediate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1293
    invoke-virtual {p0, p1}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1294
    .local v0, "delta":I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 1295
    .local v1, "scroll":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1296
    if-eqz p2, :cond_2

    .line 1297
    invoke-virtual {p0, v0, v2}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->scrollBy(II)V

    .line 1302
    :cond_0
    :goto_1
    return v1

    .end local v1    # "scroll":Z
    :cond_1
    move v1, v2

    .line 1294
    goto :goto_0

    .line 1299
    .restart local v1    # "scroll":Z
    :cond_2
    invoke-virtual {p0, v0, v2}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->smoothScrollBy(II)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 205
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 209
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 214
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 218
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 232
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 236
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 223
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 11
    .param p1, "direction"    # I

    .prologue
    const/16 v10, 0x42

    const/4 v7, 0x0

    .line 1034
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1035
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 1037
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 1039
    .local v4, "nextFocused":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getMaxScrollAmount()I

    move-result v3

    .line 1041
    .local v3, "maxJump":I
    if-eqz v4, :cond_3

    invoke-direct {p0, v4, v3}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1042
    iget-object v7, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1043
    iget-object v7, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1044
    iget-object v7, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    .line 1045
    .local v6, "scrollDelta":I
    invoke-direct {p0, v6}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->doScrollX(I)V

    .line 1046
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1069
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1076
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getDescendantFocusability()I

    move-result v2

    .line 1077
    .local v2, "descendantFocusability":I
    const/high16 v7, 0x20000

    invoke-virtual {p0, v7}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->setDescendantFocusability(I)V

    .line 1078
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->requestFocus()Z

    .line 1079
    invoke-virtual {p0, v2}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->setDescendantFocusability(I)V

    .line 1081
    .end local v2    # "descendantFocusability":I
    :cond_1
    const/4 v7, 0x1

    :cond_2
    return v7

    .line 1049
    .end local v6    # "scrollDelta":I
    :cond_3
    move v6, v3

    .line 1051
    .restart local v6    # "scrollDelta":I
    const/16 v8, 0x11

    if-ne p1, v8, :cond_5

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getScrollX()I

    move-result v8

    if-ge v8, v6, :cond_5

    .line 1052
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getScrollX()I

    move-result v6

    .line 1063
    :cond_4
    :goto_1
    if-eqz v6, :cond_2

    .line 1066
    if-ne p1, v10, :cond_6

    move v7, v6

    :goto_2
    invoke-direct {p0, v7}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->doScrollX(I)V

    goto :goto_0

    .line 1053
    :cond_5
    if-ne p1, v10, :cond_4

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_4

    .line 1055
    invoke-virtual {p0, v7}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v1

    .line 1057
    .local v1, "daRight":I
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getScrollX()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getWidth()I

    move-result v9

    add-int v5, v8, v9

    .line 1059
    .local v5, "screenRight":I
    sub-int v8, v1, v5

    if-ge v8, v3, :cond_4

    .line 1060
    sub-int v6, v1, v5

    goto :goto_1

    .line 1066
    .end local v1    # "daRight":I
    .end local v5    # "screenRight":I
    :cond_6
    neg-int v7, v6

    goto :goto_2
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 2

    .prologue
    .line 1185
    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollOffset()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1165
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getChildCount()I

    move-result v1

    .line 1166
    .local v1, "count":I
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mPaddingRight:I

    sub-int v0, v5, v6

    .line 1167
    .local v0, "contentWidth":I
    if-nez v1, :cond_0

    .line 1180
    .end local v0    # "contentWidth":I
    :goto_0
    return v0

    .line 1171
    .restart local v0    # "contentWidth":I
    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v3

    .line 1172
    .local v3, "scrollRange":I
    iget v4, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScrollX:I

    .line 1173
    .local v4, "scrollX":I
    sub-int v5, v3, v0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1174
    .local v2, "overscrollRight":I
    if-gez v4, :cond_2

    .line 1175
    sub-int/2addr v3, v4

    :cond_1
    :goto_1
    move v0, v3

    .line 1180
    goto :goto_0

    .line 1176
    :cond_2
    if-le v4, v2, :cond_1

    .line 1177
    sub-int v5, v4, v2

    add-int/2addr v3, v5

    goto :goto_1
.end method

.method public computeScroll()V
    .locals 14

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 1219
    iget-object v0, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1236
    iget v3, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScrollX:I

    .line 1237
    .local v3, "oldX":I
    iget v4, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScrollY:I

    .line 1238
    .local v4, "oldY":I
    iget-object v0, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v12

    .line 1239
    .local v12, "x":I
    iget-object v0, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v13

    .line 1241
    .local v13, "y":I
    if-ne v3, v12, :cond_0

    if-eq v4, v13, :cond_2

    .line 1242
    :cond_0
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getScrollRange()I

    move-result v5

    .line 1243
    .local v5, "range":I
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getOverScrollMode()I

    move-result v11

    .line 1244
    .local v11, "overscrollMode":I
    if-eqz v11, :cond_1

    if-ne v11, v10, :cond_4

    if-lez v5, :cond_4

    .line 1247
    .local v10, "canOverscroll":Z
    :cond_1
    :goto_0
    sub-int v1, v12, v3

    sub-int v2, v13, v4

    iget v7, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mOverflingDistance:I

    move-object v0, p0

    move v8, v6

    move v9, v6

    invoke-virtual/range {v0 .. v9}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->overScrollBy(IIIIIIIIZ)Z

    .line 1249
    iget v0, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScrollX:I

    iget v1, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 1251
    if-eqz v10, :cond_2

    .line 1252
    if-gez v12, :cond_5

    if-ltz v3, :cond_5

    .line 1253
    iget-object v0, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 1260
    .end local v5    # "range":I
    .end local v10    # "canOverscroll":Z
    .end local v11    # "overscrollMode":I
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1261
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->postInvalidateOnAnimation()V

    .line 1264
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_3
    return-void

    .restart local v3    # "oldX":I
    .restart local v4    # "oldY":I
    .restart local v5    # "range":I
    .restart local v11    # "overscrollMode":I
    .restart local v12    # "x":I
    .restart local v13    # "y":I
    :cond_4
    move v10, v6

    .line 1244
    goto :goto_0

    .line 1254
    .restart local v10    # "canOverscroll":Z
    :cond_5
    if-le v12, v5, :cond_2

    if-gt v3, v5, :cond_2

    .line 1255
    iget-object v0, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_1
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 10
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v7, 0x0

    .line 1314
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getChildCount()I

    move-result v8

    if-nez v8, :cond_1

    move v5, v7

    .line 1368
    :cond_0
    :goto_0
    return v5

    .line 1316
    :cond_1
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getWidth()I

    move-result v6

    .line 1317
    .local v6, "width":I
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getScrollX()I

    move-result v3

    .line 1318
    .local v3, "screenLeft":I
    add-int v4, v3, v6

    .line 1320
    .local v4, "screenRight":I
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v1

    .line 1323
    .local v1, "fadingEdge":I
    iget v8, p1, Landroid/graphics/Rect;->left:I

    if-lez v8, :cond_2

    .line 1324
    add-int/2addr v3, v1

    .line 1328
    :cond_2
    iget v8, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v7}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 1329
    sub-int/2addr v4, v1

    .line 1332
    :cond_3
    const/4 v5, 0x0

    .line 1334
    .local v5, "scrollXDelta":I
    iget v8, p1, Landroid/graphics/Rect;->right:I

    if-le v8, v4, :cond_5

    iget v8, p1, Landroid/graphics/Rect;->left:I

    if-le v8, v3, :cond_5

    .line 1339
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-le v8, v6, :cond_4

    .line 1341
    iget v8, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v3

    add-int/2addr v5, v8

    .line 1348
    :goto_1
    invoke-virtual {p0, v7}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1349
    .local v2, "right":I
    sub-int v0, v2, v4

    .line 1350
    .local v0, "distanceToRight":I
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1352
    goto :goto_0

    .line 1344
    .end local v0    # "distanceToRight":I
    .end local v2    # "right":I
    :cond_4
    iget v8, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v4

    add-int/2addr v5, v8

    goto :goto_1

    .line 1352
    :cond_5
    iget v7, p1, Landroid/graphics/Rect;->left:I

    if-ge v7, v3, :cond_0

    iget v7, p1, Landroid/graphics/Rect;->right:I

    if-ge v7, v4, :cond_0

    .line 1357
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-le v7, v6, :cond_6

    .line 1359
    iget v7, p1, Landroid/graphics/Rect;->right:I

    sub-int v7, v4, v7

    sub-int/2addr v5, v7

    .line 1366
    :goto_2
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getScrollX()I

    move-result v7

    neg-int v7, v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_0

    .line 1362
    :cond_6
    iget v7, p1, Landroid/graphics/Rect;->left:I

    sub-int v7, v3, v7

    sub-int/2addr v5, v7

    goto :goto_2
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 326
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1547
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1548
    iget-object v4, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_3

    .line 1549
    iget v2, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScrollX:I

    .line 1550
    .local v2, "scrollX":I
    iget-object v4, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1551
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1552
    .local v1, "restoreCount":I
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mPaddingBottom:I

    sub-int v0, v4, v5

    .line 1554
    .local v0, "height":I
    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1555
    neg-int v4, v0

    iget v5, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mPaddingTop:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1556
    iget-object v4, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getWidth()I

    move-result v5

    invoke-virtual {v4, v0, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 1557
    iget-object v4, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1558
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->postInvalidateOnAnimation()V

    .line 1560
    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1562
    .end local v0    # "height":I
    .end local v1    # "restoreCount":I
    :cond_1
    iget-object v4, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1563
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1564
    .restart local v1    # "restoreCount":I
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getWidth()I

    move-result v3

    .line 1565
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mPaddingBottom:I

    sub-int v0, v4, v5

    .line 1567
    .restart local v0    # "height":I
    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1568
    iget v4, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mPaddingTop:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-direct {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v5, v3

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1570
    iget-object v4, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v0, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 1571
    iget-object v4, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1572
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->postInvalidateOnAnimation()V

    .line 1574
    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1577
    .end local v0    # "height":I
    .end local v1    # "restoreCount":I
    .end local v2    # "scrollX":I
    .end local v3    # "width":I
    :cond_3
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x11

    const/16 v5, 0x42

    .line 338
    iget-object v6, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 340
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->canScroll()Z

    move-result v6

    if-nez v6, :cond_2

    .line 341
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 342
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 343
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 344
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    invoke-virtual {v4, p0, v0, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 346
    .local v2, "nextFocused":Landroid/view/View;
    if-eqz v2, :cond_1

    if-eq v2, p0, :cond_1

    invoke-virtual {v2, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 375
    .end local v0    # "currentFocused":Landroid/view/View;
    .end local v2    # "nextFocused":Landroid/view/View;
    :cond_1
    :goto_0
    return v3

    .line 352
    :cond_2
    const/4 v1, 0x0

    .line 353
    .local v1, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    .line 354
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_3
    :goto_1
    move v3, v1

    .line 375
    goto :goto_0

    .line 356
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 357
    invoke-virtual {p0, v4}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 359
    :cond_4
    invoke-virtual {p0, v4}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->fullScroll(I)Z

    move-result v1

    .line 361
    goto :goto_1

    .line 363
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 364
    invoke-virtual {p0, v5}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 366
    :cond_5
    invoke-virtual {p0, v5}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->fullScroll(I)Z

    move-result v1

    .line 368
    goto :goto_1

    .line 370
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->pageScroll(I)Z

    goto :goto_1

    :cond_6
    move v3, v5

    goto :goto_2

    .line 354
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public fling(I)V
    .locals 17
    .param p1, "velocityX"    # I

    .prologue
    .line 1486
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 1487
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mPaddingLeft:I

    sub-int v16, v1, v2

    .line 1488
    .local v16, "width":I
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v15

    .line 1490
    .local v15, "right":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScrollY:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    sub-int v7, v15, v16

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    div-int/lit8 v10, v16, 0x2

    const/4 v11, 0x0

    move/from16 v4, p1

    invoke-virtual/range {v1 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 1493
    if-lez p1, :cond_3

    const/4 v13, 0x1

    .line 1495
    .local v13, "movingRight":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v12

    .line 1496
    .local v12, "currentFocused":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v1, v12}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;

    move-result-object v14

    .line 1499
    .local v14, "newFocused":Landroid/view/View;
    if-nez v14, :cond_0

    .line 1500
    move-object/from16 v14, p0

    .line 1503
    :cond_0
    if-eq v14, v12, :cond_1

    .line 1504
    if-eqz v13, :cond_4

    const/16 v1, 0x42

    :goto_1
    invoke-virtual {v14, v1}, Landroid/view/View;->requestFocus(I)Z

    .line 1507
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->postInvalidateOnAnimation()V

    .line 1509
    .end local v12    # "currentFocused":Landroid/view/View;
    .end local v13    # "movingRight":Z
    .end local v14    # "newFocused":Landroid/view/View;
    .end local v15    # "right":I
    .end local v16    # "width":I
    :cond_2
    return-void

    .line 1493
    .restart local v15    # "right":I
    .restart local v16    # "width":I
    :cond_3
    const/4 v13, 0x0

    goto :goto_0

    .line 1504
    .restart local v12    # "currentFocused":Landroid/view/View;
    .restart local v13    # "movingRight":Z
    .restart local v14    # "newFocused":Landroid/view/View;
    :cond_4
    const/16 v1, 0x11

    goto :goto_1
.end method

.method public fullScroll(I)Z
    .locals 6
    .param p1, "direction"    # I

    .prologue
    const/4 v4, 0x0

    .line 970
    const/16 v5, 0x42

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 971
    .local v1, "right":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getWidth()I

    move-result v3

    .line 973
    .local v3, "width":I
    iget-object v5, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->left:I

    .line 974
    iget-object v5, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v3, v5, Landroid/graphics/Rect;->right:I

    .line 976
    if-eqz v1, :cond_0

    .line 977
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getChildCount()I

    move-result v0

    .line 978
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 979
    invoke-virtual {p0, v4}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 980
    .local v2, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 981
    iget-object v4, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 985
    .end local v0    # "count":I
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v4, v5}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1    # "right":Z
    .end local v3    # "width":I
    :cond_1
    move v1, v4

    .line 970
    goto :goto_0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 3

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 153
    const/4 v1, 0x0

    .line 161
    :goto_0
    return v1

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 157
    .local v0, "length":I
    iget v1, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScrollX:I

    if-ge v1, v0, :cond_1

    .line 158
    iget v1, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScrollX:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    .line 161
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 185
    const/high16 v0, 0x3f000000    # 0.5f

    iget v1, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mRight:I

    iget v2, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mLeft:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 167
    const/4 v3, 0x0

    .line 177
    :goto_0
    return v3

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 171
    .local v0, "length":I
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mPaddingRight:I

    sub-int v1, v3, v4

    .line 172
    .local v1, "rightEdge":I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScrollX:I

    sub-int/2addr v3, v4

    sub-int v2, v3, v1

    .line 173
    .local v2, "span":I
    if-ge v2, v0, :cond_1

    .line 174
    int-to-float v3, v2

    int-to-float v4, v0

    div-float/2addr v3, v4

    goto :goto_0

    .line 177
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public isFillViewport()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mFillViewport:Z

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x0

    .line 1190
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1195
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mPaddingTop:I

    iget v4, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v3, v4}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 1198
    .local v0, "childHeightMeasureSpec":I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1200
    .local v1, "childWidthMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1201
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .prologue
    .line 1206
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1208
    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mPaddingTop:I

    iget v4, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v3, v4}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 1211
    .local v0, "childHeightMeasureSpec":I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1214
    .local v1, "childWidthMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1215
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 678
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    .line 679
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 707
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :goto_0
    return v5

    .line 681
    :pswitch_0
    iget-boolean v5, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mIsBeingDragged:Z

    if-nez v5, :cond_0

    .line 683
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    .line 684
    const/16 v5, 0x9

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v5

    neg-float v1, v5

    .line 688
    .local v1, "hscroll":F
    :goto_1
    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_0

    .line 689
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getHorizontalScrollFactor()F

    move-result v5

    mul-float/2addr v5, v1

    float-to-int v0, v5

    .line 690
    .local v0, "delta":I
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getScrollRange()I

    move-result v4

    .line 691
    .local v4, "range":I
    iget v3, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScrollX:I

    .line 692
    .local v3, "oldScrollX":I
    add-int v2, v3, v0

    .line 693
    .local v2, "newScrollX":I
    if-gez v2, :cond_3

    .line 694
    const/4 v2, 0x0

    .line 698
    :cond_1
    :goto_2
    if-eq v2, v3, :cond_0

    .line 699
    iget v5, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScrollY:I

    invoke-super {p0, v2, v5}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 700
    const/4 v5, 0x1

    goto :goto_0

    .line 686
    .end local v0    # "delta":I
    .end local v1    # "hscroll":F
    .end local v2    # "newScrollX":I
    .end local v3    # "oldScrollX":I
    .end local v4    # "range":I
    :cond_2
    const/16 v5, 0xa

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .restart local v1    # "hscroll":F
    goto :goto_1

    .line 695
    .restart local v0    # "delta":I
    .restart local v2    # "newScrollX":I
    .restart local v3    # "oldScrollX":I
    .restart local v4    # "range":I
    :cond_3
    if-le v2, v4, :cond_1

    .line 696
    move v2, v4

    goto :goto_2

    .line 679
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 783
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 784
    const-class v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 785
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getScrollRange()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 786
    iget v0, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScrollX:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 787
    iget v0, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScrollY:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 788
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getScrollRange()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 789
    iget v0, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScrollY:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 790
    return-void

    .line 785
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 767
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 768
    const-class v1, Lcom/android/videoeditor/widgets/HorizontalScrollView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 769
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getScrollRange()I

    move-result v0

    .line 770
    .local v0, "scrollRange":I
    if-lez v0, :cond_1

    .line 771
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 772
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScrollX:I

    if-lez v1, :cond_0

    .line 773
    const/16 v1, 0x2000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 775
    :cond_0
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScrollX:I

    if-ge v1, v0, :cond_1

    .line 776
    const/16 v1, 0x1000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 779
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 450
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 451
    .local v7, "action":I
    const/4 v1, 0x2

    if-ne v7, v1, :cond_0

    iget-boolean v1, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_0

    .line 530
    :goto_0
    return v0

    .line 455
    :cond_0
    and-int/lit16 v1, v7, 0xff

    packed-switch v1, :pswitch_data_0

    .line 530
    :cond_1
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mIsBeingDragged:Z

    goto :goto_0

    .line 462
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mHasLastFocusX:Z

    if-eqz v1, :cond_1

    .line 468
    invoke-static {p1}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getFocusX(Landroid/view/MotionEvent;)I

    move-result v8

    .line 469
    .local v8, "x":I
    iget v1, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mLastFocusX:I

    sub-int v1, v8, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 470
    .local v9, "xDiff":I
    iget v1, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mTouchSlop:I

    if-le v9, v1, :cond_1

    .line 471
    iput-boolean v0, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mIsBeingDragged:Z

    .line 472
    iput v8, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mLastFocusX:I

    .line 473
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->initVelocityTrackerIfNotExists()V

    .line 474
    iget-object v1, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 475
    iget-object v1, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 481
    .end local v8    # "x":I
    .end local v9    # "xDiff":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v8, v1

    .line 482
    .restart local v8    # "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v8, v1}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->inChild(II)Z

    move-result v1

    if-nez v1, :cond_2

    .line 483
    iput-boolean v3, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mIsBeingDragged:Z

    .line 484
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->recycleVelocityTracker()V

    goto :goto_1

    .line 491
    :cond_2
    invoke-static {p1}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getFocusX(Landroid/view/MotionEvent;)I

    move-result v1

    iput v1, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mLastFocusX:I

    .line 492
    iput-boolean v0, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mHasLastFocusX:Z

    .line 494
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->initOrResetVelocityTracker()V

    .line 495
    iget-object v1, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 502
    iget-object v1, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3

    move v3, v0

    :cond_3
    iput-boolean v3, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mIsBeingDragged:Z

    goto :goto_1

    .line 509
    .end local v8    # "x":I
    :pswitch_3
    iput-boolean v3, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mIsBeingDragged:Z

    .line 510
    iput-boolean v3, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mHasLastFocusX:Z

    .line 511
    iget-object v0, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScrollX:I

    iget v2, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScrollY:I

    invoke-direct {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getScrollRange()I

    move-result v4

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 512
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->postInvalidateOnAnimation()V

    goto :goto_1

    .line 516
    :pswitch_4
    invoke-static {p1}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getFocusX(Landroid/view/MotionEvent;)I

    move-result v1

    iput v1, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mLastFocusX:I

    .line 517
    iput-boolean v0, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mHasLastFocusX:Z

    goto/16 :goto_1

    .line 521
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 522
    invoke-static {p1}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getFocusX(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mLastFocusX:I

    goto/16 :goto_1

    .line 455
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1436
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1437
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mIsLayoutDirty:Z

    .line 1439
    iget-object v0, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1440
    iget-object v0, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1442
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1445
    iget v0, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScrollX:I

    iget v1, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->scrollTo(II)V

    .line 1446
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 295
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 297
    iget-boolean v6, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mFillViewport:Z

    if-nez v6, :cond_1

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 302
    .local v5, "widthMode":I
    if-eqz v5, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 307
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 308
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getMeasuredWidth()I

    move-result v4

    .line 309
    .local v4, "width":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-ge v6, v4, :cond_0

    .line 310
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 312
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v6, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mPaddingTop:I

    iget v7, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mPaddingBottom:I

    add-int/2addr v6, v7

    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {p2, v6, v7}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 314
    .local v1, "childHeightMeasureSpec":I
    iget v6, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v4, v6

    .line 315
    iget v6, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v4, v6

    .line 316
    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 318
    .local v2, "childWidthMeasureSpec":I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 7
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    const/4 v3, 0x0

    .line 719
    iget-object v0, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 720
    iput p1, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScrollX:I

    .line 721
    iput p2, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScrollY:I

    .line 722
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->invalidateParentIfNeeded()V

    .line 723
    if-eqz p3, :cond_0

    .line 724
    iget-object v0, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScrollX:I

    iget v2, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScrollY:I

    invoke-direct {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getScrollRange()I

    move-result v4

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 730
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->awakenScrollBars()Z

    .line 731
    return-void

    .line 727
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    goto :goto_0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 1396
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 1397
    const/16 p1, 0x42

    .line 1402
    :cond_0
    :goto_0
    if-nez p2, :cond_3

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 1407
    .local v0, "nextFocus":Landroid/view/View;
    :goto_1
    if-nez v0, :cond_4

    .line 1415
    :cond_1
    :goto_2
    return v1

    .line 1398
    .end local v0    # "nextFocus":Landroid/view/View;
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 1399
    const/16 p1, 0x11

    goto :goto_0

    .line 1402
    :cond_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 1411
    .restart local v0    # "nextFocus":Landroid/view/View;
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1415
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1450
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1452
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1453
    .local v0, "currentFocused":Landroid/view/View;
    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    .line 1464
    :cond_0
    :goto_0
    return-void

    .line 1456
    :cond_1
    iget v3, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mRight:I

    iget v4, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mLeft:I

    sub-int v1, v3, v4

    .line 1458
    .local v1, "maxJump":I
    invoke-direct {p0, v0, v1}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1459
    iget-object v3, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1460
    iget-object v3, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v3}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1461
    iget-object v3, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    .line 1462
    .local v2, "scrollDelta":I
    invoke-direct {p0, v2}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->doScrollX(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 27
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 535
    invoke-direct/range {p0 .. p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->initVelocityTrackerIfNotExists()V

    .line 536
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 538
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v16

    .line 540
    .local v16, "action":I
    move/from16 v0, v16

    and-int/lit16 v3, v0, 0xff

    packed-switch v3, :pswitch_data_0

    .line 665
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 542
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 543
    const/4 v3, 0x0

    goto :goto_1

    .line 545
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_2

    .line 546
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    .line 547
    .local v22, "parent":Landroid/view/ViewParent;
    if-eqz v22, :cond_2

    .line 548
    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 556
    .end local v22    # "parent":Landroid/view/ViewParent;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_3

    .line 557
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 561
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getFocusX(Landroid/view/MotionEvent;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mLastFocusX:I

    .line 562
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mHasLastFocusX:Z

    goto :goto_0

    .line 545
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 566
    :pswitch_2
    invoke-static/range {p1 .. p1}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getFocusX(Landroid/view/MotionEvent;)I

    move-result v26

    .line 567
    .local v26, "x":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mLastFocusX:I

    sub-int v4, v3, v26

    .line 568
    .local v4, "deltaX":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mIsBeingDragged:Z

    if-nez v3, :cond_6

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mTouchSlop:I

    if-le v3, v5, :cond_6

    .line 569
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    .line 570
    .restart local v22    # "parent":Landroid/view/ViewParent;
    if-eqz v22, :cond_5

    .line 571
    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 573
    :cond_5
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mIsBeingDragged:Z

    .line 574
    if-lez v4, :cond_b

    .line 575
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mTouchSlop:I

    sub-int/2addr v4, v3

    .line 580
    .end local v22    # "parent":Landroid/view/ViewParent;
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_0

    .line 582
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mLastFocusX:I

    .line 584
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScrollX:I

    move/from16 v19, v0

    .line 585
    .local v19, "oldX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScrollY:I

    move/from16 v20, v0

    .line 586
    .local v20, "oldY":I
    invoke-direct/range {p0 .. p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getScrollRange()I

    move-result v8

    .line 587
    .local v8, "range":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getOverScrollMode()I

    move-result v21

    .line 588
    .local v21, "overscrollMode":I
    if-eqz v21, :cond_7

    const/4 v3, 0x1

    move/from16 v0, v21

    if-ne v0, v3, :cond_c

    if-lez v8, :cond_c

    :cond_7
    const/16 v17, 0x1

    .line 591
    .local v17, "canOverscroll":Z
    :goto_4
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScrollX:I

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mOverscrollDistance:I

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v12}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 594
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 596
    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScrollY:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v3, v5, v1, v2}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 598
    if-eqz v17, :cond_0

    .line 599
    add-int v24, v19, v4

    .line 600
    .local v24, "pulledToX":I
    if-gez v24, :cond_d

    .line 601
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    int-to-float v5, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v3, v5}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 602
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_9

    .line 603
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 611
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    .line 613
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->postInvalidateOnAnimation()V

    goto/16 :goto_0

    .line 577
    .end local v8    # "range":I
    .end local v17    # "canOverscroll":Z
    .end local v19    # "oldX":I
    .end local v20    # "oldY":I
    .end local v21    # "overscrollMode":I
    .end local v24    # "pulledToX":I
    .restart local v22    # "parent":Landroid/view/ViewParent;
    :cond_b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mTouchSlop:I

    add-int/2addr v4, v3

    goto/16 :goto_3

    .line 588
    .end local v22    # "parent":Landroid/view/ViewParent;
    .restart local v8    # "range":I
    .restart local v19    # "oldX":I
    .restart local v20    # "oldY":I
    .restart local v21    # "overscrollMode":I
    :cond_c
    const/16 v17, 0x0

    goto :goto_4

    .line 605
    .restart local v17    # "canOverscroll":Z
    .restart local v24    # "pulledToX":I
    :cond_d
    move/from16 v0, v24

    if-le v0, v8, :cond_9

    .line 606
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    int-to-float v5, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v3, v5}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 607
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_9

    .line 608
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_5

    .line 619
    .end local v4    # "deltaX":I
    .end local v8    # "range":I
    .end local v17    # "canOverscroll":Z
    .end local v19    # "oldX":I
    .end local v20    # "oldY":I
    .end local v21    # "overscrollMode":I
    .end local v24    # "pulledToX":I
    .end local v26    # "x":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_0

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v25, v0

    .line 621
    .local v25, "velocityTracker":Landroid/view/VelocityTracker;
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v23

    .line 622
    .local v23, "pointerId":I
    const/16 v3, 0x3e8

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mMaximumVelocity:I

    int-to-float v5, v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 623
    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v3

    float-to-int v0, v3

    move/from16 v18, v0

    .line 625
    .local v18, "initialVelocity":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_e

    .line 626
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mMinimumVelocity:I

    if-le v3, v5, :cond_f

    .line 627
    move/from16 v0, v18

    neg-int v3, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->fling(I)V

    .line 636
    :cond_e
    :goto_6
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mHasLastFocusX:Z

    .line 637
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mIsBeingDragged:Z

    .line 638
    invoke-direct/range {p0 .. p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->recycleVelocityTracker()V

    .line 640
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_0

    .line 641
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 642
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    goto/16 :goto_0

    .line 629
    :cond_f
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScrollY:I

    const/4 v12, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getScrollRange()I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v9 .. v15}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 631
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->postInvalidateOnAnimation()V

    goto :goto_6

    .line 647
    .end local v18    # "initialVelocity":I
    .end local v23    # "pointerId":I
    .end local v25    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 648
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScrollY:I

    const/4 v12, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getScrollRange()I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v9 .. v15}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 649
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->postInvalidateOnAnimation()V

    .line 651
    :cond_10
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mHasLastFocusX:Z

    .line 652
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mIsBeingDragged:Z

    .line 653
    invoke-direct/range {p0 .. p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->recycleVelocityTracker()V

    .line 655
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_0

    .line 656
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 657
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    goto/16 :goto_0

    .line 662
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 540
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public pageScroll(I)Z
    .locals 7
    .param p1, "direction"    # I

    .prologue
    const/4 v4, 0x0

    .line 934
    const/16 v5, 0x42

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 935
    .local v1, "right":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getWidth()I

    move-result v3

    .line 937
    .local v3, "width":I
    if-eqz v1, :cond_2

    .line 938
    iget-object v5, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getScrollX()I

    move-result v6

    add-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 939
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getChildCount()I

    move-result v0

    .line 940
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 941
    invoke-virtual {p0, v4}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 942
    .local v2, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 943
    iget-object v4, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 952
    .end local v0    # "count":I
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 954
    iget-object v4, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v4, v5}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1    # "right":Z
    .end local v3    # "width":I
    :cond_1
    move v1, v4

    .line 934
    goto :goto_0

    .line 947
    .restart local v1    # "right":Z
    .restart local v3    # "width":I
    :cond_2
    iget-object v5, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getScrollX()I

    move-result v6

    sub-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 948
    iget-object v5, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-gez v5, :cond_0

    .line 949
    iget-object v5, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->left:I

    goto :goto_1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 735
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 762
    :goto_0
    return v2

    .line 738
    :cond_0
    sparse-switch p1, :sswitch_data_0

    move v2, v3

    .line 762
    goto :goto_0

    .line 740
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    .line 741
    goto :goto_0

    .line 743
    :cond_1
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mPaddingRight:I

    sub-int v1, v4, v5

    .line 744
    .local v1, "viewportWidth":I
    iget v4, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScrollX:I

    add-int/2addr v4, v1

    invoke-direct {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 745
    .local v0, "targetScrollX":I
    iget v4, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScrollX:I

    if-eq v0, v4, :cond_2

    .line 746
    invoke-virtual {p0, v0, v3}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0

    :cond_2
    move v2, v3

    .line 749
    goto :goto_0

    .line 751
    .end local v0    # "targetScrollX":I
    .end local v1    # "viewportWidth":I
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    move v2, v3

    .line 752
    goto :goto_0

    .line 754
    :cond_3
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mPaddingRight:I

    sub-int v1, v4, v5

    .line 755
    .restart local v1    # "viewportWidth":I
    iget v4, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScrollX:I

    sub-int/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 756
    .restart local v0    # "targetScrollX":I
    iget v4, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScrollX:I

    if-eq v0, v4, :cond_4

    .line 757
    invoke-virtual {p0, v0, v3}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0

    :cond_4
    move v2, v3

    .line 760
    goto :goto_0

    .line 738
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 1373
    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_0

    .line 1374
    invoke-direct {p0, p2}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1379
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1380
    return-void

    .line 1377
    :cond_0
    iput-object p2, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 1422
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1425
    invoke-direct {p0, p2, p3}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 431
    if-eqz p1, :cond_0

    .line 432
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->recycleVelocityTracker()V

    .line 434
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 435
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1430
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mIsLayoutDirty:Z

    .line 1431
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1432
    return-void
.end method

.method public scrollTo(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1519
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1520
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1521
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->clamp(III)I

    move-result p1

    .line 1522
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {p2, v1, v2}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->clamp(III)I

    move-result p2

    .line 1523
    iget v1, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScrollX:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScrollY:I

    if-eq p2, v1, :cond_1

    .line 1524
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1527
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1
    .param p1, "fillViewport"    # Z

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    .line 273
    iput-boolean p1, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mFillViewport:Z

    .line 274
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->requestLayout()V

    .line 276
    :cond_0
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    .line 1531
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 1532
    iget-object v1, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_0

    .line 1533
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1534
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    .line 1535
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    .line 1541
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V

    .line 1542
    return-void

    .line 1538
    :cond_1
    iput-object v2, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    .line 1539
    iput-object v2, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    goto :goto_0
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .param p1, "smoothScrollingEnabled"    # Z

    .prologue
    .line 290
    iput-boolean p1, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mSmoothScrollingEnabled:Z

    .line 291
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 712
    const/4 v0, 0x1

    return v0
.end method

.method public final smoothScrollBy(II)V
    .locals 11
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    const/4 v10, 0x0

    .line 1126
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getChildCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 1147
    :goto_0
    return-void

    .line 1130
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mLastScroll:J

    sub-long v0, v6, v8

    .line 1131
    .local v0, "duration":J
    const-wide/16 v6, 0xfa

    cmp-long v6, v0, v6

    if-lez v6, :cond_1

    .line 1132
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mPaddingLeft:I

    sub-int v5, v6, v7

    .line 1133
    .local v5, "width":I
    invoke-virtual {p0, v10}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 1134
    .local v3, "right":I
    sub-int v6, v3, v5

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1135
    .local v2, "maxX":I
    iget v4, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScrollX:I

    .line 1136
    .local v4, "scrollX":I
    add-int v6, v4, p1

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int p1, v6, v4

    .line 1138
    iget-object v6, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v7, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScrollY:I

    invoke-virtual {v6, v4, v7, p1, v10}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 1139
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->postInvalidateOnAnimation()V

    .line 1146
    .end local v2    # "maxX":I
    .end local v3    # "right":I
    .end local v4    # "scrollX":I
    .end local v5    # "width":I
    :goto_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mLastScroll:J

    goto :goto_0

    .line 1141
    :cond_1
    iget-object v6, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1142
    iget-object v6, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1144
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->scrollBy(II)V

    goto :goto_1
.end method

.method public final smoothScrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1156
    iget v0, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/videoeditor/widgets/HorizontalScrollView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->smoothScrollBy(II)V

    .line 1157
    return-void
.end method
