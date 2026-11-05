.class Lcom/android/videoeditor/widgets/MediaLinearLayout$18;
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

.field private mMinimumDurationMs:J

.field private mMovePosition:I

.field private mOriginalBeginMs:J

.field private mOriginalEndMs:J

.field private mOriginalWidth:I

.field private mTransitionsDurationMs:J

.field private mTrimmedView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

.field final synthetic val$mediaItemView:Lcom/android/videoeditor/widgets/MediaItemView;

.field final synthetic val$videoClip:Z


# direct methods
.method constructor <init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;Lcom/android/videoeditor/widgets/MediaItemView;Z)V
    .locals 0

    .prologue
    .line 2263
    iput-object p1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    iput-object p2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->val$mediaItemView:Lcom/android/videoeditor/widgets/MediaItemView;

    iput-boolean p3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->val$videoClip:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/videoeditor/widgets/MediaLinearLayout$18;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/MediaLinearLayout$18;

    .prologue
    .line 2263
    iget v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMovePosition:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/videoeditor/widgets/MediaLinearLayout$18;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/MediaLinearLayout$18;

    .prologue
    .line 2263
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->moveDone()V

    return-void
.end method

.method private moveDone()V
    .locals 11

    .prologue
    const-wide/16 v4, 0x1e

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 2388
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$2000(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x7f080000

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$2200(Lcom/android/videoeditor/widgets/MediaLinearLayout;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2389
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$2000(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080001

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2391
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1700(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/widgets/MediaLinearLayoutListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryBeginTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/android/videoeditor/widgets/MediaLinearLayoutListener;->onTrimMediaItemEnd(Lcom/android/videoeditor/service/MovieMediaItem;J)V

    .line 2393
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1700(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/widgets/MediaLinearLayoutListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-static {v1, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$2600(Lcom/android/videoeditor/widgets/MediaLinearLayout;Lcom/android/videoeditor/service/MovieMediaItem;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2, v10}, Lcom/android/videoeditor/widgets/MediaLinearLayoutListener;->onRequestMovePlayhead(JZ)V

    .line 2395
    iget-wide v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mOriginalBeginMs:J

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryBeginTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mOriginalEndMs:J

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryEndTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    .line 2400
    :cond_0
    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->val$videoClip:Z

    if-eqz v0, :cond_3

    .line 2401
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryBeginTime()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryEndTime()J

    move-result-wide v5

    invoke-static/range {v0 .. v6}, Lcom/android/videoeditor/service/ApiService;->setMediaItemBoundaries(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 2409
    :goto_0
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v7

    .line 2410
    .local v7, "durationMs":J
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$900(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/widgets/HandleView;

    move-result-object v1

    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-static {v0}, Lcom/android/videoeditor/util/MediaItemUtils;->getMinimumMediaItemDuration(Lcom/android/videoeditor/service/MovieMediaItem;)J

    move-result-wide v2

    cmp-long v0, v7, v2

    if-gtz v0, :cond_4

    move v0, v9

    :goto_1
    iget-boolean v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->val$videoClip:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryEndTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieMediaItem;->getDuration()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5

    :cond_1
    :goto_2
    invoke-virtual {v1, v0, v9}, Lcom/android/videoeditor/widgets/HandleView;->setLimitReached(ZZ)V

    .line 2416
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$800(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/widgets/HandleView;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/videoeditor/widgets/HandleView;->setEnabled(Z)V

    .line 2417
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$900(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/widgets/HandleView;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/videoeditor/widgets/HandleView;->setEnabled(Z)V

    .line 2419
    .end local v7    # "durationMs":J
    :cond_2
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0, v10}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1800(Lcom/android/videoeditor/widgets/MediaLinearLayout;Z)V

    .line 2420
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$2000(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 2421
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1900(Lcom/android/videoeditor/widgets/MediaLinearLayout;)V

    .line 2422
    return-void

    .line 2405
    :cond_3
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/videoeditor/service/ApiService;->setMediaItemDuration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .restart local v7    # "durationMs":J
    :cond_4
    move v0, v10

    .line 2410
    goto :goto_1

    :cond_5
    move v9, v10

    goto :goto_2

    :cond_6
    const-wide/16 v2, 0x1770

    cmp-long v2, v7, v2

    if-gez v2, :cond_1

    move v9, v10

    goto :goto_2
.end method


# virtual methods
.method public onMove(Lcom/android/videoeditor/widgets/HandleView;II)Z
    .locals 11
    .param p1, "view"    # Lcom/android/videoeditor/widgets/HandleView;
    .param p2, "left"    # I
    .param p3, "delta"    # I

    .prologue
    .line 2301
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v4}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$2100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2302
    const/4 v4, 0x0

    .line 2356
    :goto_0
    return v4

    .line 2305
    :cond_0
    add-int v3, p2, p3

    .line 2306
    .local v3, "position":I
    iput v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMovePosition:I

    .line 2308
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mTrimmedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int v2, v4, v3

    .line 2309
    .local v2, "newWidth":I
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mTrimmedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    if-ne v2, v4, :cond_1

    .line 2310
    const/4 v4, 0x0

    goto :goto_0

    .line 2314
    :cond_1
    iget-wide v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mTransitionsDurationMs:J

    int-to-long v6, v2

    iget-object v8, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v8}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/videoeditor/service/VideoEditorProject;->computeDuration()J

    move-result-wide v8

    mul-long/2addr v6, v8

    iget-object v8, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v8}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v9}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$2200(Lcom/android/videoeditor/widgets/MediaLinearLayout;)I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    int-to-long v8, v8

    div-long/2addr v6, v8

    add-long v0, v4, v6

    .line 2317
    .local v0, "newDurationMs":J
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x1e

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    .line 2319
    const/4 v4, 0x0

    goto :goto_0

    .line 2320
    :cond_2
    const-wide/16 v4, 0x2

    iget-wide v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mTransitionsDurationMs:J

    mul-long/2addr v4, v6

    iget-wide v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMinimumDurationMs:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-gez v4, :cond_4

    .line 2322
    const-wide/16 v4, 0x2

    iget-wide v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mTransitionsDurationMs:J

    mul-long/2addr v4, v6

    iget-wide v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMinimumDurationMs:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 2324
    iget-wide v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mTransitionsDurationMs:J

    sub-long v4, v0, v4

    iget-object v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v6}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v7}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$2200(Lcom/android/videoeditor/widgets/MediaLinearLayout;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-long v6, v6

    mul-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v6}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/videoeditor/service/VideoEditorProject;->computeDuration()J

    move-result-wide v6

    div-long/2addr v4, v6

    long-to-int v2, v4

    .line 2327
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mTrimmedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int v3, v4, v2

    .line 2338
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-nez v4, :cond_5

    .line 2339
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 2328
    :cond_4
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryEndTime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    .line 2329
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryEndTime()J

    move-result-wide v0

    .line 2330
    iget-wide v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mTransitionsDurationMs:J

    sub-long v4, v0, v4

    iget-object v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v6}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v7}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$2200(Lcom/android/videoeditor/widgets/MediaLinearLayout;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-long v6, v6

    mul-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v6}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/videoeditor/service/VideoEditorProject;->computeDuration()J

    move-result-wide v6

    div-long/2addr v4, v6

    long-to-int v2, v4

    .line 2333
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mTrimmedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int v3, v4, v2

    goto :goto_1

    .line 2342
    :cond_5
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    iget-object v5, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryEndTime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    iget-object v7, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v7}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryEndTime()J

    move-result-wide v7

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/videoeditor/service/MovieMediaItem;->setAppExtractBoundaries(JJ)V

    .line 2346
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v4}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$800(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/widgets/HandleView;

    move-result-object v6

    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryBeginTime()J

    move-result-wide v4

    const-wide/16 v7, 0x0

    cmp-long v4, v4, v7

    if-gtz v4, :cond_6

    const/4 v4, 0x1

    :goto_2
    iget-object v5, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMinimumDurationMs:J

    cmp-long v5, v7, v9

    if-gtz v5, :cond_7

    const/4 v5, 0x1

    :goto_3
    invoke-virtual {v6, v4, v5}, Lcom/android/videoeditor/widgets/HandleView;->setLimitReached(ZZ)V

    .line 2348
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$2102(Lcom/android/videoeditor/widgets/MediaLinearLayout;Z)Z

    .line 2349
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v4}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$2000(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Landroid/view/View;

    move-result-object v4

    const/high16 v5, 0x7f080000

    iget-object v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v6}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$2200(Lcom/android/videoeditor/widgets/MediaLinearLayout;)I

    move-result v6

    iget v7, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mOriginalWidth:I

    sub-int v7, v2, v7

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2351
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v4}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$2000(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f080001

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2352
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v4}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->requestLayout()V

    .line 2354
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v4}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1700(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/widgets/MediaLinearLayoutListener;

    move-result-object v4

    iget-object v5, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    iget-object v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v6}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryBeginTime()J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Lcom/android/videoeditor/widgets/MediaLinearLayoutListener;->onTrimMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;J)V

    .line 2356
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2346
    :cond_6
    const/4 v4, 0x0

    goto :goto_2

    :cond_7
    const/4 v5, 0x0

    goto :goto_3
