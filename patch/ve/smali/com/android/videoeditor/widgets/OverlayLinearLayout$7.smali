.class Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;
.super Ljava/lang/Object;
.source "OverlayLinearLayout.java"

# interfaces
.implements Lcom/android/videoeditor/widgets/HandleView$MoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/widgets/OverlayLinearLayout;->selectView(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

.field private mMinimumDurationMs:J

.field private mMovePosition:I

.field final synthetic this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

.field final synthetic val$mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

.field final synthetic val$overlay:Lcom/android/videoeditor/service/MovieOverlay;

.field final synthetic val$overlayView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/widgets/OverlayLinearLayout;Lcom/android/videoeditor/service/MovieMediaItem;Landroid/view/View;Lcom/android/videoeditor/service/MovieOverlay;)V
    .locals 0

    .prologue
    .line 864
    iput-object p1, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    iput-object p2, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->val$mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    iput-object p3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->val$overlayView:Landroid/view/View;

    iput-object p4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->val$overlay:Lcom/android/videoeditor/service/MovieOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;

    .prologue
    .line 864
    iget v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->mMovePosition:I

    return v0
.end method


# virtual methods
.method public onMove(Lcom/android/videoeditor/widgets/HandleView;II)Z
    .locals 12
    .param p1, "view"    # Lcom/android/videoeditor/widgets/HandleView;
    .param p2, "left"    # I
    .param p3, "delta"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 877
    iget-object v4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-static {v4}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$800(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 906
    :goto_0
    return v6

    .line 881
    :cond_0
    add-int v3, p2, p3

    .line 883
    .local v3, "position":I
    iget-object v4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->val$overlayView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v2, v3, v4

    .line 886
    .local v2, "newWidth":I
    int-to-long v7, v2

    iget-object v4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-static {v4}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$100(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/videoeditor/service/VideoEditorProject;->computeDuration()J

    move-result-wide v9

    mul-long/2addr v7, v9

    iget-object v4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-virtual {v4}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getWidth()I

    move-result v4

    iget-object v9, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-static {v9}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$700(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    sub-int/2addr v4, v9

    int-to-long v9, v4

    div-long v0, v7, v9

    .line 889
    .local v0, "newDurationMs":J
    iget-wide v7, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->mMinimumDurationMs:J

    cmp-long v4, v0, v7

    if-gez v4, :cond_3

    .line 890
    iget-wide v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->mMinimumDurationMs:J

    .line 896
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-static {v4}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$600(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)Lcom/android/videoeditor/widgets/HandleView;

    move-result-object v7

    iget-object v4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->val$overlay:Lcom/android/videoeditor/service/MovieOverlay;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieOverlay;->getAppDuration()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->mMinimumDurationMs:J

    cmp-long v4, v8, v10

    if-gtz v4, :cond_4

    move v4, v5

    :goto_2
    iget-object v8, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->val$overlay:Lcom/android/videoeditor/service/MovieOverlay;

    invoke-virtual {v8}, Lcom/android/videoeditor/service/MovieOverlay;->getAppStartTime()J

    move-result-wide v8

    iget-object v10, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->val$overlay:Lcom/android/videoeditor/service/MovieOverlay;

    invoke-virtual {v10}, Lcom/android/videoeditor/service/MovieOverlay;->getAppDuration()J

    move-result-wide v10

    add-long/2addr v8, v10

    iget-object v10, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v10}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryEndTime()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-ltz v8, :cond_2

    move v6, v5

    :cond_2
    invoke-virtual {v7, v4, v6}, Lcom/android/videoeditor/widgets/HandleView;->setLimitReached(ZZ)V

    .line 899
    iget-object v4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->val$overlay:Lcom/android/videoeditor/service/MovieOverlay;

    invoke-virtual {v4, v0, v1}, Lcom/android/videoeditor/service/MovieOverlay;->setAppDuration(J)V

    .line 901
    iput v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->mMovePosition:I

    .line 902
    iget-object v4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-static {v4, v5}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$802(Lcom/android/videoeditor/widgets/OverlayLinearLayout;Z)Z

    .line 904
    iget-object v4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-virtual {v4}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->requestLayout()V

    move v6, v5

    .line 906
    goto :goto_0

    .line 891
    :cond_3
    iget-object v4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->val$overlay:Lcom/android/videoeditor/service/MovieOverlay;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieOverlay;->getAppStartTime()J

    move-result-wide v7

    add-long/2addr v7, v0

    iget-object v4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryEndTime()J

    move-result-wide v9

    cmp-long v4, v7, v9

    if-lez v4, :cond_1

    .line 893
    iget-object v4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryEndTime()J

    move-result-wide v7

    iget-object v4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->val$overlay:Lcom/android/videoeditor/service/MovieOverlay;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieOverlay;->getAppStartTime()J

    move-result-wide v9

    sub-long v0, v7, v9

    goto :goto_1

    :cond_4
    move v4, v6

    .line 896
    goto :goto_2
.end method

.method public onMoveBegin(Lcom/android/videoeditor/widgets/HandleView;)V
    .locals 2
    .param p1, "view"    # Lcom/android/videoeditor/widgets/HandleView;

    .prologue
    .line 871
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->val$mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    iput-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    .line 872
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->val$mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-static {v0}, Lcom/android/videoeditor/util/MediaItemUtils;->getMinimumMediaItemDuration(Lcom/android/videoeditor/service/MovieMediaItem;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->mMinimumDurationMs:J

    .line 873
    return-void
.end method

.method public onMoveEnd(Lcom/android/videoeditor/widgets/HandleView;II)V
    .locals 7
    .param p1, "view"    # Lcom/android/videoeditor/widgets/HandleView;
    .param p2, "left"    # I
    .param p3, "delta"    # I

    .prologue
    .line 911
    add-int v2, p2, p3

    .line 912
    .local v2, "position":I
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$800(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->mMovePosition:I

    if-eq v2, v0, :cond_1

    .line 913
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$900(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7$1;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7$1;-><init>(Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;ILcom/android/videoeditor/widgets/HandleView;II)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 932
    :goto_0
    return-void

    .line 930
    :cond_1
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->scaleDone()V

    goto :goto_0
.end method

.method public scaleDone()V
    .locals 6

    .prologue
    .line 938
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-static {v1}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$100(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->val$overlay:Lcom/android/videoeditor/service/MovieOverlay;

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieOverlay;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;->val$overlay:Lcom/android/videoeditor/service/MovieOverlay;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieOverlay;->getAppDuration()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/android/videoeditor/service/ApiService;->setOverlayDuration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 940
    return-void
.end method
