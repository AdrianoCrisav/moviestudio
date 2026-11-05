.class Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;
.super Ljava/lang/Object;
.source "AudioTrackLinearLayout.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioTrackActionModeCallback"
.end annotation


# instance fields
.field private final mAudioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;

.field private mProgress:I

.field final synthetic this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;


# direct methods
.method public constructor <init>(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;Lcom/android/videoeditor/service/MovieAudioTrack;)V
    .locals 0
    .param p2, "audioTrack"    # Lcom/android/videoeditor/service/MovieAudioTrack;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p2, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;->mAudioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;

    .line 95
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 128
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v4, 0x7f08007d

    if-ne v2, v4, :vs_not_split

    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->access$100(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v0

    iget-object v4, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;->mAudioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;

    invoke-static {v1, v0, v4}, Landroid/media/videoeditor/splitter;->audio(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :vs_not_split
    packed-switch v2, :pswitch_data_0

    .line 146
    :goto_0
    return v3

    .line 130
    :pswitch_0
    iget-object v2, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;->mAudioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieAudioTrack;->isAppDuckingEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    move v1, v3

    .line 131
    .local v1, "duck":Z
    :goto_1
    iget-object v2, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;->mAudioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;

    invoke-virtual {v2, v1}, Lcom/android/videoeditor/service/MovieAudioTrack;->enableAppDucking(Z)V

    .line 132
    iget-object v2, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    invoke-virtual {v2}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    invoke-static {v4}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->access$100(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;->mAudioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;

    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieAudioTrack;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5, v1}, Lcom/android/videoeditor/service/ApiService;->setAudioTrackDuck(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 134
    invoke-interface {p2, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 130
    .end local v1    # "duck":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 139
    :pswitch_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 140
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "audio_track_id"

    iget-object v4, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;->mAudioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieAudioTrack;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v2, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    invoke-virtual {v2}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const/16 v4, 0xf

    invoke-virtual {v2, v4, v0}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x7f080046
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 6
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 99
    iget-object v3, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    invoke-static {v3, p1}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->access$002(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 101
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    const v4, 0x7f0b0001

    invoke-virtual {v3, v4, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 103
    iget-object v3, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    invoke-virtual {v3}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f040001

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 105
    .local v1, "titleBarView":Landroid/view/View;
    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 107
    const v3, 0x7f080006

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 108
    .local v2, "titleView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;->mAudioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieAudioTrack;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/videoeditor/util/FileUtils;->getSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    const v3, 0x7f080004

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 112
    .local v0, "seekBar":Landroid/widget/SeekBar;
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 113
    iget-object v3, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;->mAudioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieAudioTrack;->getAppVolume()I

    move-result v3

    iput v3, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;->mProgress:I

    .line 114
    iget v3, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;->mProgress:I

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 116
    const/4 v3, 0x1

    return v3
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 169
    iget-object v1, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    iget-object v2, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;->mAudioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieAudioTrack;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->access$200(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 170
    .local v0, "audioTrackView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 171
    iget-object v1, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->access$300(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;Landroid/view/View;Z)V

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->access$002(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 175
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 121
    const v1, 0x7f080046

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 122
    .local v0, "duckItem":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;->mAudioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/MovieAudioTrack;->isAppDuckingEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 123
    const/4 v1, 0x1

    return v1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 151
    if-eqz p3, :cond_0

    .line 152
    iput p2, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;->mProgress:I

    .line 153
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;->mAudioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;

    iget v1, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;->mProgress:I

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/MovieAudioTrack;->setAppVolume(I)V

    .line 155
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 159
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    invoke-static {v1}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->access$100(Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;->mAudioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieAudioTrack;->getId()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout$AudioTrackActionModeCallback;->mProgress:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/videoeditor/service/ApiService;->setAudioTrackVolume(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 165
    return-void
.end method