.end method

.method public onMoveBegin(Lcom/android/videoeditor/widgets/HandleView;)V
    .locals 6
    .param p1, "view"    # Lcom/android/videoeditor/widgets/HandleView;

    .prologue
    const-wide/16 v2, 0x0

    .line 2274
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->val$mediaItemView:Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/MediaItemView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/service/MovieMediaItem;

    iput-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    .line 2275
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieTransition;->getAppDuration()J

    move-result-wide v0

    :goto_0
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieTransition;->getAppDuration()J

    move-result-wide v4

    :goto_1
    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mTransitionsDurationMs:J

    .line 2279
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryBeginTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mOriginalBeginMs:J

    .line 2280
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryEndTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mOriginalEndMs:J

    .line 2281
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->val$mediaItemView:Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/MediaItemView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mOriginalWidth:I

    .line 2282
    invoke-static {}, Lcom/android/videoeditor/util/MediaItemUtils;->getMinimumVideoItemDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMinimumDurationMs:J

    .line 2283
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1800(Lcom/android/videoeditor/widgets/MediaLinearLayout;Z)V

    .line 2284
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1900(Lcom/android/videoeditor/widgets/MediaLinearLayout;)V

    .line 2285
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->val$mediaItemView:Lcom/android/videoeditor/widgets/MediaItemView;

    iput-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mTrimmedView:Landroid/view/View;

    .line 2287
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1700(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/widgets/MediaLinearLayoutListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-interface {v0, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayoutListener;->onTrimMediaItemBegin(Lcom/android/videoeditor/service/MovieMediaItem;)V

    .line 2288
    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->val$videoClip:Z

    if-eqz v0, :cond_2

    .line 2289
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1700(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/widgets/MediaLinearLayoutListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryBeginTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/android/videoeditor/widgets/MediaLinearLayoutListener;->onTrimMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;J)V

    .line 2295
    :goto_2
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$2000(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080001

    invoke-virtual {p1}, Lcom/android/videoeditor/widgets/HandleView;->getRight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2296
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$2000(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 2297
    return-void

    :cond_0
    move-wide v0, v2

    .line 2275
    goto/16 :goto_0

    :cond_1
    move-wide v4, v2

    goto :goto_1

    .line 2292
    :cond_2
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1700(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/widgets/MediaLinearLayoutListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/videoeditor/widgets/MediaLinearLayoutListener;->onTrimMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;J)V

    goto :goto_2
.end method

.method public onMoveEnd(Lcom/android/videoeditor/widgets/HandleView;II)V
    .locals 7
    .param p1, "view"    # Lcom/android/videoeditor/widgets/HandleView;
    .param p2, "left"    # I
    .param p3, "delta"    # I

    .prologue
    .line 2361
    add-int v2, p2, p3

    .line 2362
    .local v2, "position":I
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$2100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->mMovePosition:I

    if-eq v2, v0, :cond_1

    .line 2363
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$2300(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/android/videoeditor/widgets/MediaLinearLayout$18$1;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/videoeditor/widgets/MediaLinearLayout$18$1;-><init>(Lcom/android/videoeditor/widgets/MediaLinearLayout$18;ILcom/android/videoeditor/widgets/HandleView;II)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2382
    :goto_0
    return-void

    .line 2380
    :cond_1
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;->moveDone()V

    goto :goto_0
.end method
