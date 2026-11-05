.class public Lcom/android/videoeditor/widgets/MediaLinearLayout;
.super Landroid/widget/LinearLayout;
.source "MediaLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/videoeditor/widgets/MediaLinearLayout$TransitionActionModeCallback;,
        Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;
    }
.end annotation


# static fields
.field private static final MAXIMUM_IMAGE_DURATION:J = 0x1770L

.field private static final MAXIMUM_TRANSITION_DURATION:J = 0xbb8L

.field private static final MINIMUM_TRANSITION_DURATION:J = 0xfaL

.field private static final PARAM_DIALOG_CURRENT_RENDERING_MODE:Ljava/lang/String; = "rendering_mode"

.field private static final PARAM_DIALOG_MEDIA_ITEM_ID:Ljava/lang/String; = "media_item_id"

.field private static final PARAM_DIALOG_TRANSITION_ID:Ljava/lang/String; = "transition_id"

.field private static final TAG:Ljava/lang/String; = "MediaLinearLayout"

.field private static final TIME_TOLERANCE:J = 0x1eL


# instance fields
.field private mDragMediaItemId:Ljava/lang/String;

.field private mDropAfterMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

.field private mDropIndex:I

.field private mFirstEntered:Z

.field private final mHalfParentWidth:I

.field private final mHandleWidth:I

.field private final mHandler:Landroid/os/Handler;

.field private mIsTrimming:Z

.field private final mLeftAddClipButton:Landroid/widget/ImageButton;

.field private mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

.field private mListener:Lcom/android/videoeditor/widgets/MediaLinearLayoutListener;

.field private mMediaItemActionMode:Landroid/view/ActionMode;

.field private final mMediaItemGestureListener:Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

.field private mMoveLayoutPending:Z

.field private mPlaybackInProgress:Z

.field private mPrevDragPosition:F

.field private mPrevDragScrollTime:J

.field private mProject:Lcom/android/videoeditor/service/VideoEditorProject;

.field private final mRightAddClipButton:Landroid/widget/ImageButton;

.field private mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

.field private mScrollView:Landroid/view/View;

.field private mSelectedView:Landroid/view/View;

.field private mTransitionActionMode:Landroid/view/ActionMode;

.field private final mTransitionGestureListener:Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

