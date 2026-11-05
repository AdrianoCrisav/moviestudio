.class Lcom/android/videoeditor/widgets/MediaLinearLayout$19;
.super Ljava/lang/Object;
.source "MediaLinearLayout.java"

# interfaces
.implements Lcom/android/videoeditor/widgets/HandleView$MoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/widgets/MediaLinearLayout;->select(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

.field private mMinimumItemDurationMs:J

.field private mMovePosition:I

.field private mOriginalBeginMs:J

.field private mOriginalEndMs:J

.field private mTransitionsDurationMs:J

.field private mTrimmedView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

.field final synthetic val$mediaItemView:Lcom/android/videoeditor/widgets/MediaItemView;

.field final synthetic val$videoClip:Z


# direct methods
.method constructor <init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;Lcom/android/videoeditor/widgets/MediaItemView;Z)V
    .locals 0

    .prologue
    .line 2433
    iput-object p1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    iput-object p2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->val$mediaItemView:Lcom/android/videoeditor/widgets/MediaItemView;

    iput-boolean p3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->val$videoClip:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/videoeditor/widgets/MediaLinearLayout$19;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/MediaLinearLayout$19;

    .prologue
    .line 2433
    iget v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mMovePosition:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/videoeditor/widgets/MediaLinearLayout$19;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/MediaLinearLayout$19;

    .prologue
    .line 2433
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->moveDone()V

    return-void
.end method

