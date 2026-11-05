.class Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;
.super Lcom/android/videoeditor/service/ApiServiceListener;
.source "VideoEditorBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/videoeditor/VideoEditorBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;


# direct methods
.method private constructor <init>(Lcom/android/videoeditor/VideoEditorBaseActivity;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-direct {p0}, Lcom/android/videoeditor/service/ApiServiceListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/videoeditor/VideoEditorBaseActivity;Lcom/android/videoeditor/VideoEditorBaseActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/videoeditor/VideoEditorBaseActivity;
    .param p2, "x1"    # Lcom/android/videoeditor/VideoEditorBaseActivity$1;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;-><init>(Lcom/android/videoeditor/VideoEditorBaseActivity;)V

    return-void
.end method


# virtual methods
.method public onAudioTrackAdded(Ljava/lang/String;Lcom/android/videoeditor/service/MovieAudioTrack;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "audioTrack"    # Lcom/android/videoeditor/service/MovieAudioTrack;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 706
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 720
    :cond_0
    :goto_0
    return-void

    .line 710
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 714
    if-eqz p3, :cond_2

    .line 715
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f090052

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 718
    :cond_2
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getAudioTrackLayout()Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->addAudioTrack(Lcom/android/videoeditor/service/MovieAudioTrack;)Landroid/view/View;

    goto :goto_0
.end method

.method public onAudioTrackBoundariesSet(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/Exception;)V
    .locals 3
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "audioTrackId"    # Ljava/lang/String;
    .param p3, "beginBoundaryMs"    # J
    .param p5, "endBoundaryMs"    # J
    .param p7, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 746
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 761
    :cond_0
    :goto_0
    return-void

    .line 750
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 754
    if-eqz p7, :cond_2

    .line 755
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f090054

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 759
    :cond_2
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getAudioTrackLayout()Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->updateAudioTrack(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAudioTrackExtractAudioWaveformComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "audioTrackId"    # Ljava/lang/String;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 782
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 793
    :cond_0
    :goto_0
    return-void

    .line 786
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 790
    if-nez p3, :cond_0

    .line 791
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getAudioTrackLayout()Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->setWaveformExtractionComplete(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAudioTrackExtractAudioWaveformProgress(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "audioTrackId"    # Ljava/lang/String;
    .param p3, "progress"    # I

    .prologue
    .line 767
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 776
    :cond_0
    :goto_0
    return-void

    .line 771
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getAudioTrackLayout()Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->setWaveformExtractionProgress(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onAudioTrackRemoved(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "audioTrackId"    # Ljava/lang/String;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 726
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 740
    :cond_0
    :goto_0
    return-void

    .line 730
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 734
    if-eqz p3, :cond_2

    .line 735
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f090053

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 738
    :cond_2
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getAudioTrackLayout()Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->removeAudioTrack(Ljava/lang/String;)Landroid/view/View;

    goto :goto_0
.end method

.method public onEffectAdded(Ljava/lang/String;Lcom/android/videoeditor/service/MovieEffect;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "effect"    # Lcom/android/videoeditor/service/MovieEffect;
    .param p3, "mediaItemId"    # Ljava/lang/String;
    .param p4, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 679
    :cond_0
    :goto_0
    return-void

    .line 669
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 673
    if-eqz p4, :cond_2

    .line 674
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f090050

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 677
    :cond_2
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getMediaLayout()Lcom/android/videoeditor/widgets/MediaLinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v1, v1, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1, p3}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->updateMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;)V

    goto :goto_0
.end method

.method public onEffectRemoved(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "effectId"    # Ljava/lang/String;
    .param p3, "mediaItemId"    # Ljava/lang/String;
    .param p4, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 685
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 700
    :cond_0
    :goto_0
    return-void

    .line 689
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 693
    if-eqz p4, :cond_2

    .line 694
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f090051

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 698
    :cond_2
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getMediaLayout()Lcom/android/videoeditor/widgets/MediaLinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v1, v1, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1, p3}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->updateMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;)V

    goto :goto_0
.end method

.method public onMediaItemAdded(Ljava/lang/String;Ljava/lang/String;Lcom/android/videoeditor/service/MovieMediaItem;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Integer;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "mediaItemId"    # Ljava/lang/String;
    .param p3, "mediaItem"    # Lcom/android/videoeditor/service/MovieMediaItem;
    .param p4, "afterMediaItemId"    # Ljava/lang/String;
    .param p6, "newAspectRatio"    # Ljava/lang/Integer;
    .param p7, "exception"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/videoeditor/service/MovieMediaItem;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .local p5, "mediaItemClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    .line 295
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-nez v0, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    if-eqz p7, :cond_3

    .line 300
    invoke-virtual {p5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/media/videoeditor/MediaVideoItem;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 302
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f090041

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 305
    :cond_2
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f090042

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 309
    :cond_3
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getMediaLayout()Lcom/android/videoeditor/widgets/MediaLinearLayout;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->insertMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getOverlayLayout()Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->insertMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;Ljava/lang/String;)V

    .line 312
    if-eqz p6, :cond_4

    .line 314
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/VideoEditorBaseActivity;->setAspectRatio(I)V

    .line 317
    :cond_4
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->updateTimelineDuration()V

    goto :goto_0
.end method

.method public onMediaItemBoundariesSet(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/Exception;)V
    .locals 4
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "mediaItemId"    # Ljava/lang/String;
    .param p3, "beginBoundaryMs"    # J
    .param p5, "endBoundaryMs"    # J
    .param p7, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 435
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v1, v1, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v1, v1, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v1, :cond_0

    .line 443
    if-eqz p7, :cond_2

    .line 444
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v2, 0x7f090047

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 447
    :cond_2
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v1, v1, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1, p2}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v0

    .line 448
    .local v0, "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v1}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getMediaLayout()Lcom/android/videoeditor/widgets/MediaLinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->updateMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;)V

    .line 449
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v1}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getOverlayLayout()Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->updateMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;)V

    .line 453
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v1}, Lcom/android/videoeditor/VideoEditorBaseActivity;->updateTimelineDuration()V

    goto :goto_0
.end method

.method public onMediaItemDurationSet(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Exception;)V
    .locals 4
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "mediaItemId"    # Ljava/lang/String;
    .param p3, "durationMs"    # J
    .param p5, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 410
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v1, v1, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v1, v1, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v1, :cond_0

    .line 418
    if-eqz p5, :cond_2

    .line 419
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v2, 0x7f090046

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 422
    :cond_2
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v1, v1, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1, p2}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v0

    .line 424
    .local v0, "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v1}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getMediaLayout()Lcom/android/videoeditor/widgets/MediaLinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->updateMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;)V

    .line 425
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v1}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getOverlayLayout()Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->updateMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;)V

    .line 427
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v1}, Lcom/android/videoeditor/VideoEditorBaseActivity;->updateTimelineDuration()V

    goto :goto_0
