.class Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;
.super Ljava/lang/Object;
.source "OverlayLinearLayout.java"

# interfaces
.implements Lcom/android/videoeditor/widgets/ItemMoveGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/widgets/OverlayLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mScrollMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

.field private mScrollMediaItemStartTime:J

.field private mScrollOverlay:Lcom/android/videoeditor/service/MovieOverlay;

.field private mScrollTotalDurationMs:J

.field private mScrolled:Z

.field final synthetic this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$200(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :cond_1
    move-object v0, p1

    .line 215
    check-cast v0, Lcom/android/videoeditor/widgets/OverlayView;

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/OverlayView;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 225
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 226
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$400(Lcom/android/videoeditor/widgets/OverlayLinearLayout;Landroid/view/View;Z)V

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$000(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)Landroid/view/ActionMode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 230
    iget-object v1, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    new-instance v2, Lcom/android/videoeditor/widgets/OverlayLinearLayout$OverlayActionModeCallback;

    iget-object v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-direct {v2, v3, v0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout$OverlayActionModeCallback;-><init>(Lcom/android/videoeditor/widgets/OverlayLinearLayout;Lcom/android/videoeditor/service/MovieMediaItem;)V

    invoke-virtual {v1, v2}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    goto :goto_0

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onMove(Landroid/view/View;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "e1"    # Landroid/view/MotionEvent;
    .param p3, "e2"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    .line 260
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-static {v4}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$700(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v0, v3

    .line 262
    .local v0, "beginPos":I
    int-to-long v3, v0

    iget-wide v5, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrollTotalDurationMs:J

    mul-long/2addr v3, v5

    iget-object v5, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-virtual {v5}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-static {v6}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$700(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-long v5, v5

    div-long v1, v3, v5

    .line 264
    .local v1, "startTimeMs":J
    iget-wide v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrollMediaItemStartTime:J

    cmp-long v3, v1, v3

    if-gtz v3, :cond_1

    .line 265
    iget-wide v1, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrollMediaItemStartTime:J

    .line 272
    :cond_0
    :goto_0
    iput-boolean v9, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrolled:Z

    .line 273
    iget-object v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrollOverlay:Lcom/android/videoeditor/service/MovieOverlay;

    iget-wide v4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrollMediaItemStartTime:J

    sub-long v4, v1, v4

    iget-object v6, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrollMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v6}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryBeginTime()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/videoeditor/service/MovieOverlay;->setAppStartTime(J)V

    .line 275
    iget-object v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-virtual {v3}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->requestLayout()V

    .line 276
    return v9

    .line 266
    :cond_1
    iget-object v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrollOverlay:Lcom/android/videoeditor/service/MovieOverlay;

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieOverlay;->getAppDuration()J

    move-result-wide v3

    add-long/2addr v3, v1

    iget-wide v5, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrollMediaItemStartTime:J

    iget-object v7, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrollMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v7}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v7

    add-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 268
    iget-wide v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrollMediaItemStartTime:J

    iget-object v5, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrollMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v5

    add-long/2addr v3, v5

    iget-object v5, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrollOverlay:Lcom/android/videoeditor/service/MovieOverlay;

    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieOverlay;->getAppDuration()J

    move-result-wide v5

    sub-long v1, v3, v5

    goto :goto_0
.end method

.method public onMoveBegin(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 244
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$200(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 255
    :goto_0
    return v0

    .line 248
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/service/MovieMediaItem;

    iput-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrollMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    .line 249
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$100(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v0

    iget-object v2, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrollMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItemBeginTime(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrollMediaItemStartTime:J

    .line 250
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrollMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getOverlay()Lcom/android/videoeditor/service/MovieOverlay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrollOverlay:Lcom/android/videoeditor/service/MovieOverlay;

    .line 252
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$100(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videoeditor/service/VideoEditorProject;->computeDuration()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrollTotalDurationMs:J

    .line 253
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$600(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)Lcom/android/videoeditor/widgets/HandleView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/videoeditor/widgets/HandleView;->setVisibility(I)V

    .line 254
    iput-boolean v1, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrolled:Z

    .line 255
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onMoveEnd(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 281
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$600(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)Lcom/android/videoeditor/widgets/HandleView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/videoeditor/widgets/HandleView;->setVisibility(I)V

    .line 282
    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrolled:Z

    if-eqz v0, :cond_0

    .line 283
    iput-boolean v2, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrolled:Z

    .line 285
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$600(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)Lcom/android/videoeditor/widgets/HandleView;

    move-result-object v3

    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrollOverlay:Lcom/android/videoeditor/service/MovieOverlay;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieOverlay;->getAppDuration()J

    move-result-wide v4

    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrollMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-static {v0}, Lcom/android/videoeditor/util/MediaItemUtils;->getMinimumMediaItemDuration(Lcom/android/videoeditor/service/MovieMediaItem;)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gtz v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrollOverlay:Lcom/android/videoeditor/service/MovieOverlay;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieOverlay;->getAppStartTime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrollOverlay:Lcom/android/videoeditor/service/MovieOverlay;

    invoke-virtual {v6}, Lcom/android/videoeditor/service/MovieOverlay;->getAppDuration()J

    move-result-wide v6

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrollMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v6}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryEndTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_2

    :goto_1
    invoke-virtual {v3, v0, v1}, Lcom/android/videoeditor/widgets/HandleView;->setLimitReached(ZZ)V

    .line 290
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-static {v1}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$100(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrollMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrollOverlay:Lcom/android/videoeditor/service/MovieOverlay;

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieOverlay;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->mScrollOverlay:Lcom/android/videoeditor/service/MovieOverlay;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieOverlay;->getAppStartTime()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/android/videoeditor/service/ApiService;->setOverlayStartTime(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 294
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 285
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public onSingleTapConfirmed(Landroid/view/View;ILandroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "area"    # I
    .param p3, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 174
    iget-object v2, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-static {v2}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$200(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    const/4 v2, 0x0

    .line 206
    .end local p1    # "view":Landroid/view/View;
    :goto_0
    return v2

    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    move-object v2, p1

    .line 178
    check-cast v2, Lcom/android/videoeditor/widgets/OverlayView;

    invoke-virtual {v2}, Lcom/android/videoeditor/widgets/OverlayView;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .end local p1    # "view":Landroid/view/View;
    :cond_1
    :goto_1
    move v2, v3

    .line 206
    goto :goto_0

    .line 180
    .restart local p1    # "view":Landroid/view/View;
    :pswitch_0
    iget-object v2, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-static {v2}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$500(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)V

    .line 181
    check-cast p1, Lcom/android/videoeditor/widgets/OverlayView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1, v3}, Lcom/android/videoeditor/widgets/OverlayView;->setState(I)V

    goto :goto_1

    .line 186
    .restart local p1    # "view":Landroid/view/View;
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 187
    .local v1, "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-virtual {v2}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v4, Lcom/android/videoeditor/OverlayTitleEditor;

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "media_item_id"

    invoke-virtual {v1}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    iget-object v2, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-virtual {v2}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const/16 v4, 0xc

    invoke-virtual {v2, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 195
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 196
    iget-object v2, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-static {v2, p1, v3}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$400(Lcom/android/videoeditor/widgets/OverlayLinearLayout;Landroid/view/View;Z)V

    goto :goto_1

    .line 178
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
