.class Lcom/android/videoeditor/KenBurnsActivity$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "KenBurnsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/videoeditor/KenBurnsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/KenBurnsActivity;


# direct methods
.method private constructor <init>(Lcom/android/videoeditor/KenBurnsActivity;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/videoeditor/KenBurnsActivity$MyGestureListener;->this$0:Lcom/android/videoeditor/KenBurnsActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/videoeditor/KenBurnsActivity;Lcom/android/videoeditor/KenBurnsActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/videoeditor/KenBurnsActivity;
    .param p2, "x1"    # Lcom/android/videoeditor/KenBurnsActivity$1;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/videoeditor/KenBurnsActivity$MyGestureListener;-><init>(Lcom/android/videoeditor/KenBurnsActivity;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity$MyGestureListener;->this$0:Lcom/android/videoeditor/KenBurnsActivity;

    invoke-static {v0}, Lcom/android/videoeditor/KenBurnsActivity;->access$000(Lcom/android/videoeditor/KenBurnsActivity;)Lcom/android/videoeditor/widgets/ImageViewTouchBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->getScale()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity$MyGestureListener;->this$0:Lcom/android/videoeditor/KenBurnsActivity;

    invoke-static {v0}, Lcom/android/videoeditor/KenBurnsActivity;->access$000(Lcom/android/videoeditor/KenBurnsActivity;)Lcom/android/videoeditor/widgets/ImageViewTouchBase;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->zoomTo(F)V

    .line 108
    :goto_0
    iget-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity$MyGestureListener;->this$0:Lcom/android/videoeditor/KenBurnsActivity;

    invoke-static {v0}, Lcom/android/videoeditor/KenBurnsActivity;->access$100(Lcom/android/videoeditor/KenBurnsActivity;)V

    .line 109
    const/4 v0, 0x1

    return v0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity$MyGestureListener;->this$0:Lcom/android/videoeditor/KenBurnsActivity;

    invoke-static {v0}, Lcom/android/videoeditor/KenBurnsActivity;->access$000(Lcom/android/videoeditor/KenBurnsActivity;)Lcom/android/videoeditor/widgets/ImageViewTouchBase;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->zoomTo(FFF)V

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity$MyGestureListener;->this$0:Lcom/android/videoeditor/KenBurnsActivity;

    invoke-static {v0}, Lcom/android/videoeditor/KenBurnsActivity;->access$000(Lcom/android/videoeditor/KenBurnsActivity;)Lcom/android/videoeditor/widgets/ImageViewTouchBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->getScale()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity$MyGestureListener;->this$0:Lcom/android/videoeditor/KenBurnsActivity;

    invoke-static {v0}, Lcom/android/videoeditor/KenBurnsActivity;->access$000(Lcom/android/videoeditor/KenBurnsActivity;)Lcom/android/videoeditor/widgets/ImageViewTouchBase;

    move-result-object v0

    neg-float v1, p3

    neg-float v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->postTranslateCenter(FF)V

    .line 88
    iget-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity$MyGestureListener;->this$0:Lcom/android/videoeditor/KenBurnsActivity;

    invoke-static {v0}, Lcom/android/videoeditor/KenBurnsActivity;->access$100(Lcom/android/videoeditor/KenBurnsActivity;)V

    .line 91
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 96
    const/4 v0, 0x1

    return v0
.end method
