.class public Lcom/android/videoeditor/widgets/OverlayLinearLayout;
.super Landroid/widget/LinearLayout;
.source "OverlayLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/videoeditor/widgets/OverlayLinearLayout$OverlayActionModeCallback;,
        Lcom/android/videoeditor/widgets/OverlayLinearLayout$OverlayLayoutListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_TITLE_DURATION:J = 0xbb8L

.field private static final PARAM_DIALOG_MEDIA_ITEM_ID:Ljava/lang/String; = "media_item_id"

.field private static final TAG:Ljava/lang/String; = "OverlayLinearLayout"


# instance fields
.field private final mHalfParentWidth:I

.field private final mHandleWidth:I

.field private final mHandler:Landroid/os/Handler;

.field private mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

.field private mMoveLayoutPending:Z

.field private mOverlayActionMode:Landroid/view/ActionMode;

.field private final mOverlayGestureListener:Lcom/android/videoeditor/widgets/ItemMoveGestureListener;

.field private mPlaybackInProgress:Z

.field private mProject:Lcom/android/videoeditor/service/VideoEditorProject;

.field private mResizingView:Landroid/view/View;

.field private mRightHandle:Lcom/android/videoeditor/widgets/HandleView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 339
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 340
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 335
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 336
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const v4, 0x7f040007

    const/4 v5, 0x0

    .line 164
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 166
    new-instance v3, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;

    invoke-direct {v3, p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout$1;-><init>(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)V

    iput-object v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayGestureListener:Lcom/android/videoeditor/widgets/ItemMoveGestureListener;

    .line 298
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4, v5}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 299
    .local v0, "beginView":Landroid/view/View;
    new-instance v3, Lcom/android/videoeditor/widgets/OverlayLinearLayout$2;

    invoke-direct {v3, p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout$2;-><init>(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    invoke-virtual {p0, v0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->addView(Landroid/view/View;)V

    .line 308
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4, v5}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 309
    .local v2, "endView":Landroid/view/View;
    new-instance v3, Lcom/android/videoeditor/widgets/OverlayLinearLayout$3;

    invoke-direct {v3, p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout$3;-><init>(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    invoke-virtual {p0, v2}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->addView(Landroid/view/View;)V

    .line 317
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f04000b

    invoke-static {v3, v4, v5}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/videoeditor/widgets/HandleView;

    iput-object v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    .line 318
    iget-object v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {p0, v3}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->addView(Landroid/view/View;)V

    .line 320
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f040014

    invoke-static {v3, v4, v5}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/videoeditor/widgets/HandleView;

    iput-object v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    .line 321
    iget-object v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {p0, v3}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->addView(Landroid/view/View;)V

    .line 323
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mHandleWidth:I

    .line 326
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 327
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mHalfParentWidth:I

    .line 329
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mHandler:Landroid/os/Handler;

    .line 331
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->setMotionEventSplittingEnabled(Z)V

    .line 332
    return-void
.end method

.method static synthetic access$000(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/videoeditor/widgets/OverlayLinearLayout;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/OverlayLinearLayout;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mPlaybackInProgress:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/videoeditor/widgets/OverlayLinearLayout;Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/OverlayLinearLayout;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getOverlayView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/videoeditor/widgets/OverlayLinearLayout;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/OverlayLinearLayout;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->selectView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->unselectAllViews()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)Lcom/android/videoeditor/widgets/HandleView;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mHalfParentWidth:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mMoveLayoutPending:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/videoeditor/widgets/OverlayLinearLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/OverlayLinearLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mMoveLayoutPending:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;)Landroid/view/View;
    .locals 5
    .param p1, "mediaItem"    # Lcom/android/videoeditor/service/MovieMediaItem;

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f04000f

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/videoeditor/widgets/OverlayView;

    .line 403
    .local v1, "overlayView":Lcom/android/videoeditor/widgets/OverlayView;
    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getOverlay()Lcom/android/videoeditor/service/MovieOverlay;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 404
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/videoeditor/widgets/OverlayView;->setState(I)V

    .line 409
    :goto_0
    invoke-virtual {v1, p1}, Lcom/android/videoeditor/widgets/OverlayView;->setTag(Ljava/lang/Object;)V

    .line 411
    iget-object v2, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayGestureListener:Lcom/android/videoeditor/widgets/ItemMoveGestureListener;

    invoke-virtual {v1, v2}, Lcom/android/videoeditor/widgets/OverlayView;->setGestureListener(Lcom/android/videoeditor/widgets/ItemMoveGestureListener;)V

    .line 413
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 415
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 417
    iget-object v2, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_0

    .line 418
    iget-object v2, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->invalidate()V

    .line 421
    :cond_0
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->requestLayout()V

    .line 422
    return-object v1

    .line 406
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/videoeditor/widgets/OverlayView;->setState(I)V

    goto :goto_0
.end method

.method private getMediaItemViewIndex(Ljava/lang/String;)I
    .locals 6
    .param p1, "mediaItemId"    # Ljava/lang/String;

    .prologue
    .line 764
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getChildCount()I

    move-result v1

    .line 765
    .local v1, "childrenCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 766
    invoke-virtual {p0, v2}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 767
    .local v0, "childView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 768
    .local v4, "tag":Ljava/lang/Object;
    if-eqz v4, :cond_0

    instance-of v5, v4, Lcom/android/videoeditor/service/MovieMediaItem;

    if-eqz v5, :cond_0

    move-object v3, v4

    .line 769
    check-cast v3, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 770
    .local v3, "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 776
    .end local v0    # "childView":Landroid/view/View;
    .end local v2    # "i":I
    .end local v3    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v4    # "tag":Ljava/lang/Object;
    :goto_1
    return v2

    .line 765
    .restart local v0    # "childView":Landroid/view/View;
    .restart local v2    # "i":I
    .restart local v4    # "tag":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 776
    .end local v0    # "childView":Landroid/view/View;
    .end local v4    # "tag":Ljava/lang/Object;
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private getOverlayView(Ljava/lang/String;)Landroid/view/View;
    .locals 5
    .param p1, "mediaItemId"    # Ljava/lang/String;

    .prologue
    .line 745
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getChildCount()I

    move-result v1

    .line 746
    .local v1, "childrenCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 747
    invoke-virtual {p0, v2}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 748
    .local v0, "childView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 749
    .local v3, "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 754
    .end local v0    # "childView":Landroid/view/View;
    .end local v3    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :goto_1
    return-object v0

    .line 746
    .restart local v0    # "childView":Landroid/view/View;
    .restart local v3    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 754
    .end local v0    # "childView":Landroid/view/View;
    .end local v3    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private removeViews()V
    .locals 3

    .prologue
    .line 783
    const/4 v0, 0x0

    .line 784
    .local v0, "index":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 785
    invoke-virtual {p0, v0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 786
    .local v1, "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    if-eqz v1, :cond_0

    .line 787
    invoke-virtual {p0, v0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->removeViewAt(I)V

    goto :goto_0

    .line 789
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 793
    .end local v1    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_1
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->requestLayout()V

    .line 794
    return-void
.end method

.method private selectView(Landroid/view/View;Z)V
    .locals 12
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "selected"    # Z

    .prologue
    const/16 v8, 0x8

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 827
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v4

    if-ne v4, p2, :cond_0

    .line 942
    :goto_0
    return-void

    .line 831
    :cond_0
    if-nez p2, :cond_1

    .line 833
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 834
    iput-object v7, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mResizingView:Landroid/view/View;

    .line 835
    iget-object v4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v4, v8}, Lcom/android/videoeditor/widgets/HandleView;->setVisibility(I)V

    .line 836
    iget-object v4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v4, v7}, Lcom/android/videoeditor/widgets/HandleView;->setListener(Lcom/android/videoeditor/widgets/HandleView$MoveListener;)V

    .line 837
    iget-object v4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v4, v8}, Lcom/android/videoeditor/widgets/HandleView;->setVisibility(I)V

    .line 838
    iget-object v4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v4, v7}, Lcom/android/videoeditor/widgets/HandleView;->setListener(Lcom/android/videoeditor/widgets/HandleView$MoveListener;)V

    goto :goto_0

    .line 843
    :cond_1
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->unselectAllViews()V

    .line 846
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 848
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .local v3, "tag":Ljava/lang/Object;
    move-object v0, v3

    .line 849
    check-cast v0, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 850
    .local v0, "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    iget-object v4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayActionMode:Landroid/view/ActionMode;

    if-nez v4, :cond_2

    .line 851
    new-instance v4, Lcom/android/videoeditor/widgets/OverlayLinearLayout$OverlayActionModeCallback;

    invoke-direct {v4, p0, v0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout$OverlayActionModeCallback;-><init>(Lcom/android/videoeditor/widgets/OverlayLinearLayout;Lcom/android/videoeditor/service/MovieMediaItem;)V

    invoke-virtual {p0, v4}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 854
    :cond_2
    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getOverlay()Lcom/android/videoeditor/service/MovieOverlay;

    move-result-object v1

    .line 855
    .local v1, "overlay":Lcom/android/videoeditor/service/MovieOverlay;
    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getOverlayView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 856
    .local v2, "overlayView":Landroid/view/View;
    iput-object v2, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mResizingView:Landroid/view/View;

    .line 858
    iget-object v4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v4, v6}, Lcom/android/videoeditor/widgets/HandleView;->setVisibility(I)V

    .line 859
    iget-object v4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v4}, Lcom/android/videoeditor/widgets/HandleView;->bringToFront()V

    .line 860
    iget-object v7, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/MovieOverlay;->getAppDuration()J

    move-result-wide v8

    invoke-static {v0}, Lcom/android/videoeditor/util/MediaItemUtils;->getMinimumMediaItemDuration(Lcom/android/videoeditor/service/MovieMediaItem;)J

    move-result-wide v10

    cmp-long v4, v8, v10

    if-gtz v4, :cond_3

    move v4, v5

    :goto_1
    invoke-virtual {v1}, Lcom/android/videoeditor/service/MovieOverlay;->getAppStartTime()J

    move-result-wide v8

    invoke-virtual {v1}, Lcom/android/videoeditor/service/MovieOverlay;->getAppDuration()J

    move-result-wide v10

    add-long/2addr v8, v10

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryEndTime()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-ltz v8, :cond_4

    :goto_2
    invoke-virtual {v7, v4, v5}, Lcom/android/videoeditor/widgets/HandleView;->setLimitReached(ZZ)V

    .line 864
    iget-object v4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    new-instance v5, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;

    invoke-direct {v5, p0, v0, v2, v1}, Lcom/android/videoeditor/widgets/OverlayLinearLayout$7;-><init>(Lcom/android/videoeditor/widgets/OverlayLinearLayout;Lcom/android/videoeditor/service/MovieMediaItem;Landroid/view/View;Lcom/android/videoeditor/service/MovieOverlay;)V

    invoke-virtual {v4, v5}, Lcom/android/videoeditor/widgets/HandleView;->setListener(Lcom/android/videoeditor/widgets/HandleView$MoveListener;)V

    goto :goto_0

    :cond_3
    move v4, v6

    .line 860
    goto :goto_1

    :cond_4
    move v5, v6

    goto :goto_2
