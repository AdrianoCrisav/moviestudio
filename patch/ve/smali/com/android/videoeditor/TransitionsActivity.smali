.class public Lcom/android/videoeditor/TransitionsActivity;
.super Landroid/app/ListActivity;
.source "TransitionsActivity.java"


# static fields
.field private static final INCREMENT_TRANSITION:J = 0x64L

.field public static final PARAM_AFTER_MEDIA_ITEM_ID:Ljava/lang/String; = "media_item_id"

.field public static final PARAM_DEFAULT_DURATION:Ljava/lang/String; = "default_duration"

.field public static final PARAM_MAXIMUM_DURATION:Ljava/lang/String; = "max_duration"

.field public static final PARAM_MINIMUM_DURATION:Ljava/lang/String; = "min_duration"

.field public static final PARAM_TRANSITION_DURATION:Ljava/lang/String; = "duration"

.field public static final PARAM_TRANSITION_ID:Ljava/lang/String; = "transition_id"

.field public static final PARAM_TRANSITION_TYPE:Ljava/lang/String; = "transition"

.field private static final STATE_KEY_TRANSITION_DURATION:Ljava/lang/String; = "duration"


# instance fields
.field private mAdapter:Lcom/android/videoeditor/TransitionsAdapter;

.field private mMaxTransitionDurationMs:J

.field private mMinTransitionDurationMs:J

.field private mTransitionDurationMs:J

.field private mTransitionDurationView:Landroid/widget/TextView;

.field private mTransitionLeftBtn:Landroid/view/View;

.field private mTransitionRightBtn:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method private updateTransitionDuration()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 172
    iget-object v0, p0, Lcom/android/videoeditor/TransitionsActivity;->mTransitionDurationView:Landroid/widget/TextView;

    const v3, 0x7f090086

    new-array v4, v1, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/android/videoeditor/TransitionsActivity;->mTransitionDurationMs:J

    long-to-float v5, v5

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/android/videoeditor/TransitionsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v3, p0, Lcom/android/videoeditor/TransitionsActivity;->mTransitionLeftBtn:Landroid/view/View;

    iget-wide v4, p0, Lcom/android/videoeditor/TransitionsActivity;->mTransitionDurationMs:J

    iget-wide v6, p0, Lcom/android/videoeditor/TransitionsActivity;->mMinTransitionDurationMs:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 176
    iget-object v0, p0, Lcom/android/videoeditor/TransitionsActivity;->mTransitionRightBtn:Landroid/view/View;

    iget-wide v3, p0, Lcom/android/videoeditor/TransitionsActivity;->mTransitionDurationMs:J

    iget-wide v5, p0, Lcom/android/videoeditor/TransitionsActivity;->mMaxTransitionDurationMs:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 177
    return-void

    :cond_0
    move v0, v2

    .line 175
    goto :goto_0

    :cond_1
    move v1, v2

    .line 176
    goto :goto_1
.end method


