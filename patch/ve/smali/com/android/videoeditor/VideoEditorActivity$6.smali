.class Lcom/android/videoeditor/VideoEditorActivity$6;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "VideoEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/VideoEditorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/VideoEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/VideoEditorActivity;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lcom/android/videoeditor/VideoEditorActivity$6;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$6;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity;->access$300(Lcom/android/videoeditor/VideoEditorActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    const/4 v0, 0x0

    .line 412
    :goto_0
    return v0

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$6;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity;->access$100(Lcom/android/videoeditor/VideoEditorActivity;)Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    move-result-object v0

    float-to-int v1, p3

    neg-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->fling(I)V

    .line 412
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v0, 0x0

    .line 418
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity$6;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-static {v1}, Lcom/android/videoeditor/VideoEditorActivity;->access$300(Lcom/android/videoeditor/VideoEditorActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    :goto_0
    return v0

    .line 422
    :cond_0
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity$6;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-static {v1}, Lcom/android/videoeditor/VideoEditorActivity;->access$100(Lcom/android/videoeditor/VideoEditorActivity;)Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    move-result-object v1

    float-to-int v2, p3

    invoke-virtual {v1, v2, v0}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->scrollBy(II)V

    .line 423
    const/4 v0, 0x1

    goto :goto_0
.end method