.end method

.method private unselectAllViews()V
    .locals 2

    .prologue
    .line 948
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 949
    return-void
.end method


# virtual methods
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
    .line 382
    .local p1, "mediaItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/videoeditor/service/MovieMediaItem;>;"
    iget-object v2, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_0

    .line 383
    iget-object v2, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    .line 384
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayActionMode:Landroid/view/ActionMode;

    .line 387
    :cond_0
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->removeViews()V

    .line 389
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 390
    .local v1, "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-direct {p0, v1}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->addMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;)Landroid/view/View;

    goto :goto_0

    .line 392
    .end local v1    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_1
    return-void
.end method

.method public addOverlay(Ljava/lang/String;Lcom/android/videoeditor/service/MovieOverlay;)V
    .locals 4
    .param p1, "mediaItemId"    # Ljava/lang/String;
    .param p2, "overlay"    # Lcom/android/videoeditor/service/MovieOverlay;

    .prologue
    .line 519
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getOverlayView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/widgets/OverlayView;

    .line 520
    .local v0, "view":Lcom/android/videoeditor/widgets/OverlayView;
    if-nez v0, :cond_0

    .line 521
    const-string v1, "OverlayLinearLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addOverlay: Media item not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :goto_0
    return-void

    .line 525
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/OverlayView;->setState(I)V

    .line 527
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->requestLayout()V

    .line 528
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->invalidate()V

    goto :goto_0
