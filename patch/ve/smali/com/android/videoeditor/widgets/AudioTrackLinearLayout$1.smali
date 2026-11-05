.class Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$1;
.super Ljava/lang/Object;
.source "AudioTrackLinearLayout.java"

# interfaces
.implements Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->access$400(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 202
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->access$300(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;Landroid/view/View;Z)V

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->access$000(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;)Landroid/view/ActionMode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 206
    iget-object v1, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    new-instance v2, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;

    iget-object v3, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/service/MovieAudioTrack;

    invoke-direct {v2, v3, v0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;-><init>(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;Lcom/android/videoeditor/service/MovieAudioTrack;)V

    invoke-virtual {v1, v2}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    goto :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/View;ILandroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "area"    # I
    .param p3, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 184
    iget-object v1, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    invoke-static {v1}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->access$400(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    const/4 v0, 0x0

    .line 192
    :cond_0
    :goto_0
    return v0

    .line 188
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    invoke-static {v1, p1, v0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->access$300(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;Landroid/view/View;Z)V

    goto :goto_0
.end method
