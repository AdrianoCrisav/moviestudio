.class public Lcom/android/videoeditor/KenBurnsActivity;
.super Landroid/app/Activity;
.source "KenBurnsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/videoeditor/KenBurnsActivity$ImageLoaderAsyncTask;,
        Lcom/android/videoeditor/KenBurnsActivity$MyScaleGestureListener;,
        Lcom/android/videoeditor/KenBurnsActivity$MyGestureListener;
    }
.end annotation


# static fields
.field private static final MAX_HEIGHT:I = 0x2d0

.field private static final MAX_HW_BITMAP_HEIGHT:I = 0x800

.field private static final MAX_HW_BITMAP_WIDTH:I = 0x800

.field private static final MAX_PAN:I = 0x3

.field private static final MAX_WIDTH:I = 0x510

.field public static final PARAM_END_RECT:Ljava/lang/String; = "end_rect"

.field public static final PARAM_FILENAME:Ljava/lang/String; = "filename"

.field public static final PARAM_HEIGHT:Ljava/lang/String; = "height"

.field public static final PARAM_MEDIA_ITEM_ID:Ljava/lang/String; = "media_item_id"

.field public static final PARAM_START_RECT:Ljava/lang/String; = "start_rect"

.field public static final PARAM_WIDTH:Ljava/lang/String; = "width"

.field private static final STATE_END_RECTANGLE:Ljava/lang/String; = "end"

.field private static final STATE_START_RECTANGLE:Ljava/lang/String; = "start"

.field private static final STATE_WHICH_RECTANGLE_ID:Ljava/lang/String; = "which"

.field private static final TAG:Ljava/lang/String; = "KenBurnsActivity"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mDoneButton:Landroid/view/View;

.field private final mEndRect:Landroid/graphics/Rect;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mImageSubsample:I

.field private mImageView:Lcom/android/videoeditor/widgets/ImageViewTouchBase;

.field private mImageViewScale:F

.field private final mMatrixRect:Landroid/graphics/RectF;

.field private mMediaItemHeight:I

.field private mMediaItemWidth:I

.field private mPaused:Z

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private final mStartRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity;->mStartRect:Landroid/graphics/Rect;

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity;->mEndRect:Landroid/graphics/Rect;

    .line 68
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMatrixRect:Landroid/graphics/RectF;

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/videoeditor/KenBurnsActivity;->mPaused:Z

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/android/videoeditor/KenBurnsActivity;)Lcom/android/videoeditor/widgets/ImageViewTouchBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/KenBurnsActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageView:Lcom/android/videoeditor/widgets/ImageViewTouchBase;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/videoeditor/KenBurnsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/videoeditor/KenBurnsActivity;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/videoeditor/KenBurnsActivity;->saveBitmapRectangle()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/videoeditor/KenBurnsActivity;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/KenBurnsActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity;->mStartRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/videoeditor/KenBurnsActivity;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/KenBurnsActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity;->mEndRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/videoeditor/KenBurnsActivity;)Landroid/view/ScaleGestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/KenBurnsActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/videoeditor/KenBurnsActivity;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/KenBurnsActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/videoeditor/KenBurnsActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/videoeditor/KenBurnsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/videoeditor/KenBurnsActivity;->showProgress(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/videoeditor/KenBurnsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/KenBurnsActivity;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/videoeditor/KenBurnsActivity;->mPaused:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/videoeditor/KenBurnsActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/KenBurnsActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/videoeditor/KenBurnsActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/android/videoeditor/KenBurnsActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/videoeditor/KenBurnsActivity;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/videoeditor/KenBurnsActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/KenBurnsActivity;

    .prologue
    .line 42
    iget v0, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageSubsample:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/videoeditor/KenBurnsActivity;)Landroid/widget/RadioGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/KenBurnsActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/videoeditor/KenBurnsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/videoeditor/KenBurnsActivity;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/videoeditor/KenBurnsActivity;->showBitmapRectangle()V

    return-void