.end method

.method public insertMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;Ljava/lang/String;)V
    .locals 7
    .param p1, "mediaItem"    # Lcom/android/videoeditor/service/MovieMediaItem;
    .param p2, "afterMediaItemId"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    .line 432
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f04000f

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/videoeditor/widgets/OverlayView;

    .line 434
    .local v2, "overlayView":Lcom/android/videoeditor/widgets/OverlayView;
    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getOverlay()Lcom/android/videoeditor/service/MovieOverlay;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 435
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/videoeditor/widgets/OverlayView;->setState(I)V

    .line 440
    :goto_0
    invoke-virtual {v2, p1}, Lcom/android/videoeditor/widgets/OverlayView;->setTag(Ljava/lang/Object;)V

    .line 442
    iget-object v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayGestureListener:Lcom/android/videoeditor/widgets/ItemMoveGestureListener;

    invoke-virtual {v2, v3}, Lcom/android/videoeditor/widgets/OverlayView;->setGestureListener(Lcom/android/videoeditor/widgets/ItemMoveGestureListener;)V

    .line 445
    if-eqz p2, :cond_3

    .line 446
    invoke-direct {p0, p2}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getMediaItemViewIndex(Ljava/lang/String;)I

    move-result v0

    .local v0, "insertViewIndex":I
    if-ne v0, v6, :cond_1

    .line 447
    const-string v3, "OverlayLinearLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Media item not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :goto_1
    return-void

    .line 437
    .end local v0    # "insertViewIndex":I
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/videoeditor/widgets/OverlayView;->setState(I)V

    goto :goto_0

    .line 451
    .restart local v0    # "insertViewIndex":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 456
    :goto_2
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 458
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 460
    iget-object v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_2

    .line 461
    iget-object v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->invalidate()V

    .line 464
    :cond_2
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->requestLayout()V

    goto :goto_1

    .line 453
    .end local v0    # "insertViewIndex":I
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    const/4 v0, 0x1

    .restart local v0    # "insertViewIndex":I
    goto :goto_2
