.class public Lcom/android/videoeditor/widgets/ZoomControl;
.super Landroid/view/View;
.source "ZoomControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/videoeditor/widgets/ZoomControl$OnZoomChangeListener;
    }
.end annotation


# static fields
.field private static final MAX_ANGLE:D = 1.0471975511965976

.field private static final THUMB_INTERNAL_RADIUS_CONTAINER_SIZE_RATIO:D = 0.24

.field private static final THUMB_RADIUS_CONTAINER_SIZE_RATIO:D = 0.432


# instance fields
.field private mInternalRadius:D

.field private mInterval:D

.field private mListener:Lcom/android/videoeditor/widgets/ZoomControl$OnZoomChangeListener;

.field private mMaxProgress:I

.field private mProgress:I

.field private mRadius:D

.field private final mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbX:I

.field private mThumbY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/videoeditor/widgets/ZoomControl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/videoeditor/widgets/ZoomControl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mMaxProgress:I

    .line 64
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/ZoomControl;->computeInterval()V

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 68
    return-void
.end method

.method private checkHit(FFD)Z
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "alpha"    # D

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 207
    mul-float v4, p1, p1

    mul-float v5, p2, p2

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 208
    .local v0, "radius":D
    iget-wide v4, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mInternalRadius:D

    cmpg-double v4, v0, v4

    if-gez v4, :cond_1

    .line 224
    :cond_0
    :goto_0
    return v2

    .line 212
    :cond_1
    cmpl-float v4, p1, v6

    if-ltz v4, :cond_2

    move v2, v3

    .line 213
    goto :goto_0

    .line 214
    :cond_2
    cmpl-float v4, p2, v6

    if-ltz v4, :cond_3

    .line 215
    const-wide v4, -0x4006de04abbbd2e8L    # -1.5707963267948966

    cmpl-double v4, p3, v4

    if-ltz v4, :cond_0

    const-wide v4, -0x400f3eadc7d28c9bL    # -1.0471975511965976

    cmpg-double v4, p3, v4

    if-gtz v4, :cond_0

    move v2, v3

    .line 216
    goto :goto_0

    .line 219
    :cond_3
    const-wide v4, 0x3ff0c152382d7365L    # 1.0471975511965976

    cmpl-double v4, p3, v4

    if-ltz v4, :cond_0

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpg-double v4, p3, v4

    if-gtz v4, :cond_0

    move v2, v3

    .line 220
    goto :goto_0
.end method

.method private computeInterval()V
    .locals 4

    .prologue
    .line 266
    const-wide v0, 0x4000c152382d7366L    # 2.0943951023931957

    iget v2, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mMaxProgress:I

    div-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mInterval:D

    .line 267
    return-void
.end method

