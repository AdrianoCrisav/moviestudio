.class Lcom/android/videoeditor/KenBurnsActivity$MyScaleGestureListener;
.super Ljava/lang/Object;
.source "KenBurnsActivity.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/videoeditor/KenBurnsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyScaleGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/KenBurnsActivity;


# direct methods
.method private constructor <init>(Lcom/android/videoeditor/KenBurnsActivity;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/videoeditor/KenBurnsActivity$MyScaleGestureListener;->this$0:Lcom/android/videoeditor/KenBurnsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/videoeditor/KenBurnsActivity;Lcom/android/videoeditor/KenBurnsActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/videoeditor/KenBurnsActivity;
    .param p2, "x1"    # Lcom/android/videoeditor/KenBurnsActivity$1;

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/videoeditor/KenBurnsActivity$MyScaleGestureListener;-><init>(Lcom/android/videoeditor/KenBurnsActivity;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 124
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    .line 125
    .local v1, "relativeScaleFactor":F
    iget-object v2, p0, Lcom/android/videoeditor/KenBurnsActivity$MyScaleGestureListener;->this$0:Lcom/android/videoeditor/KenBurnsActivity;

    invoke-static {v2}, Lcom/android/videoeditor/KenBurnsActivity;->access$000(Lcom/android/videoeditor/KenBurnsActivity;)Lcom/android/videoeditor/widgets/ImageViewTouchBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->getScale()F

    move-result v2

    mul-float v0, v1, v2

    .line 126
    .local v0, "newAbsoluteScale":F
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    .line 127
    const/4 v2, 0x0

    .line 131
    :goto_0
    return v2

    .line 130
    :cond_0
    iget-object v2, p0, Lcom/android/videoeditor/KenBurnsActivity$MyScaleGestureListener;->this$0:Lcom/android/videoeditor/KenBurnsActivity;

    invoke-static {v2}, Lcom/android/videoeditor/KenBurnsActivity;->access$000(Lcom/android/videoeditor/KenBurnsActivity;)Lcom/android/videoeditor/widgets/ImageViewTouchBase;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->zoomTo(FFF)V

    .line 131
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity$MyScaleGestureListener;->this$0:Lcom/android/videoeditor/KenBurnsActivity;

    invoke-static {v0}, Lcom/android/videoeditor/KenBurnsActivity;->access$100(Lcom/android/videoeditor/KenBurnsActivity;)V

    .line 137
    return-void
.end method
