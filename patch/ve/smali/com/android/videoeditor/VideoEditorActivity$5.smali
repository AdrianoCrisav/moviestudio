.class Lcom/android/videoeditor/VideoEditorActivity$5;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "VideoEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/VideoEditorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final SCALE_TOLERANCE:I = 0x3


# instance fields
.field private mLastScaleFactor:F

.field private mLastScaleFactorSign:I

.field final synthetic this$0:Lcom/android/videoeditor/VideoEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/VideoEditorActivity;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/android/videoeditor/VideoEditorActivity$5;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    .line 352
    iget-object v3, p0, Lcom/android/videoeditor/VideoEditorActivity$5;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iget-object v3, v3, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-nez v3, :cond_0

    .line 353
    const/4 v2, 0x0

    .line 379
    :goto_0
    return v2

    .line 356
    :cond_0
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    .line 357
    .local v1, "scaleFactor":F
    iget v3, p0, Lcom/android/videoeditor/VideoEditorActivity$5;->mLastScaleFactor:F

    sub-float v0, v1, v3

    .line 358
    .local v0, "deltaScaleFactor":F
    const v3, 0x3c23d70a    # 0.01f

    cmpl-float v3, v0, v3

    if-gtz v3, :cond_1

    const v3, -0x43dc28f6    # -0.01f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_3

    .line 359
    :cond_1
    cmpg-float v3, v1, v4

    if-gez v3, :cond_4

    .line 360
    iget v3, p0, Lcom/android/videoeditor/VideoEditorActivity$5;->mLastScaleFactorSign:I

    if-gtz v3, :cond_2

    .line 361
    iget-object v3, p0, Lcom/android/videoeditor/VideoEditorActivity$5;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity$5;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iget-object v4, v4, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/VideoEditorProject;->getZoomLevel()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-static {v3, v4, v2}, Lcom/android/videoeditor/VideoEditorActivity;->access$900(Lcom/android/videoeditor/VideoEditorActivity;IZ)I

    .line 364
    :cond_2
    iget v3, p0, Lcom/android/videoeditor/VideoEditorActivity$5;->mLastScaleFactorSign:I

    const/4 v4, -0x3

    if-le v3, v4, :cond_3

    .line 365
    iget v3, p0, Lcom/android/videoeditor/VideoEditorActivity$5;->mLastScaleFactorSign:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/videoeditor/VideoEditorActivity$5;->mLastScaleFactorSign:I

    .line 378
    :cond_3
    :goto_1
    iput v1, p0, Lcom/android/videoeditor/VideoEditorActivity$5;->mLastScaleFactor:F

    goto :goto_0

    .line 367
    :cond_4
    cmpl-float v3, v1, v4

    if-lez v3, :cond_3

    .line 368
    iget v3, p0, Lcom/android/videoeditor/VideoEditorActivity$5;->mLastScaleFactorSign:I

    if-ltz v3, :cond_5

    .line 369
    iget-object v3, p0, Lcom/android/videoeditor/VideoEditorActivity$5;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity$5;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iget-object v4, v4, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/VideoEditorProject;->getZoomLevel()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4, v2}, Lcom/android/videoeditor/VideoEditorActivity;->access$900(Lcom/android/videoeditor/VideoEditorActivity;IZ)I

    .line 372
    :cond_5
    iget v3, p0, Lcom/android/videoeditor/VideoEditorActivity$5;->mLastScaleFactorSign:I

    const/4 v4, 0x3

    if-ge v3, v4, :cond_3

    .line 373
    iget v3, p0, Lcom/android/videoeditor/VideoEditorActivity$5;->mLastScaleFactorSign:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/videoeditor/VideoEditorActivity$5;->mLastScaleFactorSign:I

    goto :goto_1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 346
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/videoeditor/VideoEditorActivity$5;->mLastScaleFactorSign:I

    .line 347
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 384
    return-void
.end method