.method private moveDone()V
    .locals 9

    .prologue
    const-wide/16 v4, 0x1e

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2586
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$2000(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080001

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2588
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1700(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/widgets/MediaLinearLayoutListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryEndTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/android/videoeditor/widgets/MediaLinearLayoutListener;->onTrimMediaItemEnd(Lcom/android/videoeditor/service/MovieMediaItem;J)V

    .line 2590
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1700(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/widgets/MediaLinearLayoutListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-static {v1, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$2900(Lcom/android/videoeditor/widgets/MediaLinearLayout;Lcom/android/videoeditor/service/MovieMediaItem;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2, v8}, Lcom/android/videoeditor/widgets/MediaLinearLayoutListener;->onRequestMovePlayhead(JZ)V

    .line 2592
    iget-wide v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mOriginalBeginMs:J

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryBeginTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mOriginalEndMs:J

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryEndTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    .line 2596
    :cond_0
    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->val$videoClip:Z

    if-eqz v0, :cond_3

    .line 2597
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryBeginTime()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryEndTime()J

    move-result-wide v5

    invoke-static/range {v0 .. v6}, Lcom/android/videoeditor/service/ApiService;->setMediaItemBoundaries(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 2605
    :goto_0
    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->val$videoClip:Z

    if-eqz v0, :cond_1

    .line 2606
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$800(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/widgets/HandleView;

    move-result-object v1

    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryBeginTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_4

    move v0, v7

    :goto_1
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mMinimumItemDurationMs:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_5

    :goto_2
    invoke-virtual {v1, v0, v7}, Lcom/android/videoeditor/widgets/HandleView;->setLimitReached(ZZ)V

    .line 2610
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$800(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/widgets/HandleView;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/videoeditor/widgets/HandleView;->setEnabled(Z)V

    .line 2611
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$900(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/widgets/HandleView;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/videoeditor/widgets/HandleView;->setEnabled(Z)V

    .line 2613
    :cond_2
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0, v8}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1800(Lcom/android/videoeditor/widgets/MediaLinearLayout;Z)V

    .line 2614
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$2000(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 2615
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1900(Lcom/android/videoeditor/widgets/MediaLinearLayout;)V

    .line 2616
    return-void

    .line 2601
    :cond_3
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/videoeditor/service/ApiService;->setMediaItemDuration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :cond_4
    move v0, v8

    .line 2606
    goto :goto_1

    :cond_5
    move v7, v8

    goto :goto_2
.end method


# virtual methods
.method public onMove(Lcom/android/videoeditor/widgets/HandleView;II)Z
    .locals 11
    .param p1, "view"    # Lcom/android/videoeditor/widgets/HandleView;
    .param p2, "left"    # I
    .param p3, "delta"    # I

    .prologue
    .line 2469
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v4}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$2100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2470
    const/4 v4, 0x0

    .line 2554
    :goto_0
    return v4

    .line 2473
    :cond_0
    add-int v3, p2, p3

    .line 2474
    .local v3, "position":I
    iput v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mMovePosition:I

    .line 2478
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mTrimmedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v2, v3, v4

    .line 2479
    .local v2, "newWidth":I
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mTrimmedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    if-ne v2, v4, :cond_1

    .line 2480
    const/4 v4, 0x0

    goto :goto_0

    .line 2484
    :cond_1
    iget-wide v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mTransitionsDurationMs:J

    int-to-long v6, v2

    iget-object v8, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v8}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/videoeditor/service/VideoEditorProject;->computeDuration()J

    move-result-wide v8

    mul-long/2addr v6, v8

    iget-object v8, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v8}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v9}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$2200(Lcom/android/videoeditor/widgets/MediaLinearLayout;)I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    int-to-long v8, v8

    div-long/2addr v6, v8

    add-long v0, v4, v6

    .line 2487
    .local v0, "newDurationMs":J
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x1e

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    .line 2489
    const/4 v4, 0x0

    goto :goto_0

    .line 2492
    :cond_2
    iget-boolean v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->val$videoClip:Z

    if-eqz v4, :cond_6

    .line 2493
    const-wide/16 v4, 0x2

    iget-wide v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mTransitionsDurationMs:J

    mul-long/2addr v4, v6

    iget-wide v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mMinimumItemDurationMs:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-gez v4, :cond_4

    .line 2495
    const-wide/16 v4, 0x2

    iget-wide v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mTransitionsDurationMs:J

    mul-long/2addr v4, v6

    iget-wide v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mMinimumItemDurationMs:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 2497
    iget-wide v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mTransitionsDurationMs:J

    sub-long v4, v0, v4

    iget-object v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v6}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v7}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$2200(Lcom/android/videoeditor/widgets/MediaLinearLayout;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-long v6, v6

    mul-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v6}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/videoeditor/service/VideoEditorProject;->computeDuration()J

    move-result-wide v6

    div-long/2addr v4, v6

    long-to-int v2, v4

    .line 2500
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mTrimmedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int v3, v2, v4

    .line 2511
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-nez v4, :cond_5

    .line 2512
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 2501
    :cond_4
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryBeginTime()J

    move-result-wide v4

    add-long/2addr v4, v0

    iget-object v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v6}, Lcom/android/videoeditor/service/MovieMediaItem;->getDuration()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 2503
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieMediaItem;->getDuration()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v6}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryBeginTime()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 2505
    iget-wide v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mTransitionsDurationMs:J

    sub-long v4, v0, v4

    iget-object v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v6}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v7}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$2200(Lcom/android/videoeditor/widgets/MediaLinearLayout;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-long v6, v6

    mul-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v6}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/videoeditor/service/VideoEditorProject;->computeDuration()J

    move-result-wide v6

    div-long/2addr v4, v6

    long-to-int v2, v4

    .line 2508
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mTrimmedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int v3, v2, v4

    goto :goto_1

    .line 2515
    :cond_5
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    iget-object v5, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryBeginTime()J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v7}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryBeginTime()J

    move-result-wide v7

    add-long/2addr v7, v0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/videoeditor/service/MovieMediaItem;->setAppExtractBoundaries(JJ)V

    .line 2517
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v4}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1700(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/widgets/MediaLinearLayoutListener;

    move-result-object v4

    iget-object v5, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    iget-object v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v6}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryEndTime()J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Lcom/android/videoeditor/widgets/MediaLinearLayoutListener;->onTrimMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;J)V

    .line 2544
    :goto_2
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v4}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$2000(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f080001

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2545
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v4}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$900(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/widgets/HandleView;

    move-result-object v6

    iget-wide v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mMinimumItemDurationMs:J

    cmp-long v4, v0, v4

    if-gtz v4, :cond_a

    const/4 v4, 0x1

    :goto_3
    iget-boolean v5, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->val$videoClip:Z

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryEndTime()J

    move-result-wide v7

    iget-object v5, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getDuration()J

    move-result-wide v9

    cmp-long v5, v7, v9

    if-ltz v5, :cond_b

    const/4 v5, 0x1

    :goto_4
    invoke-virtual {v6, v4, v5}, Lcom/android/videoeditor/widgets/HandleView;->setLimitReached(ZZ)V

    .line 2551
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$2102(Lcom/android/videoeditor/widgets/MediaLinearLayout;Z)Z

    .line 2552
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v4}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->requestLayout()V

    .line 2554
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2519
    :cond_6
    iget-wide v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mMinimumItemDurationMs:J

    const-wide/16 v6, 0x2

    iget-wide v8, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mTransitionsDurationMs:J

    mul-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-gez v4, :cond_8

    .line 2521
    iget-wide v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mMinimumItemDurationMs:J

    const-wide/16 v6, 0x2

    iget-wide v8, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mTransitionsDurationMs:J

    mul-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 2523
    iget-wide v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mTransitionsDurationMs:J

    sub-long v4, v0, v4

    iget-object v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v6}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v7}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$2200(Lcom/android/videoeditor/widgets/MediaLinearLayout;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-long v6, v6

    mul-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v6}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/videoeditor/service/VideoEditorProject;->computeDuration()J

    move-result-wide v6

    div-long/2addr v4, v6

    long-to-int v2, v4

    .line 2526
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mTrimmedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int v3, v2, v4

    .line 2536
    :cond_7
    :goto_5
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-nez v4, :cond_9

    .line 2537
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 2527
    :cond_8
    const-wide/16 v4, 0x1770

    cmp-long v4, v0, v4

    if-lez v4, :cond_7

    .line 2528
    const-wide/16 v0, 0x1770

    .line 2529
    iget-wide v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mTransitionsDurationMs:J

    sub-long v4, v0, v4

    iget-object v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v6}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v7}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$2200(Lcom/android/videoeditor/widgets/MediaLinearLayout;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-long v6, v6

    mul-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v6}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/videoeditor/service/VideoEditorProject;->computeDuration()J

    move-result-wide v6

    div-long/2addr v4, v6

    long-to-int v2, v4

    .line 2532
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mTrimmedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int v3, v2, v4

    goto :goto_5

    .line 2540
    :cond_9
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6, v0, v1}, Lcom/android/videoeditor/service/MovieMediaItem;->setAppExtractBoundaries(JJ)V

    .line 2541
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v4}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1700(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/widgets/MediaLinearLayoutListener;

    move-result-object v4

    iget-object v5, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    const-wide/16 v6, 0x0

    invoke-interface {v4, v5, v6, v7}, Lcom/android/videoeditor/widgets/MediaLinearLayoutListener;->onTrimMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;J)V

    goto/16 :goto_2

    .line 2545
    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_4

    :cond_c
    const-wide/16 v7, 0x1770

    cmp-long v5, v0, v7

    if-ltz v5, :cond_d

    const/4 v5, 0x1

    goto/16 :goto_4

    :cond_d
    const/4 v5, 0x0

    goto/16 :goto_4
