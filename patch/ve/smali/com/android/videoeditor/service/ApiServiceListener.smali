.class public Lcom/android/videoeditor/service/ApiServiceListener;
.super Ljava/lang/Object;
.source "ApiServiceListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioTrackAdded(Ljava/lang/String;Lcom/android/videoeditor/service/MovieAudioTrack;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "audioTrack"    # Lcom/android/videoeditor/service/MovieAudioTrack;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 412
    return-void
.end method

.method public onAudioTrackBoundariesSet(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/Exception;)V
    .locals 0
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "audioTrackId"    # Ljava/lang/String;
    .param p3, "beginBoundaryMs"    # J
    .param p5, "endBoundaryMs"    # J
    .param p7, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 434
    return-void
.end method

.method public onAudioTrackExtractAudioWaveformComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "audioTrackId"    # Ljava/lang/String;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 454
    return-void
.end method

.method public onAudioTrackExtractAudioWaveformProgress(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "audioTrackId"    # Ljava/lang/String;
    .param p3, "progress"    # I

    .prologue
    .line 444
    return-void
.end method

.method public onAudioTrackRemoved(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "audioTrackId"    # Ljava/lang/String;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 422
    return-void
.end method

.method public onEffectAdded(Ljava/lang/String;Lcom/android/videoeditor/service/MovieEffect;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "effect"    # Lcom/android/videoeditor/service/MovieEffect;
    .param p3, "mediaItemId"    # Ljava/lang/String;
    .param p4, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 391
    return-void
.end method

.method public onEffectRemoved(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "effectId"    # Ljava/lang/String;
    .param p3, "mediaItemId"    # Ljava/lang/String;
    .param p4, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 402
    return-void
.end method

.method public onMediaItemAdded(Ljava/lang/String;Ljava/lang/String;Lcom/android/videoeditor/service/MovieMediaItem;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Integer;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "mediaItemId"    # Ljava/lang/String;
    .param p3, "mediaItem"    # Lcom/android/videoeditor/service/MovieMediaItem;
    .param p4, "afterMediaId"    # Ljava/lang/String;
    .param p6, "aspectRatio"    # Ljava/lang/Integer;
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
    .line 169
    .local p5, "mediaItemClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method public onMediaItemBoundariesSet(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/Exception;)V
    .locals 0
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "mediaItemId"    # Ljava/lang/String;
    .param p3, "beginBoundaryMs"    # J
    .param p5, "endBoundaryMs"    # J
    .param p7, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 238
    return-void
.end method

.method public onMediaItemDurationSet(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Exception;)V
    .locals 0
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "mediaItemId"    # Ljava/lang/String;
    .param p3, "durationMs"    # J
    .param p5, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 226
    return-void
.end method

.method public onMediaItemExtractAudioWaveformComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "mediaItemId"    # Ljava/lang/String;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 275
    return-void
.end method

.method public onMediaItemExtractAudioWaveformProgress(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "mediaItemId"    # Ljava/lang/String;
    .param p3, "progress"    # I

    .prologue
    .line 265
    return-void
.end method

.method public onMediaItemMoved(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "mediaItemId"    # Ljava/lang/String;
    .param p3, "afterMediaItemId"    # Ljava/lang/String;
    .param p4, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 192
    return-void
.end method

.method public onMediaItemRemoved(Ljava/lang/String;Ljava/lang/String;Lcom/android/videoeditor/service/MovieTransition;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "mediaItemId"    # Ljava/lang/String;
    .param p3, "transition"    # Lcom/android/videoeditor/service/MovieTransition;
    .param p4, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 204
    return-void
.end method

.method public onMediaItemRenderingModeSet(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V
    .locals 0
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "mediaItemId"    # Ljava/lang/String;
    .param p3, "renderingMode"    # I
    .param p4, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 215
    return-void
.end method

.method public onMediaItemThumbnail(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;IILjava/lang/Exception;)Z
    .locals 1
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "mediaItemId"    # Ljava/lang/String;
    .param p3, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p4, "index"    # I
    .param p5, "token"    # I
    .param p6, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 254
    const/4 v0, 0x0

    return v0
.end method

.method public onMediaLoaded(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "mediaUri"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "filename"    # Ljava/lang/String;
    .param p5, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 181
    return-void
.end method

.method public onOverlayAdded(Ljava/lang/String;Lcom/android/videoeditor/service/MovieOverlay;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "overlay"    # Lcom/android/videoeditor/service/MovieOverlay;
    .param p3, "mediaItemId"    # Ljava/lang/String;
    .param p4, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 333
    return-void
.end method

.method public onOverlayDurationSet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Exception;)V
    .locals 0
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "overlayId"    # Ljava/lang/String;
    .param p3, "mediaItemId"    # Ljava/lang/String;
    .param p4, "durationMs"    # J
    .param p6, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 368
    return-void
.end method

.method public onOverlayRemoved(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "overlayId"    # Ljava/lang/String;
    .param p3, "mediaItemId"    # Ljava/lang/String;
    .param p4, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 344
    return-void
.end method

.method public onOverlayStartTimeSet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Exception;)V
    .locals 0
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "overlayId"    # Ljava/lang/String;
    .param p3, "mediaItemId"    # Ljava/lang/String;
    .param p4, "startTimeMs"    # J
    .param p6, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 356
    return-void
.end method

.method public onOverlayUserAttributesSet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "overlayId"    # Ljava/lang/String;
    .param p3, "mediaItemId"    # Ljava/lang/String;
    .param p4, "userAttributes"    # Landroid/os/Bundle;
    .param p5, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 380
    return-void
.end method

.method public onProjectEditState(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "projectEdited"    # Z

    .prologue
    .line 48
    return-void
.end method

.method public onProjectsLoaded(Ljava/util/List;Ljava/lang/Exception;)V
    .locals 0
    .param p2, "exception"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/videoeditor/service/VideoEditorProject;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "projects":Ljava/util/List;, "Ljava/util/List<Lcom/android/videoeditor/service/VideoEditorProject;>;"
    return-void
.end method

.method public onTransitionDurationSet(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Exception;)V
    .locals 0
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "transitionId"    # Ljava/lang/String;
    .param p3, "durationMs"    # J
    .param p5, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 307
    return-void
.end method

.method public onTransitionInserted(Ljava/lang/String;Lcom/android/videoeditor/service/MovieTransition;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "transition"    # Lcom/android/videoeditor/service/MovieTransition;
    .param p3, "afterMediaId"    # Ljava/lang/String;
    .param p4, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 286
    return-void
.end method

.method public onTransitionRemoved(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "transitionId"    # Ljava/lang/String;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 296
    return-void
.end method

.method public onTransitionThumbnails(Ljava/lang/String;Ljava/lang/String;[Landroid/graphics/Bitmap;Ljava/lang/Exception;)Z
    .locals 1
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "transitionId"    # Ljava/lang/String;
    .param p3, "thumbnails"    # [Landroid/graphics/Bitmap;
    .param p4, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 321
    const/4 v0, 0x0

    return v0
.end method

.method public onVideoEditorAspectRatioSet(Ljava/lang/String;ILjava/lang/Exception;)V
    .locals 0
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "aspectRatio"    # I
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 81
    return-void
.end method

.method public onVideoEditorCreated(Ljava/lang/String;Lcom/android/videoeditor/service/VideoEditorProject;Ljava/util/List;Ljava/util/List;Ljava/lang/Exception;)V
    .locals 0
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
    .line 60
    .local p3, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/MediaItem;>;"
    .local p4, "audioTracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/AudioTrack;>;"
    return-void
.end method

.method public onVideoEditorDeleted(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 154
    return-void
.end method

.method public onVideoEditorExportCanceled(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 130
    return-void
.end method

.method public onVideoEditorExportComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Z)V
    .locals 0
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "exception"    # Ljava/lang/Exception;
    .param p4, "cancelled"    # Z

    .prologue
    .line 122
    return-void
.end method

.method public onVideoEditorExportProgress(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "progress"    # I

    .prologue
    .line 111
    return-void
.end method

.method public onVideoEditorGeneratePreviewProgress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "itemId"    # Ljava/lang/String;
    .param p4, "action"    # I
    .param p5, "progress"    # I

    .prologue
    .line 102
    return-void
.end method

.method public onVideoEditorLoaded(Ljava/lang/String;Lcom/android/videoeditor/service/VideoEditorProject;Ljava/util/List;Ljava/util/List;Ljava/lang/Exception;)V
    .locals 0
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
    .line 72
    .local p3, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/MediaItem;>;"
    .local p4, "audioTracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/AudioTrack;>;"
    return-void
.end method

.method public onVideoEditorReleased(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 146
    return-void
.end method

.method public onVideoEditorSaved(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 138
    return-void
.end method

.method public onVideoEditorThemeApplied(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "theme"    # Ljava/lang/String;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 90
    return-void
.end method
