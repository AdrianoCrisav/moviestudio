.class public Lcom/android/videoeditor/widgets/HandleView;
.super Landroid/widget/ImageView;
.source "HandleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/videoeditor/widgets/HandleView$MoveListener;
    }
.end annotation


# instance fields
.field private mBeginLimitReached:Z

.field private mEndLimitReached:Z

.field private final mIconDragClipLeft:Landroid/graphics/drawable/Drawable;

.field private final mIconDragClipRight:Landroid/graphics/drawable/Drawable;

.field private mLastDeltaX:I

.field private mLastMoveX:F

.field private mListener:Lcom/android/videoeditor/widgets/HandleView$MoveListener;

.field private mMoveStarted:Z

.field private mStartMoveX:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/videoeditor/widgets/HandleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/videoeditor/widgets/HandleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 77
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f02001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/videoeditor/widgets/HandleView;->mIconDragClipLeft:Landroid/graphics/drawable/Drawable;

    .line 78
    const v1, 0x7f02001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/videoeditor/widgets/HandleView;->mIconDragClipRight:Landroid/graphics/drawable/Drawable;

    .line 79
    return-void
.end method

.method private endActionMove(F)V
    .locals 4
    .param p1, "eventX"    # F

    .prologue
    .line 186
    iget-boolean v1, p0, Lcom/android/videoeditor/widgets/HandleView;->mMoveStarted:Z

    if-eqz v1, :cond_0

    .line 187
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/videoeditor/widgets/HandleView;->mMoveStarted:Z

    .line 189
    iget-object v1, p0, Lcom/android/videoeditor/widgets/HandleView;->mListener:Lcom/android/videoeditor/widgets/HandleView$MoveListener;

    if-eqz v1, :cond_0

    .line 190
    iget v1, p0, Lcom/android/videoeditor/widgets/HandleView;->mStartMoveX:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 191
    .local v0, "deltaX":I
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HandleView;->getId()I

    move-result v1

    const v2, 0x7f080018

    if-ne v1, v2, :cond_1

    .line 192
    iget-object v1, p0, Lcom/android/videoeditor/widgets/HandleView;->mListener:Lcom/android/videoeditor/widgets/HandleView$MoveListener;

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HandleView;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HandleView;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    invoke-interface {v1, p0, v2, v3}, Lcom/android/videoeditor/widgets/HandleView$MoveListener;->onMoveEnd(Lcom/android/videoeditor/widgets/HandleView;II)V

    .line 198
    .end local v0    # "deltaX":I
    :cond_0
    :goto_0
    return-void

    .line 194
    .restart local v0    # "deltaX":I
    :cond_1
    iget-object v1, p0, Lcom/android/videoeditor/widgets/HandleView;->mListener:Lcom/android/videoeditor/widgets/HandleView$MoveListener;

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HandleView;->getLeft()I

    move-result v2

    invoke-interface {v1, p0, v2, v0}, Lcom/android/videoeditor/widgets/HandleView$MoveListener;->onMoveEnd(Lcom/android/videoeditor/widgets/HandleView;II)V

    goto :goto_0
.end method