.field private final mTransitionVerticalInset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 546
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 547
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 542
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 543
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x0

    .line 388
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 390
    new-instance v3, Lcom/android/videoeditor/widgets/MediaLinearLayout$1;

    invoke-direct {v3, p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout$1;-><init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;)V

    iput-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemGestureListener:Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

    .line 444
    new-instance v3, Lcom/android/videoeditor/widgets/MediaLinearLayout$2;

    invoke-direct {v3, p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout$2;-><init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;)V

    iput-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mTransitionGestureListener:Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

    .line 470
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f040004

    invoke-static {v3, v4, v5}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 471
    .local v0, "beginView":Landroid/view/View;
    new-instance v3, Lcom/android/videoeditor/widgets/MediaLinearLayout$3;

    invoke-direct {v3, p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout$3;-><init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 478
    const v3, 0x7f080008

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftAddClipButton:Landroid/widget/ImageButton;

    .line 480
    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftAddClipButton:Landroid/widget/ImageButton;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 481
    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftAddClipButton:Landroid/widget/ImageButton;

    new-instance v4, Lcom/android/videoeditor/widgets/MediaLinearLayout$4;

    invoke-direct {v4, p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout$4;-><init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 491
    invoke-virtual {p0, v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->addView(Landroid/view/View;)V

    .line 494
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f040006

    invoke-static {v3, v4, v5}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 495
    .local v2, "endView":Landroid/view/View;
    new-instance v3, Lcom/android/videoeditor/widgets/MediaLinearLayout$5;

    invoke-direct {v3, p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout$5;-><init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    const v3, 0x7f08000c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mRightAddClipButton:Landroid/widget/ImageButton;

    .line 504
    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mRightAddClipButton:Landroid/widget/ImageButton;

    new-instance v4, Lcom/android/videoeditor/widgets/MediaLinearLayout$6;

    invoke-direct {v4, p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout$6;-><init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 519
    invoke-virtual {p0, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->addView(Landroid/view/View;)V

    .line 521
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f04000b

    invoke-static {v3, v4, v5}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/videoeditor/widgets/HandleView;

    iput-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    .line 522
    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {p0, v3}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->addView(Landroid/view/View;)V

    .line 524
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f040014

    invoke-static {v3, v4, v5}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/videoeditor/widgets/HandleView;

    iput-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    .line 525
    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {p0, v3}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->addView(Landroid/view/View;)V

    .line 527
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mHandleWidth:I

    .line 529
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mTransitionVerticalInset:I

    .line 533
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 534
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mHalfParentWidth:I

    .line 536
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mHandler:Landroid/os/Handler;

    .line 538
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->setMotionEventSplittingEnabled(Z)V

    .line 539
    return-void
.end method

.method static synthetic access$000(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/MediaLinearLayout;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/videoeditor/widgets/MediaLinearLayout;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/MediaLinearLayout;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/MediaLinearLayout;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/videoeditor/widgets/MediaLinearLayout;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/MediaLinearLayout;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->unSelect(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/videoeditor/widgets/MediaLinearLayout;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/MediaLinearLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->showAddMediaItemButtons(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/MediaLinearLayout;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mTransitionActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/videoeditor/widgets/MediaLinearLayout;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/MediaLinearLayout;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mTransitionActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/videoeditor/widgets/MediaLinearLayout;Lcom/android/videoeditor/service/MovieTransition;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/MediaLinearLayout;
    .param p1, "x1"    # Lcom/android/videoeditor/service/MovieTransition;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->editTransition(Lcom/android/videoeditor/service/MovieTransition;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/videoeditor/widgets/MediaLinearLayout;Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/MediaLinearLayout;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getTransitionView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/videoeditor/widgets/MediaLinearLayout;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/MediaLinearLayout;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->select(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/videoeditor/widgets/MediaLinearLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/MediaLinearLayout;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->unselectAllTimelineViews()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/widgets/MediaLinearLayoutListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/MediaLinearLayout;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mListener:Lcom/android/videoeditor/widgets/MediaLinearLayoutListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/videoeditor/widgets/MediaLinearLayout;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/MediaLinearLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->setIsTrimming(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/videoeditor/widgets/MediaLinearLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/MediaLinearLayout;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->invalidateAllChildren()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/MediaLinearLayout;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mPlaybackInProgress:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/MediaLinearLayout;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mScrollView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/MediaLinearLayout;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMoveLayoutPending:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/videoeditor/widgets/MediaLinearLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/MediaLinearLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMoveLayoutPending:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/videoeditor/widgets/MediaLinearLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/MediaLinearLayout;

    .prologue
    .line 70
    iget v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mHalfParentWidth:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/MediaLinearLayout;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/videoeditor/widgets/MediaLinearLayout;Lcom/android/videoeditor/service/MovieMediaItem;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/MediaLinearLayout;
    .param p1, "x1"    # Lcom/android/videoeditor/service/MovieMediaItem;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getBeginTime(Lcom/android/videoeditor/service/MovieMediaItem;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2900(Lcom/android/videoeditor/widgets/MediaLinearLayout;Lcom/android/videoeditor/service/MovieMediaItem;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/MediaLinearLayout;
    .param p1, "x1"    # Lcom/android/videoeditor/service/MovieMediaItem;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getEndTime(Lcom/android/videoeditor/service/MovieMediaItem;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/videoeditor/widgets/MediaLinearLayout;Lcom/android/videoeditor/service/MovieMediaItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/MediaLinearLayout;
    .param p1, "x1"    # Lcom/android/videoeditor/service/MovieMediaItem;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->editOverlay(Lcom/android/videoeditor/service/MovieMediaItem;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/videoeditor/widgets/MediaLinearLayout;Lcom/android/videoeditor/service/MovieMediaItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/MediaLinearLayout;
    .param p1, "x1"    # Lcom/android/videoeditor/service/MovieMediaItem;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->removeOverlay(Lcom/android/videoeditor/service/MovieMediaItem;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/videoeditor/widgets/MediaLinearLayout;Lcom/android/videoeditor/service/MovieMediaItem;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/MediaLinearLayout;
    .param p1, "x1"    # Lcom/android/videoeditor/service/MovieMediaItem;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->pickTransition(Lcom/android/videoeditor/service/MovieMediaItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/videoeditor/widgets/MediaLinearLayout;Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/MediaLinearLayout;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getMediaItemView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/MediaLinearLayout;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mSelectedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/widgets/HandleView;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/MediaLinearLayout;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/widgets/HandleView;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/MediaLinearLayout;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    return-object v0
.end method

.method private addMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;)V
    .locals 11
    .param p1, "mediaItem"    # Lcom/android/videoeditor/service/MovieMediaItem;

    .prologue
    const/4 v10, 0x0

    .line 636
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f04000e

    invoke-static {v8, v9, v10}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .local v4, "mediaItemView":Landroid/view/View;
    move-object v8, v4

    .line 637
    check-cast v8, Lcom/android/videoeditor/widgets/MediaItemView;

    iget-object v9, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemGestureListener:Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

    invoke-virtual {v8, v9}, Lcom/android/videoeditor/widgets/MediaItemView;->setGestureListener(Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;)V

    move-object v8, v4

    .line 638
    check-cast v8, Lcom/android/videoeditor/widgets/MediaItemView;

    iget-object v9, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v9}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/videoeditor/widgets/MediaItemView;->setProjectPath(Ljava/lang/String;)V

    .line 639
    invoke-virtual {v4, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 642
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x1

    invoke-direct {v3, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 646
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x3

    invoke-virtual {p0, v4, v8, v3}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 649
    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v0

    .line 650
    .local v0, "beginTransition":Lcom/android/videoeditor/service/MovieTransition;
    if-eqz v0, :cond_0

    .line 651
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildCount()I

    move-result v1

    .line 653
    .local v1, "cc":I
    const/4 v8, 0x5

    if-le v1, v8, :cond_3

    .line 654
    add-int/lit8 v8, v1, -0x5

    invoke-virtual {p0, v8}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 655
    .local v7, "view":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 657
    .local v6, "tag":Ljava/lang/Object;
    if-eqz v6, :cond_0

    instance-of v8, v6, Lcom/android/videoeditor/service/MovieMediaItem;

    if-eqz v8, :cond_0

    move-object v5, v6

    .line 658
    check-cast v5, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 659
    .local v5, "prevMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v0, v8}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->addTransition(Lcom/android/videoeditor/service/MovieTransition;Ljava/lang/String;)Landroid/view/View;

    .line 666
    .end local v1    # "cc":I
    .end local v5    # "prevMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v6    # "tag":Ljava/lang/Object;
    .end local v7    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v2

    .line 667
    .local v2, "endTransition":Lcom/android/videoeditor/service/MovieTransition;
    if-eqz v2, :cond_1

    .line 668
    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v2, v8}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->addTransition(Lcom/android/videoeditor/service/MovieTransition;Ljava/lang/String;)Landroid/view/View;

    .line 671
    :cond_1
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->requestLayout()V

    .line 673
    iget-object v8, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    if-eqz v8, :cond_2

    .line 674
    iget-object v8, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    invoke-virtual {v8}, Landroid/view/ActionMode;->invalidate()V

    .line 678
    :cond_2
    iget-object v8, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftAddClipButton:Landroid/widget/ImageButton;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 679
    return-void

    .line 662
    .end local v2    # "endTransition":Lcom/android/videoeditor/service/MovieTransition;
    .restart local v1    # "cc":I
    :cond_3
    invoke-virtual {p0, v0, v10}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->addTransition(Lcom/android/videoeditor/service/MovieTransition;Ljava/lang/String;)Landroid/view/View;

    goto :goto_0
.end method

.method private clearAndHideTrimHandles()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 2201
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/HandleView;->setVisibility(I)V

    .line 2202
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v0, v2}, Lcom/android/videoeditor/widgets/HandleView;->setListener(Lcom/android/videoeditor/widgets/HandleView$MoveListener;)V

    .line 2203
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/HandleView;->setVisibility(I)V

    .line 2204
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v0, v2}, Lcom/android/videoeditor/widgets/HandleView;->setListener(Lcom/android/videoeditor/widgets/HandleView$MoveListener;)V

    .line 2205
    return-void
.end method

.method private closeActionBars()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2186
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 2187
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 2188
    iput-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    .line 2191
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mTransitionActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    .line 2192
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mTransitionActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 2193
    iput-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mTransitionActionMode:Landroid/view/ActionMode;

    .line 2195
    :cond_1
    return-void
.end method

.method private computeViewDuration(Landroid/view/View;)J
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1339
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 1340
    .local v3, "tag":Ljava/lang/Object;
    if-eqz v3, :cond_3

    .line 1341
    instance-of v5, v3, Lcom/android/videoeditor/service/MovieMediaItem;

    if-eqz v5, :cond_2

    .line 1342
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 1343
    .local v2, "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v0

    .line 1344
    .local v0, "durationMs":J
    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1345
    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieTransition;->getAppDuration()J

    move-result-wide v5

    sub-long/2addr v0, v5

    .line 1348
    :cond_0
    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1349
    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieTransition;->getAppDuration()J

    move-result-wide v5

    sub-long/2addr v0, v5

    .line 1359
    .end local v2    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_1
    :goto_0
    return-wide v0

    .end local v0    # "durationMs":J
    :cond_2
    move-object v4, v3

    .line 1352
    check-cast v4, Lcom/android/videoeditor/service/MovieTransition;

    .line 1353
    .local v4, "transition":Lcom/android/videoeditor/service/MovieTransition;
    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieTransition;->getAppDuration()J

    move-result-wide v0

    .line 1354
    .restart local v0    # "durationMs":J
    goto :goto_0

    .line 1356
    .end local v0    # "durationMs":J
    .end local v4    # "transition":Lcom/android/videoeditor/service/MovieTransition;
    :cond_3
    const-wide/16 v0, 0x0

    .restart local v0    # "durationMs":J
    goto :goto_0
.end method

.method private editOverlay(Lcom/android/videoeditor/service/MovieMediaItem;)V
    .locals 7
    .param p1, "mediaItem"    # Lcom/android/videoeditor/service/MovieMediaItem;

    .prologue
    .line 1912
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/android/videoeditor/OverlayTitleEditor;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1913
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "media_item_id"

    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1917
    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getOverlay()Lcom/android/videoeditor/service/MovieOverlay;

    move-result-object v2

    .line 1918
    .local v2, "overlay":Lcom/android/videoeditor/service/MovieOverlay;
    if-eqz v2, :cond_0

    .line 1919
    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getOverlay()Lcom/android/videoeditor/service/MovieOverlay;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieOverlay;->getId()Ljava/lang/String;

    move-result-object v3

    .line 1920
    .local v3, "overlayId":Ljava/lang/String;
    const-string v4, "overlay_id"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1921
    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieOverlay;->getType()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieOverlay;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieOverlay;->getSubtitle()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/videoeditor/service/MovieOverlay;->buildUserAttributes(ILjava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1923
    .local v0, "attributes":Landroid/os/Bundle;
    const-string v4, "attributes"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1926
    .end local v0    # "attributes":Landroid/os/Bundle;
    .end local v3    # "overlayId":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    const/16 v5, 0xc

    invoke-virtual {v4, v1, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1928
    return-void
.end method

.method private editTransition(Lcom/android/videoeditor/service/MovieTransition;)V
    .locals 6
    .param p1, "transition"    # Lcom/android/videoeditor/service/MovieTransition;

    .prologue
    .line 1975
    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v3, p1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPreviousMediaItem(Lcom/android/videoeditor/service/MovieTransition;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v0

    .line 1976
    .local v0, "afterMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v1

    .line 1978
    .local v1, "afterMediaItemId":Ljava/lang/String;
    :goto_0
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/videoeditor/TransitionsActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1979
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "media_item_id"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1980
    const-string v3, "transition_id"

    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieTransition;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1981
    const-string v3, "transition"

    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieTransition;->getType()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1982
    const-string v3, "min_duration"

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1983
    const-string v3, "default_duration"

    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieTransition;->getAppDuration()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1984
    const-string v3, "max_duration"

    invoke-direct {p0, v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getMaxTransitionDuration(Lcom/android/videoeditor/service/MovieMediaItem;)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1986
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    const/16 v4, 0xa

    invoke-virtual {v3, v2, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1988
    return-void

    .line 1976
    .end local v1    # "afterMediaItemId":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getBeginTime(Lcom/android/videoeditor/service/MovieMediaItem;)J
    .locals 10
    .param p1, "item"    # Lcom/android/videoeditor/service/MovieMediaItem;

    .prologue
    .line 1747
    iget-object v8, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v8}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItems()Ljava/util/List;

    move-result-object v6

    .line 1748
    .local v6, "mediaItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/videoeditor/service/MovieMediaItem;>;"
    const-wide/16 v0, 0x0

    .line 1749
    .local v0, "beginMs":J
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 1750
    .local v7, "mediaItemsCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v7, :cond_3

    .line 1751
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 1752
    .local v5, "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v2

    .line 1753
    .local v2, "beginTransition":Lcom/android/videoeditor/service/MovieTransition;
    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v3

    .line 1755
    .local v3, "endTransition":Lcom/android/videoeditor/service/MovieTransition;
    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1756
    if-eqz v2, :cond_0

    .line 1757
    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieTransition;->getAppDuration()J

    move-result-wide v8

    add-long/2addr v0, v8

    :cond_0
    move-wide v8, v0

    .line 1769
    .end local v2    # "beginTransition":Lcom/android/videoeditor/service/MovieTransition;
    .end local v3    # "endTransition":Lcom/android/videoeditor/service/MovieTransition;
    .end local v5    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :goto_1
    return-wide v8

    .line 1762
    .restart local v2    # "beginTransition":Lcom/android/videoeditor/service/MovieTransition;
    .restart local v3    # "endTransition":Lcom/android/videoeditor/service/MovieTransition;
    .restart local v5    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_1
    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v8

    add-long/2addr v0, v8

    .line 1764
    if-eqz v3, :cond_2

    .line 1765
    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieTransition;->getAppDuration()J

    move-result-wide v8

    sub-long/2addr v0, v8

    .line 1750
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1769
    .end local v2    # "beginTransition":Lcom/android/videoeditor/service/MovieTransition;
    .end local v3    # "endTransition":Lcom/android/videoeditor/service/MovieTransition;
    .end local v5    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_3
    const-wide/16 v8, 0x0

    goto :goto_1
.end method

.method private getEndTime(Lcom/android/videoeditor/service/MovieMediaItem;)J
    .locals 10
    .param p1, "item"    # Lcom/android/videoeditor/service/MovieMediaItem;

    .prologue
    .line 1774
    iget-object v8, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v8}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItems()Ljava/util/List;

    move-result-object v6

    .line 1775
    .local v6, "mediaItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/videoeditor/service/MovieMediaItem;>;"
    const-wide/16 v1, 0x0

    .line 1776
    .local v1, "endMs":J
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 1777
    .local v7, "mediaItemsCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v7, :cond_2

    .line 1778
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 1779
    .local v5, "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v0

    .line 1780
    .local v0, "beginTransition":Lcom/android/videoeditor/service/MovieTransition;
    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v3

    .line 1782
    .local v3, "endTransition":Lcom/android/videoeditor/service/MovieTransition;
    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v8

    add-long/2addr v1, v8

    .line 1784
    if-eqz v3, :cond_0

    .line 1785
    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieTransition;->getAppDuration()J

    move-result-wide v8

    sub-long/2addr v1, v8

    .line 1788
    :cond_0
    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-wide v8, v1

    .line 1794
    .end local v0    # "beginTransition":Lcom/android/videoeditor/service/MovieTransition;
    .end local v3    # "endTransition":Lcom/android/videoeditor/service/MovieTransition;
    .end local v5    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :goto_1
    return-wide v8

    .line 1777
    .restart local v0    # "beginTransition":Lcom/android/videoeditor/service/MovieTransition;
    .restart local v3    # "endTransition":Lcom/android/videoeditor/service/MovieTransition;
    .restart local v5    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1794
    .end local v0    # "beginTransition":Lcom/android/videoeditor/service/MovieTransition;
    .end local v3    # "endTransition":Lcom/android/videoeditor/service/MovieTransition;
    .end local v5    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_2
    const-wide/16 v8, 0x0

    goto :goto_1
.end method

.method private getLeftDropPosition()J
    .locals 15

    .prologue
    const/4 v14, -0x1

    const/4 v13, 0x0

    .line 1801
    iget-object v11, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v11}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItems()Ljava/util/List;

    move-result-object v6

    .line 1802
    .local v6, "mediaItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/videoeditor/service/MovieMediaItem;>;"
    const-wide/16 v0, 0x0

    .line 1803
    .local v0, "beginMs":J
    const-wide/16 v2, 0x0

    .line 1804
    .local v2, "endMs":J
    iget-object v11, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v11}, Lcom/android/videoeditor/service/VideoEditorProject;->getPlayheadPos()J

    move-result-wide v9

    .line 1806
    .local v9, "timeMs":J
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 1807
    .local v7, "mediaItemsCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v7, :cond_2

    .line 1808
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 1810
    .local v5, "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v11

    add-long v2, v0, v11

    .line 1812
    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 1813
    add-int/lit8 v11, v7, -0x1

    if-ge v4, v11, :cond_0

    .line 1814
    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/videoeditor/service/MovieTransition;->getAppDuration()J

    move-result-wide v11

    sub-long/2addr v2, v11

    .line 1818
    :cond_0
    cmp-long v11, v9, v0

    if-lez v11, :cond_6

    cmp-long v11, v9, v2

    if-gtz v11, :cond_6

    .line 1819
    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 1820
    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/videoeditor/service/MovieTransition;->getAppDuration()J

    move-result-wide v11

    add-long/2addr v0, v11

    .line 1823
    :cond_1
    iget-object v11, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDragMediaItemId:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 1824
    if-lez v4, :cond_4

    .line 1826
    add-int/lit8 v11, v4, -0x1

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 1827
    .local v8, "prevMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    iget-object v11, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDragMediaItemId:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 1828
    iput-object v8, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDropAfterMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    .line 1829
    iput v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDropIndex:I

    move-wide v9, v0

    .line 1851
    .end local v5    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v8    # "prevMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v9    # "timeMs":J
    :cond_2
    :goto_1
    return-wide v9

    .line 1832
    .restart local v5    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    .restart local v8    # "prevMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    .restart local v9    # "timeMs":J
    :cond_3
    iput-object v13, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDropAfterMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    .line 1833
    iput v14, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDropIndex:I

    move-wide v9, v0

    .line 1834
    goto :goto_1

    .line 1837
    .end local v8    # "prevMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_4
    iput-object v13, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDropAfterMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    .line 1838
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDropIndex:I

    .line 1839
    const-wide/16 v9, 0x0

    goto :goto_1

    .line 1842
    :cond_5
    iput-object v13, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDropAfterMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    .line 1843
    iput v14, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDropIndex:I

    move-wide v9, v0

    .line 1844
    goto :goto_1

    .line 1848
    :cond_6
    move-wide v0, v2

    .line 1807
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private getMaxTransitionDuration(Lcom/android/videoeditor/service/MovieMediaItem;)J
    .locals 12
    .param p1, "afterMediaItem"    # Lcom/android/videoeditor/service/MovieMediaItem;

    .prologue
    const-wide/16 v10, 0xbb8

    const-wide/16 v8, 0x4

    .line 2139
    if-nez p1, :cond_0

    .line 2140
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/VideoEditorProject;->getFirstMediaItem()Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v1

    .line 2141
    .local v1, "firstMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v1}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v4

    div-long/2addr v4, v8

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 2151
    .end local v1    # "firstMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :goto_0
    return-wide v4

    .line 2143
    :cond_0
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/videoeditor/service/VideoEditorProject;->isLastMediaItem(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2144
    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v4

    div-long/2addr v4, v8

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    goto :goto_0

    .line 2147
    :cond_1
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/videoeditor/service/VideoEditorProject;->getNextMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v0

    .line 2149
    .local v0, "beforeMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 2151
    .local v2, "minDurationMs":J
    div-long v4, v2, v8

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    goto :goto_0
.end method

.method private getMediaItemView(Ljava/lang/String;)Landroid/view/View;
    .locals 6
    .param p1, "mediaItemId"    # Ljava/lang/String;

    .prologue
    .line 1997
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildCount()I

    move-result v1

    .line 1998
    .local v1, "childrenCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1999
    invoke-virtual {p0, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2000
    .local v0, "childView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 2001
    .local v4, "tag":Ljava/lang/Object;
    if-eqz v4, :cond_0

    instance-of v5, v4, Lcom/android/videoeditor/service/MovieMediaItem;

    if-eqz v5, :cond_0

    move-object v3, v4

    .line 2002
    check-cast v3, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 2003
    .local v3, "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2009
    .end local v0    # "childView":Landroid/view/View;
    .end local v3    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v4    # "tag":Ljava/lang/Object;
    :goto_1
    return-object v0

    .line 1998
    .restart local v0    # "childView":Landroid/view/View;
    .restart local v4    # "tag":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2009
    .end local v0    # "childView":Landroid/view/View;
    .end local v4    # "tag":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getMediaItemViewIndex(Ljava/lang/String;)I
    .locals 6
    .param p1, "mediaItemId"    # Ljava/lang/String;

    .prologue
    .line 2019
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildCount()I

    move-result v1

    .line 2020
    .local v1, "childrenCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2021
    invoke-virtual {p0, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2022
    .local v0, "childView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 2023
    .local v4, "tag":Ljava/lang/Object;
    if-eqz v4, :cond_0

    instance-of v5, v4, Lcom/android/videoeditor/service/MovieMediaItem;

    if-eqz v5, :cond_0

    move-object v3, v4

    .line 2024
    check-cast v3, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 2025
    .local v3, "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2031
    .end local v0    # "childView":Landroid/view/View;
    .end local v2    # "i":I
    .end local v3    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v4    # "tag":Ljava/lang/Object;
    :goto_1
    return v2

    .line 2020
    .restart local v0    # "childView":Landroid/view/View;
    .restart local v2    # "i":I
    .restart local v4    # "tag":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2031
    .end local v0    # "childView":Landroid/view/View;
    .end local v4    # "tag":Ljava/lang/Object;
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private getRightDropPosition()J
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, -0x1

    .line 1858
    iget-object v11, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v11}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItems()Ljava/util/List;

    move-result-object v6

    .line 1859
    .local v6, "mediaItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/videoeditor/service/MovieMediaItem;>;"
    const-wide/16 v0, 0x0

    .line 1860
    .local v0, "beginMs":J
    const-wide/16 v2, 0x0

    .line 1861
    .local v2, "endMs":J
    iget-object v11, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v11}, Lcom/android/videoeditor/service/VideoEditorProject;->getPlayheadPos()J

    move-result-wide v9

    .line 1863
    .local v9, "timeMs":J
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 1864
    .local v7, "mediaItemsCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v7, :cond_1

    .line 1865
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 1867
    .local v5, "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v11

    add-long v2, v0, v11

    .line 1869
    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 1870
    add-int/lit8 v11, v7, -0x1

    if-ge v4, v11, :cond_0

    .line 1871
    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/videoeditor/service/MovieTransition;->getAppDuration()J

    move-result-wide v11

    sub-long/2addr v2, v11

    .line 1875
    :cond_0
    cmp-long v11, v9, v0

    if-ltz v11, :cond_5

    cmp-long v11, v9, v2

    if-gez v11, :cond_5

    .line 1876
    iget-object v11, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDragMediaItemId:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 1877
    add-int/lit8 v11, v7, -0x1

    if-ge v4, v11, :cond_3

    .line 1879
    add-int/lit8 v11, v4, 0x1

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 1880
    .local v8, "nextMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    iget-object v11, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDragMediaItemId:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 1881
    iput-object v5, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDropAfterMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    .line 1882
    iput v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDropIndex:I

    move-wide v9, v2

    .line 1904
    .end local v5    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v8    # "nextMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v9    # "timeMs":J
    :cond_1
    :goto_1
    return-wide v9

    .line 1885
    .restart local v5    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    .restart local v8    # "nextMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    .restart local v9    # "timeMs":J
    :cond_2
    iput-object v14, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDropAfterMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    .line 1886
    iput v13, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDropIndex:I

    move-wide v9, v2

    .line 1887
    goto :goto_1

    .line 1890
    .end local v8    # "nextMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_3
    iput-object v5, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDropAfterMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    .line 1891
    iput v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDropIndex:I

    move-wide v9, v2

    .line 1892
    goto :goto_1

    .line 1895
    :cond_4
    iput-object v14, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDropAfterMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    .line 1896
    iput v13, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDropIndex:I

    move-wide v9, v2

    .line 1897
    goto :goto_1

    .line 1901
    :cond_5
    move-wide v0, v2

    .line 1864
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private getTransitionDuration(Lcom/android/videoeditor/service/MovieMediaItem;)J
    .locals 12
    .param p1, "afterMediaItem"    # Lcom/android/videoeditor/service/MovieMediaItem;

    .prologue
    const-wide/16 v10, 0x5dc

    const-wide/16 v8, 0x4

    .line 2115
    if-nez p1, :cond_0

    .line 2116
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/VideoEditorProject;->getFirstMediaItem()Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v1

    .line 2117
    .local v1, "firstMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v1}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v4

    div-long/2addr v4, v8

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 2127
    .end local v1    # "firstMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :goto_0
    return-wide v4

    .line 2119
    :cond_0
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/videoeditor/service/VideoEditorProject;->isLastMediaItem(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2120
    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v4

    div-long/2addr v4, v8

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    goto :goto_0

    .line 2123
    :cond_1
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/videoeditor/service/VideoEditorProject;->getNextMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v0

    .line 2125
    .local v0, "beforeMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 2127
    .local v2, "minDurationMs":J
    div-long v4, v2, v8

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    goto :goto_0
.end method

.method private getTransitionView(Ljava/lang/String;)Landroid/view/View;
    .locals 6
    .param p1, "transitionId"    # Ljava/lang/String;

    .prologue
    .line 2042
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildCount()I

    move-result v1

    .line 2043
    .local v1, "childrenCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2044
    invoke-virtual {p0, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2045
    .local v0, "childView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 2046
    .local v3, "tag":Ljava/lang/Object;
    if-eqz v3, :cond_0

    instance-of v5, v3, Lcom/android/videoeditor/service/MovieTransition;

    if-eqz v5, :cond_0

    move-object v4, v3

    .line 2047
    check-cast v4, Lcom/android/videoeditor/service/MovieTransition;

    .line 2048
    .local v4, "transition":Lcom/android/videoeditor/service/MovieTransition;
    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieTransition;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2054
    .end local v0    # "childView":Landroid/view/View;
    .end local v3    # "tag":Ljava/lang/Object;
    .end local v4    # "transition":Lcom/android/videoeditor/service/MovieTransition;
    :goto_1
    return-object v0

    .line 2043
    .restart local v0    # "childView":Landroid/view/View;
    .restart local v3    # "tag":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2054
    .end local v0    # "childView":Landroid/view/View;
    .end local v3    # "tag":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private invalidateAllChildren()V
    .locals 3

    .prologue
    .line 2665
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildCount()I

    move-result v1

    .line 2666
    .local v1, "childrenCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2667
    invoke-virtual {p0, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2668
    .local v0, "childView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 2666
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2670
    .end local v0    # "childView":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private moveToPosition(F)V
    .locals 14
    .param p1, "eventX"    # F

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/high16 v10, 0x42280000    # 42.0f

    const v9, 0x7f080002

    .line 1702
    float-to-int v5, p1

    iget-object v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mScrollView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int v4, v5, v6

    .line 1703
    .local v4, "x":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1704
    .local v0, "now":J
    iget-wide v5, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mPrevDragScrollTime:J

    sub-long v5, v0, v5

    const-wide/16 v7, 0x12c

    cmp-long v5, v5, v7

    if-lez v5, :cond_4

    .line 1705
    int-to-float v5, v4

    iget v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mPrevDragPosition:F

    sub-float/2addr v6, v10

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    .line 1706
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getLeftDropPosition()J

    move-result-wide v2

    .line 1707
    .local v2, "positionMs":J
    iget v5, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDropIndex:I

    if-ltz v5, :cond_1

    .line 1709
    iget-object v5, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mScrollView:Landroid/view/View;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1717
    :goto_0
    iget-object v5, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mListener:Lcom/android/videoeditor/widgets/MediaLinearLayoutListener;

    invoke-interface {v5, v2, v3, v11}, Lcom/android/videoeditor/widgets/MediaLinearLayoutListener;->onRequestMovePlayhead(JZ)V

    .line 1718
    iget-object v5, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mScrollView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 1720
    int-to-float v5, v4

    iput v5, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mPrevDragPosition:F

    .line 1721
    iput-wide v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mPrevDragScrollTime:J

    .line 1743
    .end local v2    # "positionMs":J
    :cond_0
    :goto_1
    return-void

    .line 1713
    .restart local v2    # "positionMs":J
    :cond_1
    iget-object v5, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mScrollView:Landroid/view/View;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 1722
    .end local v2    # "positionMs":J
    :cond_2
    int-to-float v5, v4

    iget v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mPrevDragPosition:F

    add-float/2addr v6, v10

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 1723
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getRightDropPosition()J

    move-result-wide v2

    .line 1724
    .restart local v2    # "positionMs":J
    iget v5, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDropIndex:I

    if-ltz v5, :cond_3

    .line 1726
    iget-object v5, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mScrollView:Landroid/view/View;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1734
    :goto_2
    iget-object v5, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mListener:Lcom/android/videoeditor/widgets/MediaLinearLayoutListener;

    invoke-interface {v5, v2, v3, v11}, Lcom/android/videoeditor/widgets/MediaLinearLayoutListener;->onRequestMovePlayhead(JZ)V

    .line 1735
    iget-object v5, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mScrollView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 1737
    int-to-float v5, v4

    iput v5, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mPrevDragPosition:F

    .line 1738
    iput-wide v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mPrevDragScrollTime:J

    goto :goto_1

    .line 1730
    :cond_3
    iget-object v5, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mScrollView:Landroid/view/View;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_2

    .line 1741
    .end local v2    # "positionMs":J
    :cond_4
    int-to-float v5, v4

    iput v5, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mPrevDragPosition:F

    goto :goto_1
.end method

.method private pickTransition(Lcom/android/videoeditor/service/MovieMediaItem;)Z
    .locals 8
    .param p1, "afterMediaItem"    # Lcom/android/videoeditor/service/MovieMediaItem;

    .prologue
    const-wide/16 v6, 0xfa

    const/4 v4, 0x0

    .line 1949
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getTransitionDuration(Lcom/android/videoeditor/service/MovieMediaItem;)J

    move-result-wide v2

    .line 1950
    .local v2, "transitionDurationMs":J
    cmp-long v5, v2, v6

    if-gez v5, :cond_0

    .line 1951
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f090055

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1966
    :goto_0
    return v4

    .line 1957
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v0

    .line 1958
    .local v0, "afterMediaId":Ljava/lang/String;
    :goto_1
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/android/videoeditor/TransitionsActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1959
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "media_item_id"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1960
    const-string v4, "min_duration"

    invoke-virtual {v1, v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1961
    const-string v4, "default_duration"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1962
    const-string v4, "max_duration"

    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getMaxTransitionDuration(Lcom/android/videoeditor/service/MovieMediaItem;)J

    move-result-wide v5

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1964
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    const/16 v5, 0xb

    invoke-virtual {v4, v1, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1966
    const/4 v4, 0x1

    goto :goto_0

    .line 1957
    .end local v0    # "afterMediaId":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private removeAllMediaItemAndTransitionViews()V
    .locals 4

    .prologue
    .line 2089
    const/4 v0, 0x0

    .line 2090
    .local v0, "index":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2091
    invoke-virtual {p0, v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 2095
    .local v1, "tag":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 2096
    invoke-virtual {p0, v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->removeViewAt(I)V

    goto :goto_0

    .line 2098
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2101
    .end local v1    # "tag":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->requestLayout()V

    .line 2104
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftAddClipButton:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2105
    return-void
.end method

.method private removeOverlay(Lcom/android/videoeditor/service/MovieMediaItem;)V
    .locals 3
    .param p1, "mediaItem"    # Lcom/android/videoeditor/service/MovieMediaItem;

    .prologue
    .line 1934
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1935
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "media_item_id"

    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1936
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    .line 1938
    return-void
.end method

.method private select(Landroid/view/View;)V
    .locals 13
    .param p1, "selectedView"    # Landroid/view/View;

    .prologue
    .line 2231
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2623
    :cond_0
    :goto_0
    return-void

    .line 2235
    :cond_1
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->unselectAllTimelineViews()V

    .line 2236
    iput-object p1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mSelectedView:Landroid/view/View;

    .line 2237
    iget-object v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mSelectedView:Landroid/view/View;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/View;->setSelected(Z)V

    .line 2238
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->showAddMediaItemButtons(Z)V

    .line 2240
    iget-object v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mSelectedView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 2241
    .local v4, "tag":Ljava/lang/Object;
    instance-of v6, v4, Lcom/android/videoeditor/service/MovieMediaItem;

    if-eqz v6, :cond_b

    .line 2242
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mSelectedView:Landroid/view/View;

    check-cast v2, Lcom/android/videoeditor/widgets/MediaItemView;

    .line 2243
    .local v2, "mediaItemView":Lcom/android/videoeditor/widgets/MediaItemView;
    invoke-virtual {v2}, Lcom/android/videoeditor/widgets/MediaItemView;->isGeneratingEffect()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2244
    iget-object v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/videoeditor/widgets/HandleView;->setEnabled(Z)V

    .line 2245
    iget-object v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/videoeditor/widgets/HandleView;->setEnabled(Z)V

    :goto_1
    move-object v3, v4

    .line 2251
    check-cast v3, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 2252
    .local v3, "mi":Lcom/android/videoeditor/service/MovieMediaItem;
    iget-object v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    if-nez v6, :cond_2

    .line 2253
    new-instance v6, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;

    invoke-direct {v6, p0, v3}, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;-><init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;Lcom/android/videoeditor/service/MovieMediaItem;)V

    invoke-virtual {p0, v6}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 2256
    :cond_2
    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->isVideoClip()Z

    move-result v5

    .line 2257
    .local v5, "videoClip":Z
    if-eqz v5, :cond_3

    .line 2258
    iget-object v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/videoeditor/widgets/HandleView;->setVisibility(I)V

    .line 2259
    iget-object v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v6}, Lcom/android/videoeditor/widgets/HandleView;->bringToFront()V

    .line 2260
    iget-object v8, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryBeginTime()J

    move-result-wide v6

    const-wide/16 v9, 0x0

    cmp-long v6, v6, v9

    if-gtz v6, :cond_5

    const/4 v6, 0x1

    :goto_2
    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v9

    invoke-static {}, Lcom/android/videoeditor/util/MediaItemUtils;->getMinimumVideoItemDuration()J

    move-result-wide v11

    cmp-long v7, v9, v11

    if-gtz v7, :cond_6

    const/4 v7, 0x1

    :goto_3
    invoke-virtual {v8, v6, v7}, Lcom/android/videoeditor/widgets/HandleView;->setLimitReached(ZZ)V

    .line 2263
    iget-object v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    new-instance v7, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;

    invoke-direct {v7, p0, v2, v5}, Lcom/android/videoeditor/widgets/MediaLinearLayout$18;-><init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;Lcom/android/videoeditor/widgets/MediaItemView;Z)V

    invoke-virtual {v6, v7}, Lcom/android/videoeditor/widgets/HandleView;->setListener(Lcom/android/videoeditor/widgets/HandleView$MoveListener;)V

    .line 2426
    :cond_3
    iget-object v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/videoeditor/widgets/HandleView;->setVisibility(I)V

    .line 2427
    iget-object v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v6}, Lcom/android/videoeditor/widgets/HandleView;->bringToFront()V

    .line 2428
    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v0

    .line 2429
    .local v0, "durationMs":J
    iget-object v8, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-static {v3}, Lcom/android/videoeditor/util/MediaItemUtils;->getMinimumMediaItemDuration(Lcom/android/videoeditor/service/MovieMediaItem;)J

    move-result-wide v6

    cmp-long v6, v0, v6

    if-gtz v6, :cond_7

    const/4 v6, 0x1

    move v7, v6

    :goto_4
    if-eqz v5, :cond_9

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryEndTime()J

    move-result-wide v9

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getDuration()J

    move-result-wide v11

    cmp-long v6, v9, v11

    if-ltz v6, :cond_8

    const/4 v6, 0x1

    :goto_5
    invoke-virtual {v8, v7, v6}, Lcom/android/videoeditor/widgets/HandleView;->setLimitReached(ZZ)V

    .line 2433
    iget-object v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    new-instance v7, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;

    invoke-direct {v7, p0, v2, v5}, Lcom/android/videoeditor/widgets/MediaLinearLayout$19;-><init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;Lcom/android/videoeditor/widgets/MediaItemView;Z)V

    invoke-virtual {v6, v7}, Lcom/android/videoeditor/widgets/HandleView;->setListener(Lcom/android/videoeditor/widgets/HandleView$MoveListener;)V

    goto/16 :goto_0

    .line 2247
    .end local v0    # "durationMs":J
    .end local v3    # "mi":Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v5    # "videoClip":Z
    :cond_4
    iget-object v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/videoeditor/widgets/HandleView;->setEnabled(Z)V

    .line 2248
    iget-object v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/videoeditor/widgets/HandleView;->setEnabled(Z)V

    goto/16 :goto_1

    .line 2260
    .restart local v3    # "mi":Lcom/android/videoeditor/service/MovieMediaItem;
    .restart local v5    # "videoClip":Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    :cond_6
    const/4 v7, 0x0

    goto :goto_3

    .line 2429
    .restart local v0    # "durationMs":J
    :cond_7
    const/4 v6, 0x0

    move v7, v6

    goto :goto_4

    :cond_8
    const/4 v6, 0x0

    goto :goto_5

    :cond_9
    const-wide/16 v9, 0x1770

    cmp-long v6, v0, v9

    if-ltz v6, :cond_a

    const/4 v6, 0x1

    goto :goto_5

    :cond_a
    const/4 v6, 0x0

    goto :goto_5

    .line 2618
    .end local v0    # "durationMs":J
    .end local v2    # "mediaItemView":Lcom/android/videoeditor/widgets/MediaItemView;
    .end local v3    # "mi":Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v5    # "videoClip":Z
    :cond_b
    instance-of v6, v4, Lcom/android/videoeditor/service/MovieTransition;

    if-eqz v6, :cond_0

    .line 2619
    iget-object v6, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mTransitionActionMode:Landroid/view/ActionMode;

    if-nez v6, :cond_0

    .line 2620
    new-instance v6, Lcom/android/videoeditor/widgets/MediaLinearLayout$TransitionActionModeCallback;

    check-cast v4, Lcom/android/videoeditor/service/MovieTransition;

    .end local v4    # "tag":Ljava/lang/Object;
    invoke-direct {v6, p0, v4}, Lcom/android/videoeditor/widgets/MediaLinearLayout$TransitionActionModeCallback;-><init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;Lcom/android/videoeditor/service/MovieTransition;)V

    invoke-virtual {p0, v6}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    goto/16 :goto_0
.end method

.method private setIsTrimming(Z)V
    .locals 0
    .param p1, "isTrimming"    # Z

    .prologue
    .line 2629
    iput-boolean p1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mIsTrimming:Z

    .line 2630
    return-void
.end method

.method private setPlaybackState(Z)V
    .locals 5
    .param p1, "playback"    # Z

    .prologue
    .line 2638
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildCount()I

    move-result v1

    .line 2639
    .local v1, "childrenCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 2640
    invoke-virtual {p0, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2641
    .local v0, "childView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 2642
    .local v3, "tag":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 2643
    instance-of v4, v3, Lcom/android/videoeditor/service/MovieMediaItem;

    if-eqz v4, :cond_1

    .line 2644
    check-cast v0, Lcom/android/videoeditor/widgets/MediaItemView;

    .end local v0    # "childView":Landroid/view/View;
    invoke-virtual {v0, p1}, Lcom/android/videoeditor/widgets/MediaItemView;->setPlaybackMode(Z)V

    .line 2639
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2645
    .restart local v0    # "childView":Landroid/view/View;
    :cond_1
    instance-of v4, v3, Lcom/android/videoeditor/service/MovieTransition;

    if-eqz v4, :cond_0

    .line 2646
    check-cast v0, Lcom/android/videoeditor/widgets/TransitionView;

    .end local v0    # "childView":Landroid/view/View;
    invoke-virtual {v0, p1}, Lcom/android/videoeditor/widgets/TransitionView;->setPlaybackMode(Z)V

    goto :goto_1

    .line 2650
    .end local v3    # "tag":Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method private showAddMediaItemButtons(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 2678
    if-eqz p1, :cond_1

    .line 2680
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2681
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftAddClipButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2683
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mRightAddClipButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2688
    :goto_0
    return-void

    .line 2685
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftAddClipButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2686
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mRightAddClipButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private unSelect(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2212
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2221
    :cond_0
    :goto_0
    return-void

    .line 2216
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mSelectedView:Landroid/view/View;

    .line 2217
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 2219
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->invalidateAllChildren()V

    .line 2220
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->clearAndHideTrimHandles()V

    goto :goto_0
.end method

.method private unselectAllTimelineViews()V
    .locals 2

    .prologue
    .line 2657
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 2658
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->invalidateAllChildren()V

    .line 2659
    return-void
.end method


# virtual methods
.method public addEffect(ILjava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 11
    .param p1, "effectType"    # I
    .param p2, "mediaItemId"    # Ljava/lang/String;
    .param p3, "startRect"    # Landroid/graphics/Rect;
    .param p4, "endRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v9, 0x0

    const-wide/16 v4, 0x0

    .line 1159
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0, p2}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v10

    .line 1160
    .local v10, "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    if-nez v10, :cond_1

    .line 1161
    const-string v0, "MediaLinearLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addEffect media item not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    :cond_0
    :goto_0
    return-void

    .line 1165
    :cond_1
    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->generateId()Ljava/lang/String;

    move-result-object v3

    .line 1166
    .local v3, "id":Ljava/lang/String;
    const/16 v0, 14
    if-lt p1, v0, :vs_old_add
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;
    move-result-object v0
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;
    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v10}, Lcom/android/videoeditor/service/MovieMediaItem;->getDuration()J
    move-result-wide v6
    add-int/lit8 v8, p1, 2
    move-object v2, p2
    invoke-static/range {v0 .. v9}, Lcom/android/videoeditor/service/ApiService;->addEffectColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJII)V
    goto :goto_1
    :vs_old_add
    packed-switch p1, :pswitch_data_0

    .line 1197
    :goto_1
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1198
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    goto :goto_0

    .line 1168
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Lcom/android/videoeditor/service/MovieMediaItem;->getDuration()J

    move-result-wide v6

    move-object v2, p2

    move-object v8, p3

    move-object v9, p4

    invoke-static/range {v0 .. v9}, Lcom/android/videoeditor/service/ApiService;->addEffectKenBurns(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_1

    .line 1174
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Lcom/android/videoeditor/service/MovieMediaItem;->getDuration()J

    move-result-wide v6

    const/4 v8, 0x2

    const v9, 0x7f7f7f

    move-object v2, p2

    invoke-static/range {v0 .. v9}, Lcom/android/videoeditor/service/ApiService;->addEffectColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJII)V

    goto :goto_1

    .line 1181
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Lcom/android/videoeditor/service/MovieMediaItem;->getDuration()J

    move-result-wide v6

    const/4 v8, 0x3

    move-object v2, p2

    invoke-static/range {v0 .. v9}, Lcom/android/videoeditor/service/ApiService;->addEffectColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJII)V

    goto :goto_1

    .line 1187
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Lcom/android/videoeditor/service/MovieMediaItem;->getDuration()J

    move-result-wide v6

    const/4 v8, 0x4

    move-object v2, p2

    invoke-static/range {v0 .. v9}, Lcom/android/videoeditor/service/ApiService;->addEffectColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJII)V

    goto :goto_1

    .line 1166

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Lcom/android/videoeditor/service/MovieMediaItem;->getDuration()J

    move-result-wide v6

    const/4 v8, 0x6

    move-object v2, p2

    invoke-static/range {v0 .. v9}, Lcom/android/videoeditor/service/ApiService;->addEffectColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJII)V

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Lcom/android/videoeditor/service/MovieMediaItem;->getDuration()J

    move-result-wide v6

    const/4 v8, 0x7

    move-object v2, p2

    invoke-static/range {v0 .. v9}, Lcom/android/videoeditor/service/ApiService;->addEffectColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJII)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Lcom/android/videoeditor/service/MovieMediaItem;->getDuration()J

    move-result-wide v6

    const/16 v8, 0x8

    move-object v2, p2

    invoke-static/range {v0 .. v9}, Lcom/android/videoeditor/service/ApiService;->addEffectColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJII)V

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Lcom/android/videoeditor/service/MovieMediaItem;->getDuration()J

    move-result-wide v6

    const/16 v8, 0x9

    move-object v2, p2

    invoke-static/range {v0 .. v9}, Lcom/android/videoeditor/service/ApiService;->addEffectColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJII)V

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Lcom/android/videoeditor/service/MovieMediaItem;->getDuration()J

    move-result-wide v6

    const/16 v8, 10

    move-object v2, p2

    invoke-static/range {v0 .. v9}, Lcom/android/videoeditor/service/ApiService;->addEffectColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJII)V

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Lcom/android/videoeditor/service/MovieMediaItem;->getDuration()J

    move-result-wide v6

    const/16 v8, 11

    move-object v2, p2

    invoke-static/range {v0 .. v9}, Lcom/android/videoeditor/service/ApiService;->addEffectColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJII)V

    goto :goto_1

    :pswitch_a
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Lcom/android/videoeditor/service/MovieMediaItem;->getDuration()J

    move-result-wide v6

    const/16 v8, 12

    move-object v2, p2

    invoke-static/range {v0 .. v9}, Lcom/android/videoeditor/service/ApiService;->addEffectColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJII)V

    goto :goto_1

    :pswitch_b
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Lcom/android/videoeditor/service/MovieMediaItem;->getDuration()J

    move-result-wide v6

    const/16 v8, 13

    move-object v2, p2

    invoke-static/range {v0 .. v9}, Lcom/android/videoeditor/service/ApiService;->addEffectColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJII)V

    goto :goto_1

    :pswitch_c
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Lcom/android/videoeditor/service/MovieMediaItem;->getDuration()J

    move-result-wide v6

    const/16 v8, 14

    move-object v2, p2

    invoke-static/range {v0 .. v9}, Lcom/android/videoeditor/service/ApiService;->addEffectColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJII)V

    goto :goto_1

    :pswitch_d
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Lcom/android/videoeditor/service/MovieMediaItem;->getDuration()J

    move-result-wide v6

    const/16 v8, 15

    move-object v2, p2

    invoke-static/range {v0 .. v9}, Lcom/android/videoeditor/service/ApiService;->addEffectColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJII)V

    goto :goto_1
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public addMediaItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/videoeditor/service/MovieMediaItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 622
    .local p1, "mediaItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/videoeditor/service/MovieMediaItem;>;"
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->closeActionBars()V

    .line 623
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->removeAllMediaItemAndTransitionViews()V

    .line 625
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 626
    .local v1, "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-direct {p0, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->addMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;)V

    goto :goto_0

    .line 628
    .end local v1    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_0
    return-void
