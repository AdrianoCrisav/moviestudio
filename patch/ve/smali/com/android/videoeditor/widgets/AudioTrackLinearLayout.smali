.class public Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;
.super Landroid/widget/LinearLayout;
.source "AudioTrackLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;,
        Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTracksLayoutListener;
    }
.end annotation


# static fields
.field private static final PARAM_DIALOG_AUDIO_TRACK_ID:Ljava/lang/String; = "audio_track_id"

.field private static final TAG:Ljava/lang/String; = "AudioTrackLinearLayout"


# instance fields
.field private final mAddAudioTrackButtonView:Landroid/view/View;

.field private final mAddAudioTrackButtonWidth:I

.field private mAudioTrackActionMode:Landroid/view/ActionMode;

.field private final mAudioTrackGestureListener:Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

.field private final mAudioTrackHeight:I

.field private final mHalfParentWidth:I

.field private mListener:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTracksLayoutListener;

.field private mPlaybackInProgress:Z

.field private mProject:Lcom/android/videoeditor/service/VideoEditorProject;

.field private mTimelineDurationMs:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 261
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 262
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 257
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 258
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

    .line 179
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 181
    new-instance v3, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$1;

    invoke-direct {v3, p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$1;-><init>(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;)V

    iput-object v3, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackGestureListener:Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

    .line 213
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4, v5}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 214
    .local v0, "beginView":Landroid/view/View;
    new-instance v3, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$2;

    invoke-direct {v3, p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$2;-><init>(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    invoke-virtual {p0, v0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->addView(Landroid/view/View;)V

    .line 223
    invoke-static {p1, v4, v5}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 224
    .local v2, "endView":Landroid/view/View;
    new-instance v3, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$3;

    invoke-direct {v3, p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$3;-><init>(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    invoke-virtual {p0, v2}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->addView(Landroid/view/View;)V

    .line 233
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x7f040000

    invoke-static {v3, v4, v5}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAddAudioTrackButtonView:Landroid/view/View;

    .line 234
    iget-object v3, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAddAudioTrackButtonView:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->addView(Landroid/view/View;I)V

    .line 235
    iget-object v3, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAddAudioTrackButtonView:Landroid/view/View;

    new-instance v4, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$4;

    invoke-direct {v4, p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$4;-><init>(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070010

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAddAudioTrackButtonWidth:I

    move-object v3, p1

    .line 247
    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 248
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mHalfParentWidth:I

    .line 251
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackHeight:I

    .line 253
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->setMotionEventSplittingEnabled(Z)V

    .line 254
    return-void
.end method

.method static synthetic access$000(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getAudioTrackView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->selectView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mPlaybackInProgress:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->unselectAllViews()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;)Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTracksLayoutListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mListener:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTracksLayoutListener;

    return-object v0
.end method

.method private getAudioTrackView(Ljava/lang/String;)Landroid/view/View;
    .locals 5
    .param p1, "audioTrackId"    # Ljava/lang/String;

    .prologue
    .line 637
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getChildCount()I

    move-result v2

    .line 638
    .local v2, "childrenCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 639
    invoke-virtual {p0, v3}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 640
    .local v1, "childView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/service/MovieAudioTrack;

    .line 641
    .local v0, "audioTrack":Lcom/android/videoeditor/service/MovieAudioTrack;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieAudioTrack;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 646
    .end local v0    # "audioTrack":Lcom/android/videoeditor/service/MovieAudioTrack;
    .end local v1    # "childView":Landroid/view/View;
    :goto_1
    return-object v1

    .line 638
    .restart local v0    # "audioTrack":Lcom/android/videoeditor/service/MovieAudioTrack;
    .restart local v1    # "childView":Landroid/view/View;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 646
    .end local v0    # "audioTrack":Lcom/android/videoeditor/service/MovieAudioTrack;
    .end local v1    # "childView":Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private removeAudioTrackViews()V
    .locals 3

    .prologue
    .line 653
    const/4 v0, 0x0

    .line 654
    .local v0, "index":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 655
    invoke-virtual {p0, v0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 656
    .local v1, "tag":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 657
    invoke-virtual {p0, v0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->removeViewAt(I)V

    goto :goto_0

    .line 659
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 663
    .end local v1    # "tag":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->requestLayout()V

    .line 664
    return-void
.end method

.method private selectView(Landroid/view/View;Z)V
    .locals 2
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "selected"    # Z

    .prologue
    .line 708
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-ne v0, p2, :cond_0

    .line 723
    :goto_0
    return-void

    .line 712
    :cond_0
    if-eqz p2, :cond_1

    .line 713
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->unselectAllViews()V

    .line 716
    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_2

    .line 717
    new-instance v1, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/service/MovieAudioTrack;

    invoke-direct {v1, p0, v0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;-><init>(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;Lcom/android/videoeditor/service/MovieAudioTrack;)V

    invoke-virtual {p0, v1}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 722
    :cond_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0
.end method

.method private unselectAllViews()V
    .locals 2

    .prologue
    .line 729
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 730
    return-void
.end method

.method private updateAddAudioTrackButton()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 670
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-nez v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAddAudioTrackButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 681
    :goto_0
    return-void

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItemCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 673
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/VideoEditorProject;->getAudioTracks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 674
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAddAudioTrackButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 676
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAddAudioTrackButtonView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 679
    :cond_2
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAddAudioTrackButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public addAudioTrack(Lcom/android/videoeditor/service/MovieAudioTrack;)Landroid/view/View;
    .locals 5
    .param p1, "audioTrack"    # Lcom/android/videoeditor/service/MovieAudioTrack;

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->updateAddAudioTrackButton()V

    .line 355
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040002

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/widgets/AudioTrackView;

    .line 358
    .local v0, "audioTrackView":Lcom/android/videoeditor/widgets/AudioTrackView;
    invoke-virtual {v0, p1}, Lcom/android/videoeditor/widgets/AudioTrackView;->setTag(Ljava/lang/Object;)V

    .line 360
    iget-object v2, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackGestureListener:Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

    invoke-virtual {v0, v2}, Lcom/android/videoeditor/widgets/AudioTrackView;->setGestureListener(Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;)V

    .line 362
    iget-wide v2, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mTimelineDurationMs:J

    invoke-virtual {v0, v2, v3}, Lcom/android/videoeditor/widgets/AudioTrackView;->updateTimelineDuration(J)V

    .line 364
    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieAudioTrack;->getWaveformData()Landroid/media/videoeditor/WaveformData;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 365
    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieAudioTrack;->getWaveformData()Landroid/media/videoeditor/WaveformData;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/videoeditor/widgets/AudioTrackView;->setWaveformData(Landroid/media/videoeditor/WaveformData;)V

    .line 371
    :goto_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 373
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 375
    iget-object v2, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_0

    .line 376
    iget-object v2, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->invalidate()V

    .line 379
    :cond_0
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->requestLayout()V

    .line 380
    return-object v0

    .line 367
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v3}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieAudioTrack;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/videoeditor/service/ApiService;->extractAudioTrackAudioWaveform(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addAudioTracks(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/videoeditor/service/MovieAudioTrack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 329
    .local p1, "audioTracks":Ljava/util/List;, "Ljava/util/List<Lcom/android/videoeditor/service/MovieAudioTrack;>;"
    iget-object v2, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_0

    .line 330
    iget-object v2, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    .line 331
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackActionMode:Landroid/view/ActionMode;

    .line 334
    :cond_0
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->updateAddAudioTrackButton()V

    .line 336
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->removeAudioTrackViews()V

    .line 338
    iget-object v2, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/VideoEditorProject;->computeDuration()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mTimelineDurationMs:J

    .line 340
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/service/MovieAudioTrack;

    .line 341
    .local v0, "audioTrack":Lcom/android/videoeditor/service/MovieAudioTrack;
    invoke-virtual {p0, v0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->addAudioTrack(Lcom/android/videoeditor/service/MovieAudioTrack;)Landroid/view/View;

    goto :goto_0

    .line 343
    .end local v0    # "audioTrack":Lcom/android/videoeditor/service/MovieAudioTrack;
    :cond_1
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 582
    iget-object v2, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-nez v2, :cond_1

    .line 625
    :cond_0
    :goto_0
    return-object v1

    .line 586
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 588
    :pswitch_0
    iget-object v2, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    const-string v3, "audio_track_id"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/videoeditor/service/VideoEditorProject;->getAudioTrack(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieAudioTrack;

    move-result-object v10

    .line 590
    .local v10, "audioTrack":Lcom/android/videoeditor/service/MovieAudioTrack;
    if-eqz v10, :cond_0

    .line 594
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 595
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v10}, Lcom/android/videoeditor/service/MovieAudioTrack;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/videoeditor/util/FileUtils;->getSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f090012

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f09008a

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$5;

    invoke-direct {v5, p0, v0, v10}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$5;-><init>(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;Landroid/app/Activity;Lcom/android/videoeditor/service/MovieAudioTrack;)V

    const v6, 0x7f09008b

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$6;

    invoke-direct {v7, p0, v0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$6;-><init>(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;Landroid/app/Activity;)V

    new-instance v8, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$7;

    invoke-direct {v8, p0, v0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$7;-><init>(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;Landroid/app/Activity;)V

    const/4 v9, 0x1

    invoke-static/range {v0 .. v9}, Lcom/android/videoeditor/AlertDialogs;->createAlert(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Z)Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 586
    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch
.end method

.method public onGeneratePreviewProgress(Ljava/lang/String;II)V
    .locals 4
    .param p1, "audioTrackId"    # Ljava/lang/String;
    .param p2, "action"    # I
    .param p3, "progress"    # I

    .prologue
    .line 435
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getAudioTrackView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/widgets/AudioTrackView;

    .line 436
    .local v0, "audioTrackView":Lcom/android/videoeditor/widgets/AudioTrackView;
    if-nez v0, :cond_0

    .line 437
    const-string v1, "AudioTrackLinearLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGeneratePreviewProgress: audio track view not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :goto_0
    return-void

    .line 441
    :cond_0
    invoke-virtual {v0, p3}, Lcom/android/videoeditor/widgets/AudioTrackView;->setProgress(I)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getChildCount()I

    move-result v2

    .line 511
    .local v2, "childrenCount":I
    iget-wide v10, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mTimelineDurationMs:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_1

    .line 512
    const/4 v5, 0x0

    .line 513
    .local v5, "left":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_8

    .line 514
    invoke-virtual {p0, v3}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 515
    .local v1, "childView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/service/MovieAudioTrack;

    .line 516
    .local v0, "audioTrack":Lcom/android/videoeditor/service/MovieAudioTrack;
    if-eqz v0, :cond_0

    .line 518
    const/4 v10, 0x0

    iget v11, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackHeight:I

    invoke-virtual {v1, v5, v10, v5, v11}, Landroid/view/View;->layout(IIII)V

    .line 513
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 520
    :cond_0
    const/4 v10, 0x0

    iget v11, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mHalfParentWidth:I

    add-int/2addr v11, v5

    iget v12, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackHeight:I

    invoke-virtual {v1, v5, v10, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 521
    iget v10, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mHalfParentWidth:I

    add-int/2addr v5, v10

    goto :goto_1

    .line 525
    .end local v0    # "audioTrack":Lcom/android/videoeditor/service/MovieAudioTrack;
    .end local v1    # "childView":Landroid/view/View;
    .end local v3    # "i":I
    .end local v5    # "left":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getWidth()I

    move-result v10

    iget v11, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mHalfParentWidth:I

    mul-int/lit8 v11, v11, 0x2

    sub-int v8, v10, v11

    .line 526
    .local v8, "viewWidth":I
    const/4 v5, 0x0

    .line 528
    .restart local v5    # "left":I
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    const/high16 v11, 0x7f080000

    invoke-virtual {v10, v11}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 531
    .local v6, "leftViewWidth":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v2, :cond_8

    .line 532
    invoke-virtual {p0, v3}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 533
    .restart local v1    # "childView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v4

    .line 534
    .local v4, "id":I
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/service/MovieAudioTrack;

    .line 535
    .restart local v0    # "audioTrack":Lcom/android/videoeditor/service/MovieAudioTrack;
    if-eqz v0, :cond_5

    .line 537
    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieAudioTrack;->isAppLooping()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 538
    iget-wide v10, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mTimelineDurationMs:J

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieAudioTrack;->getAppStartTime()J

    move-result-wide v12

    sub-long/2addr v10, v12

    int-to-long v12, v8

    mul-long/2addr v10, v12

    iget-wide v12, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mTimelineDurationMs:J

    div-long/2addr v10, v12

    long-to-int v9, v10

    .line 551
    .local v9, "width":I
    :goto_3
    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieAudioTrack;->getAppStartTime()J

    move-result-wide v10

    int-to-long v12, v8

    mul-long/2addr v10, v12

    iget-wide v12, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mTimelineDurationMs:J

    div-long/2addr v10, v12

    long-to-int v10, v10

    add-int v7, v10, v6

    .line 554
    .local v7, "trackLeft":I
    const/4 v10, 0x0

    add-int v11, v7, v9

    iget v12, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackHeight:I

    invoke-virtual {v1, v7, v10, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 555
    add-int v5, v7, v9

    .line 531
    .end local v7    # "trackLeft":I
    .end local v9    # "width":I
    :cond_2
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 541
    :cond_3
    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieAudioTrack;->getAppStartTime()J

    move-result-wide v10

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieAudioTrack;->getTimelineDuration()J

    move-result-wide v12

    add-long/2addr v10, v12

    iget-wide v12, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mTimelineDurationMs:J

    cmp-long v10, v10, v12

    if-lez v10, :cond_4

    .line 543
    iget-wide v10, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mTimelineDurationMs:J

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieAudioTrack;->getAppStartTime()J

    move-result-wide v12

    sub-long/2addr v10, v12

    int-to-long v12, v8

    mul-long/2addr v10, v12

    iget-wide v12, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mTimelineDurationMs:J

    div-long/2addr v10, v12

    long-to-int v9, v10

    .restart local v9    # "width":I
    goto :goto_3

    .line 546
    .end local v9    # "width":I
    :cond_4
    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieAudioTrack;->getTimelineDuration()J

    move-result-wide v10

    int-to-long v12, v8

    mul-long/2addr v10, v12

    iget-wide v12, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mTimelineDurationMs:J

    div-long/2addr v10, v12

    long-to-int v9, v10

    .restart local v9    # "width":I
    goto :goto_3

    .line 556
    .end local v9    # "width":I
    :cond_5
    const v10, 0x7f080003

    if-ne v4, v10, :cond_6

    .line 557
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_2

    .line 558
    const/4 v10, 0x0

    iget v11, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAddAudioTrackButtonWidth:I

    add-int/2addr v11, v5

    iget v12, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackHeight:I

    invoke-virtual {v1, v5, v10, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 560
    iget v10, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAddAudioTrackButtonWidth:I

    add-int/2addr v5, v10

    goto :goto_4

    .line 562
    :cond_6
    if-nez v3, :cond_7

    .line 563
    const/4 v10, 0x0

    add-int v11, v5, v6

    iget v12, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackHeight:I

    invoke-virtual {v1, v5, v10, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 564
    add-int/2addr v5, v6

    goto :goto_4

    .line 566
    :cond_7
    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getWidth()I

    move-result v11

    iget v12, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackHeight:I

    invoke-virtual {v1, v5, v10, v11, v12}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    .line 570
    .end local v0    # "audioTrack":Lcom/android/videoeditor/service/MovieAudioTrack;
    .end local v1    # "childView":Landroid/view/View;
    .end local v4    # "id":I
    .end local v6    # "leftViewWidth":I
    .end local v8    # "viewWidth":I
    :cond_8
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getChildCount()I

    move-result v3

    .line 269
    .local v3, "childrenCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 270
    invoke-virtual {p0, v4}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 271
    .local v2, "childView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .line 272
    .local v5, "tag":Ljava/lang/Object;
    if-eqz v5, :cond_0

    move-object v1, v2

    .line 273
    check-cast v1, Lcom/android/videoeditor/widgets/AudioTrackView;

    .line 274
    .local v1, "audioTrackView":Lcom/android/videoeditor/widgets/AudioTrackView;
    invoke-virtual {v1}, Lcom/android/videoeditor/widgets/AudioTrackView;->getWaveformData()Landroid/media/videoeditor/WaveformData;

    move-result-object v6

    if-nez v6, :cond_0

    move-object v0, v5

    .line 275
    check-cast v0, Lcom/android/videoeditor/service/MovieAudioTrack;

    .line 276
    .local v0, "audioTrack":Lcom/android/videoeditor/service/MovieAudioTrack;
    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieAudioTrack;->getWaveformData()Landroid/media/videoeditor/WaveformData;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 277
    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieAudioTrack;->getWaveformData()Landroid/media/videoeditor/WaveformData;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/videoeditor/widgets/AudioTrackView;->setWaveformData(Landroid/media/videoeditor/WaveformData;)V

    .line 278
    invoke-virtual {v1}, Lcom/android/videoeditor/widgets/AudioTrackView;->invalidate()V

    .line 269
    .end local v0    # "audioTrack":Lcom/android/videoeditor/service/MovieAudioTrack;
    .end local v1    # "audioTrackView":Lcom/android/videoeditor/widgets/AudioTrackView;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 283
    .end local v2    # "childView":Landroid/view/View;
    .end local v5    # "tag":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public removeAudioTrack(Ljava/lang/String;)Landroid/view/View;
    .locals 5
    .param p1, "audioTrackId"    # Ljava/lang/String;

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getChildCount()I

    move-result v2

    .line 391
    .local v2, "childrenCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 392
    invoke-virtual {p0, v3}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 393
    .local v1, "childView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/service/MovieAudioTrack;

    .line 394
    .local v0, "audioTrack":Lcom/android/videoeditor/service/MovieAudioTrack;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieAudioTrack;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 395
    invoke-virtual {p0, v3}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->removeViewAt(I)V

    .line 397
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->updateAddAudioTrackButton()V

    .line 399
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->requestLayout()V

    .line 404
    .end local v0    # "audioTrack":Lcom/android/videoeditor/service/MovieAudioTrack;
    .end local v1    # "childView":Landroid/view/View;
    :goto_1
    return-object v1

    .line 391
    .restart local v0    # "audioTrack":Lcom/android/videoeditor/service/MovieAudioTrack;
    .restart local v1    # "childView":Landroid/view/View;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 404
    .end local v0    # "audioTrack":Lcom/android/videoeditor/service/MovieAudioTrack;
    .end local v1    # "childView":Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setListener(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTracksLayoutListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTracksLayoutListener;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mListener:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTracksLayoutListener;

    .line 290
    return-void
.end method

.method public setPlaybackInProgress(Z)V
    .locals 1
    .param p1, "inProgress"    # Z

    .prologue
    .line 313
    iput-boolean p1, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mPlaybackInProgress:Z

    .line 317
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackActionMode:Landroid/view/ActionMode;

    .line 321
    :cond_0
    return-void
.end method

.method public setProject(Lcom/android/videoeditor/service/VideoEditorProject;)V
    .locals 1
    .param p1, "project"    # Lcom/android/videoeditor/service/VideoEditorProject;

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackActionMode:Landroid/view/ActionMode;

    .line 302
    :cond_0
    iput-object p1, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    .line 304
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->updateAddAudioTrackButton()V

    .line 306
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->removeAudioTrackViews()V

    .line 307
    return-void
.end method

.method public setSelected(Z)V
    .locals 4
    .param p1, "selected"    # Z

    .prologue
    .line 685
    if-nez p1, :cond_0

    .line 687
    iget-object v3, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_0

    .line 688
    iget-object v3, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->finish()V

    .line 689
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackActionMode:Landroid/view/ActionMode;

    .line 693
    :cond_0
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getChildCount()I

    move-result v1

    .line 694
    .local v1, "childrenCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 695
    invoke-virtual {p0, v2}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 696
    .local v0, "childView":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 694
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 698
    .end local v0    # "childView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setWaveformExtractionComplete(Ljava/lang/String;)V
    .locals 5
    .param p1, "audioTrackId"    # Ljava/lang/String;

    .prologue
    .line 467
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getAudioTrackView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/videoeditor/widgets/AudioTrackView;

    .line 468
    .local v1, "audioTrackView":Lcom/android/videoeditor/widgets/AudioTrackView;
    if-nez v1, :cond_0

    .line 469
    const-string v2, "AudioTrackLinearLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWaveformExtractionComplete: audio track view not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :goto_0
    return-void

    .line 474
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/videoeditor/widgets/AudioTrackView;->setProgress(I)V

    .line 476
    invoke-virtual {v1}, Lcom/android/videoeditor/widgets/AudioTrackView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/service/MovieAudioTrack;

    .line 477
    .local v0, "audioTrack":Lcom/android/videoeditor/service/MovieAudioTrack;
    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieAudioTrack;->getWaveformData()Landroid/media/videoeditor/WaveformData;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 478
    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieAudioTrack;->getWaveformData()Landroid/media/videoeditor/WaveformData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/videoeditor/widgets/AudioTrackView;->setWaveformData(Landroid/media/videoeditor/WaveformData;)V

    .line 481
    :cond_1
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->requestLayout()V

    .line 482
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->invalidate()V

    goto :goto_0
.end method

.method public setWaveformExtractionProgress(Ljava/lang/String;I)V
    .locals 4
    .param p1, "audioTrackId"    # Ljava/lang/String;
    .param p2, "progress"    # I

    .prologue
    .line 451
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getAudioTrackView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/widgets/AudioTrackView;

    .line 452
    .local v0, "audioTrackView":Lcom/android/videoeditor/widgets/AudioTrackView;
    if-nez v0, :cond_0

    .line 453
    const-string v1, "AudioTrackLinearLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWaveformExtractionProgress: audio track view not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :goto_0
    return-void

    .line 458
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/videoeditor/widgets/AudioTrackView;->setProgress(I)V

    goto :goto_0
.end method

.method public updateAudioTrack(Ljava/lang/String;)V
    .locals 4
    .param p1, "audioTrackId"    # Ljava/lang/String;

    .prologue
    .line 413
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getAudioTrackView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/widgets/AudioTrackView;

    .line 414
    .local v0, "audioTrackView":Lcom/android/videoeditor/widgets/AudioTrackView;
    if-nez v0, :cond_0

    .line 415
    const-string v1, "AudioTrackLinearLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAudioTrack: audio track view not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :goto_0
    return-void

    .line 419
    :cond_0
    iget-object v1, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_1

    .line 420
    iget-object v1, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mAudioTrackActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->invalidate()V

    .line 423
    :cond_1
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->requestLayout()V

    .line 424
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->invalidate()V

    goto :goto_0
.end method

.method public updateTimelineDuration()V
    .locals 6

    .prologue
    .line 489
    iget-object v4, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/VideoEditorProject;->computeDuration()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mTimelineDurationMs:J

    .line 492
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->updateAddAudioTrackButton()V

    .line 495
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getChildCount()I

    move-result v2

    .line 496
    .local v2, "childrenCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 497
    invoke-virtual {p0, v3}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 498
    .local v1, "childView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/service/MovieAudioTrack;

    .line 499
    .local v0, "audioTrack":Lcom/android/videoeditor/service/MovieAudioTrack;
    if-eqz v0, :cond_0

    .line 500
    check-cast v1, Lcom/android/videoeditor/widgets/AudioTrackView;

    .end local v1    # "childView":Landroid/view/View;
    iget-wide v4, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->mTimelineDurationMs:J

    invoke-virtual {v1, v4, v5}, Lcom/android/videoeditor/widgets/AudioTrackView;->updateTimelineDuration(J)V

    .line 496
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 504
    .end local v0    # "audioTrack":Lcom/android/videoeditor/service/MovieAudioTrack;
    :cond_1
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->requestLayout()V

    .line 505
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->invalidate()V

    .line 506
    return-void
.end method