.method private progressToPosition()V
    .locals 14

    .prologue
    const-wide v12, 0x401921fb54442d18L    # 6.283185307179586

    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    .line 231
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/ZoomControl;->getWidth()I

    move-result v4

    if-nez v4, :cond_0

    .line 260
    :goto_0
    return-void

    .line 236
    :cond_0
    iget v4, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mProgress:I

    iget v5, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mMaxProgress:I

    div-int/lit8 v5, v5, 0x2

    if-gt v4, v5, :cond_1

    .line 237
    iget v4, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mMaxProgress:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mProgress:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    iget-wide v6, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mInterval:D

    mul-double v2, v4, v6

    .line 243
    .local v2, "beta":D
    :goto_1
    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-ltz v4, :cond_2

    cmpg-double v4, v2, v10

    if-gtz v4, :cond_2

    .line 244
    move-wide v0, v2

    .line 245
    .local v0, "alpha":D
    iget-wide v4, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mRadius:D

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/ZoomControl;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-double v6, v6

    add-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mThumbX:I

    .line 246
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/ZoomControl;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    iget-wide v6, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mRadius:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mThumbY:I

    goto :goto_0

    .line 239
    .end local v0    # "alpha":D
    .end local v2    # "beta":D
    :cond_1
    iget v4, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mMaxProgress:I

    iget v5, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mProgress:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    iget-wide v6, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mInterval:D

    mul-double/2addr v4, v6

    add-double/2addr v4, v8

    const-wide v6, 0x3ff0c152382d7365L    # 1.0471975511965976

    add-double v2, v4, v6

    .restart local v2    # "beta":D
    goto :goto_1

    .line 247
    :cond_2
    cmpl-double v4, v2, v10

    if-lez v4, :cond_3

    const-wide v4, 0x4004f1a6c638d03eL    # 2.617993877991494

    cmpg-double v4, v2, v4

    if-gez v4, :cond_3

    .line 248
    sub-double v0, v2, v8

    .line 249
    .restart local v0    # "alpha":D
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/ZoomControl;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    iget-wide v6, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mRadius:D

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mThumbX:I

    .line 250
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/ZoomControl;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    iget-wide v6, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mRadius:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mThumbY:I

    goto/16 :goto_0

    .line 251
    .end local v0    # "alpha":D
    :cond_3
    cmpg-double v4, v2, v12

    if-gtz v4, :cond_4

    const-wide v4, 0x4012d97c7f3321d2L    # 4.71238898038469

    cmpl-double v4, v2, v4

    if-lez v4, :cond_4

    .line 252
    sub-double v0, v2, v12

    .line 253
    .restart local v0    # "alpha":D
    iget-wide v4, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mRadius:D

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/ZoomControl;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-double v6, v6

    add-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mThumbX:I

    .line 254
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/ZoomControl;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    iget-wide v6, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mRadius:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mThumbY:I

    goto/16 :goto_0

    .line 256
    .end local v0    # "alpha":D
    :cond_4
    sub-double v0, v2, v8

    .line 257
    .restart local v0    # "alpha":D
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/ZoomControl;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    iget-wide v6, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mRadius:D

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mThumbX:I

    .line 258
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/ZoomControl;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    iget-wide v6, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mRadius:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mThumbY:I

    goto/16 :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 121
    iget v2, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mThumbX:I

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mThumbY:I

    if-nez v2, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/ZoomControl;->progressToPosition()V

    .line 125
    :cond_0
    iget-object v2, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .line 126
    .local v1, "halfWidth":I
    iget-object v2, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 127
    .local v0, "halfHeight":I
    iget-object v2, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mThumb:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mThumbX:I

    sub-int/2addr v3, v1

    iget v4, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mThumbY:I

    sub-int/2addr v4, v0

    iget v5, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mThumbX:I

    add-int/2addr v5, v1

    iget v6, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mThumbY:I

    add-int/2addr v6, v0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 129
    iget-object v3, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/ZoomControl;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xff

    :goto_0
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 130
    iget-object v2, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 131
    return-void

    .line 129
    :cond_1
    const/16 v2, 0x64

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 72
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 73
    sub-int v2, p4, p2

    int-to-double v0, v2

    .line 74
    .local v0, "width":D
    const-wide v2, 0x3fdba5e353f7ced9L    # 0.432

    mul-double/2addr v2, v0

    iput-wide v2, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mRadius:D

    .line 75
    const-wide v2, 0x3fceb851eb851eb8L    # 0.24

    mul-double/2addr v2, v0

    iput-wide v2, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mInternalRadius:D

    .line 76
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const-wide v12, 0x3ff0c152382d7365L    # 1.0471975511965976

    const/4 v11, 0x1

    const/4 v9, 0x0

    .line 135
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 136
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 195
    :cond_0
    :goto_0
    :pswitch_0
    return v11

    .line 138
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/ZoomControl;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/ZoomControl;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5, v11}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 145
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/ZoomControl;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/ZoomControl;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float v3, v5, v6

    .line 147
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/ZoomControl;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    neg-float v4, v5

    .line 148
    .local v4, "y":F
    float-to-double v5, v4

    float-to-double v7, v3

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    .line 150
    .local v0, "alpha":D
    invoke-direct {p0, v3, v4, v0, v1}, Lcom/android/videoeditor/widgets/ZoomControl;->checkHit(FFD)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 155
    cmpl-float v5, v3, v9

    if-ltz v5, :cond_1

    cmpl-float v5, v4, v9

    if-ltz v5, :cond_1

    .line 156
    iget-wide v5, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mRadius:D

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/ZoomControl;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-double v7, v7

    add-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mThumbX:I

    .line 157
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/ZoomControl;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-double v5, v5

    iget-wide v7, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mRadius:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mThumbY:I

    .line 158
    iget v5, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mMaxProgress:I

    div-int/lit8 v5, v5, 0x2

    int-to-double v5, v5

    iget-wide v7, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mInterval:D

    div-double v7, v0, v7

    sub-double/2addr v5, v7

    double-to-int v2, v5

    .line 173
    .local v2, "progress":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/ZoomControl;->invalidate()V

    .line 175
    iget-object v5, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mListener:Lcom/android/videoeditor/widgets/ZoomControl$OnZoomChangeListener;

    if-eqz v5, :cond_0

    .line 176
    iget v5, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mProgress:I

    if-eq v2, v5, :cond_0

    .line 177
    iput v2, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mProgress:I

    .line 178
    iget-object v5, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mListener:Lcom/android/videoeditor/widgets/ZoomControl$OnZoomChangeListener;

    iget v6, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mProgress:I

    invoke-interface {v5, v6, v11}, Lcom/android/videoeditor/widgets/ZoomControl$OnZoomChangeListener;->onProgressChanged(IZ)V

    goto/16 :goto_0

    .line 159
    .end local v2    # "progress":I
    :cond_1
    cmpl-float v5, v3, v9

    if-ltz v5, :cond_2

    cmpg-float v5, v4, v9

    if-gtz v5, :cond_2

    .line 160
    iget-wide v5, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mRadius:D

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/ZoomControl;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-double v7, v7

    add-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mThumbX:I

    .line 161
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/ZoomControl;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-double v5, v5

    iget-wide v7, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mRadius:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mThumbY:I

    .line 162
    iget v5, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mMaxProgress:I

    div-int/lit8 v5, v5, 0x2

    int-to-double v5, v5

    iget-wide v7, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mInterval:D

    div-double v7, v0, v7

    sub-double/2addr v5, v7

    double-to-int v2, v5

    .restart local v2    # "progress":I
    goto :goto_1

    .line 163
    .end local v2    # "progress":I
    :cond_2
    cmpg-float v5, v3, v9

    if-gtz v5, :cond_3

    cmpl-float v5, v4, v9

    if-ltz v5, :cond_3

    .line 164
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/ZoomControl;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-double v5, v5

    iget-wide v7, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mRadius:D

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mThumbX:I

    .line 165
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/ZoomControl;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-double v5, v5

    iget-wide v7, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mRadius:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mThumbY:I

    .line 166
    add-double v5, v0, v12

    iget-wide v7, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mInterval:D

    div-double/2addr v5, v7

    double-to-int v5, v5

    neg-int v2, v5

    .restart local v2    # "progress":I
    goto/16 :goto_1

    .line 168
    .end local v2    # "progress":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/ZoomControl;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-double v5, v5

    iget-wide v7, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mRadius:D

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mThumbX:I

    .line 169
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/ZoomControl;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-double v5, v5

    iget-wide v7, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mRadius:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mThumbY:I

    .line 170
    iget v5, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mMaxProgress:I

    int-to-double v5, v5

    sub-double v7, v0, v12

    iget-wide v9, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mInterval:D

    div-double/2addr v7, v9

    sub-double/2addr v5, v7

    double-to-int v2, v5

    .restart local v2    # "progress":I
    goto/16 :goto_1

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public refreshDrawableState()V
    .locals 2

    .prologue
    .line 88
    iget-object v1, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/ZoomControl;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/videoeditor/widgets/ZoomControl;->PRESSED_WINDOW_FOCUSED_STATE_SET:[I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 89
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/ZoomControl;->invalidate()V

    .line 90
    return-void

    .line 88
    :cond_0
    sget-object v0, Lcom/android/videoeditor/widgets/ZoomControl;->ENABLED_STATE_SET:[I

    goto :goto_0
.end method

.method public setMax(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mMaxProgress:I

    .line 97
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/ZoomControl;->computeInterval()V

    .line 98
    return-void
.end method

.method public setOnZoomChangeListener(Lcom/android/videoeditor/widgets/ZoomControl$OnZoomChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/videoeditor/widgets/ZoomControl$OnZoomChangeListener;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mListener:Lcom/android/videoeditor/widgets/ZoomControl$OnZoomChangeListener;

    .line 115
    return-void
.end method

.method public setProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/android/videoeditor/widgets/ZoomControl;->mProgress:I

    .line 106
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/ZoomControl;->progressToPosition()V

    .line 107
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/ZoomControl;->invalidate()V

    .line 108
    return-void
.end method