.end method

.method public onMoveBegin(Lcom/android/videoeditor/widgets/HandleView;)V
    .locals 6
    .param p1, "view"    # Lcom/android/videoeditor/widgets/HandleView;

    .prologue
    const-wide/16 v2, 0x0

    .line 2443
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->val$mediaItemView:Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/MediaItemView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/service/MovieMediaItem;

    iput-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    .line 2444
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieTransition;->getAppDuration()J

    move-result-wide v0

    :goto_0
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieTransition;->getAppDuration()J

    move-result-wide v4

    :goto_1
    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mTransitionsDurationMs:J

    .line 2448
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryBeginTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mOriginalBeginMs:J

    .line 2449
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryEndTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mOriginalEndMs:J

    .line 2450
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-static {v0}, Lcom/android/videoeditor/util/MediaItemUtils;->getMinimumMediaItemDuration(Lcom/android/videoeditor/service/MovieMediaItem;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mMinimumItemDurationMs:J

    .line 2451
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1800(Lcom/android/videoeditor/widgets/MediaLinearLayout;Z)V

    .line 2452
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1900(Lcom/android/videoeditor/widgets/MediaLinearLayout;)V

    .line 2453
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->val$mediaItemView:Lcom/android/videoeditor/widgets/MediaItemView;

    iput-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mTrimmedView:Landroid/view/View;

    .line 2455
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1700(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/widgets/MediaLinearLayoutListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-interface {v0, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayoutListener;->onTrimMediaItemBegin(Lcom/android/videoeditor/service/MovieMediaItem;)V

    .line 2456
    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->val$videoClip:Z

    if-eqz v0, :cond_2

    .line 2457
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1700(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/widgets/MediaLinearLayoutListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryEndTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/android/videoeditor/widgets/MediaLinearLayoutListener;->onTrimMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;J)V

    .line 2463
    :goto_2
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$2000(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080001

    invoke-virtual {p1}, Lcom/android/videoeditor/widgets/HandleView;->getLeft()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2464
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$2000(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 2465
    return-void

    :cond_0
    move-wide v0, v2

    .line 2444
    goto :goto_0

    :cond_1
    move-wide v4, v2

    goto :goto_1

    .line 2459
    :cond_2
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1700(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/widgets/MediaLinearLayoutListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/videoeditor/widgets/MediaLinearLayoutListener;->onTrimMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;J)V

    goto :goto_2
.end method

.method public onMoveEnd(Lcom/android/videoeditor/widgets/HandleView;II)V
    .locals 7
    .param p1, "view"    # Lcom/android/videoeditor/widgets/HandleView;
    .param p2, "left"    # I
    .param p3, "delta"    # I

    .prologue
    .line 2559
    add-int v2, p2, p3

    .line 2560
    .local v2, "position":I
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$2100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->mMovePosition:I

    if-eq v2, v0, :cond_1

    .line 2561
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$2300(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/android/videoeditor/widgets/MediaLinearLayout$19$1;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/videoeditor/widgets/MediaLinearLayout$19$1;-><init>(Lcom/android/videoeditor/widgets/MediaLinearLayout$19;ILcom/android/videoeditor/widgets/HandleView;II)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2580
    :goto_0
    return-void

    .line 2578
    :cond_1
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;->moveDone()V

    goto :goto_0
.end method