# virtual methods
.method public endMove()V
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/HandleView;->mMoveStarted:Z

    if-eqz v0, :cond_0

    .line 119
    iget v0, p0, Lcom/android/videoeditor/widgets/HandleView;->mLastMoveX:F

    invoke-direct {p0, v0}, Lcom/android/videoeditor/widgets/HandleView;->endActionMove(F)V

    .line 121
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 202
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 204
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HandleView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/videoeditor/widgets/HandleView;->mIconDragClipLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 205
    .local v0, "top":I
    iget-boolean v1, p0, Lcom/android/videoeditor/widgets/HandleView;->mBeginLimitReached:Z

    if-nez v1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/android/videoeditor/widgets/HandleView;->mIconDragClipLeft:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/videoeditor/widgets/HandleView;->mIconDragClipLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/videoeditor/widgets/HandleView;->mIconDragClipLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 210
    iget-object v1, p0, Lcom/android/videoeditor/widgets/HandleView;->mIconDragClipLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 213
    :cond_0
    iget-boolean v1, p0, Lcom/android/videoeditor/widgets/HandleView;->mEndLimitReached:Z

    if-nez v1, :cond_1

    .line 214
    iget-object v1, p0, Lcom/android/videoeditor/widgets/HandleView;->mIconDragClipRight:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/videoeditor/widgets/HandleView;->mIconDragClipRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/videoeditor/widgets/HandleView;->mIconDragClipRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/android/videoeditor/widgets/HandleView;->mIconDragClipRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 219
    iget-object v1, p0, Lcom/android/videoeditor/widgets/HandleView;->mIconDragClipRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 221
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 125
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 177
    :cond_0
    :goto_0
    return v4

    .line 129
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HandleView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 131
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HandleView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 132
    iget-object v1, p0, Lcom/android/videoeditor/widgets/HandleView;->mListener:Lcom/android/videoeditor/widgets/HandleView$MoveListener;

    if-eqz v1, :cond_1

    .line 133
    iget-object v1, p0, Lcom/android/videoeditor/widgets/HandleView;->mListener:Lcom/android/videoeditor/widgets/HandleView$MoveListener;

    invoke-interface {v1, p0}, Lcom/android/videoeditor/widgets/HandleView$MoveListener;->onMoveBegin(Lcom/android/videoeditor/widgets/HandleView;)V

    .line 136
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/videoeditor/widgets/HandleView;->mStartMoveX:F

    .line 137
    iput-boolean v4, p0, Lcom/android/videoeditor/widgets/HandleView;->mMoveStarted:Z

    .line 142
    :goto_1
    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/videoeditor/widgets/HandleView;->mLastDeltaX:I

    goto :goto_0

    .line 139
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/videoeditor/widgets/HandleView;->mMoveStarted:Z

    goto :goto_1

    .line 147
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/videoeditor/widgets/HandleView;->mMoveStarted:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HandleView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/android/videoeditor/widgets/HandleView;->mStartMoveX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 149
    .local v0, "deltaX":I
    iget v1, p0, Lcom/android/videoeditor/widgets/HandleView;->mLastDeltaX:I

    if-eq v0, v1, :cond_0

    .line 150
    iput v0, p0, Lcom/android/videoeditor/widgets/HandleView;->mLastDeltaX:I

    .line 152
    iget-object v1, p0, Lcom/android/videoeditor/widgets/HandleView;->mListener:Lcom/android/videoeditor/widgets/HandleView$MoveListener;

    if-eqz v1, :cond_3

    .line 153
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HandleView;->getId()I

    move-result v1

    const v2, 0x7f080018

    if-ne v1, v2, :cond_4

    .line 154
    iget-object v1, p0, Lcom/android/videoeditor/widgets/HandleView;->mListener:Lcom/android/videoeditor/widgets/HandleView$MoveListener;

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HandleView;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HandleView;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    invoke-interface {v1, p0, v2, v3}, Lcom/android/videoeditor/widgets/HandleView$MoveListener;->onMove(Lcom/android/videoeditor/widgets/HandleView;II)Z

    .line 160
    :cond_3
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/videoeditor/widgets/HandleView;->mLastMoveX:F

    goto :goto_0

    .line 156
    :cond_4
    iget-object v1, p0, Lcom/android/videoeditor/widgets/HandleView;->mListener:Lcom/android/videoeditor/widgets/HandleView$MoveListener;

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HandleView;->getLeft()I

    move-result v2

    invoke-interface {v1, p0, v2, v0}, Lcom/android/videoeditor/widgets/HandleView$MoveListener;->onMove(Lcom/android/videoeditor/widgets/HandleView;II)Z

    goto :goto_2

    .line 168
    .end local v0    # "deltaX":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/videoeditor/widgets/HandleView;->endActionMove(F)V

    goto :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setLimitReached(ZZ)V
    .locals 1
    .param p1, "beginLimitReached"    # Z
    .param p2, "endLimitReached"    # Z

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/HandleView;->mBeginLimitReached:Z

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/HandleView;->mEndLimitReached:Z

    if-ne p2, v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 108
    :cond_0
    iput-boolean p1, p0, Lcom/android/videoeditor/widgets/HandleView;->mBeginLimitReached:Z

    .line 109
    iput-boolean p2, p0, Lcom/android/videoeditor/widgets/HandleView;->mEndLimitReached:Z

    .line 111
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HandleView;->invalidate()V

    goto :goto_0
.end method

.method public setListener(Lcom/android/videoeditor/widgets/HandleView$MoveListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/videoeditor/widgets/HandleView$MoveListener;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/videoeditor/widgets/HandleView;->mListener:Lcom/android/videoeditor/widgets/HandleView$MoveListener;

    .line 94
    return-void
.end method