.end method

.method public addTransition(Lcom/android/videoeditor/service/MovieTransition;Ljava/lang/String;)Landroid/view/View;
    .locals 10
    .param p1, "transition"    # Lcom/android/videoeditor/service/MovieTransition;
    .param p2, "afterMediaItemId"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1006
    if-eqz p2, :cond_3

    .line 1007
    const/4 v2, -0x1

    .line 1008
    .local v2, "index":I
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildCount()I

    move-result v0

    .line 1009
    .local v0, "childrenCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1010
    invoke-virtual {p0, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .line 1011
    .local v5, "tag":Ljava/lang/Object;
    if-eqz v5, :cond_2

    instance-of v7, v5, Lcom/android/videoeditor/service/MovieMediaItem;

    if-eqz v7, :cond_2

    move-object v4, v5

    .line 1012
    check-cast v4, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 1013
    .local v4, "mi":Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1014
    add-int/lit8 v2, v1, 0x1

    .line 1020
    .end local v4    # "mi":Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v5    # "tag":Ljava/lang/Object;
    :cond_0
    if-gez v2, :cond_4

    .line 1021
    const-string v7, "MediaLinearLayout"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addTransition media item not found: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    .end local v0    # "childrenCount":I
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-object v6

    .line 1009
    .restart local v0    # "childrenCount":I
    .restart local v1    # "i":I
    .restart local v5    # "tag":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1025
    .end local v0    # "childrenCount":I
    .end local v1    # "i":I
    .end local v2    # "index":I
    .end local v5    # "tag":Ljava/lang/Object;
    :cond_3
    const/4 v2, 0x1

    .line 1028
    .restart local v2    # "index":I
    :cond_4
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f040017

    invoke-static {v7, v8, v6}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .local v6, "transitionView":Landroid/view/View;
    move-object v7, v6

    .line 1029
    check-cast v7, Lcom/android/videoeditor/widgets/TransitionView;

    iget-object v8, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mTransitionGestureListener:Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

    invoke-virtual {v7, v8}, Lcom/android/videoeditor/widgets/TransitionView;->setGestureListener(Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;)V

    move-object v7, v6

    .line 1030
    check-cast v7, Lcom/android/videoeditor/widgets/TransitionView;

    iget-object v8, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v8}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/videoeditor/widgets/TransitionView;->setProjectPath(Ljava/lang/String;)V

    .line 1031
    invoke-virtual {v6, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1033
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x1

    invoke-direct {v3, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1035
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v6, v2, v3}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1038
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->requestLayout()V

    .line 1041
    iget-object v7, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    if-eqz v7, :cond_1

    .line 1042
    iget-object v7, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    invoke-virtual {v7}, Landroid/view/ActionMode;->invalidate()V

    goto :goto_1
.end method

.method public addTransition(Ljava/lang/String;IJ)V
    .locals 11
    .param p1, "afterMediaItemId"    # Ljava/lang/String;
    .param p2, "transitionType"    # I
    .param p3, "transitionDurationMs"    # J

    .prologue
    const/16 v8, 0x32

    const/4 v9, 0x0

    const/4 v6, 0x2

    .line 885
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->unselectAllTimelineViews()V

    .line 888
    if-eqz p1, :cond_1

    .line 889
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0, p1}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v10

    .line 890
    .local v10, "afterMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    if-nez v10, :cond_2

    .line 961
    :cond_0
    :goto_0
    return-void

    .line 894
    .end local v10    # "afterMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_1
    const/4 v10, 0x0

    .line 897
    .restart local v10    # "afterMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_2
    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->generateId()Ljava/lang/String;

    move-result-object v3

    .line 898
    .local v3, "id":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 958
    :goto_1
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 959
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    goto :goto_0

    .line 900
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    const/high16 v7, 0x7f050000

    move-object v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v9}, Lcom/android/videoeditor/service/ApiService;->insertAlphaTransition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIIZ)V

    goto :goto_1

    .line 907
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    const v7, 0x7f050001

    move-object v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v9}, Lcom/android/videoeditor/service/ApiService;->insertAlphaTransition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIIZ)V

    goto :goto_1

    .line 914
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v6}, Lcom/android/videoeditor/service/ApiService;->insertCrossfadeTransition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    goto :goto_1

    .line 920
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v6}, Lcom/android/videoeditor/service/ApiService;->insertFadeBlackTransition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    goto :goto_1

    .line 926
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-wide v4, p3

    move v7, v9

    invoke-static/range {v0 .. v7}, Lcom/android/videoeditor/service/ApiService;->insertSlidingTransition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)V

    goto :goto_1

    .line 933
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x1

    move-object v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v7}, Lcom/android/videoeditor/service/ApiService;->insertSlidingTransition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)V

    goto :goto_1

    .line 940
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-wide v4, p3

    move v7, v6

    invoke-static/range {v0 .. v7}, Lcom/android/videoeditor/service/ApiService;->insertSlidingTransition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)V

    goto/16 :goto_1

    .line 947
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x3

    move-object v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v7}, Lcom/android/videoeditor/service/ApiService;->insertSlidingTransition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)V

    goto/16 :goto_1

    .line 898

    :pswitch_8
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    const v7, 0x7f0500f0

    move-object v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v9}, Lcom/android/videoeditor/service/ApiService;->insertAlphaTransition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIIZ)V

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    const v7, 0x7f0500f1

    move-object v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v9}, Lcom/android/videoeditor/service/ApiService;->insertAlphaTransition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIIZ)V

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    const v7, 0x7f0500f2

    move-object v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v9}, Lcom/android/videoeditor/service/ApiService;->insertAlphaTransition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIIZ)V

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    const v7, 0x7f0500f3

    move-object v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v9}, Lcom/android/videoeditor/service/ApiService;->insertAlphaTransition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIIZ)V

    goto/16 :goto_1
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public editTransition(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 3
    .param p1, "afterMediaItemId"    # Ljava/lang/String;
    .param p2, "transitionId"    # Ljava/lang/String;
    .param p3, "transitionType"    # I
    .param p4, "transitionDurationMs"    # J

    .prologue
    .line 973
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1, p2}, Lcom/android/videoeditor/service/VideoEditorProject;->getTransition(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v0

    .line 974
    .local v0, "transition":Lcom/android/videoeditor/service/MovieTransition;
    if-nez v0, :cond_1

    .line 992
    :cond_0
    :goto_0
    return-void

    .line 979
    :cond_1
    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieTransition;->getType()I

    move-result v1

    if-eq v1, p3, :cond_3

    .line 981
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lcom/android/videoeditor/service/ApiService;->removeTransition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->addTransition(Ljava/lang/String;IJ)V

    .line 989
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_0

    .line 990
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->invalidate()V

    goto :goto_0

    .line 983
    :cond_3
    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieTransition;->getAppDuration()J

    move-result-wide v1

    cmp-long v1, v1, p4

    if-eqz v1, :cond_2

    .line 984
    invoke-virtual {v0, p4, p5}, Lcom/android/videoeditor/service/MovieTransition;->setAppDuration(J)V

    .line 985
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2, p4, p5}, Lcom/android/videoeditor/service/ApiService;->setTransitionDuration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1
.end method