.end method

.method public invalidateCAB()V
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 594
    :cond_0
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 690
    iget-object v2, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-nez v2, :cond_1

    .line 733
    :cond_0
    :goto_0
    return-object v1

    .line 694
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 696
    :pswitch_0
    iget-object v2, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    const-string v3, "media_item_id"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v10

    .line 698
    .local v10, "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    if-eqz v10, :cond_0

    .line 702
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 703
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v10}, Lcom/android/videoeditor/service/MovieMediaItem;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/videoeditor/util/FileUtils;->getSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f090017

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f09008a

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/videoeditor/widgets/OverlayLinearLayout$4;

    invoke-direct {v5, p0, v0, v10}, Lcom/android/videoeditor/widgets/OverlayLinearLayout$4;-><init>(Lcom/android/videoeditor/widgets/OverlayLinearLayout;Landroid/app/Activity;Lcom/android/videoeditor/service/MovieMediaItem;)V

    const v6, 0x7f09008b

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/videoeditor/widgets/OverlayLinearLayout$5;

    invoke-direct {v7, p0, v0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout$5;-><init>(Lcom/android/videoeditor/widgets/OverlayLinearLayout;Landroid/app/Activity;)V

    new-instance v8, Lcom/android/videoeditor/widgets/OverlayLinearLayout$6;

    invoke-direct {v8, p0, v0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout$6;-><init>(Lcom/android/videoeditor/widgets/OverlayLinearLayout;Landroid/app/Activity;)V

    const/4 v9, 0x1

    invoke-static/range {v0 .. v9}, Lcom/android/videoeditor/AlertDialogs;->createAlert(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Z)Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 694
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 28
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/videoeditor/service/VideoEditorProject;->computeDuration()J

    move-result-wide v18

    .line 599
    .local v18, "totalDurationMs":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getWidth()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mHalfParentWidth:I

    move/from16 v23, v0

    mul-int/lit8 v23, v23, 0x2

    sub-int v21, v22, v23

    .line 601
    .local v21, "viewWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    check-cast v22, Landroid/view/View;

    const/high16 v23, 0x7f080000

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 603
    .local v10, "leftViewWidth":I
    const-wide/16 v12, 0x0

    .line 604
    .local v12, "mediaItemStartTimeMs":J
    const/4 v9, 0x0

    .line 605
    .local v9, "left":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getChildCount()I

    move-result v5

    .line 606
    .local v5, "childrenCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v5, :cond_9

    .line 607
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 608
    .local v20, "view":Landroid/view/View;
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 609
    .local v11, "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    if-eqz v11, :cond_5

    .line 610
    invoke-virtual {v11}, Lcom/android/videoeditor/service/MovieMediaItem;->getOverlay()Lcom/android/videoeditor/service/MovieOverlay;

    move-result-object v14

    .line 613
    .local v14, "overlay":Lcom/android/videoeditor/service/MovieOverlay;
    if-eqz v14, :cond_4

    .line 616
    invoke-virtual {v14}, Lcom/android/videoeditor/service/MovieOverlay;->getAppStartTime()J

    move-result-wide v22

    invoke-virtual {v11}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryBeginTime()J

    move-result-wide v24

    cmp-long v22, v22, v24

    if-gtz v22, :cond_2

    .line 617
    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    mul-long v22, v22, v12

    div-long v22, v22, v18

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    add-int v9, v10, v22

    .line 619
    invoke-virtual {v14}, Lcom/android/videoeditor/service/MovieOverlay;->getAppDuration()J

    move-result-wide v22

    invoke-virtual {v11}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v24

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 621
    .local v6, "durationMs":J
    add-long v22, v12, v6

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    mul-long v22, v22, v24

    div-long v22, v22, v18

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    add-int v15, v10, v22

    .line 649
    .end local v6    # "durationMs":J
    .local v15, "right":I
    :goto_1
    const/16 v22, 0x0

    sub-int v23, p5, p3

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v9, v1, v15, v2}, Landroid/view/View;->layout(IIII)V

    .line 651
    invoke-virtual {v11}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v22

    add-long v12, v12, v22

    .line 652
    invoke-virtual {v11}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 653
    invoke-virtual {v11}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/videoeditor/service/MovieTransition;->getAppDuration()J

    move-result-wide v22

    sub-long v12, v12, v22

    .line 656
    :cond_0
    move v9, v15

    .line 606
    .end local v14    # "overlay":Lcom/android/videoeditor/service/MovieOverlay;
    .end local v15    # "right":I
    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 623
    .restart local v14    # "overlay":Lcom/android/videoeditor/service/MovieOverlay;
    :cond_2
    invoke-virtual {v14}, Lcom/android/videoeditor/service/MovieOverlay;->getAppStartTime()J

    move-result-wide v22

    invoke-virtual {v14}, Lcom/android/videoeditor/service/MovieOverlay;->getAppDuration()J

    move-result-wide v24

    add-long v22, v22, v24

    invoke-virtual {v11}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryEndTime()J

    move-result-wide v24

    cmp-long v22, v22, v24

    if-lez v22, :cond_3

    .line 625
    invoke-virtual {v11}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryBeginTime()J

    move-result-wide v22

    invoke-virtual {v11}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryEndTime()J

    move-result-wide v24

    invoke-virtual {v14}, Lcom/android/videoeditor/service/MovieOverlay;->getAppDuration()J

    move-result-wide v26

    sub-long v24, v24, v26

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v16

    .line 627
    .local v16, "startTimeMs":J
    add-long v22, v12, v16

    invoke-virtual {v11}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryBeginTime()J

    move-result-wide v24

    sub-long v22, v22, v24

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    mul-long v22, v22, v24

    div-long v22, v22, v18

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    add-int v9, v10, v22

    .line 630
    invoke-virtual {v11}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryEndTime()J

    move-result-wide v22

    sub-long v6, v22, v16

    .line 631
    .restart local v6    # "durationMs":J
    add-long v22, v12, v16

    invoke-virtual {v11}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryBeginTime()J

    move-result-wide v24

    sub-long v22, v22, v24

    add-long v22, v22, v6

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    mul-long v22, v22, v24

    div-long v22, v22, v18

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    add-int v15, v10, v22

    .line 634
    .restart local v15    # "right":I
    goto/16 :goto_1

    .line 635
    .end local v6    # "durationMs":J
    .end local v15    # "right":I
    .end local v16    # "startTimeMs":J
    :cond_3
    invoke-virtual {v14}, Lcom/android/videoeditor/service/MovieOverlay;->getAppStartTime()J

    move-result-wide v22

    add-long v22, v22, v12

    invoke-virtual {v11}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryBeginTime()J

    move-result-wide v24

    sub-long v22, v22, v24

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    mul-long v22, v22, v24

    div-long v22, v22, v18

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    add-int v9, v10, v22

    .line 638
    invoke-virtual {v14}, Lcom/android/videoeditor/service/MovieOverlay;->getAppStartTime()J

    move-result-wide v22

    add-long v22, v22, v12

    invoke-virtual {v11}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryBeginTime()J

    move-result-wide v24

    sub-long v22, v22, v24

    invoke-virtual {v14}, Lcom/android/videoeditor/service/MovieOverlay;->getAppDuration()J

    move-result-wide v24

    add-long v22, v22, v24

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    mul-long v22, v22, v24

    div-long v22, v22, v18

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    add-int v15, v10, v22

    .restart local v15    # "right":I
    goto/16 :goto_1

    .line 643
    .end local v15    # "right":I
    :cond_4
    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    mul-long v22, v22, v12

    div-long v22, v22, v18

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    add-int v9, v10, v22

    .line 645
    invoke-virtual {v11}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v22

    add-long v22, v22, v12

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    mul-long v22, v22, v24

    div-long v22, v22, v18

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    add-int v15, v10, v22

    .restart local v15    # "right":I
    goto/16 :goto_1

    .line 657
    .end local v14    # "overlay":Lcom/android/videoeditor/service/MovieOverlay;
    .end local v15    # "right":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mResizingView:Landroid/view/View;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mResizingView:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLeft()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mHandleWidth:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mResizingView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getPaddingTop()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mResizingView:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLeft()I

    move-result v24

    sub-int v25, p5, p3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mResizingView:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getPaddingBottom()I

    move-result v26

    sub-int v25, v25, v26

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    .line 663
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mResizingView:Landroid/view/View;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mResizingView:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getRight()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mResizingView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getPaddingTop()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mResizingView:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getRight()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mHandleWidth:I

    move/from16 v25, v0

    add-int v24, v24, v25

    sub-int v25, p5, p3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mResizingView:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getPaddingBottom()I

    move-result v26

    sub-int v25, v25, v26

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    .line 669
    :cond_7
    if-nez v8, :cond_8

    .line 670
    const/16 v22, 0x0

    add-int v23, v9, v10

    sub-int v24, p5, p3

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 671
    add-int/2addr v9, v10

    goto/16 :goto_2

    .line 673
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getWidth()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mHalfParentWidth:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mHalfParentWidth:I

    move/from16 v23, v0

    sub-int v23, v23, v10

    sub-int v22, v22, v23

    const/16 v23, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getWidth()I

    move-result v24

    sub-int v25, p5, p3

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    .line 678
    .end local v11    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v20    # "view":Landroid/view/View;
    :cond_9
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mMoveLayoutPending:Z

    .line 679
    return-void
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 583
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->requestLayout()V

    .line 584
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->invalidate()V

    .line 585
    return-void
.end method

.method public removeMediaItem(Ljava/lang/String;)Landroid/view/View;
    .locals 5
    .param p1, "mediaItemId"    # Ljava/lang/String;

    .prologue
    .line 498
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getChildCount()I

    move-result v1

    .line 499
    .local v1, "childrenCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 500
    invoke-virtual {p0, v2}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 501
    .local v0, "childView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 502
    .local v3, "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 503
    invoke-virtual {p0, v2}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->removeViewAt(I)V

    .line 504
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->requestLayout()V

    .line 509
    .end local v0    # "childView":Landroid/view/View;
    .end local v3    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :goto_1
    return-object v0

    .line 499
    .restart local v0    # "childView":Landroid/view/View;
    .restart local v3    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 509
    .end local v0    # "childView":Landroid/view/View;
    .end local v3    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public removeOverlay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "mediaItemId"    # Ljava/lang/String;
    .param p2, "overlayId"    # Ljava/lang/String;

    .prologue
    .line 538
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getOverlayView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/widgets/OverlayView;

    .line 539
    .local v0, "view":Lcom/android/videoeditor/widgets/OverlayView;
    if-nez v0, :cond_1

    .line 540
    const-string v1, "OverlayLinearLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeOverlay: Media item not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 544
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/OverlayView;->setState(I)V

    .line 546
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->requestLayout()V

    .line 547
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->invalidate()V

    .line 549
    iget-object v1, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_0

    .line 550
    iget-object v1, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 551
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayActionMode:Landroid/view/ActionMode;

    goto :goto_0
.end method

.method public setPlaybackInProgress(Z)V
    .locals 1
    .param p1, "inProgress"    # Z

    .prologue
    .line 366
    iput-boolean p1, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mPlaybackInProgress:Z

    .line 370
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 372
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayActionMode:Landroid/view/ActionMode;

    .line 374
    :cond_0
    return-void
.end method

.method public setProject(Lcom/android/videoeditor/service/VideoEditorProject;)V
    .locals 3
    .param p1, "project"    # Lcom/android/videoeditor/service/VideoEditorProject;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 347
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 349
    iput-object v1, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayActionMode:Landroid/view/ActionMode;

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v0, v2}, Lcom/android/videoeditor/widgets/HandleView;->setVisibility(I)V

    .line 353
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/HandleView;->setListener(Lcom/android/videoeditor/widgets/HandleView$MoveListener;)V

    .line 354
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v0, v2}, Lcom/android/videoeditor/widgets/HandleView;->setVisibility(I)V

    .line 355
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/HandleView;->setListener(Lcom/android/videoeditor/widgets/HandleView$MoveListener;)V

    .line 357
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->removeViews()V

    .line 359
    iput-object p1, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    .line 360
    return-void
