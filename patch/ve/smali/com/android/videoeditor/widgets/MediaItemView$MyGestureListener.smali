.class Lcom/android/videoeditor/widgets/MediaItemView$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MediaItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/videoeditor/widgets/MediaItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/widgets/MediaItemView;


# direct methods
.method private constructor <init>(Lcom/android/videoeditor/widgets/MediaItemView;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/videoeditor/widgets/MediaItemView$MyGestureListener;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/videoeditor/widgets/MediaItemView;Lcom/android/videoeditor/widgets/MediaItemView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/videoeditor/widgets/MediaItemView;
    .param p2, "x1"    # Lcom/android/videoeditor/widgets/MediaItemView$1;

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/MediaItemView$MyGestureListener;-><init>(Lcom/android/videoeditor/widgets/MediaItemView;)V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaItemView$MyGestureListener;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaItemView;->access$200(Lcom/android/videoeditor/widgets/MediaItemView;)Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaItemView$MyGestureListener;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaItemView;->access$200(Lcom/android/videoeditor/widgets/MediaItemView;)Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaItemView$MyGestureListener;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-interface {v0, v1, p1}, Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;->onLongPress(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 187
    :cond_0
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 161
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaItemView$MyGestureListener;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-static {v1}, Lcom/android/videoeditor/widgets/MediaItemView;->access$200(Lcom/android/videoeditor/widgets/MediaItemView;)Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

    move-result-object v1

    if-nez v1, :cond_0

    .line 162
    const/4 v1, 0x0

    .line 178
    :goto_0
    return v1

    .line 165
    :cond_0
    const/4 v0, 0x1

    .line 167
    .local v0, "tappedArea":I
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaItemView$MyGestureListener;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-static {v1}, Lcom/android/videoeditor/widgets/MediaItemView;->access$300(Lcom/android/videoeditor/widgets/MediaItemView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaItemView$MyGestureListener;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-static {v1}, Lcom/android/videoeditor/widgets/MediaItemView;->access$400(Lcom/android/videoeditor/widgets/MediaItemView;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/videoeditor/service/MovieMediaItem;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {}, Lcom/android/videoeditor/widgets/MediaItemView;->access$500()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaItemView$MyGestureListener;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-virtual {v3}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 171
    const/4 v0, 0x0

    .line 178
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaItemView$MyGestureListener;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-static {v1}, Lcom/android/videoeditor/widgets/MediaItemView;->access$200(Lcom/android/videoeditor/widgets/MediaItemView;)Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaItemView$MyGestureListener;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-interface {v1, v2, v0, p1}, Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;->onSingleTapConfirmed(Landroid/view/View;ILandroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 172
    :cond_2
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaItemView$MyGestureListener;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-static {v1}, Lcom/android/videoeditor/widgets/MediaItemView;->access$400(Lcom/android/videoeditor/widgets/MediaItemView;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaItemView$MyGestureListener;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-virtual {v2}, Lcom/android/videoeditor/widgets/MediaItemView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaItemView$MyGestureListener;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-virtual {v3}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {}, Lcom/android/videoeditor/widgets/MediaItemView;->access$500()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    .line 175
    const/4 v0, 0x2

    goto :goto_1
.end method
