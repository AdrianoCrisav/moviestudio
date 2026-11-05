.class public abstract Lcom/android/videoeditor/VideoEditorBaseActivity;
.super Landroid/app/Activity;
.source "VideoEditorBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/videoeditor/VideoEditorBaseActivity$1;,
        Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;
    }
.end annotation


# static fields
.field protected static final DIALOG_DELETE_BAD_PROJECT_ID:I = 0x64

.field protected static final PARAM_PROJECT_PATH:Ljava/lang/String; = "path"

.field private static final STATE_EXPORT_FILENAME:Ljava/lang/String; = "export_filename"

.field private static final STATE_PROJECT_PATH:Ljava/lang/String; = "path"

.field private static final TAG:Ljava/lang/String; = "VideoEditorBase"


# instance fields
.field protected mPendingExportFilename:Ljava/lang/String;

.field protected mProject:Lcom/android/videoeditor/service/VideoEditorProject;

.field private mProjectEditState:Z

.field protected mProjectPath:Ljava/lang/String;

.field private final mServiceListener:Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    new-instance v0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;-><init>(Lcom/android/videoeditor/VideoEditorBaseActivity;Lcom/android/videoeditor/VideoEditorBaseActivity$1;)V

    iput-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mServiceListener:Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;

    .line 73
    return-void
.end method

.method static synthetic access$100(Lcom/android/videoeditor/VideoEditorBaseActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/VideoEditorBaseActivity;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectEditState:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/videoeditor/VideoEditorBaseActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/videoeditor/VideoEditorBaseActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectEditState:Z

    return p1
.end method


# virtual methods
.method protected abstract enterDisabledState(I)V
.end method

.method protected abstract enterReadyState()V
.end method

.method protected abstract enterTransitionalState(I)V
.end method

.method protected abstract getAudioTrackLayout()Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;
.end method

.method protected abstract getMediaLayout()Lcom/android/videoeditor/widgets/MediaLinearLayout;
.end method

.method protected abstract getOverlayLayout()Lcom/android/videoeditor/widgets/OverlayLinearLayout;
.end method

.method protected abstract initializeFromProject(Z)V
.end method

.method protected isProjectEdited()Z
    .locals 1

    .prologue
    .line 888
    iget-boolean v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectEditState:Z

    return v0
.end method

.method protected abstract movePlayhead(J)V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 798
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 799
    const v0, 0x7f040018

    invoke-virtual {p0, v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->setContentView(I)V

    .line 801
    if-eqz p1, :cond_1

    .line 802
    const-string v0, "path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    .line 803
    const-string v0, "export_filename"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mPendingExportFilename:Ljava/lang/String;

    .line 813
    :cond_0
    :goto_0
    return-void

    .line 805
    :cond_1
    invoke-virtual {p0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 806
    .local v6, "intent":Landroid/content/Intent;
    const-string v0, "path"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    .line 807
    const-string v0, "android.intent.action.INSERT"

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 808
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    const-string v0, "name"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/videoeditor/service/ApiService;->createVideoEditor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 864
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 867
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 868
    invoke-virtual {p0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 869
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->releaseVideoEditor(Landroid/content/Context;Ljava/lang/String;)V

    .line 872
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    .line 874
    :cond_1
    return-void
.end method

.method protected abstract onExportComplete()V
.end method

.method protected abstract onExportProgress(I)V
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 845
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 846
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mServiceListener:Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;

    invoke-static {v1}, Lcom/android/videoeditor/service/ApiService;->unregisterListener(Lcom/android/videoeditor/service/ApiServiceListener;)V

    .line 848
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v1, :cond_0

    .line 852
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/videoeditor/service/VideoEditorProject;->setClean(Z)V

    .line 854
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/android/videoeditor/service/ApiService;->saveVideoEditor(Landroid/content/Context;Ljava/lang/String;)V

    .line 858
    :cond_0
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 859
    .local v0, "audioManager":Landroid/media/AudioManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 860
    return-void
.end method

.method protected abstract onProjectEditStateChange(Z)V
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 817
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 819
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/videoeditor/service/ApiService;->isProjectBeingEdited(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectEditState:Z

    .line 820
    iget-boolean v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectEditState:Z

    invoke-virtual {p0, v1}, Lcom/android/videoeditor/VideoEditorBaseActivity;->onProjectEditStateChange(Z)V

    .line 822
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mServiceListener:Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;

    invoke-static {v1}, Lcom/android/videoeditor/service/ApiService;->registerListener(Lcom/android/videoeditor/service/ApiServiceListener;)V

    .line 825
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 826
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-nez v1, :cond_0

    .line 828
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/android/videoeditor/service/ApiService;->loadVideoEditor(Landroid/content/Context;Ljava/lang/String;)V

    .line 829
    const v1, 0x7f090002

    invoke-virtual {p0, v1}, Lcom/android/videoeditor/VideoEditorBaseActivity;->enterTransitionalState(I)V

    .line 838
    :goto_0
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 839
    .local v0, "audioManager":Landroid/media/AudioManager;
    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 841
    return-void

    .line 831
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/videoeditor/VideoEditorBaseActivity;->initializeFromProject(Z)V

    goto :goto_0

    .line 834
    :cond_1
    const v1, 0x7f090003

    invoke-virtual {p0, v1}, Lcom/android/videoeditor/VideoEditorBaseActivity;->enterDisabledState(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 878
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 880
    const-string v0, "path"

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    const-string v0, "export_filename"

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mPendingExportFilename:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    return-void
.end method

.method protected abstract setAspectRatio(I)V
.end method

.method protected abstract showPreviewFrame()Z
.end method

.method protected abstract updateTimelineDuration()V
.end method