.method public getSelectedViewPos()I
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mSelectedView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public hasItemSelected()Z
    .locals 1

    .prologue
    .line 2172
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mSelectedView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insertMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;Ljava/lang/String;)V
    .locals 13
    .param p1, "mediaItem"    # Lcom/android/videoeditor/service/MovieMediaItem;
    .param p2, "afterMediaItemId"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x1

    .line 688
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f04000e

    invoke-static {v8, v9, v12}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .local v4, "mediaItemView":Landroid/view/View;
    move-object v8, v4

    .line 689
    check-cast v8, Lcom/android/videoeditor/widgets/MediaItemView;

    iget-object v9, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemGestureListener:Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

    invoke-virtual {v8, v9}, Lcom/android/videoeditor/widgets/MediaItemView;->setGestureListener(Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;)V

    move-object v8, v4

    .line 690
    check-cast v8, Lcom/android/videoeditor/widgets/MediaItemView;

    iget-object v9, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v9}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/videoeditor/widgets/MediaItemView;->setProjectPath(Ljava/lang/String;)V

    .line 692
    invoke-virtual {v4, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 695
    if-eqz p2, :cond_5

    .line 696
    invoke-direct {p0, p2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getMediaItemViewIndex(Ljava/lang/String;)I

    move-result v2

    .local v2, "insertViewIndex":I
    if-ne v2, v11, :cond_0

    .line 697
    const-string v8, "MediaLinearLayout"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Media item not found: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :goto_0
    return-void

    .line 701
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 703
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildCount()I

    move-result v8

    if-ge v2, v8, :cond_1

    .line 704
    invoke-virtual {p0, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 705
    .local v6, "tag":Ljava/lang/Object;
    if-eqz v6, :cond_1

    instance-of v8, v6, Lcom/android/videoeditor/service/MovieTransition;

    if-eqz v8, :cond_1

    .line 707
    invoke-virtual {p0, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->removeViewAt(I)V

    .line 721
    .end local v6    # "tag":Ljava/lang/Object;
    :cond_1
    :goto_1
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v3, v8, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 723
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v4, v2, v3}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 726
    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v0

    .line 727
    .local v0, "beginTransition":Lcom/android/videoeditor/service/MovieTransition;
    if-eqz v0, :cond_2

    .line 728
    if-le v2, v10, :cond_7

    .line 729
    add-int/lit8 v8, v2, -0x1

    invoke-virtual {p0, v8}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 730
    .local v7, "view":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 732
    .restart local v6    # "tag":Ljava/lang/Object;
    if-eqz v6, :cond_2

    instance-of v8, v6, Lcom/android/videoeditor/service/MovieMediaItem;

    if-eqz v8, :cond_2

    move-object v5, v6

    .line 733
    check-cast v5, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 734
    .local v5, "prevMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v0, v8}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->addTransition(Lcom/android/videoeditor/service/MovieTransition;Ljava/lang/String;)Landroid/view/View;

    .line 741
    .end local v5    # "prevMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v6    # "tag":Ljava/lang/Object;
    .end local v7    # "view":Landroid/view/View;
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v1

    .line 742
    .local v1, "endTransition":Lcom/android/videoeditor/service/MovieTransition;
    if-eqz v1, :cond_3

    .line 743
    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v1, v8}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->addTransition(Lcom/android/videoeditor/service/MovieTransition;Ljava/lang/String;)Landroid/view/View;

    .line 746
    :cond_3
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->requestLayout()V

    .line 748
    iget-object v8, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    if-eqz v8, :cond_4

    .line 749
    iget-object v8, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    invoke-virtual {v8}, Landroid/view/ActionMode;->invalidate()V

    .line 753
    :cond_4
    iget-object v8, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftAddClipButton:Landroid/widget/ImageButton;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 712
    .end local v0    # "beginTransition":Lcom/android/videoeditor/service/MovieTransition;
    .end local v1    # "endTransition":Lcom/android/videoeditor/service/MovieTransition;
    .end local v2    # "insertViewIndex":I
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    invoke-virtual {p0, v10}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 713
    .restart local v6    # "tag":Ljava/lang/Object;
    if-eqz v6, :cond_6

    instance-of v8, v6, Lcom/android/videoeditor/service/MovieTransition;

    if-eqz v8, :cond_6

    .line 714
    invoke-virtual {p0, v10}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->removeViewAt(I)V

    .line 717
    :cond_6
    const/4 v2, 0x1

    .restart local v2    # "insertViewIndex":I
    goto :goto_1

    .line 737
    .end local v6    # "tag":Ljava/lang/Object;
    .restart local v0    # "beginTransition":Lcom/android/videoeditor/service/MovieTransition;
    .restart local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_7
    invoke-virtual {p0, v0, v12}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->addTransition(Lcom/android/videoeditor/service/MovieTransition;Ljava/lang/String;)Landroid/view/View;

    goto :goto_2
.end method

.method public invalidateActionBar()V
    .locals 1

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1092
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 1094
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mTransitionActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    .line 1095
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mTransitionActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 1097
    :cond_1
    return-void
.end method

.method public isTrimming()Z
    .locals 1

    .prologue
    .line 2179
    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mIsTrimming:Z

    return v0
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 18
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1372
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-nez v3, :cond_0

    .line 1373
    const/4 v3, 0x0

    .line 1575
    :goto_0
    return-object v3

    .line 1376
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1575
    :pswitch_0
    const/4 v3, 0x0

    goto :goto_0

    .line 1378
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    const-string v4, "media_item_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v15

    .line 1380
    .local v15, "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    if-nez v15, :cond_1

    .line 1381
    const/4 v3, 0x0

    goto :goto_0

    .line 1384
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 1385
    .local v2, "activity":Landroid/app/Activity;
    invoke-virtual {v15}, Lcom/android/videoeditor/service/MovieMediaItem;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/videoeditor/util/FileUtils;->getSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v15}, Lcom/android/videoeditor/service/MovieMediaItem;->isVideoClip()Z

    move-result v5

    if-eqz v5, :cond_2

    const v5, 0x7f09001b

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_1
    const v6, 0x7f09008a

    invoke-virtual {v2, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/videoeditor/widgets/MediaLinearLayout$7;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v2, v15}, Lcom/android/videoeditor/widgets/MediaLinearLayout$7;-><init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;Landroid/app/Activity;Lcom/android/videoeditor/service/MovieMediaItem;)V

    const v8, 0x7f09008b

    invoke-virtual {v2, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/android/videoeditor/widgets/MediaLinearLayout$8;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout$8;-><init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;Landroid/app/Activity;)V

    new-instance v10, Lcom/android/videoeditor/widgets/MediaLinearLayout$9;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout$9;-><init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;Landroid/app/Activity;)V

    const/4 v11, 0x1

    invoke-static/range {v2 .. v11}, Lcom/android/videoeditor/AlertDialogs;->createAlert(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Z)Landroid/app/AlertDialog;

    move-result-object v3

    goto :goto_0

    :cond_2
    const v5, 0x7f09001c

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 1419
    .end local v2    # "activity":Landroid/app/Activity;
    .end local v15    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    const-string v4, "media_item_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v15

    .line 1421
    .restart local v15    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    if-nez v15, :cond_3

    .line 1422
    const/4 v3, 0x0

    goto :goto_0

    .line 1425
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 1426
    .restart local v2    # "activity":Landroid/app/Activity;
    new-instance v12, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v12, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1427
    .local v12, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f090018

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1428
    const/4 v3, 0x3

    new-array v0, v3, [Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    .line 1429
    .local v16, "renderingModeStrings":[Ljava/lang/CharSequence;
    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f090087

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v16, v3

    .line 1430
    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f090088

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v16, v3

    .line 1431
    const/4 v3, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f090089

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v16, v3

    .line 1433
    const-string v3, "rendering_mode"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 1435
    .local v13, "currentRenderingMode":I
    packed-switch v13, :pswitch_data_1

    .line 1448
    const/4 v14, 0x0

    .line 1453
    .local v14, "currentRenderingModeIndex":I
    :goto_2
    new-instance v3, Lcom/android/videoeditor/widgets/MediaLinearLayout$10;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v15, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout$10;-><init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;Lcom/android/videoeditor/service/MovieMediaItem;Landroid/app/Activity;)V

    move-object/from16 v0, v16

    invoke-virtual {v12, v0, v14, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1489
    const/4 v3, 0x1

    invoke-virtual {v12, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1490
    new-instance v3, Lcom/android/videoeditor/widgets/MediaLinearLayout$11;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout$11;-><init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;Landroid/app/Activity;)V

    invoke-virtual {v12, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1496
    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 1437
    .end local v14    # "currentRenderingModeIndex":I
    :pswitch_3
    const/4 v14, 0x2

    .line 1438
    .restart local v14    # "currentRenderingModeIndex":I
    goto :goto_2

    .line 1442
    .end local v14    # "currentRenderingModeIndex":I
    :pswitch_4
    const/4 v14, 0x1

    .line 1443
    .restart local v14    # "currentRenderingModeIndex":I
    goto :goto_2

    .line 1500
    .end local v2    # "activity":Landroid/app/Activity;
    .end local v12    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v13    # "currentRenderingMode":I
    .end local v14    # "currentRenderingModeIndex":I
    .end local v15    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v16    # "renderingModeStrings":[Ljava/lang/CharSequence;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    const-string v4, "transition_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/videoeditor/service/VideoEditorProject;->getTransition(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v17

    .line 1502
    .local v17, "transition":Lcom/android/videoeditor/service/MovieTransition;
    if-nez v17, :cond_4

    .line 1503
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1506
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 1507
    .restart local v2    # "activity":Landroid/app/Activity;
    const v3, 0x7f09008e

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f090019

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f09008a

    invoke-virtual {v2, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/videoeditor/widgets/MediaLinearLayout$12;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v7, v0, v2, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout$12;-><init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;Landroid/app/Activity;Lcom/android/videoeditor/service/MovieTransition;)V

    const v8, 0x7f09008b

    invoke-virtual {v2, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/android/videoeditor/widgets/MediaLinearLayout$13;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout$13;-><init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;Landroid/app/Activity;)V

    new-instance v10, Lcom/android/videoeditor/widgets/MediaLinearLayout$14;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout$14;-><init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;Landroid/app/Activity;)V

    const/4 v11, 0x1

    invoke-static/range {v2 .. v11}, Lcom/android/videoeditor/AlertDialogs;->createAlert(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Z)Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 1538
    .end local v2    # "activity":Landroid/app/Activity;
    .end local v17    # "transition":Lcom/android/videoeditor/service/MovieTransition;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    const-string v4, "media_item_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v15

    .line 1540
    .restart local v15    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    if-nez v15, :cond_5

    .line 1541
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1544
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 1545
    .restart local v2    # "activity":Landroid/app/Activity;
    invoke-virtual {v15}, Lcom/android/videoeditor/service/MovieMediaItem;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/videoeditor/util/FileUtils;->getSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f09001a

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f09008a

    invoke-virtual {v2, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/videoeditor/widgets/MediaLinearLayout$15;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v2, v15}, Lcom/android/videoeditor/widgets/MediaLinearLayout$15;-><init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;Landroid/app/Activity;Lcom/android/videoeditor/service/MovieMediaItem;)V

    const v8, 0x7f09008b

    invoke-virtual {v2, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/android/videoeditor/widgets/MediaLinearLayout$16;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout$16;-><init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;Landroid/app/Activity;)V

    new-instance v10, Lcom/android/videoeditor/widgets/MediaLinearLayout$17;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout$17;-><init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;Landroid/app/Activity;)V

    const/4 v11, 0x1

    invoke-static/range {v2 .. v11}, Lcom/android/videoeditor/AlertDialogs;->createAlert(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Z)Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 1376
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_6
    .end packed-switch

    .line 1435
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    const v6, 0x7f080002

    const/4 v5, 0x2

    .line 1582
    const/4 v1, 0x0

    .line 1583
    .local v1, "result":Z
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1685
    const-string v2, "MediaLinearLayout"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1686
    const-string v2, "MediaLinearLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Other drag event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    :cond_0
    const/4 v1, 0x1

    .line 1693
    :goto_0
    return v1

    .line 1586
    :pswitch_0
    const-string v2, "MediaLinearLayout"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1587
    const-string v2, "MediaLinearLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_DRAG_STARTED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    :cond_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDragMediaItemId:Ljava/lang/String;

    .line 1593
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/android/videoeditor/widgets/HandleView;->setVisibility(I)V

    .line 1594
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/android/videoeditor/widgets/HandleView;->setVisibility(I)V

    .line 1596
    iput-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDropAfterMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    .line 1597
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDropIndex:I

    .line 1599
    iput-boolean v8, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mFirstEntered:Z

    .line 1601
    const/4 v1, 0x1

    .line 1602
    goto :goto_0

    .line 1606
    :pswitch_1
    const-string v2, "MediaLinearLayout"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1607
    const-string v2, "MediaLinearLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_DRAG_ENTERED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    :cond_2
    iget-boolean v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mFirstEntered:Z

    if-nez v2, :cond_3

    iget v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDropIndex:I

    if-ltz v2, :cond_3

    .line 1611
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mScrollView:Landroid/view/View;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1617
    :goto_1
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mScrollView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 1619
    iput-boolean v7, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mFirstEntered:Z

    goto :goto_0

    .line 1614
    :cond_3
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mScrollView:Landroid/view/View;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_1

    .line 1624
    :pswitch_2
    const-string v2, "MediaLinearLayout"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1625
    const-string v2, "MediaLinearLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_DRAG_EXITED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    :cond_4
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mScrollView:Landroid/view/View;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1630
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mScrollView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    .line 1635
    :pswitch_3
    const-string v2, "MediaLinearLayout"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1636
    const-string v2, "MediaLinearLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_DRAG_ENDED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    :cond_5
    iput-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDragMediaItemId:Ljava/lang/String;

    .line 1640
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDropIndex:I

    .line 1643
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v2, v7}, Lcom/android/videoeditor/widgets/HandleView;->setVisibility(I)V

    .line 1644
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v2, v7}, Lcom/android/videoeditor/widgets/HandleView;->setVisibility(I)V

    .line 1647
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mScrollView:Landroid/view/View;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1648
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mScrollView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 1650
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->requestLayout()V

    goto/16 :goto_0

    .line 1655
    :pswitch_4
    const-string v2, "MediaLinearLayout"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1656
    const-string v2, "MediaLinearLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_DRAG_LOCATION: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    :cond_6
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->moveToPosition(F)V

    .line 1661
    const/4 v1, 0x1

    .line 1662
    goto/16 :goto_0

    .line 1666
    :pswitch_5
    const-string v2, "MediaLinearLayout"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1667
    const-string v2, "MediaLinearLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_DROP: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    :cond_7
    iget v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDropIndex:I

    if-ltz v2, :cond_9

    .line 1671
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDropAfterMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDropAfterMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v0

    .line 1673
    .local v0, "afterMediaItemId":Ljava/lang/String;
    :goto_2
    const-string v2, "MediaLinearLayout"

    const/4 v4, 0x3

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1674
    const-string v2, "MediaLinearLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_DROP: Index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDropIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    :cond_8
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mDragMediaItemId:Ljava/lang/String;

    invoke-static {v2, v4, v5, v0, v3}, Lcom/android/videoeditor/service/ApiService;->moveMediaItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1679
    .end local v0    # "afterMediaItemId":Ljava/lang/String;
    :cond_9
    const/4 v1, 0x1

    .line 1680
    goto/16 :goto_0

    :cond_a
    move-object v0, v3

    .line 1671
    goto :goto_2

    .line 1583
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onGeneratePreviewMediaItemProgress(Ljava/lang/String;II)V
    .locals 4
    .param p1, "mediaItemId"    # Ljava/lang/String;
    .param p2, "action"    # I
    .param p3, "progress"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1108
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getMediaItemView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/widgets/MediaItemView;

    .line 1109
    .local v0, "view":Lcom/android/videoeditor/widgets/MediaItemView;
    if-eqz v0, :cond_0

    .line 1110
    invoke-virtual {v0, p3}, Lcom/android/videoeditor/widgets/MediaItemView;->setGeneratingEffectProgress(I)V

    .line 1112
    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/MediaItemView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1113
    if-nez p3, :cond_1

    .line 1114
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v1, v2}, Lcom/android/videoeditor/widgets/HandleView;->setEnabled(Z)V

    .line 1115
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v1, v2}, Lcom/android/videoeditor/widgets/HandleView;->setEnabled(Z)V

    .line 1122
    :cond_0
    :goto_0
    return-void

    .line 1116
    :cond_1
    const/16 v1, 0x64

    if-ne p3, v1, :cond_0

    .line 1117
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v1, v3}, Lcom/android/videoeditor/widgets/HandleView;->setEnabled(Z)V

    .line 1118
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v1, v3}, Lcom/android/videoeditor/widgets/HandleView;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onGeneratePreviewTransitionProgress(Ljava/lang/String;II)V
    .locals 4
    .param p1, "transitionId"    # Ljava/lang/String;
    .param p2, "action"    # I
    .param p3, "progress"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1134
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getTransitionView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/widgets/TransitionView;

    .line 1135
    .local v0, "view":Lcom/android/videoeditor/widgets/TransitionView;
    if-eqz v0, :cond_0

    .line 1136
    invoke-virtual {v0, p3}, Lcom/android/videoeditor/widgets/TransitionView;->setGeneratingTransitionProgress(I)V

    .line 1138
    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/TransitionView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1139
    if-nez p3, :cond_1

    .line 1140
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v1, v2}, Lcom/android/videoeditor/widgets/HandleView;->setEnabled(Z)V

    .line 1141
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v1, v2}, Lcom/android/videoeditor/widgets/HandleView;->setEnabled(Z)V

    .line 1148
    :cond_0
    :goto_0
    return-void

    .line 1142
    :cond_1
    const/16 v1, 0x64

    if-ne p3, v1, :cond_0

    .line 1143
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v1, v3}, Lcom/android/videoeditor/widgets/HandleView;->setEnabled(Z)V

    .line 1144
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v1, v3}, Lcom/android/videoeditor/widgets/HandleView;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 27
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/videoeditor/service/VideoEditorProject;->computeDuration()J

    move-result-wide v19

    .line 1262
    .local v19, "totalDurationMs":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getWidth()I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mHalfParentWidth:I

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x2

    sub-int v22, v23, v24

    .line 1266
    .local v22, "viewWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mSelectedView:Landroid/view/View;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mScrollView:Landroid/view/View;

    move-object/from16 v23, v0

    const/high16 v24, 0x7f080000

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1271
    .local v11, "leftViewWidth":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getPaddingTop()I

    move-result v18

    .line 1272
    .local v18, "top":I
    sub-int v5, p5, p3

    .line 1274
    .local v5, "bottom":I
    const-wide/16 v15, 0x0

    .line 1275
    .local v15, "startMs":J
    const/4 v10, 0x0

    .line 1277
    .local v10, "left":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildCount()I

    move-result v6

    .line 1278
    .local v6, "childrenCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v6, :cond_8

    .line 1279
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 1280
    .local v21, "view":Landroid/view/View;
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    .line 1281
    .local v17, "tag":Ljava/lang/Object;
    if-eqz v17, :cond_4

    .line 1282
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->computeViewDuration(Landroid/view/View;)J

    move-result-wide v7

    .line 1284
    .local v7, "durationMs":J
    add-long v23, v15, v7

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v25, v0

    mul-long v23, v23, v25

    move-wide/from16 v0, v23

    long-to-float v0, v0

    move/from16 v23, v0

    move-wide/from16 v0, v19

    long-to-float v0, v0

    move/from16 v24, v0

    div-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    add-int v14, v23, v11

    .line 1287
    .local v14, "right":I
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/videoeditor/service/MovieMediaItem;

    move/from16 v23, v0

    if-eqz v23, :cond_3

    .line 1288
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLeft()I

    move-result v23

    move/from16 v0, v23

    if-ne v10, v0, :cond_0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getRight()I

    move-result v23

    move/from16 v0, v23

    if-eq v14, v0, :cond_2

    .line 1289
    :cond_0
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLeft()I

    move-result v12

    .line 1290
    .local v12, "oldLeft":I
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getRight()I

    move-result v13

    .line 1291
    .local v13, "oldRight":I
    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v10, v1, v14, v5}, Landroid/view/View;->layout(IIII)V

    .line 1292
    check-cast v21, Lcom/android/videoeditor/widgets/MediaItemView;

    .end local v21    # "view":Landroid/view/View;
    move-object/from16 v0, v21

    invoke-virtual {v0, v12, v13}, Lcom/android/videoeditor/widgets/MediaItemView;->onLayoutPerformed(II)V

    .line 1305
    .end local v12    # "oldLeft":I
    .end local v13    # "oldRight":I
    :goto_2
    add-long/2addr v15, v7

    .line 1306
    move v10, v14

    .line 1278
    .end local v7    # "durationMs":J
    .end local v14    # "right":I
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1266
    .end local v5    # "bottom":I
    .end local v6    # "childrenCount":I
    .end local v9    # "i":I
    .end local v10    # "left":I
    .end local v11    # "leftViewWidth":I
    .end local v15    # "startMs":J
    .end local v17    # "tag":Ljava/lang/Object;
    .end local v18    # "top":I
    :cond_1
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mHalfParentWidth:I

    goto :goto_0

    .line 1294
    .restart local v5    # "bottom":I
    .restart local v6    # "childrenCount":I
    .restart local v7    # "durationMs":J
    .restart local v9    # "i":I
    .restart local v10    # "left":I
    .restart local v11    # "leftViewWidth":I
    .restart local v14    # "right":I
    .restart local v15    # "startMs":J
    .restart local v17    # "tag":Ljava/lang/Object;
    .restart local v18    # "top":I
    .restart local v21    # "view":Landroid/view/View;
    :cond_2
    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v10, v1, v14, v5}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 1299
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mTransitionVerticalInset:I

    move/from16 v23, v0

    add-int v23, v23, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mTransitionVerticalInset:I

    move/from16 v24, v0

    sub-int v24, v5, v24

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v10, v1, v14, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 1307
    .end local v7    # "durationMs":J
    .end local v14    # "right":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mSelectedView:Landroid/view/View;

    move-object/from16 v23, v0

    if-eqz v23, :cond_5

    .line 1309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mSelectedView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLeft()I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mHandleWidth:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mSelectedView:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getPaddingTop()I

    move-result v24

    add-int v24, v24, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mSelectedView:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLeft()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mSelectedView:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getPaddingBottom()I

    move-result v26

    sub-int v26, v5, v26

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_3

    .line 1313
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mSelectedView:Landroid/view/View;

    move-object/from16 v23, v0

    if-eqz v23, :cond_6

    .line 1315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mSelectedView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getRight()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mSelectedView:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getPaddingTop()I

    move-result v24

    add-int v24, v24, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mSelectedView:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getRight()I

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mHandleWidth:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mSelectedView:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getPaddingBottom()I

    move-result v26

    sub-int v26, v5, v26

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_3

    .line 1319
    :cond_6
    if-nez v9, :cond_7

    .line 1320
    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v11, v5}, Landroid/view/View;->layout(IIII)V

    .line 1321
    add-int/2addr v10, v11

    goto/16 :goto_3

    .line 1323
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getWidth()I

    move-result v23

    move-object/from16 v0, v21

    move/from16 v1, v18

    move/from16 v2, v23

    invoke-virtual {v0, v10, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_3

    .line 1326
    .end local v17    # "tag":Ljava/lang/Object;
    .end local v21    # "view":Landroid/view/View;
    :cond_8
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMoveLayoutPending:Z

    .line 1327
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildCount()I

    move-result v1

    .line 560
    .local v1, "childrenCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 561
    invoke-virtual {p0, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 562
    .local v0, "childView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 563
    .local v3, "item":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 564
    instance-of v4, v3, Lcom/android/videoeditor/service/MovieMediaItem;

    if-eqz v4, :cond_1

    .line 565
    check-cast v0, Lcom/android/videoeditor/widgets/MediaItemView;

    .end local v0    # "childView":Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/MediaItemView;->resetGeneratingEffectProgress()V

    .line 560
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 566
    .restart local v0    # "childView":Landroid/view/View;
    :cond_1
    instance-of v4, v3, Lcom/android/videoeditor/service/MovieTransition;

    if-eqz v4, :cond_0

    .line 567
    check-cast v0, Lcom/android/videoeditor/widgets/TransitionView;

    .end local v0    # "childView":Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/TransitionView;->resetGeneratingTransitionProgress()V

    goto :goto_1

    .line 571
    .end local v3    # "item":Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method public removeMediaItem(Ljava/lang/String;Lcom/android/videoeditor/service/MovieTransition;)Landroid/view/View;
    .locals 11
    .param p1, "mediaItemId"    # Ljava/lang/String;
    .param p2, "transition"    # Lcom/android/videoeditor/service/MovieTransition;

    .prologue
    const/4 v9, 0x0

    .line 821
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildCount()I

    move-result v3

    .line 822
    .local v3, "childrenCount":I
    const/4 v7, 0x0

    .line 823
    .local v7, "prevMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_8

    .line 824
    invoke-virtual {p0, v4}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 825
    .local v2, "childView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .line 826
    .local v8, "tag":Ljava/lang/Object;
    if-eqz v8, :cond_7

    instance-of v10, v8, Lcom/android/videoeditor/service/MovieMediaItem;

    if-eqz v10, :cond_7

    move-object v6, v8

    .line 827
    check-cast v6, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 828
    .local v6, "mi":Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v6}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 829
    move v5, v4

    .line 832
    .local v5, "mediaItemViewIndex":I
    if-lez v5, :cond_0

    .line 833
    add-int/lit8 v10, v5, -0x1

    invoke-virtual {p0, v10}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 834
    .local v1, "beforeTag":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v10, v1, Lcom/android/videoeditor/service/MovieTransition;

    if-eqz v10, :cond_0

    .line 836
    add-int/lit8 v10, v5, -0x1

    invoke-virtual {p0, v10}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->removeViewAt(I)V

    .line 837
    add-int/lit8 v5, v5, -0x1

    .line 842
    .end local v1    # "beforeTag":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v5, v10, :cond_1

    .line 843
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {p0, v10}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 844
    .local v0, "afterTag":Ljava/lang/Object;
    if-eqz v0, :cond_1

    instance-of v10, v0, Lcom/android/videoeditor/service/MovieTransition;

    if-eqz v10, :cond_1

    .line 846
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {p0, v10}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->removeViewAt(I)V

    .line 851
    .end local v0    # "afterTag":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->removeViewAt(I)V

    .line 853
    if-eqz p2, :cond_3

    .line 854
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v9

    :cond_2
    invoke-virtual {p0, p2, v9}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->addTransition(Lcom/android/videoeditor/service/MovieTransition;Ljava/lang/String;)Landroid/view/View;

    .line 858
    :cond_3
    iget-object v9, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    if-eqz v9, :cond_4

    .line 859
    iget-object v9, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    invoke-virtual {v9}, Landroid/view/ActionMode;->invalidate()V

    .line 862
    :cond_4
    iget-object v9, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v9}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItemCount()I

    move-result v9

    if-nez v9, :cond_5

    .line 864
    iget-object v9, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftAddClipButton:Landroid/widget/ImageButton;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 873
    .end local v2    # "childView":Landroid/view/View;
    .end local v5    # "mediaItemViewIndex":I
    .end local v6    # "mi":Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v8    # "tag":Ljava/lang/Object;
    :cond_5
    :goto_1
    return-object v2

    .line 869
    .restart local v2    # "childView":Landroid/view/View;
    .restart local v6    # "mi":Lcom/android/videoeditor/service/MovieMediaItem;
    .restart local v8    # "tag":Ljava/lang/Object;
    :cond_6
    move-object v7, v6

    .line 823
    .end local v6    # "mi":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v2    # "childView":Landroid/view/View;
    .end local v8    # "tag":Ljava/lang/Object;
    :cond_8
    move-object v2, v9

    .line 873
    goto :goto_1
