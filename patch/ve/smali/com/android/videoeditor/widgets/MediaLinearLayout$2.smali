.class Lcom/android/videoeditor/widgets/MediaLinearLayout$2;
.super Ljava/lang/Object;
.source "MediaLinearLayout.java"

# interfaces
.implements Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/widgets/MediaLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;)V
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$2;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$2;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$200(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$2;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0, p1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1500(Lcom/android/videoeditor/widgets/MediaLinearLayout;Landroid/view/View;)V

    .line 462
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$2;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1200(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Landroid/view/ActionMode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 463
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$2;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    new-instance v2, Lcom/android/videoeditor/widgets/MediaLinearLayout$TransitionActionModeCallback;

    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$2;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/service/MovieTransition;

    invoke-direct {v2, v3, v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout$TransitionActionModeCallback;-><init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;Lcom/android/videoeditor/service/MovieTransition;)V

    invoke-virtual {v1, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    goto :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/View;ILandroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "area"    # I
    .param p3, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$2;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$200(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    const/4 v0, 0x0

    .line 451
    :goto_0
    return v0

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$2;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0, p1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1500(Lcom/android/videoeditor/widgets/MediaLinearLayout;Landroid/view/View;)V

    .line 451
    const/4 v0, 0x1

    goto :goto_0
.end method