# virtual methods
.method public onClickHandler(Landroid/view/View;)V
    .locals 6
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const-wide/16 v4, 0x64

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 161
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 142
    :pswitch_1
    iget-wide v0, p0, Lcom/android/videoeditor/TransitionsActivity;->mTransitionDurationMs:J

    iget-wide v2, p0, Lcom/android/videoeditor/TransitionsActivity;->mMinTransitionDurationMs:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 143
    iget-wide v0, p0, Lcom/android/videoeditor/TransitionsActivity;->mTransitionDurationMs:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/videoeditor/TransitionsActivity;->mTransitionDurationMs:J

    .line 144
    invoke-direct {p0}, Lcom/android/videoeditor/TransitionsActivity;->updateTransitionDuration()V

    goto :goto_0

    .line 150
    :pswitch_2
    iget-wide v0, p0, Lcom/android/videoeditor/TransitionsActivity;->mTransitionDurationMs:J

    iget-wide v2, p0, Lcom/android/videoeditor/TransitionsActivity;->mMaxTransitionDurationMs:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 151
    iget-wide v0, p0, Lcom/android/videoeditor/TransitionsActivity;->mTransitionDurationMs:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/videoeditor/TransitionsActivity;->mTransitionDurationMs:J

    .line 152
    invoke-direct {p0}, Lcom/android/videoeditor/TransitionsActivity;->updateTransitionDuration()V

    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x7f080037
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v7, 0x0

    const-wide/16 v5, 0x64

    .line 55
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v3, 0x7f040016

    invoke-virtual {p0, v3}, Lcom/android/videoeditor/TransitionsActivity;->setContentView(I)V

    .line 57
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/videoeditor/TransitionsActivity;->setFinishOnTouchOutside(Z)V

    .line 59
    const v3, 0x7f080038

    invoke-virtual {p0, v3}, Lcom/android/videoeditor/TransitionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/videoeditor/TransitionsActivity;->mTransitionDurationView:Landroid/widget/TextView;

    .line 60
    const v3, 0x7f080037

    invoke-virtual {p0, v3}, Lcom/android/videoeditor/TransitionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/videoeditor/TransitionsActivity;->mTransitionLeftBtn:Landroid/view/View;

    .line 61
    const v3, 0x7f080039

    invoke-virtual {p0, v3}, Lcom/android/videoeditor/TransitionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/videoeditor/TransitionsActivity;->mTransitionRightBtn:Landroid/view/View;

    .line 63
    invoke-virtual {p0}, Lcom/android/videoeditor/TransitionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "min_duration"

    invoke-virtual {v3, v4, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/videoeditor/TransitionsActivity;->mMinTransitionDurationMs:J

    .line 64
    iget-wide v3, p0, Lcom/android/videoeditor/TransitionsActivity;->mMinTransitionDurationMs:J

    div-long/2addr v3, v5

    mul-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/videoeditor/TransitionsActivity;->mMinTransitionDurationMs:J

    .line 67
    invoke-virtual {p0}, Lcom/android/videoeditor/TransitionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "max_duration"

    invoke-virtual {v3, v4, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/videoeditor/TransitionsActivity;->mMaxTransitionDurationMs:J

    .line 68
    iget-wide v3, p0, Lcom/android/videoeditor/TransitionsActivity;->mMaxTransitionDurationMs:J

    div-long/2addr v3, v5

    mul-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/videoeditor/TransitionsActivity;->mMaxTransitionDurationMs:J

    .line 71
    if-nez p1, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/android/videoeditor/TransitionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "default_duration"

    invoke-virtual {v3, v4, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/videoeditor/TransitionsActivity;->mTransitionDurationMs:J

    .line 76
    :goto_0
    iget-wide v3, p0, Lcom/android/videoeditor/TransitionsActivity;->mTransitionDurationMs:J

    div-long/2addr v3, v5

    mul-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/videoeditor/TransitionsActivity;->mTransitionDurationMs:J

    .line 79
    invoke-direct {p0}, Lcom/android/videoeditor/TransitionsActivity;->updateTransitionDuration()V

    .line 82
    new-instance v3, Lcom/android/videoeditor/TransitionsAdapter;

    invoke-virtual {p0}, Lcom/android/videoeditor/TransitionsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/videoeditor/TransitionsAdapter;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;)V

    iput-object v3, p0, Lcom/android/videoeditor/TransitionsActivity;->mAdapter:Lcom/android/videoeditor/TransitionsAdapter;

    .line 83
    iget-object v3, p0, Lcom/android/videoeditor/TransitionsActivity;->mAdapter:Lcom/android/videoeditor/TransitionsAdapter;

    invoke-virtual {p0, v3}, Lcom/android/videoeditor/TransitionsActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/videoeditor/TransitionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "transition"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 86
    .local v1, "transitionType":I
    if-ltz v1, :cond_0

    .line 88
    iget-object v3, p0, Lcom/android/videoeditor/TransitionsActivity;->mAdapter:Lcom/android/videoeditor/TransitionsAdapter;

    invoke-virtual {v3}, Lcom/android/videoeditor/TransitionsAdapter;->getTransitions()[Lcom/android/videoeditor/TransitionType;

    move-result-object v2

    .line 89
    .local v2, "transitions":[Lcom/android/videoeditor/TransitionType;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 90
    aget-object v3, v2, v0

    invoke-virtual {v3}, Lcom/android/videoeditor/TransitionType;->getType()I

    move-result v3

    if-ne v3, v1, :cond_2

    .line 91
    invoke-virtual {p0, v0}, Lcom/android/videoeditor/TransitionsActivity;->setSelection(I)V

    .line 96
    .end local v0    # "i":I
    .end local v2    # "transitions":[Lcom/android/videoeditor/TransitionType;
    :cond_0
    return-void

    .line 74
    .end local v1    # "transitionType":I
    :cond_1
    const-string v3, "duration"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/videoeditor/TransitionsActivity;->mTransitionDurationMs:J

    goto :goto_0

    .line 89
    .restart local v0    # "i":I
    .restart local v1    # "transitionType":I
    .restart local v2    # "transitions":[Lcom/android/videoeditor/TransitionType;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 111
    iget-object v0, p0, Lcom/android/videoeditor/TransitionsActivity;->mAdapter:Lcom/android/videoeditor/TransitionsAdapter;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/videoeditor/TransitionsActivity;->mAdapter:Lcom/android/videoeditor/TransitionsAdapter;

    invoke-virtual {v0}, Lcom/android/videoeditor/TransitionsAdapter;->onDestroy()V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/videoeditor/TransitionsActivity;->mAdapter:Lcom/android/videoeditor/TransitionsAdapter;

    .line 115
    :cond_0
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 126
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 127
    .local v0, "extras":Landroid/content/Intent;
    const-string v2, "transition"

    iget-object v1, p0, Lcom/android/videoeditor/TransitionsActivity;->mAdapter:Lcom/android/videoeditor/TransitionsAdapter;

    invoke-virtual {v1, p3}, Lcom/android/videoeditor/TransitionsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/videoeditor/TransitionType;

    invoke-virtual {v1}, Lcom/android/videoeditor/TransitionType;->getType()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 129
    const-string v1, "media_item_id"

    invoke-virtual {p0}, Lcom/android/videoeditor/TransitionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "media_item_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string v1, "transition_id"

    invoke-virtual {p0}, Lcom/android/videoeditor/TransitionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "transition_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string v1, "duration"

    iget-wide v2, p0, Lcom/android/videoeditor/TransitionsActivity;->mTransitionDurationMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 135
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/videoeditor/TransitionsActivity;->setResult(ILandroid/content/Intent;)V

    .line 136
    invoke-virtual {p0}, Lcom/android/videoeditor/TransitionsActivity;->finish()V

    .line 137
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 102
    iget-object v0, p0, Lcom/android/videoeditor/TransitionsActivity;->mAdapter:Lcom/android/videoeditor/TransitionsAdapter;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/videoeditor/TransitionsActivity;->mAdapter:Lcom/android/videoeditor/TransitionsAdapter;

    invoke-virtual {v0}, Lcom/android/videoeditor/TransitionsAdapter;->onPause()V

    .line 105
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 121
    const-string v0, "duration"

    iget-wide v1, p0, Lcom/android/videoeditor/TransitionsActivity;->mTransitionDurationMs:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 122
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method