.end method

.method public removeTransition(Ljava/lang/String;)V
    .locals 5
    .param p1, "transitionId"    # Ljava/lang/String;

    .prologue
    .line 1064
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildCount()I

    move-result v0

    .line 1065
    .local v0, "childrenCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1066
    invoke-virtual {p0, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 1067
    .local v2, "tag":Ljava/lang/Object;
    if-eqz v2, :cond_1

    instance-of v4, v2, Lcom/android/videoeditor/service/MovieTransition;

    if-eqz v4, :cond_1

    move-object v3, v2

    .line 1068
    check-cast v3, Lcom/android/videoeditor/service/MovieTransition;

    .line 1069
    .local v3, "transition":Lcom/android/videoeditor/service/MovieTransition;
    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieTransition;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1071
    invoke-virtual {p0, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->removeViewAt(I)V

    .line 1074
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->requestLayout()V

    .line 1077
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    if-eqz v4, :cond_0

    .line 1078
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    invoke-virtual {v4}, Landroid/view/ActionMode;->invalidate()V

    .line 1085
    .end local v2    # "tag":Ljava/lang/Object;
    .end local v3    # "transition":Lcom/android/videoeditor/service/MovieTransition;
    :cond_0
    return-void

    .line 1065
    .restart local v2    # "tag":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public removeTransitionView(Ljava/lang/String;)V
    .locals 5
    .param p1, "transitionId"    # Ljava/lang/String;

    .prologue
    .line 2063
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildCount()I

    move-result v0

    .line 2064
    .local v0, "childrenCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2065
    invoke-virtual {p0, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 2066
    .local v2, "tag":Ljava/lang/Object;
    if-eqz v2, :cond_1

    instance-of v4, v2, Lcom/android/videoeditor/service/MovieTransition;

    if-eqz v4, :cond_1

    move-object v3, v2

    .line 2067
    check-cast v3, Lcom/android/videoeditor/service/MovieTransition;

    .line 2068
    .local v3, "transition":Lcom/android/videoeditor/service/MovieTransition;
    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieTransition;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2070
    invoke-virtual {p0, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->removeViewAt(I)V

    .line 2073
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->requestLayout()V

    .line 2076
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    if-eqz v4, :cond_0

    .line 2077
    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    invoke-virtual {v4}, Landroid/view/ActionMode;->invalidate()V

    .line 2083
    .end local v2    # "tag":Ljava/lang/Object;
    .end local v3    # "transition":Lcom/android/videoeditor/service/MovieTransition;
    :cond_0
    return-void

    .line 2064
    .restart local v2    # "tag":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setListener(Lcom/android/videoeditor/widgets/MediaLinearLayoutListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/videoeditor/widgets/MediaLinearLayoutListener;

    .prologue
    .line 574
    iput-object p1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mListener:Lcom/android/videoeditor/widgets/MediaLinearLayoutListener;

    .line 575
    return-void
.end method

.method public setMediaItemThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;II)Z
    .locals 5
    .param p1, "mediaItemId"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "index"    # I
    .param p4, "token"    # I

    .prologue
    .line 1214
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildCount()I

    move-result v0

    .line 1215
    .local v0, "childrenCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1216
    invoke-virtual {p0, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 1217
    .local v3, "tag":Ljava/lang/Object;
    if-eqz v3, :cond_0

    instance-of v4, v3, Lcom/android/videoeditor/service/MovieMediaItem;

    if-eqz v4, :cond_0

    move-object v2, v3

    .line 1218
    check-cast v2, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 1219
    .local v2, "mi":Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1220
    invoke-virtual {p0, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-virtual {v4, p2, p3, p4}, Lcom/android/videoeditor/widgets/MediaItemView;->setBitmap(Landroid/graphics/Bitmap;II)Z

    move-result v4

    .line 1226
    .end local v2    # "mi":Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v3    # "tag":Ljava/lang/Object;
    :goto_1
    return v4

    .line 1215
    .restart local v3    # "tag":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1226
    .end local v3    # "tag":Ljava/lang/Object;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public setParentTimelineScrollView(Landroid/view/View;)V
    .locals 0
    .param p1, "scrollView"    # Landroid/view/View;

    .prologue
    .line 550
    iput-object p1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mScrollView:Landroid/view/View;

    .line 551
    return-void
.end method

.method public setPlaybackInProgress(Z)V
    .locals 0
    .param p1, "inProgress"    # Z

    .prologue
    .line 589
    iput-boolean p1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mPlaybackInProgress:Z

    .line 590
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->setPlaybackState(Z)V

    .line 593
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->closeActionBars()V

    .line 594
    return-void
.end method

.method public setProject(Lcom/android/videoeditor/service/VideoEditorProject;)V
    .locals 0
    .param p1, "project"    # Lcom/android/videoeditor/service/VideoEditorProject;

    .prologue
    .line 578
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->closeActionBars()V

    .line 579
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->clearAndHideTrimHandles()V

    .line 580
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->removeAllMediaItemAndTransitionViews()V

    .line 582
    iput-object p1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    .line 583
    return-void
.end method

.method public setSelected(Z)V
    .locals 1
    .param p1, "selected"    # Z

    .prologue
    .line 2159
    if-nez p1, :cond_0

    .line 2160
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->closeActionBars()V

    .line 2161
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->clearAndHideTrimHandles()V

    .line 2162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mSelectedView:Landroid/view/View;

    .line 2163
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->showAddMediaItemButtons(Z)V

    .line 2165
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->dispatchSetSelected(Z)V

    .line 2166
    return-void
.end method

.method public setSelectedView(I)V
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 607
    if-gez p1, :cond_1

    .line 614
    :cond_0
    :goto_0
    return-void

    .line 610
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mSelectedView:Landroid/view/View;

    .line 611
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mSelectedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mSelectedView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->select(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setTransitionThumbnails(Ljava/lang/String;[Landroid/graphics/Bitmap;)Z
    .locals 5
    .param p1, "transitionId"    # Ljava/lang/String;
    .param p2, "bitmaps"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 1238
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildCount()I

    move-result v0

    .line 1239
    .local v0, "childrenCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1240
    invoke-virtual {p0, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 1241
    .local v2, "tag":Ljava/lang/Object;
    if-eqz v2, :cond_0

    instance-of v4, v2, Lcom/android/videoeditor/service/MovieTransition;

    if-eqz v4, :cond_0

    move-object v3, v2

    .line 1242
    check-cast v3, Lcom/android/videoeditor/service/MovieTransition;

    .line 1243
    .local v3, "transition":Lcom/android/videoeditor/service/MovieTransition;
    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieTransition;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1244
    invoke-virtual {p0, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/videoeditor/widgets/TransitionView;

    invoke-virtual {v4, p2}, Lcom/android/videoeditor/widgets/TransitionView;->setBitmaps([Landroid/graphics/Bitmap;)Z

    move-result v4

    .line 1249
    .end local v2    # "tag":Ljava/lang/Object;
    .end local v3    # "transition":Lcom/android/videoeditor/service/MovieTransition;
    :goto_1
    return v4

    .line 1239
    .restart local v2    # "tag":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1249
    .end local v2    # "tag":Ljava/lang/Object;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public updateMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;)V
    .locals 10
    .param p1, "mediaItem"    # Lcom/android/videoeditor/service/MovieMediaItem;

    .prologue
    const/4 v9, 0x1

    .line 762
    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v3

    .line 763
    .local v3, "mediaItemId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildCount()I

    move-result v1

    .line 764
    .local v1, "childrenCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 765
    invoke-virtual {p0, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 766
    .local v0, "childView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 767
    .local v6, "tag":Ljava/lang/Object;
    if-eqz v6, :cond_4

    instance-of v8, v6, Lcom/android/videoeditor/service/MovieMediaItem;

    if-eqz v8, :cond_4

    move-object v4, v6

    .line 768
    check-cast v4, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 769
    .local v4, "mi":Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 770
    if-eq p1, v4, :cond_1

    .line 772
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 773
    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 774
    if-lez v2, :cond_0

    .line 775
    add-int/lit8 v8, v2, -0x1

    invoke-virtual {p0, v8}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 776
    .local v5, "tView":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    .line 777
    .local v7, "tagT":Ljava/lang/Object;
    if-eqz v7, :cond_0

    instance-of v8, v7, Lcom/android/videoeditor/service/MovieTransition;

    if-eqz v8, :cond_0

    .line 778
    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 783
    .end local v5    # "tView":Landroid/view/View;
    .end local v7    # "tagT":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 784
    add-int/lit8 v8, v1, -0x1

    if-ge v2, v8, :cond_1

    .line 785
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p0, v8}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 786
    .restart local v5    # "tView":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    .line 787
    .restart local v7    # "tagT":Ljava/lang/Object;
    if-eqz v7, :cond_1

    instance-of v8, v7, Lcom/android/videoeditor/service/MovieTransition;

    if-eqz v8, :cond_1

    .line 788
    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 794
    .end local v5    # "tView":Landroid/view/View;
    .end local v7    # "tagT":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 795
    iget-object v8, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v8, v9}, Lcom/android/videoeditor/widgets/HandleView;->setEnabled(Z)V

    .line 796
    iget-object v8, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v8, v9}, Lcom/android/videoeditor/widgets/HandleView;->setEnabled(Z)V

    .line 804
    .end local v0    # "childView":Landroid/view/View;
    .end local v4    # "mi":Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v6    # "tag":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->requestLayout()V

    .line 806
    iget-object v8, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    if-eqz v8, :cond_3

    .line 807
    iget-object v8, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout;->mMediaItemActionMode:Landroid/view/ActionMode;

    invoke-virtual {v8}, Landroid/view/ActionMode;->invalidate()V

    .line 809
    :cond_3
    return-void

    .line 764
    .restart local v0    # "childView":Landroid/view/View;
    .restart local v6    # "tag":Ljava/lang/Object;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method public updateTransition(Ljava/lang/String;)V
    .locals 0
    .param p1, "transitionId"    # Ljava/lang/String;

    .prologue
    .line 1054
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->requestLayout()V

    .line 1055
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->invalidate()V

    .line 1056
    return-void
.end method
