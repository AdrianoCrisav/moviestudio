.class public Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;
.super Lcom/android/videoeditor/widgets/HorizontalScrollView;
.source "TimelineHorizontalScrollView.java"


# static fields
.field public static final PLAYHEAD_MOVE_NOT_OK:I = 0x3

.field public static final PLAYHEAD_MOVE_OK:I = 0x2

.field public static final PLAYHEAD_NORMAL:I = 0x1


# instance fields
.field private mAppScroll:Z

.field private mEnableUserScrolling:Z

.field private final mHalfParentWidth:I

.field private final mHandler:Landroid/os/Handler;

.field private mIsScrolling:Z

.field private mLastScrollX:I

.field private final mMoveNotOkPlayheadDrawable:Landroid/graphics/drawable/Drawable;

.field private final mMoveOkPlayheadDrawable:Landroid/graphics/drawable/Drawable;

.field private final mNormalPlayheadDrawable:Landroid/graphics/drawable/Drawable;

.field private final mPlayheadMarginBottom:I

.field private final mPlayheadMarginTop:I

.field private final mPlayheadMarginTopNotOk:I

.field private final mPlayheadMarginTopOk:I

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mScrollEndedRunnable:Ljava/lang/Runnable;

.field private final mScrollListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/videoeditor/widgets/ScrollViewListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x1

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/android/videoeditor/widgets/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    new-instance v2, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView$1;

    invoke-direct {v2, p0}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView$1;-><init>(Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;)V

    iput-object v2, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mScrollEndedRunnable:Ljava/lang/Runnable;

    .line 79
    iput-boolean v4, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mEnableUserScrolling:Z

    .line 80
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mScrollListenerList:Ljava/util/List;

    .line 81
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mHandler:Landroid/os/Handler;

    move-object v2, p1

    .line 84
    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 85
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mHalfParentWidth:I

    .line 89
    const/high16 v2, 0x7f080000

    iget v3, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mHalfParentWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->setTag(ILjava/lang/Object;)V

    .line 90
    const v2, 0x7f080001

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->setTag(ILjava/lang/Object;)V

    .line 91
    const v2, 0x7f080002

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->setTag(ILjava/lang/Object;)V

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 96
    .local v1, "resources":Landroid/content/res/Resources;
    const v2, 0x7f070013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mPlayheadMarginTop:I

    .line 97
    const v2, 0x7f070016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mPlayheadMarginBottom:I

    .line 98
    const v2, 0x7f070014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mPlayheadMarginTopOk:I

    .line 99
    const v2, 0x7f070015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mPlayheadMarginTopNotOk:I

    .line 102
    const v2, 0x7f020038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mNormalPlayheadDrawable:Landroid/graphics/drawable/Drawable;

    .line 103
    const v2, 0x7f020041

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mMoveOkPlayheadDrawable:Landroid/graphics/drawable/Drawable;

    .line 104
    const v2, 0x7f020040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mMoveNotOkPlayheadDrawable:Landroid/graphics/drawable/Drawable;

    .line 105
    return-void
.end method

