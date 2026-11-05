.class Lcom/android/videoeditor/widgets/TransitionView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TransitionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/widgets/TransitionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/widgets/TransitionView;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/widgets/TransitionView;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/videoeditor/widgets/TransitionView$1;->this$0:Lcom/android/videoeditor/widgets/TransitionView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/videoeditor/widgets/TransitionView$1;->this$0:Lcom/android/videoeditor/widgets/TransitionView;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/TransitionView;->access$000(Lcom/android/videoeditor/widgets/TransitionView;)Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/videoeditor/widgets/TransitionView$1;->this$0:Lcom/android/videoeditor/widgets/TransitionView;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/TransitionView;->access$000(Lcom/android/videoeditor/widgets/TransitionView;)Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/TransitionView$1;->this$0:Lcom/android/videoeditor/widgets/TransitionView;

    invoke-interface {v0, v1, p1}, Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;->onLongPress(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 87
    :cond_0
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/videoeditor/widgets/TransitionView$1;->this$0:Lcom/android/videoeditor/widgets/TransitionView;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/TransitionView;->access$000(Lcom/android/videoeditor/widgets/TransitionView;)Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/videoeditor/widgets/TransitionView$1;->this$0:Lcom/android/videoeditor/widgets/TransitionView;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/TransitionView;->access$000(Lcom/android/videoeditor/widgets/TransitionView;)Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/TransitionView$1;->this$0:Lcom/android/videoeditor/widgets/TransitionView;

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2, p1}, Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;->onSingleTapConfirmed(Landroid/view/View;ILandroid/view/MotionEvent;)Z

    move-result v0

    .line 78
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