.end method

.method private enableDoneButton()V
    .locals 2

    .prologue
    .line 416
    iget-object v1, p0, Lcom/android/videoeditor/KenBurnsActivity;->mDoneButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity;->mStartRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity;->mEndRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 417
    return-void

    .line 416
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private saveBitmapRectangle()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    .line 471
    iget-object v7, p0, Lcom/android/videoeditor/KenBurnsActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v7}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    .line 472
    .local v1, "checkedRect":I
    iget-object v7, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageView:Lcom/android/videoeditor/widgets/ImageViewTouchBase;

    invoke-virtual {v7}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 474
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    packed-switch v1, :pswitch_data_0

    .line 533
    :goto_0
    return-void

    .line 476
    :pswitch_0
    iget-object v7, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMatrixRect:Landroid/graphics/RectF;

    iget v8, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v8, v8

    iget v9, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v9, v9

    invoke-virtual {v7, v10, v10, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 478
    iget-object v7, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageView:Lcom/android/videoeditor/widgets/ImageViewTouchBase;

    iget-object v8, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMatrixRect:Landroid/graphics/RectF;

    invoke-virtual {v7, v8}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mapRect(Landroid/graphics/RectF;)V

    .line 479
    iget-object v7, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageView:Lcom/android/videoeditor/widgets/ImageViewTouchBase;

    invoke-virtual {v7}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->getScale()F

    move-result v5

    .line 481
    .local v5, "scale":F
    const-string v7, "KenBurnsActivity"

    invoke-static {v7, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 482
    const-string v7, "KenBurnsActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "START RAW: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", rect: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMatrixRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMatrixRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMatrixRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMatrixRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_0
    iget-object v7, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMatrixRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    neg-float v7, v7

    div-float/2addr v7, v5

    iget v8, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageViewScale:F

    div-float/2addr v7, v8

    float-to-int v2, v7

    .line 488
    .local v2, "left":I
    iget-object v7, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMatrixRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    neg-float v7, v7

    div-float/2addr v7, v5

    iget v8, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageViewScale:F

    div-float/2addr v7, v8

    float-to-int v6, v7

    .line 489
    .local v6, "top":I
    iget-object v7, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMatrixRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    neg-float v7, v7

    iget v8, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    div-float/2addr v7, v5

    iget v8, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageViewScale:F

    div-float/2addr v7, v8

    float-to-int v4, v7

    .line 490
    .local v4, "right":I
    iget-object v7, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMatrixRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    neg-float v7, v7

    iget v8, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    div-float/2addr v7, v5

    iget v8, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageViewScale:F

    div-float/2addr v7, v8

    float-to-int v0, v7

    .line 492
    .local v0, "bottom":I
    iget-object v7, p0, Lcom/android/videoeditor/KenBurnsActivity;->mStartRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v2, v6, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 493
    const-string v7, "KenBurnsActivity"

    invoke-static {v7, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 494
    const-string v7, "KenBurnsActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "START: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/videoeditor/KenBurnsActivity;->mStartRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/videoeditor/KenBurnsActivity;->mStartRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/videoeditor/KenBurnsActivity;->mStartRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/videoeditor/KenBurnsActivity;->mStartRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_1
    invoke-direct {p0}, Lcom/android/videoeditor/KenBurnsActivity;->enableDoneButton()V

    goto/16 :goto_0

    .line 503
    .end local v0    # "bottom":I
    .end local v2    # "left":I
    .end local v4    # "right":I
    .end local v5    # "scale":F
    .end local v6    # "top":I
    :pswitch_1
    iget-object v7, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMatrixRect:Landroid/graphics/RectF;

    iget v8, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v8, v8

    iget v9, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v9, v9

    invoke-virtual {v7, v10, v10, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 505
    iget-object v7, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageView:Lcom/android/videoeditor/widgets/ImageViewTouchBase;

    iget-object v8, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMatrixRect:Landroid/graphics/RectF;

    invoke-virtual {v7, v8}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mapRect(Landroid/graphics/RectF;)V

    .line 506
    iget-object v7, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageView:Lcom/android/videoeditor/widgets/ImageViewTouchBase;

    invoke-virtual {v7}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->getScale()F

    move-result v5

    .line 508
    .restart local v5    # "scale":F
    const-string v7, "KenBurnsActivity"

    invoke-static {v7, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 509
    const-string v7, "KenBurnsActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "END RAW: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", rect: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMatrixRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMatrixRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMatrixRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMatrixRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_2
    iget-object v7, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMatrixRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    neg-float v7, v7

    div-float/2addr v7, v5

    iget v8, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageViewScale:F

    div-float/2addr v7, v8

    float-to-int v2, v7

    .line 515
    .restart local v2    # "left":I
    iget-object v7, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMatrixRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    neg-float v7, v7

    div-float/2addr v7, v5

    iget v8, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageViewScale:F

    div-float/2addr v7, v8

    float-to-int v6, v7

    .line 516
    .restart local v6    # "top":I
    iget-object v7, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMatrixRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    neg-float v7, v7

    iget v8, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    div-float/2addr v7, v5

    iget v8, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageViewScale:F

    div-float/2addr v7, v8

    float-to-int v4, v7

    .line 517
    .restart local v4    # "right":I
    iget-object v7, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMatrixRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    neg-float v7, v7

    iget v8, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    div-float/2addr v7, v5

    iget v8, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageViewScale:F

    div-float/2addr v7, v8

    float-to-int v0, v7

    .line 519
    .restart local v0    # "bottom":I
    iget-object v7, p0, Lcom/android/videoeditor/KenBurnsActivity;->mEndRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v2, v6, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 520
    const-string v7, "KenBurnsActivity"

    invoke-static {v7, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 521
    const-string v7, "KenBurnsActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "END: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/videoeditor/KenBurnsActivity;->mEndRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/videoeditor/KenBurnsActivity;->mEndRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/videoeditor/KenBurnsActivity;->mEndRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/videoeditor/KenBurnsActivity;->mEndRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_3
    invoke-direct {p0}, Lcom/android/videoeditor/KenBurnsActivity;->enableDoneButton()V

    goto/16 :goto_0

    .line 474
    :pswitch_data_0
    .packed-switch 0x7f080015
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showBitmapRectangle()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/high16 v5, 0x3f800000    # 1.0f

    .line 423
    iget-object v2, p0, Lcom/android/videoeditor/KenBurnsActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 424
    .local v0, "checkedRect":I
    packed-switch v0, :pswitch_data_0

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 426
    :pswitch_0
    iget-object v2, p0, Lcom/android/videoeditor/KenBurnsActivity;->mStartRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 427
    iget-object v2, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageView:Lcom/android/videoeditor/widgets/ImageViewTouchBase;

    invoke-virtual {v2}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->reset()V

    .line 428
    iget v2, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMediaItemWidth:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mStartRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/videoeditor/KenBurnsActivity;->mStartRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 430
    .local v1, "scale":F
    const-string v2, "KenBurnsActivity"

    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 431
    const-string v2, "KenBurnsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showBitmapRectangle START: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/videoeditor/KenBurnsActivity;->mStartRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/videoeditor/KenBurnsActivity;->mStartRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/videoeditor/KenBurnsActivity;->mStartRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/videoeditor/KenBurnsActivity;->mStartRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_1
    cmpl-float v2, v1, v5

    if-lez v2, :cond_0

    .line 436
    iget-object v2, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageView:Lcom/android/videoeditor/widgets/ImageViewTouchBase;

    iget-object v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mStartRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    iget v4, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageViewScale:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/videoeditor/KenBurnsActivity;->mStartRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    iget v5, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageViewScale:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->zoomToOffset(FFF)V

    goto/16 :goto_0

    .line 444
    .end local v1    # "scale":F
    :pswitch_1
    iget-object v2, p0, Lcom/android/videoeditor/KenBurnsActivity;->mEndRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 445
    iget-object v2, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageView:Lcom/android/videoeditor/widgets/ImageViewTouchBase;

    invoke-virtual {v2}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->reset()V

    .line 446
    iget v2, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMediaItemWidth:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mEndRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/videoeditor/KenBurnsActivity;->mEndRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 448
    .restart local v1    # "scale":F
    const-string v2, "KenBurnsActivity"

    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 449
    const-string v2, "KenBurnsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showBitmapRectangle END: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/videoeditor/KenBurnsActivity;->mEndRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/videoeditor/KenBurnsActivity;->mEndRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/videoeditor/KenBurnsActivity;->mEndRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/videoeditor/KenBurnsActivity;->mEndRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_2
    cmpl-float v2, v1, v5

    if-lez v2, :cond_0

    .line 454
    iget-object v2, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageView:Lcom/android/videoeditor/widgets/ImageViewTouchBase;

    iget-object v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mEndRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    iget v4, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageViewScale:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/videoeditor/KenBurnsActivity;->mEndRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    iget v5, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageViewScale:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->zoomToOffset(FFF)V

    goto/16 :goto_0

    .line 424
    nop

    :pswitch_data_0
    .packed-switch 0x7f080015
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showProgress(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    const v0, 0x7f080013

    .line 405
    if-eqz p1, :cond_0

    .line 406
    invoke-virtual {p0, v0}, Lcom/android/videoeditor/KenBurnsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 410
    :goto_0
    return-void

    .line 408
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/videoeditor/KenBurnsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onClickHandler(Landroid/view/View;)V
    .locals 4
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 381
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 397
    :goto_0
    return-void

    .line 383
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 384
    .local v0, "extra":Landroid/content/Intent;
    const-string v1, "media_item_id"

    invoke-virtual {p0}, Lcom/android/videoeditor/KenBurnsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "media_item_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    const-string v1, "start_rect"

    iget-object v2, p0, Lcom/android/videoeditor/KenBurnsActivity;->mStartRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 387
    const-string v1, "end_rect"

    iget-object v2, p0, Lcom/android/videoeditor/KenBurnsActivity;->mEndRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 388
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/videoeditor/KenBurnsActivity;->setResult(ILandroid/content/Intent;)V

    .line 389
    invoke-virtual {p0}, Lcom/android/videoeditor/KenBurnsActivity;->finish()V

    goto :goto_0

    .line 381
    :pswitch_data_0
    .packed-switch 0x7f080017
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/16 v10, 0x800

    const/16 v9, 0x78

    const/4 v8, 0x1

    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 206
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 207
    const v3, 0x7f04000a

    invoke-virtual {p0, v3}, Lcom/android/videoeditor/KenBurnsActivity;->setContentView(I)V

    .line 208
    invoke-virtual {p0, v8}, Lcom/android/videoeditor/KenBurnsActivity;->setFinishOnTouchOutside(Z)V

    .line 210
    invoke-virtual {p0}, Lcom/android/videoeditor/KenBurnsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "width"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMediaItemWidth:I

    .line 211
    invoke-virtual {p0}, Lcom/android/videoeditor/KenBurnsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "height"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMediaItemHeight:I

    .line 212
    const-string v3, "KenBurnsActivity"

    invoke-static {v3, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 213
    const-string v3, "KenBurnsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Media item size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMediaItemWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMediaItemHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_0
    const v3, 0x7f080012

    invoke-virtual {p0, v3}, Lcom/android/videoeditor/KenBurnsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/videoeditor/widgets/ImageViewTouchBase;

    iput-object v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageView:Lcom/android/videoeditor/widgets/ImageViewTouchBase;

    .line 220
    iget-object v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageView:Lcom/android/videoeditor/widgets/ImageViewTouchBase;

    invoke-virtual {v3}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 222
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMediaItemWidth:I

    iget v4, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMediaItemHeight:I

    if-lt v3, v4, :cond_2

    .line 223
    iget v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMediaItemWidth:I

    const/16 v4, 0x510

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 225
    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v4, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMediaItemHeight:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMediaItemWidth:I

    div-int/2addr v3, v4

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 226
    iget v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMediaItemWidth:I

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    mul-int/lit8 v4, v4, 0x3

    div-int/2addr v3, v4

    iput v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageSubsample:I

    .line 236
    :goto_0
    iget v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMediaItemWidth:I

    iget v4, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageSubsample:I

    div-int/2addr v3, v4

    if-gt v3, v10, :cond_1

    iget v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMediaItemHeight:I

    iget v4, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageSubsample:I

    div-int/2addr v3, v4

    if-le v3, v10, :cond_3

    .line 238
    :cond_1
    iget v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageSubsample:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageSubsample:I

    goto :goto_0

    .line 228
    :cond_2
    iget v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMediaItemHeight:I

    const/16 v4, 0x2d0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 230
    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v4, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMediaItemWidth:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMediaItemHeight:I

    div-int/2addr v3, v4

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 231
    iget v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMediaItemHeight:I

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    mul-int/lit8 v4, v4, 0x3

    div-int/2addr v3, v4

    iput v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageSubsample:I

    goto :goto_0

    .line 241
    :cond_3
    const-string v3, "KenBurnsActivity"

    invoke-static {v3, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 242
    const-string v3, "KenBurnsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "View size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", subsample: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageSubsample:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_4
    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-lt v3, v9, :cond_5

    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ge v3, v9, :cond_7

    .line 248
    :cond_5
    const-string v3, "KenBurnsActivity"

    invoke-static {v3, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 249
    const-string v3, "KenBurnsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Image is too small: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_6
    const v3, 0x7f090061

    invoke-virtual {p0, v3}, Lcom/android/videoeditor/KenBurnsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 254
    invoke-virtual {p0}, Lcom/android/videoeditor/KenBurnsActivity;->finish()V

    .line 334
    :goto_1
    return-void

    .line 258
    :cond_7
    iget-object v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageView:Lcom/android/videoeditor/widgets/ImageViewTouchBase;

    invoke-virtual {v3, v1}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMediaItemWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageViewScale:F

    .line 261
    new-instance v3, Landroid/view/GestureDetector;

    new-instance v4, Lcom/android/videoeditor/KenBurnsActivity$MyGestureListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/videoeditor/KenBurnsActivity$MyGestureListener;-><init>(Lcom/android/videoeditor/KenBurnsActivity;Lcom/android/videoeditor/KenBurnsActivity$1;)V

    invoke-direct {v3, p0, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mGestureDetector:Landroid/view/GestureDetector;

    .line 262
    new-instance v3, Landroid/view/ScaleGestureDetector;

    new-instance v4, Lcom/android/videoeditor/KenBurnsActivity$MyScaleGestureListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/videoeditor/KenBurnsActivity$MyScaleGestureListener;-><init>(Lcom/android/videoeditor/KenBurnsActivity;Lcom/android/videoeditor/KenBurnsActivity$1;)V

    invoke-direct {v3, p0, v4}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 264
    const v3, 0x7f080014

    invoke-virtual {p0, v3}, Lcom/android/videoeditor/KenBurnsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    iput-object v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 265
    if-eqz p1, :cond_8

    .line 266
    iget-object v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    const-string v4, "which"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    .line 267
    iget-object v4, p0, Lcom/android/videoeditor/KenBurnsActivity;->mStartRect:Landroid/graphics/Rect;

    const-string v3, "start"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 268
    iget-object v4, p0, Lcom/android/videoeditor/KenBurnsActivity;->mEndRect:Landroid/graphics/Rect;

    const-string v3, "end"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 286
    :goto_2
    const v3, 0x7f080017

    invoke-virtual {p0, v3}, Lcom/android/videoeditor/KenBurnsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mDoneButton:Landroid/view/View;

    .line 287
    invoke-direct {p0}, Lcom/android/videoeditor/KenBurnsActivity;->enableDoneButton()V

    .line 290
    iget-object v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v6}, Landroid/widget/RadioGroup;->setEnabled(Z)V

    .line 292
    iget-object v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    new-instance v4, Lcom/android/videoeditor/KenBurnsActivity$1;

    invoke-direct {v4, p0}, Lcom/android/videoeditor/KenBurnsActivity$1;-><init>(Lcom/android/videoeditor/KenBurnsActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 324
    invoke-virtual {p0}, Lcom/android/videoeditor/KenBurnsActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 326
    iget-object v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageView:Lcom/android/videoeditor/widgets/ImageViewTouchBase;

    new-instance v4, Lcom/android/videoeditor/KenBurnsActivity$2;

    invoke-direct {v4, p0}, Lcom/android/videoeditor/KenBurnsActivity$2;-><init>(Lcom/android/videoeditor/KenBurnsActivity;)V

    invoke-virtual {v3, v4}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->setEventListener(Lcom/android/videoeditor/widgets/ImageViewTouchBase$ImageTouchEventListener;)V

    goto/16 :goto_1

    .line 270
    :cond_8
    iget-object v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    const v4, 0x7f080015

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    .line 271
    invoke-virtual {p0}, Lcom/android/videoeditor/KenBurnsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "start_rect"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 272
    .local v2, "startRect":Landroid/graphics/Rect;
    if-eqz v2, :cond_9

    .line 273
    iget-object v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mStartRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 278
    :goto_3
    invoke-virtual {p0}, Lcom/android/videoeditor/KenBurnsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "end_rect"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 279
    .local v0, "endRect":Landroid/graphics/Rect;
    if-eqz v0, :cond_a

    .line 280
    iget-object v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mEndRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_2

    .line 275
    .end local v0    # "endRect":Landroid/graphics/Rect;
    :cond_9
    iget-object v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mStartRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMediaItemWidth:I

    iget v5, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMediaItemHeight:I

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    .line 282
    .restart local v0    # "endRect":Landroid/graphics/Rect;
    :cond_a
    iget-object v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mEndRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMediaItemWidth:I

    iget v5, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMediaItemHeight:I

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 354
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 355
    invoke-virtual {p0}, Lcom/android/videoeditor/KenBurnsActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 358
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 361
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 363
    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 347
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 349
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/videoeditor/KenBurnsActivity;->mPaused:Z

    .line 350
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 338
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 340
    iput-boolean v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mPaused:Z

    .line 342
    new-instance v0, Lcom/android/videoeditor/KenBurnsActivity$ImageLoaderAsyncTask;

    invoke-virtual {p0}, Lcom/android/videoeditor/KenBurnsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "filename"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/videoeditor/KenBurnsActivity$ImageLoaderAsyncTask;-><init>(Lcom/android/videoeditor/KenBurnsActivity;Ljava/lang/String;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/KenBurnsActivity$ImageLoaderAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 343
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 372
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 373
    const v1, 0x7f080014

    invoke-virtual {p0, v1}, Lcom/android/videoeditor/KenBurnsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 375
    .local v0, "radioGroup":Landroid/widget/RadioGroup;
    const-string v1, "which"

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 376
    const-string v1, "start"

    iget-object v2, p0, Lcom/android/videoeditor/KenBurnsActivity;->mStartRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 377
    const-string v1, "end"

    iget-object v2, p0, Lcom/android/videoeditor/KenBurnsActivity;->mEndRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 378
    return-void
.end method