.method static synthetic access$002(Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mIsScrolling:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mScrollListenerList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mAppScroll:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mAppScroll:Z

    return p1
.end method


# virtual methods
.method public addScrollListener(Lcom/android/videoeditor/widgets/ScrollViewListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/videoeditor/widgets/ScrollViewListener;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mScrollListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    return-void
.end method

.method public appScrollBy(IZ)V
    .locals 2
    .param p1, "scrollX"    # I
    .param p2, "smooth"    # Z

    .prologue
    const/4 v1, 0x0

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mAppScroll:Z

    .line 202
    if-eqz p2, :cond_0

    .line 203
    invoke-virtual {p0, p1, v1}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->smoothScrollBy(II)V

    .line 207
    :goto_0
    return-void

    .line 205
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method public appScrollTo(IZ)V
    .locals 2
    .param p1, "scrollX"    # I
    .param p2, "smooth"    # Z

    .prologue
    const/4 v1, 0x0

    .line 180
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->getScrollX()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 191
    :goto_0
    return-void

    .line 184
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mAppScroll:Z

    .line 186
    if-eqz p2, :cond_1

    .line 187
    invoke-virtual {p0, p1, v1}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0

    .line 189
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->scrollTo(II)V

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 8

    .prologue
    .line 211
    invoke-super {p0}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->computeScroll()V

    .line 213
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->getScrollX()I

    move-result v2

    .line 214
    .local v2, "scrollX":I
    iget v4, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mLastScrollX:I

    if-eq v4, v2, :cond_1

    .line 215
    iput v2, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mLastScrollX:I

    .line 218
    iget-object v4, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mScrollEndedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 221
    iget-object v4, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mScrollEndedRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 223
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->getScrollY()I

    move-result v3

    .line 224
    .local v3, "scrollY":I
    iget-boolean v4, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mIsScrolling:Z

    if-eqz v4, :cond_0

    .line 225
    iget-object v4, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mScrollListenerList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/videoeditor/widgets/ScrollViewListener;

    .line 226
    .local v1, "listener":Lcom/android/videoeditor/widgets/ScrollViewListener;
    iget-boolean v4, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mAppScroll:Z

    invoke-interface {v1, p0, v2, v3, v4}, Lcom/android/videoeditor/widgets/ScrollViewListener;->onScrollProgress(Landroid/view/View;IIZ)V

    goto :goto_0

    .line 229
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/android/videoeditor/widgets/ScrollViewListener;
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mIsScrolling:Z

    .line 231
    iget-object v4, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mScrollListenerList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/videoeditor/widgets/ScrollViewListener;

    .line 232
    .restart local v1    # "listener":Lcom/android/videoeditor/widgets/ScrollViewListener;
    iget-boolean v4, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mAppScroll:Z

    invoke-interface {v1, p0, v2, v3, v4}, Lcom/android/videoeditor/widgets/ScrollViewListener;->onScrollBegin(Landroid/view/View;IIZ)V

    goto :goto_1

    .line 236
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/android/videoeditor/widgets/ScrollViewListener;
    .end local v3    # "scrollY":I
    :cond_1
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 240
    invoke-super {p0, p1}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 242
    const v4, 0x7f080001

    invoke-virtual {p0, v4}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 244
    .local v1, "playheadOffset":I
    if-gez v1, :cond_0

    .line 246
    iget v4, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mHalfParentWidth:I

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->getScrollX()I

    move-result v5

    add-int v3, v4, v5

    .line 252
    .local v3, "startX":I
    :goto_0
    const v4, 0x7f080002

    invoke-virtual {p0, v4}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 253
    .local v2, "playheadType":I
    iget-object v4, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mNormalPlayheadDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v0, v4, 0x2

    .line 254
    .local v0, "halfPlayheadWidth":I
    packed-switch v2, :pswitch_data_0

    .line 292
    :goto_1
    return-void

    .line 249
    .end local v0    # "halfPlayheadWidth":I
    .end local v2    # "playheadType":I
    .end local v3    # "startX":I
    :cond_0
    move v3, v1

    .restart local v3    # "startX":I
    goto :goto_0

    .line 257
    .restart local v0    # "halfPlayheadWidth":I
    .restart local v2    # "playheadType":I
    :pswitch_0
    iget-object v4, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mNormalPlayheadDrawable:Landroid/graphics/drawable/Drawable;

    sub-int v5, v3, v0

    iget v6, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mPlayheadMarginTop:I

    add-int v7, v3, v0

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mPlayheadMarginBottom:I

    sub-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 262
    iget-object v4, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mNormalPlayheadDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 268
    :pswitch_1
    iget-object v4, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mMoveOkPlayheadDrawable:Landroid/graphics/drawable/Drawable;

    sub-int v5, v3, v0

    iget v6, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mPlayheadMarginTopOk:I

    add-int v7, v3, v0

    iget v8, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mPlayheadMarginTopOk:I

    iget-object v9, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mMoveOkPlayheadDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 273
    iget-object v4, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mMoveOkPlayheadDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 279
    :pswitch_2
    iget-object v4, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mMoveNotOkPlayheadDrawable:Landroid/graphics/drawable/Drawable;

    sub-int v5, v3, v0

    iget v6, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mPlayheadMarginTopNotOk:I

    add-int v7, v3, v0

    iget v8, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mPlayheadMarginTopNotOk:I

    iget-object v9, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mMoveNotOkPlayheadDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 284
    iget-object v4, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mMoveNotOkPlayheadDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 254
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public enableUserScrolling(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mEnableUserScrolling:Z

    .line 121
    return-void
.end method

.method public isScrolling()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mIsScrolling:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 126
    invoke-super {p0, p1}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    .line 131
    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mEnableUserScrolling:Z

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 133
    invoke-super {p0, p1}, Lcom/android/videoeditor/widgets/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 141
    :goto_0
    return v0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x3

    const/4 v7, 0x0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 138
    .local v8, "cancelEvent":Landroid/view/MotionEvent;
    iget-object v0, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, v8}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 139
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 141
    .end local v8    # "cancelEvent":Landroid/view/MotionEvent;
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeScrollListener(Lcom/android/videoeditor/widgets/ScrollViewListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/videoeditor/widgets/ScrollViewListener;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mScrollListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 164
    return-void
.end method

.method public setScaleListener(Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;

    .prologue
    .line 149
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 150
    return-void
.end method