.end method

.method public onMediaItemMoved(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "mediaItemId"    # Ljava/lang/String;
    .param p3, "afterMediaItemId"    # Ljava/lang/String;
    .param p4, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 352
    if-eqz p4, :cond_2

    .line 353
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f090043

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 357
    :cond_2
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getMediaLayout()Lcom/android/videoeditor/widgets/MediaLinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v1, v1, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->addMediaItems(Ljava/util/List;)V

    .line 358
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getOverlayLayout()Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v1, v1, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->addMediaItems(Ljava/util/List;)V

    .line 360
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->updateTimelineDuration()V

    goto :goto_0
.end method

.method public onMediaItemRemoved(Ljava/lang/String;Ljava/lang/String;Lcom/android/videoeditor/service/MovieTransition;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "mediaItemId"    # Ljava/lang/String;
    .param p3, "transition"    # Lcom/android/videoeditor/service/MovieTransition;
    .param p4, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 376
    if-eqz p4, :cond_2

    .line 377
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f090044

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 381
    :cond_2
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getMediaLayout()Lcom/android/videoeditor/widgets/MediaLinearLayout;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->removeMediaItem(Ljava/lang/String;Lcom/android/videoeditor/service/MovieTransition;)Landroid/view/View;

    .line 382
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getOverlayLayout()Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->removeMediaItem(Ljava/lang/String;)Landroid/view/View;

    .line 384
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->updateTimelineDuration()V

    goto :goto_0
.end method

.method public onMediaItemRenderingModeSet(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V
    .locals 3
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "mediaItemId"    # Ljava/lang/String;
    .param p3, "renderingMode"    # I
    .param p4, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 400
    if-eqz p4, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f090045

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onMediaItemThumbnail(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;IILjava/lang/Exception;)Z
    .locals 2
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "mediaItemId"    # Ljava/lang/String;
    .param p3, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p4, "index"    # I
    .param p5, "token"    # I
    .param p6, "exception"    # Ljava/lang/Exception;

    .prologue
    const/4 v0, 0x0

    .line 461
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v1, v1, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 472
    :cond_0
    :goto_0
    return v0

    .line 465
    :cond_1
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v1, v1, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v1, :cond_0

    .line 469
    if-nez p6, :cond_0

    .line 472
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getMediaLayout()Lcom/android/videoeditor/widgets/MediaLinearLayout;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->setMediaItemThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;II)Z

    move-result v0

    goto :goto_0
.end method

.method public onMediaLoaded(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "mediaIUri"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "filename"    # Ljava/lang/String;
    .param p5, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 332
    if-eqz p5, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f090056

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onOverlayAdded(Ljava/lang/String;Lcom/android/videoeditor/service/MovieOverlay;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "overlay"    # Lcom/android/videoeditor/service/MovieOverlay;
    .param p3, "mediaItemId"    # Ljava/lang/String;
    .param p4, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 582
    :cond_0
    :goto_0
    return-void

    .line 571
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 575
    if-eqz p4, :cond_2

    .line 576
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f09004b

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 579
    :cond_2
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getMediaLayout()Lcom/android/videoeditor/widgets/MediaLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->invalidateActionBar()V

    .line 580
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getOverlayLayout()Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    move-result-object v0

    invoke-virtual {v0, p3, p2}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->addOverlay(Ljava/lang/String;Lcom/android/videoeditor/service/MovieOverlay;)V

    goto :goto_0
.end method

.method public onOverlayDurationSet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Exception;)V
    .locals 3
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "overlayId"    # Ljava/lang/String;
    .param p3, "mediaItemId"    # Ljava/lang/String;
    .param p4, "durationMs"    # J
    .param p6, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 638
    :cond_0
    :goto_0
    return-void

    .line 630
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 634
    if-eqz p6, :cond_0

    .line 635
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f09004d

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onOverlayRemoved(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "overlayId"    # Ljava/lang/String;
    .param p3, "mediaItemId"    # Ljava/lang/String;
    .param p4, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 602
    :cond_0
    :goto_0
    return-void

    .line 592
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 596
    if-eqz p4, :cond_2

    .line 597
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f09004c

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 600
    :cond_2
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getOverlayLayout()Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    move-result-object v0

    invoke-virtual {v0, p3, p2}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->removeOverlay(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onOverlayStartTimeSet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Exception;)V
    .locals 3
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "overlayId"    # Ljava/lang/String;
    .param p3, "mediaItemId"    # Ljava/lang/String;
    .param p4, "startTimeMs"    # J
    .param p6, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 608
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 612
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 616
    if-eqz p6, :cond_0

    .line 617
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f09004e

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onOverlayUserAttributesSet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "overlayId"    # Ljava/lang/String;
    .param p3, "mediaItemId"    # Ljava/lang/String;
    .param p4, "userAttributes"    # Landroid/os/Bundle;
    .param p5, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 648
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 652
    if-eqz p5, :cond_2

    .line 653
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f09004f

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 657
    :cond_2
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getOverlayLayout()Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    move-result-object v0

    invoke-virtual {v0, p3, p2, p4}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->updateOverlayAttributes(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onProjectEditState(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "projectEdited"    # Z

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->access$100(Lcom/android/videoeditor/VideoEditorBaseActivity;)Z

    move-result v0

    if-eq v0, p2, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-static {v0, p2}, Lcom/android/videoeditor/VideoEditorBaseActivity;->access$102(Lcom/android/videoeditor/VideoEditorBaseActivity;Z)Z

    .line 84
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0, p2}, Lcom/android/videoeditor/VideoEditorBaseActivity;->onProjectEditStateChange(Z)V

    goto :goto_0
.end method

.method public onTransitionDurationSet(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Exception;)V
    .locals 3
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "transitionId"    # Ljava/lang/String;
    .param p3, "durationMs"    # J
    .param p5, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 533
    if-eqz p5, :cond_2

    .line 534
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f09004a

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 537
    :cond_2
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getMediaLayout()Lcom/android/videoeditor/widgets/MediaLinearLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->updateTransition(Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getOverlayLayout()Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->refresh()V

    .line 540
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->updateTimelineDuration()V

    goto :goto_0
.end method

.method public onTransitionInserted(Ljava/lang/String;Lcom/android/videoeditor/service/MovieTransition;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "transition"    # Lcom/android/videoeditor/service/MovieTransition;
    .param p3, "afterMediaId"    # Ljava/lang/String;
    .param p4, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 489
    if-eqz p4, :cond_2

    .line 490
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f090048

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 493
    :cond_2
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getMediaLayout()Lcom/android/videoeditor/widgets/MediaLinearLayout;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->addTransition(Lcom/android/videoeditor/service/MovieTransition;Ljava/lang/String;)Landroid/view/View;

    .line 495
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->updateTimelineDuration()V

    goto :goto_0
.end method

.method public onTransitionRemoved(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "transitionId"    # Ljava/lang/String;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 511
    if-eqz p3, :cond_2

    .line 512
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f090049

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 515
    :cond_2
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getMediaLayout()Lcom/android/videoeditor/widgets/MediaLinearLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->removeTransition(Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->updateTimelineDuration()V

    goto :goto_0
.end method

.method public onTransitionThumbnails(Ljava/lang/String;Ljava/lang/String;[Landroid/graphics/Bitmap;Ljava/lang/Exception;)Z
    .locals 2
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "transitionId"    # Ljava/lang/String;
    .param p3, "thumbnails"    # [Landroid/graphics/Bitmap;
    .param p4, "exception"    # Ljava/lang/Exception;

    .prologue
    const/4 v0, 0x0

    .line 548
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v1, v1, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 559
    :cond_0
    :goto_0
    return v0

    .line 552
    :cond_1
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v1, v1, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v1, :cond_0

    .line 556
    if-nez p4, :cond_0

    .line 559
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getMediaLayout()Lcom/android/videoeditor/widgets/MediaLinearLayout;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->setTransitionThumbnails(Ljava/lang/String;[Landroid/graphics/Bitmap;)Z

    move-result v0

    goto :goto_0
.end method

.method public onVideoEditorAspectRatioSet(Ljava/lang/String;ILjava/lang/Exception;)V
    .locals 3
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "aspectRatio"    # I
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 151
    if-eqz p3, :cond_2

    .line 152
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f09003b

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0, p2}, Lcom/android/videoeditor/VideoEditorBaseActivity;->setAspectRatio(I)V

    goto :goto_0
.end method

.method public onVideoEditorCreated(Ljava/lang/String;Lcom/android/videoeditor/service/VideoEditorProject;Ljava/util/List;Ljava/util/List;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "project"    # Lcom/android/videoeditor/service/VideoEditorProject;
    .param p5, "exception"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/videoeditor/service/VideoEditorProject;",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/MediaItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/AudioTrack;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/MediaItem;>;"
    .local p4, "audioTracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/AudioTrack;>;"
    const/4 v2, 0x1

    .line 92
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 97
    :cond_0
    if-eqz p5, :cond_1

    .line 99
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/VideoEditorBaseActivity;->enterDisabledState(I)V

    .line 103
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f090039

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->enterReadyState()V

    .line 108
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iput-object p2, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    .line 109
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0, v2}, Lcom/android/videoeditor/VideoEditorBaseActivity;->initializeFromProject(Z)V

    goto :goto_0
.end method

.method public onVideoEditorDeleted(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 284
    if-eqz p2, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f090040

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 288
    :cond_0
    return-void
.end method

.method public onVideoEditorExportComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Z)V
    .locals 3
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "exception"    # Ljava/lang/Exception;
    .param p4, "cancelled"    # Z

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mPendingExportFilename:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->onExportComplete()V

    .line 253
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mPendingExportFilename:Ljava/lang/String;

    .line 255
    if-eqz p3, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f09003d

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onVideoEditorExportProgress(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "progress"    # I

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mPendingExportFilename:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0, p3}, Lcom/android/videoeditor/VideoEditorBaseActivity;->onExportProgress(I)V

    goto :goto_0
.end method

.method public onVideoEditorGeneratePreviewProgress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "itemId"    # Ljava/lang/String;
    .param p4, "action"    # I
    .param p5, "progress"    # I

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 196
    const-string v0, "VideoEditorBase"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    const-string v0, "VideoEditorBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoEditorGeneratePreviewProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_2
    if-nez p2, :cond_3

    .line 201
    const/16 v0, 0x66

    if-ne p4, v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->showPreviewFrame()Z

    goto :goto_0

    .line 204
    :cond_3
    const-class v0, Landroid/media/videoeditor/MediaItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 205
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getMediaLayout()Lcom/android/videoeditor/widgets/MediaLinearLayout;

    move-result-object v0

    invoke-virtual {v0, p3, p4, p5}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->onGeneratePreviewMediaItemProgress(Ljava/lang/String;II)V

    goto :goto_0

    .line 206
    :cond_4
    const-class v0, Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 207
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getMediaLayout()Lcom/android/videoeditor/widgets/MediaLinearLayout;

    move-result-object v0

    invoke-virtual {v0, p3, p4, p5}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->onGeneratePreviewTransitionProgress(Ljava/lang/String;II)V

    goto :goto_0

    .line 208
    :cond_5
    const-class v0, Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 209
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getAudioTrackLayout()Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    move-result-object v0

    invoke-virtual {v0, p3, p4, p5}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->onGeneratePreviewProgress(Ljava/lang/String;II)V

    goto :goto_0

    .line 211
    :cond_6
    const-string v0, "VideoEditorBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported storyboard item type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onVideoEditorLoaded(Ljava/lang/String;Lcom/android/videoeditor/service/VideoEditorProject;Ljava/util/List;Ljava/util/List;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "project"    # Lcom/android/videoeditor/service/VideoEditorProject;
    .param p5, "exception"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/videoeditor/service/VideoEditorProject;",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/MediaItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/AudioTrack;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 116
    .local p3, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/MediaItem;>;"
    .local p4, "audioTracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/AudioTrack;>;"
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v1, v1, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    if-nez p5, :cond_2

    if-nez p2, :cond_3

    .line 122
    :cond_2
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    .line 124
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v2, 0x7f090003

    invoke-virtual {v1, v2}, Lcom/android/videoeditor/VideoEditorBaseActivity;->enterDisabledState(I)V

    .line 126
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 127
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "path"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 132
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_3
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v1, v1, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-nez v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iput-object p2, v1, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    .line 134
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/videoeditor/VideoEditorBaseActivity;->initializeFromProject(Z)V

    goto :goto_0
.end method

.method public onVideoEditorReleased(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 276
    if-eqz p2, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f09003f

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 280
    :cond_0
    return-void
.end method

.method public onVideoEditorSaved(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    if-eqz p2, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f09003e

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onVideoEditorThemeApplied(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "theme"    # Ljava/lang/String;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 172
    if-eqz p3, :cond_2

    .line 173
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f09003c

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getMediaLayout()Lcom/android/videoeditor/widgets/MediaLinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v1, v1, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->addMediaItems(Ljava/util/List;)V

    .line 177
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getOverlayLayout()Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v1, v1, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->addMediaItems(Ljava/util/List;)V

    .line 178
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getAudioTrackLayout()Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v1, v1, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getAudioTracks()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->addAudioTracks(Ljava/util/List;)V

    .line 180
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->updateTimelineDuration()V

    goto :goto_0
.end method