.end method

.method public setSelected(Z)V
    .locals 6
    .param p1, "selected"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 798
    if-nez p1, :cond_1

    .line 800
    iget-object v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_0

    .line 801
    iget-object v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->finish()V

    .line 802
    iput-object v4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mOverlayActionMode:Landroid/view/ActionMode;

    .line 805
    :cond_0
    iget-object v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v3, v5}, Lcom/android/videoeditor/widgets/HandleView;->setVisibility(I)V

    .line 806
    iget-object v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mLeftHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v3, v4}, Lcom/android/videoeditor/widgets/HandleView;->setListener(Lcom/android/videoeditor/widgets/HandleView$MoveListener;)V

    .line 807
    iget-object v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v3, v5}, Lcom/android/videoeditor/widgets/HandleView;->setVisibility(I)V

    .line 808
    iget-object v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mRightHandle:Lcom/android/videoeditor/widgets/HandleView;

    invoke-virtual {v3, v4}, Lcom/android/videoeditor/widgets/HandleView;->setListener(Lcom/android/videoeditor/widgets/HandleView$MoveListener;)V

    .line 809
    iput-object v4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mResizingView:Landroid/view/View;

    .line 812
    :cond_1
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getChildCount()I

    move-result v1

    .line 813
    .local v1, "childrenCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 814
    invoke-virtual {p0, v2}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 815
    .local v0, "childView":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 813
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 817
    .end local v0    # "childView":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public updateMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;)V
    .locals 6
    .param p1, "mediaItem"    # Lcom/android/videoeditor/service/MovieMediaItem;

    .prologue
    .line 473
    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v3

    .line 474
    .local v3, "mediaItemId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getChildCount()I

    move-result v1

    .line 475
    .local v1, "childrenCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 476
    invoke-virtual {p0, v2}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 477
    .local v0, "childView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 478
    .local v4, "mi":Lcom/android/videoeditor/service/MovieMediaItem;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 479
    if-eq p1, v4, :cond_0

    .line 481
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 487
    .end local v0    # "childView":Landroid/view/View;
    .end local v4    # "mi":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_0
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->requestLayout()V

    .line 488
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->invalidate()V

    .line 489
    return-void

    .line 475
    .restart local v0    # "childView":Landroid/view/View;
    .restart local v4    # "mi":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public updateOverlayAttributes(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "mediaItemId"    # Ljava/lang/String;
    .param p2, "overlayId"    # Ljava/lang/String;
    .param p3, "userAttributes"    # Landroid/os/Bundle;

    .prologue
    .line 564
    iget-object v2, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v2, p1}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v0

    .line 565
    .local v0, "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    if-nez v0, :cond_0

    .line 566
    const-string v2, "OverlayLinearLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateOverlayAttributes: Media item not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :goto_0
    return-void

    .line 570
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getOverlayView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 571
    .local v1, "overlayView":Landroid/view/View;
    if-nez v1, :cond_1

    .line 572
    const-string v2, "OverlayLinearLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateOverlayAttributes: Overlay not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 576
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method
