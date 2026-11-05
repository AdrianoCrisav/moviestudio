.class public Lcom/android/videoeditor/service/ApiService;
.super Landroid/app/Service;
.source "ApiService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/videoeditor/service/ApiService$IntentProcessor;,
        Lcom/android/videoeditor/service/ApiService$ServiceMediaProcessingProgressListener;
    }
.end annotation


# static fields
.field public static final ACTION_NO_FRAME_UPDATE:I = 0x67

.field public static final ACTION_UPDATE_FRAME:I = 0x66

.field private static final DEFAULT_AUDIO_TRACK_VOLUME:I = 0x32

.field private static final DUCK_THRESHOLD:I = 0x14

.field private static final DUCK_TRACK_VOLUME:I = 0x41

.field private static final OP_AUDIO_TRACK_ADD:I = 0x1f4

.field private static final OP_AUDIO_TRACK_EXTRACT_AUDIO_WAVEFORM:I = 0x1fc

.field private static final OP_AUDIO_TRACK_EXTRACT_AUDIO_WAVEFORM_STATUS:I = 0x1fd

.field private static final OP_AUDIO_TRACK_REMOVE:I = 0x1f5

.field private static final OP_AUDIO_TRACK_SET_BOUNDARIES:I = 0x1f9

.field private static final OP_AUDIO_TRACK_SET_DUCK:I = 0x1fb

.field private static final OP_AUDIO_TRACK_SET_LOOP:I = 0x1fa

.field private static final OP_AUDIO_TRACK_SET_MUTE:I = 0x1f7

.field private static final OP_AUDIO_TRACK_SET_VOLUME:I = 0x1f6

.field private static final OP_EFFECT_ADD_COLOR:I = 0xc8

.field private static final OP_EFFECT_ADD_IMAGE_KEN_BURNS:I = 0xc9

.field private static final OP_EFFECT_REMOVE:I = 0xca

.field private static final OP_MEDIA_ITEM_ADD_IMAGE_URI:I = 0x65

.field private static final OP_MEDIA_ITEM_ADD_VIDEO_URI:I = 0x64

.field private static final OP_MEDIA_ITEM_EXTRACT_AUDIO_WAVEFORM:I = 0x6d

.field private static final OP_MEDIA_ITEM_EXTRACT_AUDIO_WAVEFORM_STATUS:I = 0x6e

.field private static final OP_MEDIA_ITEM_GET_THUMBNAILS:I = 0x70

.field private static final OP_MEDIA_ITEM_LOAD:I = 0x71

.field private static final OP_MEDIA_ITEM_LOAD_STATUS:I = 0x72

.field private static final OP_MEDIA_ITEM_MOVE:I = 0x66

.field private static final OP_MEDIA_ITEM_REMOVE:I = 0x67

.field private static final OP_MEDIA_ITEM_SET_BOUNDARIES:I = 0x6a

.field private static final OP_MEDIA_ITEM_SET_DURATION:I = 0x69

.field private static final OP_MEDIA_ITEM_SET_MUTE:I = 0x6c

.field private static final OP_MEDIA_ITEM_SET_RENDERING_MODE:I = 0x68

.field private static final OP_MEDIA_ITEM_SET_VOLUME:I = 0x6b

.field private static final OP_OVERLAY_ADD:I = 0x190

.field private static final OP_OVERLAY_REMOVE:I = 0x191

.field private static final OP_OVERLAY_SET_ATTRIBUTES:I = 0x194

.field private static final OP_OVERLAY_SET_DURATION:I = 0x193

.field private static final OP_OVERLAY_SET_START_TIME:I = 0x192

.field private static final OP_TRANSITION_GET_THUMBNAIL:I = 0x132

.field private static final OP_TRANSITION_INSERT_ALPHA:I = 0x12c

.field private static final OP_TRANSITION_INSERT_CROSSFADE:I = 0x12d

.field private static final OP_TRANSITION_INSERT_FADE_BLACK:I = 0x12e

.field private static final OP_TRANSITION_INSERT_SLIDING:I = 0x12f

.field private static final OP_TRANSITION_REMOVE:I = 0x130

.field private static final OP_TRANSITION_SET_DURATION:I = 0x131

.field private static final OP_VIDEO_EDITOR_APPLY_THEME:I = 0xb

.field private static final OP_VIDEO_EDITOR_CANCEL_EXPORT:I = 0x5

.field private static final OP_VIDEO_EDITOR_CREATE:I = 0x1

.field private static final OP_VIDEO_EDITOR_DELETE:I = 0x9

.field private static final OP_VIDEO_EDITOR_EXPORT:I = 0x4

.field private static final OP_VIDEO_EDITOR_EXPORT_STATUS:I = 0x6

.field private static final OP_VIDEO_EDITOR_GENERATE_PREVIEW_PROGRESS:I = 0xc

.field private static final OP_VIDEO_EDITOR_LOAD:I = 0x2

.field private static final OP_VIDEO_EDITOR_LOAD_PROJECTS:I = 0xd

.field private static final OP_VIDEO_EDITOR_RELEASE:I = 0x8

.field private static final OP_VIDEO_EDITOR_SAVE:I = 0x3

.field private static final OP_VIDEO_EDITOR_SET_ASPECT_RATIO:I = 0xa

.field private static final PARAM_ACTION:Ljava/lang/String; = "action"

.field private static final PARAM_ASPECT_RATIO:Ljava/lang/String; = "aspect_ratio"

.field private static final PARAM_ATTRIBUTES:Ljava/lang/String; = "attributes"

.field private static final PARAM_BEGIN_BOUNDARY:Ljava/lang/String; = "b_boundary"

.field private static final PARAM_BITRATE:Ljava/lang/String; = "bitrate"

.field private static final PARAM_CANCELLED:Ljava/lang/String; = "cancelled"

.field private static final PARAM_COUNT:Ljava/lang/String; = "count"

.field private static final PARAM_DUCK:Ljava/lang/String; = "duck"

.field private static final PARAM_DURATION:Ljava/lang/String; = "duration"

.field private static final PARAM_EFFECT_PARAM:Ljava/lang/String; = "e_param"

.field private static final PARAM_EFFECT_TYPE:Ljava/lang/String; = "e_type"

.field private static final PARAM_END_BOUNDARY:Ljava/lang/String; = "e_boundary"

.field private static final PARAM_END_TIME:Ljava/lang/String; = "e_time"

.field private static final PARAM_EXCEPTION:Ljava/lang/String; = "ex"

.field private static final PARAM_FILENAME:Ljava/lang/String; = "filename"

.field private static final PARAM_HEIGHT:Ljava/lang/String; = "height"

.field private static final PARAM_INDICES:Ljava/lang/String; = "indices"

.field private static final PARAM_INTENT:Ljava/lang/String; = "req_intent"

.field private static final PARAM_LOOP:Ljava/lang/String; = "loop"

.field private static final PARAM_MEDIA_ITEM_END_RECT:Ljava/lang/String; = "end_rect"

.field private static final PARAM_MEDIA_ITEM_RENDERING_MODE:Ljava/lang/String; = "rm"

.field private static final PARAM_MEDIA_ITEM_START_RECT:Ljava/lang/String; = "start_rect"

.field private static final PARAM_MOVIES_FILENAMES:Ljava/lang/String; = "movies"

.field private static final PARAM_MOVIE_URI:Ljava/lang/String; = "uri"

.field private static final PARAM_MUTE:Ljava/lang/String; = "mute"

.field private static final PARAM_OP:Ljava/lang/String; = "op"

.field private static final PARAM_PHOTOS_FILENAMES:Ljava/lang/String; = "images"

.field private static final PARAM_PROGRESS_VALUE:Ljava/lang/String; = "prog_value"

.field private static final PARAM_PROJECT_NAME:Ljava/lang/String; = "name"

.field private static final PARAM_PROJECT_PATH:Ljava/lang/String; = "project"

.field private static final PARAM_RELATIVE_STORYBOARD_ITEM_ID:Ljava/lang/String; = "r_item_id"

.field private static final PARAM_REQUEST_ID:Ljava/lang/String; = "rid"

.field private static final PARAM_START_TIME:Ljava/lang/String; = "s_time"

.field private static final PARAM_STORYBOARD_ITEM_ID:Ljava/lang/String; = "item_id"

.field private static final PARAM_THEME:Ljava/lang/String; = "theme"

.field private static final PARAM_TOKEN:Ljava/lang/String; = "token"

.field private static final PARAM_TRANSITION_BEHAVIOR:Ljava/lang/String; = "behavior"

.field private static final PARAM_TRANSITION_BLENDING:Ljava/lang/String; = "t_blending"

.field private static final PARAM_TRANSITION_DIRECTION:Ljava/lang/String; = "t_dir"

.field private static final PARAM_TRANSITION_INVERT:Ljava/lang/String; = "t_invert"

.field private static final PARAM_TRANSITION_MASK:Ljava/lang/String; = "t_mask"

.field private static final PARAM_VOLUME:Ljava/lang/String; = "volume"

.field private static final PARAM_WIDTH:Ljava/lang/String; = "width"

.field private static final TAG:Ljava/lang/String; = "VEApiService"

.field private static volatile mExportCancelled:Z

.field private static mGeneratePreviewListener:Lcom/android/videoeditor/service/ApiService$ServiceMediaProcessingProgressListener;

.field private static final mIntentPool:Lcom/android/videoeditor/service/IntentPool;

.field private static final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/videoeditor/service/ApiServiceListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final mPendingIntents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private static mVideoEditor:Landroid/media/videoeditor/VideoEditor;

.field private static mVideoProject:Lcom/android/videoeditor/service/VideoEditorProject;


# instance fields
.field private mAudioThread:Lcom/android/videoeditor/service/ApiService$IntentProcessor;

.field private mHandler:Landroid/os/Handler;

.field private final mStopRunnable:Ljava/lang/Runnable;

.field private mThumbnailThread:Lcom/android/videoeditor/service/ApiService$IntentProcessor;

.field private mVideoThread:Lcom/android/videoeditor/service/ApiService$IntentProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 199
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/videoeditor/service/ApiService;->mPendingIntents:Ljava/util/Map;

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    .line 201
    new-instance v0, Lcom/android/videoeditor/service/IntentPool;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/IntentPool;-><init>(I)V

    sput-object v0, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 212
    new-instance v0, Lcom/android/videoeditor/service/ApiService$1;

    invoke-direct {v0, p0}, Lcom/android/videoeditor/service/ApiService$1;-><init>(Lcom/android/videoeditor/service/ApiService;)V

    iput-object v0, p0, Lcom/android/videoeditor/service/ApiService;->mStopRunnable:Ljava/lang/Runnable;

    .line 4710
    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/android/videoeditor/service/ApiService;->mPendingIntents:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-static {p0}, Lcom/android/videoeditor/service/ApiService;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Lcom/android/videoeditor/service/IntentPool;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/videoeditor/service/ApiService;Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/videoeditor/service/ApiService;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Landroid/media/videoeditor/VideoEditor;
    .param p3, "x3"    # Ljava/lang/Exception;
    .param p4, "x4"    # Ljava/lang/Object;
    .param p5, "x5"    # Ljava/lang/Object;
    .param p6, "x6"    # Z

    .prologue
    .line 83
    invoke-direct/range {p0 .. p6}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/videoeditor/service/ApiService;)Lcom/android/videoeditor/service/ApiService$IntentProcessor;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/service/ApiService;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/videoeditor/service/ApiService;->mVideoThread:Lcom/android/videoeditor/service/ApiService$IntentProcessor;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/videoeditor/service/ApiService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/videoeditor/service/ApiService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-static {p0}, Lcom/android/videoeditor/service/ApiService;->logv(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 83
    sget-boolean v0, Lcom/android/videoeditor/service/ApiService;->mExportCancelled:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/videoeditor/service/ApiService;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/service/ApiService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/videoeditor/service/ApiService;->exportToGallery(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addAudioTrack(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "loop"    # Z

    .prologue
    .line 1176
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1177
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1178
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1179
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1180
    const-string v1, "filename"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1181
    const-string v1, "loop"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1183
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 1184
    return-void
.end method

.method public static addEffectColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJII)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "mediaItemId"    # Ljava/lang/String;
    .param p3, "effectId"    # Ljava/lang/String;
    .param p4, "startTimeMs"    # J
    .param p6, "durationMs"    # J
    .param p8, "type"    # I
    .param p9, "param"    # I

    .prologue
    .line 999
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1000
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1001
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1002
    const-string v1, "r_item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1003
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1004
    const-string v1, "s_time"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1005
    const-string v1, "duration"

    invoke-virtual {v0, v1, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1006
    const-string v1, "e_type"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1007
    const-string v1, "e_param"

    invoke-virtual {v0, v1, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1009
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 1010
    return-void
.end method

.method public static addEffectKenBurns(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "mediaItemId"    # Ljava/lang/String;
    .param p3, "effectId"    # Ljava/lang/String;
    .param p4, "startTimeMs"    # J
    .param p6, "durationMs"    # J
    .param p8, "startRect"    # Landroid/graphics/Rect;
    .param p9, "endRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1027
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1028
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0xc9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1029
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1030
    const-string v1, "r_item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1031
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1032
    const-string v1, "s_time"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1033
    const-string v1, "duration"

    invoke-virtual {v0, v1, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1034
    const-string v1, "start_rect"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1035
    const-string v1, "end_rect"

    invoke-virtual {v0, v1, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1037
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 1038
    return-void
.end method

.method public static addMediaItemImageUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IJLjava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "mediaItemId"    # Ljava/lang/String;
    .param p3, "afterMediaItemId"    # Ljava/lang/String;
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "renderingMode"    # I
    .param p6, "durationMs"    # J
    .param p8, "themeId"    # Ljava/lang/String;

    .prologue
    .line 560
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 561
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 562
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 563
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 564
    const-string v1, "r_item_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 565
    const-string v1, "filename"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 566
    const-string v1, "rm"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 567
    const-string v1, "duration"

    invoke-virtual {v0, v1, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 568
    const-string v1, "theme"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 571
    return-void
.end method

.method public static addMediaItemVideoUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ILjava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "mediaItemId"    # Ljava/lang/String;
    .param p3, "afterMediaItemId"    # Ljava/lang/String;
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "renderingMode"    # I
    .param p6, "themeId"    # Ljava/lang/String;

    .prologue
    .line 533
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 534
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 535
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 536
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 537
    const-string v1, "r_item_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 538
    const-string v1, "filename"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 539
    const-string v1, "rm"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 540
    const-string v1, "theme"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 542
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 543
    return-void
.end method

.method public static addOverlay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;JJ)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "mediaItemId"    # Ljava/lang/String;
    .param p3, "overlayId"    # Ljava/lang/String;
    .param p4, "userAttributes"    # Landroid/os/Bundle;
    .param p5, "startTimeMs"    # J
    .param p7, "durationMs"    # J

    .prologue
    .line 1071
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1072
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1073
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1074
    const-string v1, "r_item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1075
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1076
    const-string v1, "s_time"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1077
    const-string v1, "duration"

    invoke-virtual {v0, v1, p7, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1078
    const-string v1, "attributes"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1080
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 1081
    return-void
.end method

.method public static applyTheme(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "theme"    # Ljava/lang/String;

    .prologue
    .line 430
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 431
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 432
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 433
    const-string v1, "theme"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 436
    return-void
.end method

.method private applyThemeAfterMove(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Landroid/media/videoeditor/MediaItem;ILandroid/media/videoeditor/Transition;Landroid/media/videoeditor/Transition;)V
    .locals 9
    .param p1, "videoEditor"    # Landroid/media/videoeditor/VideoEditor;
    .param p2, "themeId"    # Ljava/lang/String;
    .param p3, "movedMediaItem"    # Landroid/media/videoeditor/MediaItem;
    .param p4, "originalItemPosition"    # I
    .param p5, "beginTransition"    # Landroid/media/videoeditor/Transition;
    .param p6, "endTransition"    # Landroid/media/videoeditor/Transition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 4606
    invoke-interface {p1}, Landroid/media/videoeditor/VideoEditor;->getAllMediaItems()Ljava/util/List;

    move-result-object v2

    .line 4607
    .local v2, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/MediaItem;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 4608
    .local v1, "mediaItemCount":I
    if-nez v1, :cond_0

    .line 4648
    :goto_0
    return-void

    .line 4612
    :cond_0
    invoke-virtual {p0}, Lcom/android/videoeditor/service/ApiService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 4613
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0, p2}, Lcom/android/videoeditor/service/MovieTheme;->getTheme(Landroid/content/Context;Ljava/lang/String;)Lcom/android/videoeditor/service/MovieTheme;

    move-result-object v4

    .line 4615
    .local v4, "theme":Lcom/android/videoeditor/service/MovieTheme;
    if-nez p4, :cond_2

    .line 4616
    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieTheme;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v6

    if-eqz v6, :cond_1

    if-eqz p5, :cond_1

    .line 4617
    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieTheme;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v7

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/videoeditor/MediaItem;

    invoke-virtual {v7, v0, v8, v6}, Lcom/android/videoeditor/service/MovieTransition;->buildTransition(Landroid/content/Context;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;)Landroid/media/videoeditor/Transition;

    move-result-object v5

    .line 4619
    .local v5, "transition":Landroid/media/videoeditor/Transition;
    invoke-interface {p1, v5}, Landroid/media/videoeditor/VideoEditor;->addTransition(Landroid/media/videoeditor/Transition;)V

    .line 4647
    .end local v5    # "transition":Landroid/media/videoeditor/Transition;
    :cond_1
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/videoeditor/service/ApiService;->applyThemeToMediaItem(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Landroid/media/videoeditor/MediaItem;)V

    goto :goto_0

    .line 4621
    :cond_2
    add-int/lit8 v6, v1, -0x1

    if-ne p4, v6, :cond_3

    .line 4622
    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieTheme;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v6

    if-eqz v6, :cond_1

    if-eqz p6, :cond_1

    .line 4623
    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieTheme;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v7

    add-int/lit8 v6, v1, -0x1

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/videoeditor/MediaItem;

    invoke-virtual {v7, v0, v6, v8}, Lcom/android/videoeditor/service/MovieTransition;->buildTransition(Landroid/content/Context;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;)Landroid/media/videoeditor/Transition;

    move-result-object v5

    .line 4625
    .restart local v5    # "transition":Landroid/media/videoeditor/Transition;
    invoke-interface {p1, v5}, Landroid/media/videoeditor/VideoEditor;->addTransition(Landroid/media/videoeditor/Transition;)V

    goto :goto_1

    .line 4628
    .end local v5    # "transition":Landroid/media/videoeditor/Transition;
    :cond_3
    invoke-interface {v2, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 4629
    .local v3, "newPosition":I
    if-le v3, p4, :cond_4

    .line 4630
    if-eqz p6, :cond_1

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieTheme;->getMidTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 4631
    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieTheme;->getMidTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v8

    add-int/lit8 v6, p4, -0x1

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/videoeditor/MediaItem;

    invoke-interface {v2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/videoeditor/MediaItem;

    invoke-virtual {v8, v0, v6, v7}, Lcom/android/videoeditor/service/MovieTransition;->buildTransition(Landroid/content/Context;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;)Landroid/media/videoeditor/Transition;

    move-result-object v5

    .line 4634
    .restart local v5    # "transition":Landroid/media/videoeditor/Transition;
    invoke-interface {p1, v5}, Landroid/media/videoeditor/VideoEditor;->addTransition(Landroid/media/videoeditor/Transition;)V

    goto :goto_1

    .line 4637
    .end local v5    # "transition":Landroid/media/videoeditor/Transition;
    :cond_4
    if-eqz p5, :cond_1

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieTheme;->getMidTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 4638
    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieTheme;->getMidTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v8

    invoke-interface {v2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/videoeditor/MediaItem;

    add-int/lit8 v7, p4, 0x1

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/videoeditor/MediaItem;

    invoke-virtual {v8, v0, v6, v7}, Lcom/android/videoeditor/service/MovieTransition;->buildTransition(Landroid/content/Context;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;)Landroid/media/videoeditor/Transition;

    move-result-object v5

    .line 4641
    .restart local v5    # "transition":Landroid/media/videoeditor/Transition;
    invoke-interface {p1, v5}, Landroid/media/videoeditor/VideoEditor;->addTransition(Landroid/media/videoeditor/Transition;)V

    goto :goto_1
.end method

.method private applyThemeAfterRemove(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;ILandroid/media/videoeditor/Transition;Landroid/media/videoeditor/Transition;)Landroid/media/videoeditor/Transition;
    .locals 8
    .param p1, "videoEditor"    # Landroid/media/videoeditor/VideoEditor;
    .param p2, "themeId"    # Ljava/lang/String;
    .param p3, "removedItemPosition"    # I
    .param p4, "beginTransition"    # Landroid/media/videoeditor/Transition;
    .param p5, "endTransition"    # Landroid/media/videoeditor/Transition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 4558
    invoke-interface {p1}, Landroid/media/videoeditor/VideoEditor;->getAllMediaItems()Ljava/util/List;

    move-result-object v2

    .line 4559
    .local v2, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/MediaItem;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 4560
    .local v1, "mediaItemCount":I
    if-nez v1, :cond_1

    move-object v4, v6

    .line 4590
    :cond_0
    :goto_0
    return-object v4

    .line 4564
    :cond_1
    invoke-virtual {p0}, Lcom/android/videoeditor/service/ApiService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 4565
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0, p2}, Lcom/android/videoeditor/service/MovieTheme;->getTheme(Landroid/content/Context;Ljava/lang/String;)Lcom/android/videoeditor/service/MovieTheme;

    move-result-object v3

    .line 4567
    .local v3, "theme":Lcom/android/videoeditor/service/MovieTheme;
    const/4 v4, 0x0

    .line 4568
    .local v4, "transition":Landroid/media/videoeditor/Transition;
    if-nez p3, :cond_2

    .line 4569
    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieTheme;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v5

    if-eqz v5, :cond_0

    if-eqz p4, :cond_0

    .line 4570
    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieTheme;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v7

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/videoeditor/MediaItem;

    invoke-virtual {v7, v0, v6, v5}, Lcom/android/videoeditor/service/MovieTransition;->buildTransition(Landroid/content/Context;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;)Landroid/media/videoeditor/Transition;

    move-result-object v4

    .line 4572
    invoke-interface {p1, v4}, Landroid/media/videoeditor/VideoEditor;->addTransition(Landroid/media/videoeditor/Transition;)V

    goto :goto_0

    .line 4574
    :cond_2
    if-ne p3, v1, :cond_3

    .line 4575
    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieTheme;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v5

    if-eqz v5, :cond_0

    if-eqz p5, :cond_0

    .line 4576
    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieTheme;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v7

    add-int/lit8 v5, v1, -0x1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/videoeditor/MediaItem;

    invoke-virtual {v7, v0, v5, v6}, Lcom/android/videoeditor/service/MovieTransition;->buildTransition(Landroid/content/Context;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;)Landroid/media/videoeditor/Transition;

    move-result-object v4

    .line 4578
    invoke-interface {p1, v4}, Landroid/media/videoeditor/VideoEditor;->addTransition(Landroid/media/videoeditor/Transition;)V

    goto :goto_0

    .line 4581
    :cond_3
    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieTheme;->getMidTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v5

    if-eqz v5, :cond_0

    if-eqz p4, :cond_0

    .line 4582
    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieTheme;->getMidTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v7

    add-int/lit8 v5, p3, -0x1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/videoeditor/MediaItem;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/videoeditor/MediaItem;

    invoke-virtual {v7, v0, v5, v6}, Lcom/android/videoeditor/service/MovieTransition;->buildTransition(Landroid/content/Context;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;)Landroid/media/videoeditor/Transition;

    move-result-object v4

    .line 4586
    invoke-interface {p1, v4}, Landroid/media/videoeditor/VideoEditor;->addTransition(Landroid/media/videoeditor/Transition;)V

    goto :goto_0
.end method

.method private applyThemeToMediaItem(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Landroid/media/videoeditor/MediaItem;)V
    .locals 36
    .param p1, "videoEditor"    # Landroid/media/videoeditor/VideoEditor;
    .param p2, "themeId"    # Ljava/lang/String;
    .param p3, "mediaItem"    # Landroid/media/videoeditor/MediaItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4440
    invoke-interface/range {p1 .. p1}, Landroid/media/videoeditor/VideoEditor;->getAllMediaItems()Ljava/util/List;

    move-result-object v27

    .line 4441
    .local v27, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/MediaItem;>;"
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v28

    .line 4442
    .local v28, "mediaItemsCount":I
    if-nez v28, :cond_1

    .line 4542
    :cond_0
    :goto_0
    return-void

    .line 4447
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v19

    .line 4448
    .local v19, "beginTransition":Landroid/media/videoeditor/Transition;
    invoke-virtual/range {p3 .. p3}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v22

    .line 4450
    .local v22, "endTransition":Landroid/media/videoeditor/Transition;
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/service/ApiService;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    .line 4451
    .local v20, "context":Landroid/content/Context;
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/videoeditor/service/MovieTheme;->getTheme(Landroid/content/Context;Ljava/lang/String;)Lcom/android/videoeditor/service/MovieTheme;

    move-result-object v34

    .line 4453
    .local v34, "theme":Lcom/android/videoeditor/service/MovieTheme;
    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/media/videoeditor/MediaItem;

    .line 4454
    .local v23, "firstMediaItem":Landroid/media/videoeditor/MediaItem;
    if-nez v19, :cond_2

    .line 4456
    invoke-virtual/range {v34 .. v34}, Lcom/android/videoeditor/service/MovieTheme;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v18

    .line 4457
    .local v18, "beginMovieTransition":Lcom/android/videoeditor/service/MovieTransition;
    if-eqz v18, :cond_2

    .line 4458
    move-object/from16 v0, v23

    move-object/from16 v1, p3

    if-ne v0, v1, :cond_2

    .line 4459
    const/4 v3, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/videoeditor/service/MovieTransition;->buildTransition(Landroid/content/Context;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;)Landroid/media/videoeditor/Transition;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/media/videoeditor/VideoEditor;->addTransition(Landroid/media/videoeditor/Transition;)V

    .line 4466
    .end local v18    # "beginMovieTransition":Lcom/android/videoeditor/service/MovieTransition;
    :cond_2
    invoke-virtual/range {v34 .. v34}, Lcom/android/videoeditor/service/MovieTheme;->getMidTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v30

    .line 4467
    .local v30, "midMovieTransition":Lcom/android/videoeditor/service/MovieTransition;
    if-eqz v30, :cond_4

    .line 4468
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_1
    move/from16 v0, v24

    move/from16 v1, v28

    if-ge v0, v1, :cond_4

    .line 4469
    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/media/videoeditor/MediaItem;

    .line 4470
    .local v29, "mi":Landroid/media/videoeditor/MediaItem;
    move-object/from16 v0, v29

    move-object/from16 v1, p3

    if-ne v0, v1, :cond_7

    .line 4471
    if-lez v24, :cond_3

    .line 4472
    if-nez v19, :cond_3

    .line 4474
    add-int/lit8 v3, v24, -0x1

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/videoeditor/MediaItem;

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/videoeditor/service/MovieTransition;->buildTransition(Landroid/content/Context;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;)Landroid/media/videoeditor/Transition;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/media/videoeditor/VideoEditor;->addTransition(Landroid/media/videoeditor/Transition;)V

    .line 4479
    :cond_3
    add-int/lit8 v3, v28, -0x1

    move/from16 v0, v24

    if-ge v0, v3, :cond_4

    .line 4480
    if-nez v22, :cond_4

    .line 4482
    add-int/lit8 v3, v24, 0x1

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/videoeditor/MediaItem;

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/videoeditor/service/MovieTransition;->buildTransition(Landroid/content/Context;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;)Landroid/media/videoeditor/Transition;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/media/videoeditor/VideoEditor;->addTransition(Landroid/media/videoeditor/Transition;)V

    .line 4491
    .end local v24    # "i":I
    .end local v29    # "mi":Landroid/media/videoeditor/MediaItem;
    :cond_4
    if-nez v22, :cond_5

    .line 4493
    invoke-virtual/range {v34 .. v34}, Lcom/android/videoeditor/service/MovieTheme;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v21

    .line 4494
    .local v21, "endMovieTransition":Lcom/android/videoeditor/service/MovieTransition;
    add-int/lit8 v3, v28, -0x1

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/media/videoeditor/MediaItem;

    .line 4495
    .local v26, "lastMediaItem":Landroid/media/videoeditor/MediaItem;
    if-eqz v21, :cond_5

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    if-ne v0, v1, :cond_5

    .line 4496
    const/4 v3, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/videoeditor/service/MovieTransition;->buildTransition(Landroid/content/Context;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;)Landroid/media/videoeditor/Transition;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/media/videoeditor/VideoEditor;->addTransition(Landroid/media/videoeditor/Transition;)V

    .line 4502
    .end local v21    # "endMovieTransition":Lcom/android/videoeditor/service/MovieTransition;
    .end local v26    # "lastMediaItem":Landroid/media/videoeditor/MediaItem;
    :cond_5
    invoke-virtual/range {v34 .. v34}, Lcom/android/videoeditor/service/MovieTheme;->getOverlay()Lcom/android/videoeditor/service/MovieOverlay;

    move-result-object v31

    .line 4503
    .local v31, "movieOverlay":Lcom/android/videoeditor/service/MovieOverlay;
    if-eqz v31, :cond_0

    .line 4504
    move-object/from16 v0, v23

    move-object/from16 v1, p3

    if-ne v0, v1, :cond_0

    .line 4506
    invoke-virtual/range {p3 .. p3}, Landroid/media/videoeditor/MediaItem;->getAllOverlays()Ljava/util/List;

    move-result-object v33

    .line 4507
    .local v33, "overlays":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 4508
    const/4 v3, 0x0

    move-object/from16 v0, v33

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/videoeditor/Overlay;

    invoke-virtual {v3}, Landroid/media/videoeditor/Overlay;->getId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/media/videoeditor/MediaItem;->removeOverlay(Ljava/lang/String;)Landroid/media/videoeditor/Overlay;

    .line 4513
    :cond_6
    move-object/from16 v0, p3

    instance-of v3, v0, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v3, :cond_8

    move-object/from16 v3, p3

    .line 4514
    check-cast v3, Landroid/media/videoeditor/MediaVideoItem;

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaVideoItem;->getWidth()I

    move-result v8

    .local v8, "scaledWidth":I
    move-object/from16 v3, p3

    .line 4515
    check-cast v3, Landroid/media/videoeditor/MediaVideoItem;

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaVideoItem;->getHeight()I

    move-result v9

    .line 4521
    .local v9, "scaledHeight":I
    :goto_2
    new-instance v10, Landroid/media/videoeditor/OverlayFrame;

    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->generateId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/service/ApiService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual/range {v31 .. v31}, Lcom/android/videoeditor/service/MovieOverlay;->getType()I

    move-result v5

    invoke-virtual/range {v31 .. v31}, Lcom/android/videoeditor/service/MovieOverlay;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v31 .. v31}, Lcom/android/videoeditor/service/MovieOverlay;->getSubtitle()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v3 .. v9}, Lcom/android/videoeditor/util/ImageUtils;->buildOverlayBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;ILjava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual/range {v31 .. v31}, Lcom/android/videoeditor/service/MovieOverlay;->getStartTime()J

    move-result-wide v14

    invoke-virtual/range {v31 .. v31}, Lcom/android/videoeditor/service/MovieOverlay;->getDuration()J

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, Landroid/media/videoeditor/MediaItem;->getDuration()J

    move-result-wide v5

    invoke-virtual/range {v31 .. v31}, Lcom/android/videoeditor/service/MovieOverlay;->getStartTime()J

    move-result-wide v16

    sub-long v5, v5, v16

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v16

    move-object/from16 v11, p3

    invoke-direct/range {v10 .. v17}, Landroid/media/videoeditor/OverlayFrame;-><init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;Landroid/graphics/Bitmap;JJ)V

    .line 4530
    .local v10, "overlay":Landroid/media/videoeditor/Overlay;
    invoke-virtual/range {v31 .. v31}, Lcom/android/videoeditor/service/MovieOverlay;->buildUserAttributes()Landroid/os/Bundle;

    move-result-object v35

    .line 4531
    .local v35, "userAttributes":Landroid/os/Bundle;
    invoke-virtual/range {v35 .. v35}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    .line 4532
    .local v32, "name":Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Lcom/android/videoeditor/service/MovieOverlay;->getAttributeType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 4533
    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v10, v0, v3}, Landroid/media/videoeditor/Overlay;->setUserAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 4468
    .end local v8    # "scaledWidth":I
    .end local v9    # "scaledHeight":I
    .end local v10    # "overlay":Landroid/media/videoeditor/Overlay;
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v31    # "movieOverlay":Lcom/android/videoeditor/service/MovieOverlay;
    .end local v32    # "name":Ljava/lang/String;
    .end local v33    # "overlays":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    .end local v35    # "userAttributes":Landroid/os/Bundle;
    .restart local v24    # "i":I
    .restart local v29    # "mi":Landroid/media/videoeditor/MediaItem;
    :cond_7
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_1

    .end local v24    # "i":I
    .end local v29    # "mi":Landroid/media/videoeditor/MediaItem;
    .restart local v31    # "movieOverlay":Lcom/android/videoeditor/service/MovieOverlay;
    .restart local v33    # "overlays":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    :cond_8
    move-object/from16 v3, p3

    .line 4517
    check-cast v3, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaImageItem;->getScaledWidth()I

    move-result v8

    .restart local v8    # "scaledWidth":I
    move-object/from16 v3, p3

    .line 4518
    check-cast v3, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v9

    .restart local v9    # "scaledHeight":I
    goto :goto_2

    .line 4536
    .restart local v10    # "overlay":Landroid/media/videoeditor/Overlay;
    .restart local v25    # "i$":Ljava/util/Iterator;
    .restart local v32    # "name":Ljava/lang/String;
    .restart local v35    # "userAttributes":Landroid/os/Bundle;
    :cond_9
    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v10, v0, v3}, Landroid/media/videoeditor/Overlay;->setUserAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 4539
    .end local v32    # "name":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/media/videoeditor/MediaItem;->addOverlay(Landroid/media/videoeditor/Overlay;)V

    goto/16 :goto_0
.end method

.method private applyThemeToMovie(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;)V
    .locals 39
    .param p1, "videoEditor"    # Landroid/media/videoeditor/VideoEditor;
    .param p2, "themeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4318
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/service/ApiService;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    .line 4319
    .local v23, "context":Landroid/content/Context;
    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/videoeditor/service/MovieTheme;->getTheme(Landroid/content/Context;Ljava/lang/String;)Lcom/android/videoeditor/service/MovieTheme;

    move-result-object v37

    .line 4320
    .local v37, "theme":Lcom/android/videoeditor/service/MovieTheme;
    invoke-interface/range {p1 .. p1}, Landroid/media/videoeditor/VideoEditor;->getAllMediaItems()Ljava/util/List;

    move-result-object v30

    .line 4323
    .local v30, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/MediaItem;>;"
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v31

    .line 4324
    .local v31, "mediaItemsCount":I
    if-lez v31, :cond_5

    .line 4326
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_0
    move/from16 v0, v27

    move/from16 v1, v31

    if-ge v0, v1, :cond_2

    .line 4327
    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/media/videoeditor/MediaItem;

    .line 4328
    .local v32, "mi":Landroid/media/videoeditor/MediaItem;
    if-nez v27, :cond_0

    .line 4329
    invoke-virtual/range {v32 .. v32}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v22

    .line 4330
    .local v22, "beginTransition":Landroid/media/videoeditor/Transition;
    if-eqz v22, :cond_0

    .line 4331
    invoke-virtual/range {v22 .. v22}, Landroid/media/videoeditor/Transition;->getId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/media/videoeditor/VideoEditor;->removeTransition(Ljava/lang/String;)Landroid/media/videoeditor/Transition;

    .line 4335
    .end local v22    # "beginTransition":Landroid/media/videoeditor/Transition;
    :cond_0
    invoke-virtual/range {v32 .. v32}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v25

    .line 4336
    .local v25, "endTransition":Landroid/media/videoeditor/Transition;
    if-eqz v25, :cond_1

    .line 4337
    invoke-virtual/range {v25 .. v25}, Landroid/media/videoeditor/Transition;->getId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/media/videoeditor/VideoEditor;->removeTransition(Ljava/lang/String;)Landroid/media/videoeditor/Transition;

    .line 4326
    :cond_1
    add-int/lit8 v27, v27, 0x1

    goto :goto_0

    .line 4342
    .end local v25    # "endTransition":Landroid/media/videoeditor/Transition;
    .end local v32    # "mi":Landroid/media/videoeditor/MediaItem;
    :cond_2
    invoke-virtual/range {v37 .. v37}, Lcom/android/videoeditor/service/MovieTheme;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v21

    .line 4343
    .local v21, "beginMovieTransition":Lcom/android/videoeditor/service/MovieTransition;
    if-eqz v21, :cond_3

    .line 4344
    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/media/videoeditor/MediaItem;

    .line 4345
    .local v26, "firstMediaItem":Landroid/media/videoeditor/MediaItem;
    const/4 v3, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/videoeditor/service/MovieTransition;->buildTransition(Landroid/content/Context;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;)Landroid/media/videoeditor/Transition;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/media/videoeditor/VideoEditor;->addTransition(Landroid/media/videoeditor/Transition;)V

    .line 4350
    .end local v26    # "firstMediaItem":Landroid/media/videoeditor/MediaItem;
    :cond_3
    invoke-virtual/range {v37 .. v37}, Lcom/android/videoeditor/service/MovieTheme;->getMidTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v33

    .line 4351
    .local v33, "midMovieTransition":Lcom/android/videoeditor/service/MovieTransition;
    if-eqz v33, :cond_4

    .line 4352
    const/16 v27, 0x0

    :goto_1
    add-int/lit8 v3, v31, -0x1

    move/from16 v0, v27

    if-ge v0, v3, :cond_4

    .line 4353
    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/videoeditor/MediaItem;

    add-int/lit8 v4, v27, 0x1

    move-object/from16 v0, v30

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/videoeditor/MediaItem;

    move-object/from16 v0, v33

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/videoeditor/service/MovieTransition;->buildTransition(Landroid/content/Context;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;)Landroid/media/videoeditor/Transition;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/media/videoeditor/VideoEditor;->addTransition(Landroid/media/videoeditor/Transition;)V

    .line 4352
    add-int/lit8 v27, v27, 0x1

    goto :goto_1

    .line 4360
    :cond_4
    invoke-virtual/range {v37 .. v37}, Lcom/android/videoeditor/service/MovieTheme;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v24

    .line 4361
    .local v24, "endMovieTransition":Lcom/android/videoeditor/service/MovieTransition;
    if-eqz v24, :cond_5

    .line 4362
    add-int/lit8 v3, v31, -0x1

    move-object/from16 v0, v30

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/media/videoeditor/MediaItem;

    .line 4363
    .local v29, "lastMediaItem":Landroid/media/videoeditor/MediaItem;
    const/4 v3, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/videoeditor/service/MovieTransition;->buildTransition(Landroid/content/Context;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;)Landroid/media/videoeditor/Transition;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/media/videoeditor/VideoEditor;->addTransition(Landroid/media/videoeditor/Transition;)V

    .line 4369
    .end local v21    # "beginMovieTransition":Lcom/android/videoeditor/service/MovieTransition;
    .end local v24    # "endMovieTransition":Lcom/android/videoeditor/service/MovieTransition;
    .end local v27    # "i":I
    .end local v29    # "lastMediaItem":Landroid/media/videoeditor/MediaItem;
    .end local v33    # "midMovieTransition":Lcom/android/videoeditor/service/MovieTransition;
    :cond_5
    invoke-virtual/range {v37 .. v37}, Lcom/android/videoeditor/service/MovieTheme;->getOverlay()Lcom/android/videoeditor/service/MovieOverlay;

    move-result-object v34

    .line 4370
    .local v34, "movieOverlay":Lcom/android/videoeditor/service/MovieOverlay;
    if-eqz v34, :cond_a

    if-lez v31, :cond_a

    .line 4372
    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/videoeditor/MediaItem;

    .line 4373
    .local v11, "mediaItem":Landroid/media/videoeditor/MediaItem;
    invoke-virtual {v11}, Landroid/media/videoeditor/MediaItem;->getAllOverlays()Ljava/util/List;

    move-result-object v36

    .line 4374
    .local v36, "overlays":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    invoke-interface/range {v36 .. v36}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 4375
    const/4 v3, 0x0

    move-object/from16 v0, v36

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/videoeditor/Overlay;

    invoke-virtual {v3}, Landroid/media/videoeditor/Overlay;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/media/videoeditor/MediaItem;->removeOverlay(Ljava/lang/String;)Landroid/media/videoeditor/Overlay;

    .line 4380
    :cond_6
    instance-of v3, v11, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v3, :cond_7

    move-object v3, v11

    .line 4381
    check-cast v3, Landroid/media/videoeditor/MediaVideoItem;

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaVideoItem;->getWidth()I

    move-result v8

    .local v8, "scaledWidth":I
    move-object v3, v11

    .line 4382
    check-cast v3, Landroid/media/videoeditor/MediaVideoItem;

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaVideoItem;->getHeight()I

    move-result v9

    .line 4388
    .local v9, "scaledHeight":I
    :goto_2
    new-instance v10, Landroid/media/videoeditor/OverlayFrame;

    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->generateId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/service/ApiService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual/range {v34 .. v34}, Lcom/android/videoeditor/service/MovieOverlay;->getType()I

    move-result v5

    invoke-virtual/range {v34 .. v34}, Lcom/android/videoeditor/service/MovieOverlay;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v34 .. v34}, Lcom/android/videoeditor/service/MovieOverlay;->getSubtitle()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v3 .. v9}, Lcom/android/videoeditor/util/ImageUtils;->buildOverlayBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;ILjava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual/range {v34 .. v34}, Lcom/android/videoeditor/service/MovieOverlay;->getStartTime()J

    move-result-wide v14

    invoke-virtual/range {v34 .. v34}, Lcom/android/videoeditor/service/MovieOverlay;->getDuration()J

    move-result-wide v16

    invoke-direct/range {v10 .. v17}, Landroid/media/videoeditor/OverlayFrame;-><init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;Landroid/graphics/Bitmap;JJ)V

    .line 4395
    .local v10, "overlay":Landroid/media/videoeditor/Overlay;
    invoke-virtual/range {v34 .. v34}, Lcom/android/videoeditor/service/MovieOverlay;->buildUserAttributes()Landroid/os/Bundle;

    move-result-object v38

    .line 4396
    .local v38, "userAttributes":Landroid/os/Bundle;
    invoke-virtual/range {v38 .. v38}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    .line 4397
    .local v35, "name":Ljava/lang/String;
    invoke-static/range {v35 .. v35}, Lcom/android/videoeditor/service/MovieOverlay;->getAttributeType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 4398
    move-object/from16 v0, v38

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v10, v0, v3}, Landroid/media/videoeditor/Overlay;->setUserAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .end local v8    # "scaledWidth":I
    .end local v9    # "scaledHeight":I
    .end local v10    # "overlay":Landroid/media/videoeditor/Overlay;
    .end local v28    # "i$":Ljava/util/Iterator;
    .end local v35    # "name":Ljava/lang/String;
    .end local v38    # "userAttributes":Landroid/os/Bundle;
    :cond_7
    move-object v3, v11

    .line 4384
    check-cast v3, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaImageItem;->getScaledWidth()I

    move-result v8

    .restart local v8    # "scaledWidth":I
    move-object v3, v11

    .line 4385
    check-cast v3, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v9

    .restart local v9    # "scaledHeight":I
    goto :goto_2

    .line 4401
    .restart local v10    # "overlay":Landroid/media/videoeditor/Overlay;
    .restart local v28    # "i$":Ljava/util/Iterator;
    .restart local v35    # "name":Ljava/lang/String;
    .restart local v38    # "userAttributes":Landroid/os/Bundle;
    :cond_8
    move-object/from16 v0, v38

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v10, v0, v3}, Landroid/media/videoeditor/Overlay;->setUserAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 4404
    .end local v35    # "name":Ljava/lang/String;
    :cond_9
    invoke-virtual {v11, v10}, Landroid/media/videoeditor/MediaItem;->addOverlay(Landroid/media/videoeditor/Overlay;)V

    .line 4407
    .end local v8    # "scaledWidth":I
    .end local v9    # "scaledHeight":I
    .end local v10    # "overlay":Landroid/media/videoeditor/Overlay;
    .end local v11    # "mediaItem":Landroid/media/videoeditor/MediaItem;
    .end local v28    # "i$":Ljava/util/Iterator;
    .end local v36    # "overlays":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    .end local v38    # "userAttributes":Landroid/os/Bundle;
    :cond_a
    invoke-virtual/range {v37 .. v37}, Lcom/android/videoeditor/service/MovieTheme;->getAudioTrack()Lcom/android/videoeditor/service/MovieAudioTrack;

    move-result-object v18

    .line 4408
    .local v18, "at":Lcom/android/videoeditor/service/MovieAudioTrack;
    if-eqz v18, :cond_d

    .line 4410
    invoke-interface/range {p1 .. p1}, Landroid/media/videoeditor/VideoEditor;->getAllAudioTracks()Ljava/util/List;

    move-result-object v20

    .line 4411
    .local v20, "audioTracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/AudioTrack;>;"
    :goto_4
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_b

    .line 4412
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/media/videoeditor/VideoEditor;->removeAudioTrack(Ljava/lang/String;)Landroid/media/videoeditor/AudioTrack;

    goto :goto_4

    .line 4416
    :cond_b
    new-instance v19, Landroid/media/videoeditor/AudioTrack;

    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->generateId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Lcom/android/videoeditor/service/MovieAudioTrack;->getRawResourceId()I

    move-result v4

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/android/videoeditor/util/FileUtils;->getAudioTrackFilename(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Landroid/media/videoeditor/AudioTrack;-><init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;)V

    .line 4420
    .local v19, "audioTrack":Landroid/media/videoeditor/AudioTrack;
    invoke-virtual/range {v18 .. v18}, Lcom/android/videoeditor/service/MovieAudioTrack;->isLooping()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 4421
    invoke-virtual/range {v19 .. v19}, Landroid/media/videoeditor/AudioTrack;->enableLoop()V

    .line 4425
    :cond_c
    const/16 v3, 0x14

    const/16 v4, 0x41

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/media/videoeditor/AudioTrack;->enableDucking(II)V

    .line 4426
    const/16 v3, 0x32

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/media/videoeditor/AudioTrack;->setVolume(I)V

    .line 4427
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/media/videoeditor/VideoEditor;->addAudioTrack(Landroid/media/videoeditor/AudioTrack;)V

    .line 4429
    .end local v19    # "audioTrack":Landroid/media/videoeditor/AudioTrack;
    .end local v20    # "audioTracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/AudioTrack;>;"
    :cond_d
    return-void
.end method

.method public static cancelExportVideoEditor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 397
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/videoeditor/service/ApiService;->mExportCancelled:Z

    .line 398
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 399
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "op"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 400
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    const-string v1, "filename"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 404
    return-void
.end method

.method private completeRequest(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2903
    iget-object v0, p0, Lcom/android/videoeditor/service/ApiService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/videoeditor/service/ApiService$6;

    invoke-direct {v1, p0, p1}, Lcom/android/videoeditor/service/ApiService$6;-><init>(Lcom/android/videoeditor/service/ApiService;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2910
    return-void
.end method

.method private completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "videoEditor"    # Landroid/media/videoeditor/VideoEditor;
    .param p3, "exception"    # Ljava/lang/Exception;
    .param p4, "result"    # Ljava/lang/Object;
    .param p5, "extraResult"    # Ljava/lang/Object;
    .param p6, "finalize"    # Z

    .prologue
    .line 2889
    iget-object v8, p0, Lcom/android/videoeditor/service/ApiService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/videoeditor/service/ApiService$5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p3

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/videoeditor/service/ApiService$5;-><init>(Lcom/android/videoeditor/service/ApiService;Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;Z)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2895
    return-void
.end method

.method private copyAudioTracks(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/AudioTrack;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/videoeditor/service/MovieAudioTrack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4687
    .local p1, "audioTracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/AudioTrack;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 4689
    .local v2, "movieAudioTracks":Ljava/util/List;, "Ljava/util/List<Lcom/android/videoeditor/service/MovieAudioTrack;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/videoeditor/AudioTrack;

    .line 4690
    .local v0, "audioTrack":Landroid/media/videoeditor/AudioTrack;
    new-instance v3, Lcom/android/videoeditor/service/MovieAudioTrack;

    invoke-direct {v3, v0}, Lcom/android/videoeditor/service/MovieAudioTrack;-><init>(Landroid/media/videoeditor/AudioTrack;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4692
    .end local v0    # "audioTrack":Landroid/media/videoeditor/AudioTrack;
    :cond_0
    return-object v2
.end method

.method private copyMediaItems(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/MediaItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/videoeditor/service/MovieMediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4658
    .local p1, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/MediaItem;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 4660
    .local v3, "movieMediaItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/videoeditor/service/MovieMediaItem;>;"
    const/4 v4, 0x0

    .line 4661
    .local v4, "prevMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/videoeditor/MediaItem;

    .line 4663
    .local v1, "mediaItem":Landroid/media/videoeditor/MediaItem;
    if-eqz v4, :cond_0

    .line 4664
    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v5

    .line 4671
    .local v5, "prevTransition":Lcom/android/videoeditor/service/MovieTransition;
    :goto_1
    new-instance v2, Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-direct {v2, v1, v5}, Lcom/android/videoeditor/service/MovieMediaItem;-><init>(Landroid/media/videoeditor/MediaItem;Lcom/android/videoeditor/service/MovieTransition;)V

    .line 4672
    .local v2, "movieMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4673
    move-object v4, v2

    .line 4674
    goto :goto_0

    .line 4665
    .end local v2    # "movieMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v5    # "prevTransition":Lcom/android/videoeditor/service/MovieTransition;
    :cond_0
    invoke-virtual {v1}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 4666
    new-instance v5, Lcom/android/videoeditor/service/MovieTransition;

    invoke-virtual {v1}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/videoeditor/service/MovieTransition;-><init>(Landroid/media/videoeditor/Transition;)V

    .restart local v5    # "prevTransition":Lcom/android/videoeditor/service/MovieTransition;
    goto :goto_1

    .line 4668
    .end local v5    # "prevTransition":Lcom/android/videoeditor/service/MovieTransition;
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "prevTransition":Lcom/android/videoeditor/service/MovieTransition;
    goto :goto_1

    .line 4676
    .end local v1    # "mediaItem":Landroid/media/videoeditor/MediaItem;
    .end local v5    # "prevTransition":Lcom/android/videoeditor/service/MovieTransition;
    :cond_2
    return-object v3
.end method

.method public static createVideoEditor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "projectName"    # Ljava/lang/String;
    .param p3, "movies"    # [Ljava/lang/String;
    .param p4, "photos"    # [Ljava/lang/String;
    .param p5, "themeType"    # Ljava/lang/String;

    .prologue
    .line 317
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 318
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "op"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 319
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    const-string v1, "movies"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    const-string v1, "images"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    const-string v1, "theme"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 326
    return-void
.end method

.method public static deleteProject(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "projectPath"    # Ljava/lang/String;

    .prologue
    .line 512
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 513
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 514
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 516
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 517
    return-void
.end method

.method private exportMovie(Landroid/media/videoeditor/VideoEditor;Landroid/content/Intent;)V
    .locals 1
    .param p1, "videoEditor"    # Landroid/media/videoeditor/VideoEditor;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4150
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/videoeditor/service/ApiService;->mExportCancelled:Z

    .line 4151
    new-instance v0, Lcom/android/videoeditor/service/ApiService$7;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/videoeditor/service/ApiService$7;-><init>(Lcom/android/videoeditor/service/ApiService;Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;)V

    invoke-virtual {v0}, Lcom/android/videoeditor/service/ApiService$7;->start()V

    .line 4206
    return-void
.end method

.method private exportToGallery(Ljava/lang/String;)Landroid/net/Uri;
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 4299
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 4300
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "mime_type"

    const-string v3, "video/mp4"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4301
    const-string v2, "_data"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4303
    invoke-virtual {p0}, Lcom/android/videoeditor/service/ApiService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 4305
    .local v0, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/android/videoeditor/service/ApiService;->sendBroadcast(Landroid/content/Intent;)V

    .line 4307
    return-object v0
.end method

.method public static exportVideoEditor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "height"    # I
    .param p4, "bitrate"    # I

    .prologue
    .line 353
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 354
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "op"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 355
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    const-string v1, "filename"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    const-string v1, "height"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 358
    const-string v1, "bitrate"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 360
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 361
    return-void
.end method

.method public static extractAudioTrackAudioWaveform(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "audioTrackId"    # Ljava/lang/String;

    .prologue
    .line 1308
    invoke-static {p1, p2}, Lcom/android/videoeditor/service/ApiService;->isAudioTrackAudioWaveformPending(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1317
    :goto_0
    return-void

    .line 1311
    :cond_0
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1312
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x1fc

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1313
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1314
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1316
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    goto :goto_0
.end method

.method private extractAudioTrackAudioWaveform(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Landroid/media/videoeditor/AudioTrack;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "videoEditor"    # Landroid/media/videoeditor/VideoEditor;
    .param p3, "audioTrack"    # Landroid/media/videoeditor/AudioTrack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4243
    new-instance v0, Lcom/android/videoeditor/service/ApiService$9;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/android/videoeditor/service/ApiService$9;-><init>(Lcom/android/videoeditor/service/ApiService;Landroid/content/Intent;Landroid/media/videoeditor/AudioTrack;Landroid/media/videoeditor/VideoEditor;)V

    invoke-virtual {p3, v0}, Landroid/media/videoeditor/AudioTrack;->extractAudioWaveform(Landroid/media/videoeditor/ExtractAudioWaveformProgressListener;)V

    .line 4259
    return-void
.end method

.method public static extractMediaItemAudioWaveform(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "mediaItemId"    # Ljava/lang/String;

    .prologue
    .line 767
    invoke-static {p1, p2}, Lcom/android/videoeditor/service/ApiService;->isMediaItemAudioWaveformPending(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 777
    :goto_0
    return-void

    .line 771
    :cond_0
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 772
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x6d

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 773
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 774
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 776
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    goto :goto_0
.end method

.method private extractMediaItemAudioWaveform(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Landroid/media/videoeditor/MediaVideoItem;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "videoEditor"    # Landroid/media/videoeditor/VideoEditor;
    .param p3, "mediaItem"    # Landroid/media/videoeditor/MediaVideoItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4217
    new-instance v0, Lcom/android/videoeditor/service/ApiService$8;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/android/videoeditor/service/ApiService$8;-><init>(Lcom/android/videoeditor/service/ApiService;Landroid/content/Intent;Landroid/media/videoeditor/MediaVideoItem;Landroid/media/videoeditor/VideoEditor;)V

    invoke-virtual {p3, v0}, Landroid/media/videoeditor/MediaVideoItem;->extractAudioWaveform(Landroid/media/videoeditor/ExtractAudioWaveformProgressListener;)V

    .line 4232
    return-void
.end method

.method private finalizeRequest(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4011
    sget-object v4, Lcom/android/videoeditor/service/ApiService;->mPendingIntents:Ljava/util/Map;

    const-string v5, "rid"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4013
    const-string v4, "project"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4014
    .local v3, "projectPath":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 4015
    invoke-static {v3}, Lcom/android/videoeditor/service/ApiService;->isProjectBeingEdited(Ljava/lang/String;)Z

    move-result v2

    .line 4016
    .local v2, "projectEdited":Z
    if-nez v2, :cond_0

    .line 4017
    sget-object v4, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/videoeditor/service/ApiServiceListener;

    .line 4018
    .local v1, "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    invoke-virtual {v1, v3, v2}, Lcom/android/videoeditor/service/ApiServiceListener;->onProjectEditState(Ljava/lang/String;Z)V

    goto :goto_0

    .line 4023
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    .end local v2    # "projectEdited":Z
    :cond_0
    sget-object v4, Lcom/android/videoeditor/service/ApiService;->mPendingIntents:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 4025
    iget-object v4, p0, Lcom/android/videoeditor/service/ApiService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/videoeditor/service/ApiService;->mStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4030
    iget-object v4, p0, Lcom/android/videoeditor/service/ApiService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/videoeditor/service/ApiService;->mStopRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4031
    const-string v4, "completeRequest: Stopping service in 5000 ms"

    invoke-static {v4}, Lcom/android/videoeditor/service/ApiService;->logd(Ljava/lang/String;)V

    .line 4033
    :cond_1
    return-void
.end method

.method public static generateId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/videoeditor/util/StringUtils;->randomString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V
    .locals 5
    .param p1, "videoEditor"    # Landroid/media/videoeditor/VideoEditor;
    .param p2, "updatePreviewFrame"    # Z

    .prologue
    .line 4131
    :try_start_0
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mGeneratePreviewListener:Lcom/android/videoeditor/service/ApiService$ServiceMediaProcessingProgressListener;

    invoke-interface {p1, v1}, Landroid/media/videoeditor/VideoEditor;->generatePreview(Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;)V

    .line 4132
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mGeneratePreviewListener:Lcom/android/videoeditor/service/ApiService$ServiceMediaProcessingProgressListener;

    if-eqz v1, :cond_0

    .line 4135
    sget-object v2, Lcom/android/videoeditor/service/ApiService;->mGeneratePreviewListener:Lcom/android/videoeditor/service/ApiService$ServiceMediaProcessingProgressListener;

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    const/16 v1, 0x66

    :goto_0
    const/16 v4, 0x64

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/videoeditor/service/ApiService$ServiceMediaProcessingProgressListener;->onProgress(Ljava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4141
    :cond_0
    :goto_1
    return-void

    .line 4135
    :cond_1
    const/16 v1, 0x67

    goto :goto_0

    .line 4138
    :catch_0
    move-exception v0

    .line 4139
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getMediaItemThumbnails(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIJJII[I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "mediaItemId"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "startMs"    # J
    .param p7, "endMs"    # J
    .param p9, "count"    # I
    .param p10, "token"    # I
    .param p11, "indices"    # [I

    .prologue
    .line 665
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 666
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x70

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 667
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 668
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 669
    const-string v1, "width"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 670
    const-string v1, "height"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 671
    const-string v1, "s_time"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 672
    const-string v1, "e_time"

    invoke-virtual {v0, v1, p7, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 673
    const-string v1, "count"

    invoke-virtual {v0, v1, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 674
    const-string v1, "token"

    invoke-virtual {v0, v1, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 675
    const-string v1, "indices"

    invoke-virtual {v0, v1, p11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 677
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 678
    return-void
.end method

.method private getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;
    .locals 1
    .param p1, "projectPath"    # Ljava/lang/String;

    .prologue
    .line 4043
    sget-object v0, Lcom/android/videoeditor/service/ApiService;->mVideoProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 4044
    sget-object v0, Lcom/android/videoeditor/service/ApiService;->mVideoProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4045
    sget-object v0, Lcom/android/videoeditor/service/ApiService;->mVideoProject:Lcom/android/videoeditor/service/VideoEditorProject;

    .line 4049
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getTransitionThumbnails(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "transitionId"    # Ljava/lang/String;
    .param p3, "height"    # I

    .prologue
    .line 951
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 952
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x132

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 953
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 954
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 955
    const-string v1, "height"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 957
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 958
    return-void
.end method

.method private declared-synchronized getVideoEditor(Ljava/lang/String;)Landroid/media/videoeditor/VideoEditor;
    .locals 1
    .param p1, "projectPath"    # Ljava/lang/String;

    .prologue
    .line 4060
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/videoeditor/service/ApiService;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    if-eqz v0, :cond_0

    .line 4061
    sget-object v0, Lcom/android/videoeditor/service/ApiService;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v0}, Landroid/media/videoeditor/VideoEditor;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4062
    sget-object v0, Lcom/android/videoeditor/service/ApiService;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4066
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 4060
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static insertAlphaTransition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIIZ)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "afterMediaItemId"    # Ljava/lang/String;
    .param p3, "transitionId"    # Ljava/lang/String;
    .param p4, "durationMs"    # J
    .param p6, "behavior"    # I
    .param p7, "maskRawResourceId"    # I
    .param p8, "blending"    # I
    .param p9, "invert"    # Z

    .prologue
    .line 820
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 821
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 822
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 823
    const-string v1, "r_item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 824
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 825
    const-string v1, "duration"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 826
    const-string v1, "behavior"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 827
    const-string v1, "t_mask"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 828
    const-string v1, "t_blending"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 829
    const-string v1, "t_invert"

    invoke-virtual {v0, v1, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 831
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 832
    return-void
.end method

.method public static insertCrossfadeTransition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "afterMediaItemId"    # Ljava/lang/String;
    .param p3, "transitionId"    # Ljava/lang/String;
    .param p4, "durationMs"    # J
    .param p6, "behavior"    # I

    .prologue
    .line 846
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 847
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x12d

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 848
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 849
    const-string v1, "r_item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 850
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 851
    const-string v1, "duration"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 852
    const-string v1, "behavior"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 854
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 855
    return-void
.end method

.method public static insertFadeBlackTransition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "afterMediaItemId"    # Ljava/lang/String;
    .param p3, "transitionId"    # Ljava/lang/String;
    .param p4, "durationMs"    # J
    .param p6, "behavior"    # I

    .prologue
    .line 869
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 870
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x12e

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 871
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 872
    const-string v1, "r_item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 873
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 874
    const-string v1, "duration"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 875
    const-string v1, "behavior"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 877
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 878
    return-void
.end method

.method public static insertSlidingTransition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "afterMediaItemId"    # Ljava/lang/String;
    .param p3, "transitionId"    # Ljava/lang/String;
    .param p4, "durationMs"    # J
    .param p6, "behavior"    # I
    .param p7, "direction"    # I

    .prologue
    .line 894
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 895
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x12f

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 896
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 897
    const-string v1, "r_item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 898
    const-string v1, "duration"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 899
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 900
    const-string v1, "behavior"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 901
    const-string v1, "t_dir"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 903
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 904
    return-void
.end method

.method public static isAudioTrackAudioWaveformPending(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "projectPath"    # Ljava/lang/String;
    .param p1, "audioTrackId"    # Ljava/lang/String;

    .prologue
    .line 1329
    sget-object v5, Lcom/android/videoeditor/service/ApiService;->mPendingIntents:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 1330
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "op"

    const/4 v6, -0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1331
    .local v3, "op":I
    const/16 v5, 0x1fc

    if-ne v3, v5, :cond_0

    .line 1332
    const-string v5, "project"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1333
    .local v4, "pp":Ljava/lang/String;
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1334
    const-string v5, "item_id"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1335
    .local v2, "mid":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1336
    const/4 v5, 0x1

    .line 1342
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "mid":Ljava/lang/String;
    .end local v3    # "op":I
    .end local v4    # "pp":Ljava/lang/String;
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static isMediaItemAudioWaveformPending(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "projectPath"    # Ljava/lang/String;
    .param p1, "mediaItemId"    # Ljava/lang/String;

    .prologue
    .line 788
    sget-object v5, Lcom/android/videoeditor/service/ApiService;->mPendingIntents:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 789
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "op"

    const/4 v6, -0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 790
    .local v3, "op":I
    const/16 v5, 0x6d

    if-ne v3, v5, :cond_0

    .line 791
    const-string v5, "project"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 792
    .local v4, "pp":Ljava/lang/String;
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 793
    const-string v5, "item_id"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 794
    .local v2, "mid":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 795
    const/4 v5, 0x1

    .line 801
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "mid":Ljava/lang/String;
    .end local v3    # "op":I
    .end local v4    # "pp":Ljava/lang/String;
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static isProjectBeingEdited(Ljava/lang/String;)Z
    .locals 6
    .param p0, "projectPath"    # Ljava/lang/String;

    .prologue
    .line 448
    sget-object v4, Lcom/android/videoeditor/service/ApiService;->mPendingIntents:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :sswitch_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 449
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "op"

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 450
    .local v2, "op":I
    sparse-switch v2, :sswitch_data_0

    .line 465
    const-string v4, "project"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 466
    .local v3, "pp":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 467
    const/4 v4, 0x1

    .line 474
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "op":I
    .end local v3    # "pp":Ljava/lang/String;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 450
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0xd -> :sswitch_0
        0x6b -> :sswitch_0
        0x6c -> :sswitch_0
        0x70 -> :sswitch_0
        0x71 -> :sswitch_0
        0x132 -> :sswitch_0
        0x1f6 -> :sswitch_0
        0x1f7 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isTransitionThumbnailsPending(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "projectPath"    # Ljava/lang/String;
    .param p1, "transitionId"    # Ljava/lang/String;

    .prologue
    .line 969
    sget-object v5, Lcom/android/videoeditor/service/ApiService;->mPendingIntents:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 970
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "op"

    const/4 v6, -0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 971
    .local v3, "op":I
    const/16 v5, 0x132

    if-ne v3, v5, :cond_0

    .line 972
    const-string v5, "project"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 973
    .local v4, "pp":Ljava/lang/String;
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 974
    const-string v5, "item_id"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 975
    .local v2, "mid":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 976
    const/4 v5, 0x1

    .line 982
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "mid":Ljava/lang/String;
    .end local v3    # "op":I
    .end local v4    # "pp":Ljava/lang/String;
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static isVideoEditorExportPending(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "projectPath"    # Ljava/lang/String;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 372
    sget-object v5, Lcom/android/videoeditor/service/ApiService;->mPendingIntents:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 373
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "op"

    const/4 v6, -0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 374
    .local v3, "op":I
    const/4 v5, 0x4

    if-ne v3, v5, :cond_0

    .line 375
    const-string v5, "project"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 376
    .local v4, "pp":Ljava/lang/String;
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 377
    const-string v5, "filename"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, "fn":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 379
    const/4 v5, 0x1

    .line 385
    .end local v0    # "fn":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "op":I
    .end local v4    # "pp":Ljava/lang/String;
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static loadMediaItem(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 583
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 584
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x71

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 585
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 586
    const-string v1, "filename"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 587
    const-string v1, "attributes"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 589
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 590
    return-void
.end method

.method public static loadProjects(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 297
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 298
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 300
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 301
    return-void
.end method

.method public static loadVideoEditor(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "projectPath"    # Ljava/lang/String;

    .prologue
    .line 335
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 336
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "op"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 337
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 340
    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 4696
    const-string v0, "VEApiService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4697
    const-string v0, "VEApiService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4699
    :cond_0
    return-void
.end method

.method private static logv(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 4702
    const-string v0, "VEApiService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4703
    const-string v0, "VEApiService"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4705
    :cond_0
    return-void
.end method

.method public static moveMediaItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "mediaItemId"    # Ljava/lang/String;
    .param p3, "afterMediaItemId"    # Ljava/lang/String;
    .param p4, "themeId"    # Ljava/lang/String;

    .prologue
    .line 603
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 604
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x66

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 605
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 606
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 607
    const-string v1, "r_item_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 608
    const-string v1, "theme"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 610
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 611
    return-void
.end method

.method private static nextMediaItem(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;
    .locals 5
    .param p0, "videoEditor"    # Landroid/media/videoeditor/VideoEditor;
    .param p1, "mediaItemId"    # Ljava/lang/String;

    .prologue
    .line 4269
    invoke-interface {p0}, Landroid/media/videoeditor/VideoEditor;->getAllMediaItems()Ljava/util/List;

    move-result-object v2

    .line 4270
    .local v2, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/MediaItem;>;"
    if-nez p1, :cond_0

    .line 4271
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 4272
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/videoeditor/MediaItem;

    .line 4288
    :goto_0
    return-object v4

    .line 4275
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 4276
    .local v1, "mediaItemCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 4277
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/videoeditor/MediaItem;

    .line 4278
    .local v3, "mi":Landroid/media/videoeditor/MediaItem;
    invoke-virtual {v3}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4279
    add-int/lit8 v4, v1, -0x1

    if-ge v0, v4, :cond_2

    .line 4280
    add-int/lit8 v4, v0, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/videoeditor/MediaItem;

    goto :goto_0

    .line 4276
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4288
    .end local v0    # "i":I
    .end local v1    # "mediaItemCount":I
    .end local v3    # "mi":Landroid/media/videoeditor/MediaItem;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static registerListener(Lcom/android/videoeditor/service/ApiServiceListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/android/videoeditor/service/ApiServiceListener;

    .prologue
    .line 279
    sget-object v0, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    return-void
.end method

.method private declared-synchronized releaseEditor()V
    .locals 2

    .prologue
    .line 4073
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/videoeditor/service/ApiService;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    if-eqz v0, :cond_0

    .line 4074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseEditor (current): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v1}, Landroid/media/videoeditor/VideoEditor;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/videoeditor/service/ApiService;->logd(Ljava/lang/String;)V

    .line 4075
    sget-object v0, Lcom/android/videoeditor/service/ApiService;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v0}, Landroid/media/videoeditor/VideoEditor;->release()V

    .line 4076
    const/4 v0, 0x0

    sput-object v0, Lcom/android/videoeditor/service/ApiService;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    .line 4077
    const/4 v0, 0x0

    sput-object v0, Lcom/android/videoeditor/service/ApiService;->mGeneratePreviewListener:Lcom/android/videoeditor/service/ApiService$ServiceMediaProcessingProgressListener;

    .line 4079
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4081
    :cond_0
    monitor-exit p0

    return-void

    .line 4073
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized releaseEditor(Ljava/lang/String;)V
    .locals 2
    .param p1, "projectPath"    # Ljava/lang/String;

    .prologue
    .line 4089
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/videoeditor/service/ApiService;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    if-eqz v0, :cond_0

    .line 4090
    sget-object v0, Lcom/android/videoeditor/service/ApiService;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v0}, Landroid/media/videoeditor/VideoEditor;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4091
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseEditor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/videoeditor/service/ApiService;->logd(Ljava/lang/String;)V

    .line 4092
    sget-object v0, Lcom/android/videoeditor/service/ApiService;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v0}, Landroid/media/videoeditor/VideoEditor;->release()V

    .line 4093
    const/4 v0, 0x0

    sput-object v0, Lcom/android/videoeditor/service/ApiService;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    .line 4094
    const/4 v0, 0x0

    sput-object v0, Lcom/android/videoeditor/service/ApiService;->mGeneratePreviewListener:Lcom/android/videoeditor/service/ApiService$ServiceMediaProcessingProgressListener;

    .line 4096
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4099
    :cond_0
    monitor-exit p0

    return-void

    .line 4089
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized releaseEditorNot(Ljava/lang/String;)Landroid/media/videoeditor/VideoEditor;
    .locals 2
    .param p1, "projectPath"    # Ljava/lang/String;

    .prologue
    .line 4109
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/videoeditor/service/ApiService;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    if-eqz v0, :cond_0

    .line 4110
    sget-object v0, Lcom/android/videoeditor/service/ApiService;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v0}, Landroid/media/videoeditor/VideoEditor;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseEditorNot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v1}, Landroid/media/videoeditor/VideoEditor;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/videoeditor/service/ApiService;->logd(Ljava/lang/String;)V

    .line 4112
    sget-object v0, Lcom/android/videoeditor/service/ApiService;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v0}, Landroid/media/videoeditor/VideoEditor;->release()V

    .line 4113
    const/4 v0, 0x0

    sput-object v0, Lcom/android/videoeditor/service/ApiService;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    .line 4114
    const/4 v0, 0x0

    sput-object v0, Lcom/android/videoeditor/service/ApiService;->mGeneratePreviewListener:Lcom/android/videoeditor/service/ApiService$ServiceMediaProcessingProgressListener;

    .line 4116
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 4120
    :cond_0
    sget-object v0, Lcom/android/videoeditor/service/ApiService;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 4109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static releaseVideoEditor(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "projectPath"    # Ljava/lang/String;

    .prologue
    .line 498
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 499
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 500
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 503
    return-void
.end method

.method public static removeAudioTrack(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "audioTrackId"    # Ljava/lang/String;

    .prologue
    .line 1194
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1195
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x1f5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1196
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1197
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1199
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 1200
    return-void
.end method

.method public static removeEffect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "mediaItemId"    # Ljava/lang/String;
    .param p3, "effectId"    # Ljava/lang/String;

    .prologue
    .line 1050
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1051
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0xca

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1052
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1053
    const-string v1, "r_item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1054
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1056
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 1057
    return-void
.end method

.method public static removeMediaItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "mediaItemId"    # Ljava/lang/String;
    .param p3, "themeId"    # Ljava/lang/String;

    .prologue
    .line 623
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 624
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x67

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 625
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 626
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 627
    const-string v1, "theme"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 629
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 630
    return-void
.end method

.method public static removeOverlay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "mediaItemId"    # Ljava/lang/String;
    .param p3, "overlayId"    # Ljava/lang/String;

    .prologue
    .line 1093
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1094
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x191

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1095
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1096
    const-string v1, "r_item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1097
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1099
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 1100
    return-void
.end method

.method public static removeTransition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "transitionId"    # Ljava/lang/String;

    .prologue
    .line 914
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 915
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x130

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 916
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 917
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 919
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 920
    return-void
.end method

.method public static saveVideoEditor(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "projectPath"    # Ljava/lang/String;

    .prologue
    .line 484
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 485
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "op"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 486
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 488
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 489
    return-void
.end method

.method public static setAspectRatio(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "aspectRatio"    # I

    .prologue
    .line 414
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 415
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 416
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    const-string v1, "aspect_ratio"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 419
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 420
    return-void
.end method

.method public static setAudioTrackBoundaries(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "audioTrackId"    # Ljava/lang/String;
    .param p3, "beginBoundaryMs"    # J
    .param p5, "endBoundaryMs"    # J

    .prologue
    .line 1213
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1214
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x1f9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1215
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1216
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1217
    const-string v1, "b_boundary"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1218
    const-string v1, "e_boundary"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1220
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 1221
    return-void
.end method

.method public static setAudioTrackDuck(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "audioTrackId"    # Ljava/lang/String;
    .param p3, "duck"    # Z

    .prologue
    .line 1252
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1253
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x1fb

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1254
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1255
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1256
    const-string v1, "duck"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1258
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 1259
    return-void
.end method

.method public static setAudioTrackLoop(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "audioTrackId"    # Ljava/lang/String;
    .param p3, "loop"    # Z

    .prologue
    .line 1233
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1234
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x1fa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1235
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1236
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1237
    const-string v1, "loop"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1239
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 1240
    return-void
.end method

.method public static setAudioTrackMute(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "audioTrackId"    # Ljava/lang/String;
    .param p3, "muted"    # Z

    .prologue
    .line 1290
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1291
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x1f7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1292
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1293
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1294
    const-string v1, "mute"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1296
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 1297
    return-void
.end method

.method public static setAudioTrackVolume(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "audioTrackId"    # Ljava/lang/String;
    .param p3, "volumePercentage"    # I

    .prologue
    .line 1271
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1272
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x1f6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1273
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1274
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1275
    const-string v1, "volume"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1277
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 1278
    return-void
.end method

.method public static setMediaItemBoundaries(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "mediaItemId"    # Ljava/lang/String;
    .param p3, "beginBoundaryMs"    # J
    .param p5, "endBoundaryMs"    # J

    .prologue
    .line 710
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 711
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x6a

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 712
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 713
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 714
    const-string v1, "b_boundary"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 715
    const-string v1, "e_boundary"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 717
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 718
    return-void
.end method

.method public static setMediaItemDuration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "mediaItemId"    # Ljava/lang/String;
    .param p3, "durationMs"    # J

    .prologue
    .line 690
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 691
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x69

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 692
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 693
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 694
    const-string v1, "duration"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 696
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 697
    return-void
.end method

.method public static setMediaItemMute(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "mediaItemId"    # Ljava/lang/String;
    .param p3, "muted"    # Z

    .prologue
    .line 749
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 750
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x6c

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 751
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 752
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 753
    const-string v1, "mute"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 755
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 756
    return-void
.end method

.method public static setMediaItemRenderingMode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "mediaItemId"    # Ljava/lang/String;
    .param p3, "renderingMode"    # I

    .prologue
    .line 641
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 642
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x68

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 643
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 644
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 645
    const-string v1, "rm"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 647
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 648
    return-void
.end method

.method public static setMediaItemVolume(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "mediaItemId"    # Ljava/lang/String;
    .param p3, "volumePercentage"    # I

    .prologue
    .line 730
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 731
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x6b

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 732
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 733
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 734
    const-string v1, "volume"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 736
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 737
    return-void
.end method

.method public static setOverlayDuration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "mediaItemId"    # Ljava/lang/String;
    .param p3, "overlayId"    # Ljava/lang/String;
    .param p4, "durationMs"    # J

    .prologue
    .line 1134
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1135
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x193

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1136
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1137
    const-string v1, "r_item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1138
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1139
    const-string v1, "duration"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1141
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 1142
    return-void
.end method

.method public static setOverlayStartTime(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "mediaItemId"    # Ljava/lang/String;
    .param p3, "overlayId"    # Ljava/lang/String;
    .param p4, "startTimeMs"    # J

    .prologue
    .line 1113
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1114
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x192

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1115
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1116
    const-string v1, "r_item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1117
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1118
    const-string v1, "s_time"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1120
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 1121
    return-void
.end method

.method public static setOverlayUserAttributes(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "mediaItemId"    # Ljava/lang/String;
    .param p3, "overlayId"    # Ljava/lang/String;
    .param p4, "userAttributes"    # Landroid/os/Bundle;

    .prologue
    .line 1155
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1156
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x194

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1157
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1158
    const-string v1, "r_item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1159
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1160
    const-string v1, "attributes"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1162
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 1163
    return-void
.end method

.method public static setTransitionDuration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "transitionId"    # Ljava/lang/String;
    .param p3, "durationMs"    # J

    .prologue
    .line 932
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 933
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x131

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 934
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 935
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 936
    const-string v1, "duration"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 938
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 939
    return-void
.end method

.method private static startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1354
    const/16 v5, 0x8

    invoke-static {v5}, Lcom/android/videoeditor/util/StringUtils;->randomString(I)Ljava/lang/String;

    move-result-object v4

    .line 1355
    .local v4, "requestId":Ljava/lang/String;
    const-string v5, "rid"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1356
    sget-object v5, Lcom/android/videoeditor/service/ApiService;->mPendingIntents:Ljava/util/Map;

    invoke-interface {v5, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1358
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1360
    const-string v5, "project"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1361
    .local v3, "projectPath":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1362
    invoke-static {v3}, Lcom/android/videoeditor/service/ApiService;->isProjectBeingEdited(Ljava/lang/String;)Z

    move-result v2

    .line 1363
    .local v2, "projectEdited":Z
    if-eqz v2, :cond_0

    .line 1364
    sget-object v5, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/videoeditor/service/ApiServiceListener;

    .line 1365
    .local v1, "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    invoke-virtual {v1, v3, v2}, Lcom/android/videoeditor/service/ApiServiceListener;->onProjectEditState(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1370
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    .end local v2    # "projectEdited":Z
    :cond_0
    return-object v4
.end method

.method public static unregisterListener(Lcom/android/videoeditor/service/ApiServiceListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/android/videoeditor/service/ApiServiceListener;

    .prologue
    .line 288
    sget-object v0, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 289
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1517
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 1375
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 1376
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/videoeditor/service/ApiService;->mHandler:Landroid/os/Handler;

    .line 1378
    new-instance v0, Lcom/android/videoeditor/service/ApiService$IntentProcessor;

    const-string v1, "VideoServiceThread"

    invoke-direct {v0, p0, v1}, Lcom/android/videoeditor/service/ApiService$IntentProcessor;-><init>(Lcom/android/videoeditor/service/ApiService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/videoeditor/service/ApiService;->mVideoThread:Lcom/android/videoeditor/service/ApiService$IntentProcessor;

    .line 1379
    iget-object v0, p0, Lcom/android/videoeditor/service/ApiService;->mVideoThread:Lcom/android/videoeditor/service/ApiService$IntentProcessor;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/ApiService$IntentProcessor;->start()V

    .line 1381
    new-instance v0, Lcom/android/videoeditor/service/ApiService$IntentProcessor;

    const-string v1, "AudioServiceThread"

    invoke-direct {v0, p0, v1}, Lcom/android/videoeditor/service/ApiService$IntentProcessor;-><init>(Lcom/android/videoeditor/service/ApiService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/videoeditor/service/ApiService;->mAudioThread:Lcom/android/videoeditor/service/ApiService$IntentProcessor;

    .line 1382
    iget-object v0, p0, Lcom/android/videoeditor/service/ApiService;->mAudioThread:Lcom/android/videoeditor/service/ApiService$IntentProcessor;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/ApiService$IntentProcessor;->start()V

    .line 1384
    new-instance v0, Lcom/android/videoeditor/service/ApiService$IntentProcessor;

    const-string v1, "ThumbnailServiceThread"

    invoke-direct {v0, p0, v1}, Lcom/android/videoeditor/service/ApiService$IntentProcessor;-><init>(Lcom/android/videoeditor/service/ApiService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/videoeditor/service/ApiService;->mThumbnailThread:Lcom/android/videoeditor/service/ApiService$IntentProcessor;

    .line 1385
    iget-object v0, p0, Lcom/android/videoeditor/service/ApiService;->mThumbnailThread:Lcom/android/videoeditor/service/ApiService$IntentProcessor;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/ApiService$IntentProcessor;->start()V

    .line 1386
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1497
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1499
    iget-object v0, p0, Lcom/android/videoeditor/service/ApiService;->mThumbnailThread:Lcom/android/videoeditor/service/ApiService$IntentProcessor;

    if-eqz v0, :cond_0

    .line 1500
    iget-object v0, p0, Lcom/android/videoeditor/service/ApiService;->mThumbnailThread:Lcom/android/videoeditor/service/ApiService$IntentProcessor;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/ApiService$IntentProcessor;->quit()V

    .line 1501
    iput-object v1, p0, Lcom/android/videoeditor/service/ApiService;->mThumbnailThread:Lcom/android/videoeditor/service/ApiService$IntentProcessor;

    .line 1504
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/service/ApiService;->mAudioThread:Lcom/android/videoeditor/service/ApiService$IntentProcessor;

    if-eqz v0, :cond_1

    .line 1505
    iget-object v0, p0, Lcom/android/videoeditor/service/ApiService;->mAudioThread:Lcom/android/videoeditor/service/ApiService$IntentProcessor;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/ApiService$IntentProcessor;->quit()V

    .line 1506
    iput-object v1, p0, Lcom/android/videoeditor/service/ApiService;->mAudioThread:Lcom/android/videoeditor/service/ApiService$IntentProcessor;

    .line 1509
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/service/ApiService;->mVideoThread:Lcom/android/videoeditor/service/ApiService$IntentProcessor;

    if-eqz v0, :cond_2

    .line 1510
    iget-object v0, p0, Lcom/android/videoeditor/service/ApiService;->mVideoThread:Lcom/android/videoeditor/service/ApiService$IntentProcessor;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/ApiService$IntentProcessor;->quit()V

    .line 1511
    iput-object v1, p0, Lcom/android/videoeditor/service/ApiService;->mVideoThread:Lcom/android/videoeditor/service/ApiService$IntentProcessor;

    .line 1513
    :cond_2
    return-void
.end method

.method public onIntentProcessed(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;Z)V
    .locals 77
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "videoEditor"    # Landroid/media/videoeditor/VideoEditor;
    .param p3, "result"    # Ljava/lang/Object;
    .param p4, "extraResult"    # Ljava/lang/Object;
    .param p5, "ex"    # Ljava/lang/Exception;
    .param p6, "finalize"    # Z

    .prologue
    .line 2926
    const-string v11, "project"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2927
    .local v6, "projectPath":Ljava/lang/String;
    const-string v11, "op"

    const/4 v12, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v67

    .line 2928
    .local v67, "op":I
    sparse-switch v67, :sswitch_data_0

    .line 3992
    if-eqz p6, :cond_0

    .line 3993
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3999
    .end local p3    # "result":Ljava/lang/Object;
    .end local p4    # "extraResult":Ljava/lang/Object;
    :cond_0
    :goto_0
    :sswitch_0
    if-eqz p6, :cond_1

    .line 4000
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/videoeditor/service/IntentPool;->put(Landroid/content/Intent;)V

    .line 4002
    :cond_1
    return-void

    .line 2930
    .restart local p3    # "result":Ljava/lang/Object;
    .restart local p4    # "extraResult":Ljava/lang/Object;
    :sswitch_1
    if-eqz p6, :cond_2

    .line 2931
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    :cond_2
    move-object/from16 v70, p3

    .line 2934
    check-cast v70, Ljava/util/List;

    .line 2935
    .local v70, "projects":Ljava/util/List;, "Ljava/util/List<Lcom/android/videoeditor/service/VideoEditorProject;>;"
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v60

    .local v60, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiServiceListener;

    .line 2936
    .local v5, "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    move-object/from16 v0, v70

    move-object/from16 v1, p5

    invoke-virtual {v5, v0, v1}, Lcom/android/videoeditor/service/ApiServiceListener;->onProjectsLoaded(Ljava/util/List;Ljava/lang/Exception;)V

    goto :goto_1

    .line 2943
    .end local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    .end local v60    # "i$":Ljava/util/Iterator;
    .end local v70    # "projects":Ljava/util/List;, "Ljava/util/List<Lcom/android/videoeditor/service/VideoEditorProject;>;"
    :sswitch_2
    if-eqz p6, :cond_3

    .line 2944
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 2948
    :cond_3
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mVideoProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v11, :cond_4

    .line 2949
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mVideoProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v11}, Lcom/android/videoeditor/service/VideoEditorProject;->release()V

    .line 2950
    const/4 v11, 0x0

    sput-object v11, Lcom/android/videoeditor/service/ApiService;->mVideoProject:Lcom/android/videoeditor/service/VideoEditorProject;

    .line 2953
    :cond_4
    if-eqz p5, :cond_5

    .line 2954
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Lcom/android/videoeditor/util/FileUtils;->deleteDir(Ljava/io/File;)Z

    .line 2959
    .end local p3    # "result":Ljava/lang/Object;
    :goto_2
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v60

    .restart local v60    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiServiceListener;

    .line 2960
    .restart local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    sget-object v7, Lcom/android/videoeditor/service/ApiService;->mVideoProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz p2, :cond_6

    invoke-interface/range {p2 .. p2}, Landroid/media/videoeditor/VideoEditor;->getAllMediaItems()Ljava/util/List;

    move-result-object v8

    :goto_4
    if-eqz p2, :cond_7

    invoke-interface/range {p2 .. p2}, Landroid/media/videoeditor/VideoEditor;->getAllAudioTracks()Ljava/util/List;

    move-result-object v9

    :goto_5
    move-object/from16 v10, p5

    invoke-virtual/range {v5 .. v10}, Lcom/android/videoeditor/service/ApiServiceListener;->onVideoEditorCreated(Ljava/lang/String;Lcom/android/videoeditor/service/VideoEditorProject;Ljava/util/List;Ljava/util/List;Ljava/lang/Exception;)V

    goto :goto_3

    .line 2956
    .end local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    .end local v60    # "i$":Ljava/util/Iterator;
    .restart local p3    # "result":Ljava/lang/Object;
    :cond_5
    check-cast p3, Lcom/android/videoeditor/service/VideoEditorProject;

    .end local p3    # "result":Ljava/lang/Object;
    sput-object p3, Lcom/android/videoeditor/service/ApiService;->mVideoProject:Lcom/android/videoeditor/service/VideoEditorProject;

    goto :goto_2

    .line 2960
    .restart local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    .restart local v60    # "i$":Ljava/util/Iterator;
    :cond_6
    const/4 v8, 0x0

    goto :goto_4

    :cond_7
    const/4 v9, 0x0

    goto :goto_5

    .line 2969
    .end local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    .end local v60    # "i$":Ljava/util/Iterator;
    .restart local p3    # "result":Ljava/lang/Object;
    :sswitch_3
    if-eqz p6, :cond_8

    .line 2970
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 2973
    :cond_8
    if-eqz p3, :cond_a

    .line 2974
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mVideoProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v11, :cond_9

    .line 2975
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mVideoProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v11}, Lcom/android/videoeditor/service/VideoEditorProject;->release()V

    .line 2976
    const/4 v11, 0x0

    sput-object v11, Lcom/android/videoeditor/service/ApiService;->mVideoProject:Lcom/android/videoeditor/service/VideoEditorProject;

    .line 2978
    :cond_9
    check-cast p3, Lcom/android/videoeditor/service/VideoEditorProject;

    .end local p3    # "result":Ljava/lang/Object;
    sput-object p3, Lcom/android/videoeditor/service/ApiService;->mVideoProject:Lcom/android/videoeditor/service/VideoEditorProject;

    .line 2981
    :cond_a
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v60

    .restart local v60    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiServiceListener;

    .line 2982
    .restart local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    sget-object v7, Lcom/android/videoeditor/service/ApiService;->mVideoProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-nez p5, :cond_b

    invoke-interface/range {p2 .. p2}, Landroid/media/videoeditor/VideoEditor;->getAllMediaItems()Ljava/util/List;

    move-result-object v8

    :goto_7
    if-nez p5, :cond_c

    invoke-interface/range {p2 .. p2}, Landroid/media/videoeditor/VideoEditor;->getAllAudioTracks()Ljava/util/List;

    move-result-object v9

    :goto_8
    move-object/from16 v10, p5

    invoke-virtual/range {v5 .. v10}, Lcom/android/videoeditor/service/ApiServiceListener;->onVideoEditorLoaded(Ljava/lang/String;Lcom/android/videoeditor/service/VideoEditorProject;Ljava/util/List;Ljava/util/List;Ljava/lang/Exception;)V

    goto :goto_6

    :cond_b
    const/4 v8, 0x0

    goto :goto_7

    :cond_c
    const/4 v9, 0x0

    goto :goto_8

    .line 2991
    .end local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    .end local v60    # "i$":Ljava/util/Iterator;
    .restart local p3    # "result":Ljava/lang/Object;
    :sswitch_4
    if-eqz p6, :cond_d

    .line 2992
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 2995
    :cond_d
    const-string v11, "aspect_ratio"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v53

    .line 2997
    .local v53, "aspectRatio":I
    if-nez p5, :cond_e

    .line 2998
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v76

    .line 2999
    .local v76, "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v76, :cond_e

    .line 3000
    move-object/from16 v0, v76

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->setAspectRatio(I)V

    .line 3004
    .end local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    :cond_e
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v60

    .restart local v60    # "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiServiceListener;

    .line 3005
    .restart local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    move/from16 v0, v53

    move-object/from16 v1, p5

    invoke-virtual {v5, v6, v0, v1}, Lcom/android/videoeditor/service/ApiServiceListener;->onVideoEditorAspectRatioSet(Ljava/lang/String;ILjava/lang/Exception;)V

    goto :goto_9

    .line 3012
    .end local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    .end local v53    # "aspectRatio":I
    .end local v60    # "i$":Ljava/util/Iterator;
    :sswitch_5
    if-eqz p6, :cond_f

    .line 3013
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3016
    :cond_f
    const-string v11, "theme"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v72

    .line 3017
    .local v72, "theme":Ljava/lang/String;
    if-nez p5, :cond_10

    .line 3018
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v76

    .line 3019
    .restart local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v76, :cond_10

    .line 3020
    move-object/from16 v0, v76

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->setTheme(Ljava/lang/String;)V

    .line 3021
    check-cast p3, Ljava/util/List;

    .end local p3    # "result":Ljava/lang/Object;
    move-object/from16 v0, v76

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->setMediaItems(Ljava/util/List;)V

    .line 3022
    check-cast p4, Ljava/util/List;

    .end local p4    # "extraResult":Ljava/lang/Object;
    move-object/from16 v0, v76

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->setAudioTracks(Ljava/util/List;)V

    .line 3026
    .end local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    :cond_10
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v60

    .restart local v60    # "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiServiceListener;

    .line 3027
    .restart local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    move-object/from16 v0, v72

    move-object/from16 v1, p5

    invoke-virtual {v5, v6, v0, v1}, Lcom/android/videoeditor/service/ApiServiceListener;->onVideoEditorThemeApplied(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_a

    .line 3034
    .end local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    .end local v60    # "i$":Ljava/util/Iterator;
    .end local v72    # "theme":Ljava/lang/String;
    .restart local p3    # "result":Ljava/lang/Object;
    .restart local p4    # "extraResult":Ljava/lang/Object;
    :sswitch_6
    const-string v11, "attributes"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3035
    .local v7, "className":Ljava/lang/String;
    const-string v11, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3036
    .local v8, "itemId":Ljava/lang/String;
    const-string v11, "action"

    const/4 v12, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 3038
    .local v9, "action":I
    const-string v11, "prog_value"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 3040
    .local v10, "progress":I
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v60

    .restart local v60    # "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiServiceListener;

    .line 3041
    .restart local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    invoke-virtual/range {v5 .. v10}, Lcom/android/videoeditor/service/ApiServiceListener;->onVideoEditorGeneratePreviewProgress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_b

    .line 3056
    .end local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    .end local v7    # "className":Ljava/lang/String;
    .end local v8    # "itemId":Ljava/lang/String;
    .end local v9    # "action":I
    .end local v10    # "progress":I
    .end local v60    # "i$":Ljava/util/Iterator;
    :sswitch_7
    if-eqz p6, :cond_11

    .line 3057
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3060
    :cond_11
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v60

    .restart local v60    # "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiServiceListener;

    .line 3061
    .restart local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    const-string v11, "filename"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v6, v11}, Lcom/android/videoeditor/service/ApiServiceListener;->onVideoEditorExportCanceled(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 3069
    .end local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    .end local v60    # "i$":Ljava/util/Iterator;
    :sswitch_8
    if-eqz p6, :cond_12

    .line 3070
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3073
    :cond_12
    const-string v11, "filename"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 3074
    .local v20, "filename":Ljava/lang/String;
    const-string v11, "ex"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 3075
    const-string v11, "req_intent"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v68

    check-cast v68, Landroid/content/Intent;

    .line 3076
    .local v68, "originalIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3077
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    move-object/from16 v0, v68

    invoke-virtual {v11, v0}, Lcom/android/videoeditor/service/IntentPool;->put(Landroid/content/Intent;)V

    .line 3079
    const-string v11, "ex"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v58

    check-cast v58, Ljava/lang/Exception;

    .line 3081
    .local v58, "exception":Ljava/lang/Exception;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v76

    .line 3082
    .restart local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    const-string v11, "cancelled"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v56

    .line 3083
    .local v56, "cancelled":Z
    if-nez v56, :cond_13

    if-eqz v76, :cond_13

    if-nez v58, :cond_13

    .line 3084
    const-string v11, "uri"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v74

    check-cast v74, Landroid/net/Uri;

    .line 3085
    .local v74, "uri":Landroid/net/Uri;
    move-object/from16 v0, v76

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->addExportedMovieUri(Landroid/net/Uri;)V

    .line 3088
    .end local v74    # "uri":Landroid/net/Uri;
    :cond_13
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v60

    .restart local v60    # "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiServiceListener;

    .line 3089
    .restart local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    move-object/from16 v0, v20

    move-object/from16 v1, v58

    move/from16 v2, v56

    invoke-virtual {v5, v6, v0, v1, v2}, Lcom/android/videoeditor/service/ApiServiceListener;->onVideoEditorExportComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Z)V

    goto :goto_d

    .line 3093
    .end local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    .end local v56    # "cancelled":Z
    .end local v58    # "exception":Ljava/lang/Exception;
    .end local v60    # "i$":Ljava/util/Iterator;
    .end local v68    # "originalIntent":Landroid/content/Intent;
    .end local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    :cond_14
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v60

    .restart local v60    # "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiServiceListener;

    .line 3094
    .restart local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    const-string v11, "prog_value"

    const/4 v12, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    move-object/from16 v0, v20

    invoke-virtual {v5, v6, v0, v11}, Lcom/android/videoeditor/service/ApiServiceListener;->onVideoEditorExportProgress(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_e

    .line 3104
    .end local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    .end local v20    # "filename":Ljava/lang/String;
    .end local v60    # "i$":Ljava/util/Iterator;
    :sswitch_9
    if-eqz p6, :cond_15

    .line 3105
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3108
    :cond_15
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v60

    .restart local v60    # "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiServiceListener;

    .line 3109
    .restart local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    move-object/from16 v0, p5

    invoke-virtual {v5, v6, v0}, Lcom/android/videoeditor/service/ApiServiceListener;->onVideoEditorSaved(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_f

    .line 3115
    .end local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    .end local v60    # "i$":Ljava/util/Iterator;
    :sswitch_a
    if-eqz p6, :cond_16

    .line 3116
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3119
    :cond_16
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v76

    .line 3120
    .restart local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v76, :cond_17

    .line 3121
    invoke-virtual/range {v76 .. v76}, Lcom/android/videoeditor/service/VideoEditorProject;->release()V

    .line 3122
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mVideoProject:Lcom/android/videoeditor/service/VideoEditorProject;

    move-object/from16 v0, v76

    if-ne v11, v0, :cond_17

    .line 3123
    const/4 v11, 0x0

    sput-object v11, Lcom/android/videoeditor/service/ApiService;->mVideoProject:Lcom/android/videoeditor/service/VideoEditorProject;

    .line 3127
    :cond_17
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v60

    .restart local v60    # "i$":Ljava/util/Iterator;
    :goto_10
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiServiceListener;

    .line 3128
    .restart local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    move-object/from16 v0, p5

    invoke-virtual {v5, v6, v0}, Lcom/android/videoeditor/service/ApiServiceListener;->onVideoEditorReleased(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_10

    .line 3135
    .end local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    .end local v60    # "i$":Ljava/util/Iterator;
    .end local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_b
    if-eqz p6, :cond_18

    .line 3136
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3139
    :cond_18
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v76

    .line 3140
    .restart local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v76, :cond_19

    .line 3141
    invoke-virtual/range {v76 .. v76}, Lcom/android/videoeditor/service/VideoEditorProject;->release()V

    .line 3142
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mVideoProject:Lcom/android/videoeditor/service/VideoEditorProject;

    move-object/from16 v0, v76

    if-ne v11, v0, :cond_19

    .line 3143
    const/4 v11, 0x0

    sput-object v11, Lcom/android/videoeditor/service/ApiService;->mVideoProject:Lcom/android/videoeditor/service/VideoEditorProject;

    .line 3147
    :cond_19
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v60

    .restart local v60    # "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiServiceListener;

    .line 3148
    .restart local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    move-object/from16 v0, p5

    invoke-virtual {v5, v6, v0}, Lcom/android/videoeditor/service/ApiServiceListener;->onVideoEditorDeleted(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_11

    .line 3155
    .end local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    .end local v60    # "i$":Ljava/util/Iterator;
    .end local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_c
    if-eqz p6, :cond_1a

    .line 3156
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3159
    :cond_1a
    const-string v11, "r_item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .local v15, "afterMediaItemId":Ljava/lang/String;
    move-object/from16 v14, p3

    .line 3162
    check-cast v14, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 3163
    .local v14, "movieMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v76

    .line 3164
    .restart local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v76, :cond_1c

    .line 3165
    if-nez p5, :cond_1b

    if-eqz p4, :cond_1b

    move-object/from16 v11, p4

    .line 3167
    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move-object/from16 v0, v76

    invoke-virtual {v0, v11}, Lcom/android/videoeditor/service/VideoEditorProject;->setAspectRatio(I)V

    .line 3170
    :cond_1b
    if-nez p5, :cond_1c

    .line 3171
    move-object/from16 v0, v76

    invoke-virtual {v0, v14, v15}, Lcom/android/videoeditor/service/VideoEditorProject;->insertMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;Ljava/lang/String;)V

    .line 3175
    :cond_1c
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v60

    .restart local v60    # "i$":Ljava/util/Iterator;
    :goto_12
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiServiceListener;

    .line 3176
    .restart local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    const-string v11, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-class v16, Landroid/media/videoeditor/MediaVideoItem;

    move-object/from16 v17, p4

    check-cast v17, Ljava/lang/Integer;

    move-object v11, v5

    move-object v12, v6

    move-object/from16 v18, p5

    invoke-virtual/range {v11 .. v18}, Lcom/android/videoeditor/service/ApiServiceListener;->onMediaItemAdded(Ljava/lang/String;Ljava/lang/String;Lcom/android/videoeditor/service/MovieMediaItem;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Integer;Ljava/lang/Exception;)V

    goto :goto_12

    .line 3185
    .end local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    .end local v14    # "movieMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v15    # "afterMediaItemId":Ljava/lang/String;
    .end local v60    # "i$":Ljava/util/Iterator;
    .end local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_d
    if-eqz p6, :cond_1d

    .line 3186
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3189
    :cond_1d
    const-string v11, "r_item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "afterMediaItemId":Ljava/lang/String;
    move-object/from16 v14, p3

    .line 3192
    check-cast v14, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 3193
    .restart local v14    # "movieMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v76

    .line 3194
    .restart local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v76, :cond_1f

    .line 3195
    if-nez p5, :cond_1e

    if-eqz p4, :cond_1e

    move-object/from16 v11, p4

    .line 3197
    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move-object/from16 v0, v76

    invoke-virtual {v0, v11}, Lcom/android/videoeditor/service/VideoEditorProject;->setAspectRatio(I)V

    .line 3200
    :cond_1e
    if-nez p5, :cond_1f

    .line 3201
    move-object/from16 v0, v76

    invoke-virtual {v0, v14, v15}, Lcom/android/videoeditor/service/VideoEditorProject;->insertMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;Ljava/lang/String;)V

    .line 3205
    :cond_1f
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v60

    .restart local v60    # "i$":Ljava/util/Iterator;
    :goto_13
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiServiceListener;

    .line 3206
    .restart local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    const-string v11, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-class v16, Landroid/media/videoeditor/MediaImageItem;

    move-object/from16 v17, p4

    check-cast v17, Ljava/lang/Integer;

    move-object v11, v5

    move-object v12, v6

    move-object/from16 v18, p5

    invoke-virtual/range {v11 .. v18}, Lcom/android/videoeditor/service/ApiServiceListener;->onMediaItemAdded(Ljava/lang/String;Ljava/lang/String;Lcom/android/videoeditor/service/MovieMediaItem;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Integer;Ljava/lang/Exception;)V

    goto :goto_13

    .line 3217
    .end local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    .end local v14    # "movieMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v15    # "afterMediaItemId":Ljava/lang/String;
    .end local v60    # "i$":Ljava/util/Iterator;
    .end local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_e
    const-string v11, "filename"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v18

    check-cast v18, Landroid/net/Uri;

    .line 3218
    .local v18, "data":Landroid/net/Uri;
    const-string v11, "attributes"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 3219
    .local v19, "mimeType":Ljava/lang/String;
    if-eqz p6, :cond_20

    .line 3220
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3223
    :cond_20
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v60

    .restart local v60    # "i$":Ljava/util/Iterator;
    :goto_14
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiServiceListener;

    .line 3224
    .restart local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    const/16 v20, 0x0

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v21, p5

    invoke-virtual/range {v16 .. v21}, Lcom/android/videoeditor/service/ApiServiceListener;->onMediaLoaded(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_14

    .line 3230
    .end local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    .end local v18    # "data":Landroid/net/Uri;
    .end local v19    # "mimeType":Ljava/lang/String;
    .end local v60    # "i$":Ljava/util/Iterator;
    :sswitch_f
    if-eqz p6, :cond_21

    .line 3231
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3234
    :cond_21
    const-string v11, "req_intent"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v68

    check-cast v68, Landroid/content/Intent;

    .line 3235
    .restart local v68    # "originalIntent":Landroid/content/Intent;
    const-string v11, "filename"

    move-object/from16 v0, v68

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v18

    check-cast v18, Landroid/net/Uri;

    .line 3236
    .restart local v18    # "data":Landroid/net/Uri;
    const-string v11, "attributes"

    move-object/from16 v0, v68

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 3238
    .restart local v19    # "mimeType":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3239
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    move-object/from16 v0, v68

    invoke-virtual {v11, v0}, Lcom/android/videoeditor/service/IntentPool;->put(Landroid/content/Intent;)V

    .line 3241
    const-string v11, "filename"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 3243
    .restart local v20    # "filename":Ljava/lang/String;
    if-nez p5, :cond_22

    if-eqz v20, :cond_22

    .line 3244
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v76

    .line 3245
    .restart local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v76

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v11, v1, v2}, Lcom/android/videoeditor/service/VideoEditorProject;->addDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3248
    .end local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    :cond_22
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v60

    .restart local v60    # "i$":Ljava/util/Iterator;
    :goto_15
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiServiceListener;

    .restart local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v21, p5

    .line 3249
    invoke-virtual/range {v16 .. v21}, Lcom/android/videoeditor/service/ApiServiceListener;->onMediaLoaded(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_15

    .line 3255
    .end local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    .end local v18    # "data":Landroid/net/Uri;
    .end local v19    # "mimeType":Ljava/lang/String;
    .end local v20    # "filename":Ljava/lang/String;
    .end local v60    # "i$":Ljava/util/Iterator;
    .end local v68    # "originalIntent":Landroid/content/Intent;
    :sswitch_10
    if-eqz p6, :cond_23

    .line 3256
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3259
    :cond_23
    if-nez p5, :cond_24

    .line 3260
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v76

    .line 3261
    .restart local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v76, :cond_24

    .line 3262
    check-cast p3, Ljava/util/List;

    .end local p3    # "result":Ljava/lang/Object;
    move-object/from16 v0, v76

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->setMediaItems(Ljava/util/List;)V

    .line 3266
    .end local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    :cond_24
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v60

    .restart local v60    # "i$":Ljava/util/Iterator;
    :goto_16
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiServiceListener;

    .line 3267
    .restart local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    const-string v11, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "r_item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p5

    invoke-virtual {v5, v6, v11, v12, v0}, Lcom/android/videoeditor/service/ApiServiceListener;->onMediaItemMoved(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_16

    .line 3276
    .end local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    .end local v60    # "i$":Ljava/util/Iterator;
    .restart local p3    # "result":Ljava/lang/Object;
    :sswitch_11
    if-eqz p6, :cond_25

    .line 3277
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3280
    :cond_25
    const-string v11, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .local v23, "mediaItemId":Ljava/lang/String;
    move-object/from16 v73, p3

    .line 3281
    check-cast v73, Lcom/android/videoeditor/service/MovieTransition;

    .line 3282
    .local v73, "transition":Lcom/android/videoeditor/service/MovieTransition;
    if-nez p5, :cond_26

    .line 3283
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v76

    .line 3284
    .restart local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v76, :cond_26

    .line 3285
    move-object/from16 v0, v76

    move-object/from16 v1, v23

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Lcom/android/videoeditor/service/VideoEditorProject;->removeMediaItem(Ljava/lang/String;Lcom/android/videoeditor/service/MovieTransition;)V

    .line 3289
    .end local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    :cond_26
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v60

    .restart local v60    # "i$":Ljava/util/Iterator;
    :goto_17
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiServiceListener;

    .line 3290
    .restart local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    move-object/from16 v0, v23

    move-object/from16 v1, v73

    move-object/from16 v2, p5

    invoke-virtual {v5, v6, v0, v1, v2}, Lcom/android/videoeditor/service/ApiServiceListener;->onMediaItemRemoved(Ljava/lang/String;Ljava/lang/String;Lcom/android/videoeditor/service/MovieTransition;Ljava/lang/Exception;)V

    goto :goto_17

    .line 3297
    .end local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    .end local v23    # "mediaItemId":Ljava/lang/String;
    .end local v60    # "i$":Ljava/util/Iterator;
    .end local v73    # "transition":Lcom/android/videoeditor/service/MovieTransition;
    :sswitch_12
    if-eqz p6, :cond_27

    .line 3298
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3301
    :cond_27
    const-string v11, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 3302
    .restart local v23    # "mediaItemId":Ljava/lang/String;
    const-string v11, "rm"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v71

    .line 3305
    .local v71, "renderingMode":I
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v76

    .line 3306
    .restart local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v76, :cond_28

    .line 3307
    move-object/from16 v0, v76

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v61

    .line 3308
    .local v61, "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    if-eqz v61, :cond_28

    .line 3309
    const/4 v11, 0x0

    move-object/from16 v0, v76

    invoke-virtual {v0, v11}, Lcom/android/videoeditor/service/VideoEditorProject;->setClean(Z)V

    .line 3310
    if-nez p5, :cond_29

    .line 3311
    move-object/from16 v0, v61

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/MovieMediaItem;->setRenderingMode(I)V

    .line 3318
    .end local v61    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_28
    :goto_18
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v60

    .restart local v60    # "i$":Ljava/util/Iterator;
    :goto_19
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiServiceListener;

    .line 3319
    .restart local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    move-object/from16 v0, v23

    move/from16 v1, v71

    move-object/from16 v2, p5

    invoke-virtual {v5, v6, v0, v1, v2}, Lcom/android/videoeditor/service/ApiServiceListener;->onMediaItemRenderingModeSet(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    goto :goto_19

    .line 3313
    .end local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    .end local v60    # "i$":Ljava/util/Iterator;
    .restart local v61    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_29
    invoke-virtual/range {v61 .. v61}, Lcom/android/videoeditor/service/MovieMediaItem;->getRenderingMode()I

    move-result v11

    move-object/from16 v0, v61

    invoke-virtual {v0, v11}, Lcom/android/videoeditor/service/MovieMediaItem;->setAppRenderingMode(I)V

    goto :goto_18

    .line 3327
    .end local v23    # "mediaItemId":Ljava/lang/String;
    .end local v61    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v71    # "renderingMode":I
    .end local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_13
    if-eqz p6, :cond_2a

    .line 3328
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3331
    :cond_2a
    const-string v11, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 3333
    .restart local v23    # "mediaItemId":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v76

    .line 3334
    .restart local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v76, :cond_2b

    .line 3335
    if-nez p5, :cond_2c

    .line 3336
    check-cast p3, Lcom/android/videoeditor/service/MovieMediaItem;

    .end local p3    # "result":Ljava/lang/Object;
    move-object/from16 v0, v76

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->updateMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;)V

    .line 3346
    :cond_2b
    :goto_1a
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v60

    .restart local v60    # "i$":Ljava/util/Iterator;
    :goto_1b
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiServiceListener;

    .line 3347
    .restart local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    const-string v11, "duration"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v24

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v26, p5

    invoke-virtual/range {v21 .. v26}, Lcom/android/videoeditor/service/ApiServiceListener;->onMediaItemDurationSet(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Exception;)V

    goto :goto_1b

    .line 3338
    .end local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    .end local v60    # "i$":Ljava/util/Iterator;
    .restart local p3    # "result":Ljava/lang/Object;
    :cond_2c
    move-object/from16 v0, v76

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v66

    .line 3339
    .local v66, "oldMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    if-eqz v66, :cond_2b

    .line 3340
    const/4 v11, 0x0

    move-object/from16 v0, v76

    invoke-virtual {v0, v11}, Lcom/android/videoeditor/service/VideoEditorProject;->setClean(Z)V

    .line 3341
    const-wide/16 v11, 0x0

    invoke-virtual/range {v66 .. v66}, Lcom/android/videoeditor/service/MovieMediaItem;->getDuration()J

    move-result-wide v16

    move-object/from16 v0, v66

    move-wide/from16 v1, v16

    invoke-virtual {v0, v11, v12, v1, v2}, Lcom/android/videoeditor/service/MovieMediaItem;->setAppExtractBoundaries(JJ)V

    goto :goto_1a

    .line 3355
    .end local v23    # "mediaItemId":Ljava/lang/String;
    .end local v66    # "oldMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_14
    if-eqz p6, :cond_2d

    .line 3356
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3359
    :cond_2d
    const-string v11, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 3361
    .restart local v23    # "mediaItemId":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v76

    .line 3362
    .restart local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v76, :cond_2e

    .line 3363
    if-nez p5, :cond_2f

    move-object/from16 v61, p3

    .line 3364
    check-cast v61, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 3365
    .restart local v61    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    move-object/from16 v0, v76

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->updateMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;)V

    .line 3377
    .end local v61    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_2e
    :goto_1c
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v60

    .restart local v60    # "i$":Ljava/util/Iterator;
    :goto_1d
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiServiceListener;

    .line 3378
    .restart local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    const-string v11, "b_boundary"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v24

    const-string v11, "e_boundary"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v26

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v28, p5

    invoke-virtual/range {v21 .. v28}, Lcom/android/videoeditor/service/ApiServiceListener;->onMediaItemBoundariesSet(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/Exception;)V

    goto :goto_1d

    .line 3367
    .end local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    .end local v60    # "i$":Ljava/util/Iterator;
    :cond_2f
    move-object/from16 v0, v76

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v66

    .line 3368
    .restart local v66    # "oldMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    if-eqz v66, :cond_2e

    .line 3369
    const/4 v11, 0x0

    move-object/from16 v0, v76

    invoke-virtual {v0, v11}, Lcom/android/videoeditor/service/VideoEditorProject;->setClean(Z)V

    .line 3370
    invoke-virtual/range {v66 .. v66}, Lcom/android/videoeditor/service/MovieMediaItem;->getBoundaryBeginTime()J

    move-result-wide v11

    invoke-virtual/range {v66 .. v66}, Lcom/android/videoeditor/service/MovieMediaItem;->getBoundaryEndTime()J

    move-result-wide v16

    move-object/from16 v0, v66

    move-wide/from16 v1, v16

    invoke-virtual {v0, v11, v12, v1, v2}, Lcom/android/videoeditor/service/MovieMediaItem;->setAppExtractBoundaries(JJ)V

    goto :goto_1c

    .line 3387
    .end local v23    # "mediaItemId":Ljava/lang/String;
    .end local v66    # "oldMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_15
    if-eqz p6, :cond_30

    .line 3388
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_30
    move-object/from16 v27, p3

    .line 3392
    check-cast v27, Landroid/graphics/Bitmap;

    .line 3393
    .local v27, "bitmap":Landroid/graphics/Bitmap;
    check-cast p4, Ljava/lang/Integer;

    .end local p4    # "extraResult":Ljava/lang/Object;
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Integer;->intValue()I

    move-result v28

    .line 3394
    .local v28, "index":I
    const/16 v75, 0x0

    .line 3395
    .local v75, "used":Z
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v60

    .restart local v60    # "i$":Ljava/util/Iterator;
    :goto_1e
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_31

    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiServiceListener;

    .line 3396
    .restart local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    const-string v11, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v11, "token"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v29

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v30, p5

    invoke-virtual/range {v24 .. v30}, Lcom/android/videoeditor/service/ApiServiceListener;->onMediaItemThumbnail(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;IILjava/lang/Exception;)Z

    move-result v11

    or-int v75, v75, v11

    goto :goto_1e

    .line 3402
    .end local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    :cond_31
    if-nez v75, :cond_0

    .line 3403
    if-eqz v27, :cond_0

    .line 3404
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    .line 3412
    .end local v27    # "bitmap":Landroid/graphics/Bitmap;
    .end local v28    # "index":I
    .end local v60    # "i$":Ljava/util/Iterator;
    .end local v75    # "used":Z
    .restart local p4    # "extraResult":Ljava/lang/Object;
    :sswitch_16
    if-eqz p6, :cond_32

    .line 3413
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3416
    :cond_32
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v76

    .line 3417
    .restart local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v76, :cond_0

    .line 3418
    const-string v11, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 3419
    .restart local v23    # "mediaItemId":Ljava/lang/String;
    move-object/from16 v0, v76

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v61

    .line 3420
    .restart local v61    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    if-eqz v61, :cond_0

    .line 3421
    const/4 v11, 0x0

    move-object/from16 v0, v76

    invoke-virtual {v0, v11}, Lcom/android/videoeditor/service/VideoEditorProject;->setClean(Z)V

    .line 3422
    if-nez p5, :cond_33

    .line 3423
    const-string v11, "volume"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    move-object/from16 v0, v61

    invoke-virtual {v0, v11}, Lcom/android/videoeditor/service/MovieMediaItem;->setVolume(I)V

    goto/16 :goto_0

    .line 3425
    :cond_33
    invoke-virtual/range {v61 .. v61}, Lcom/android/videoeditor/service/MovieMediaItem;->getVolume()I

    move-result v11

    move-object/from16 v0, v61

    invoke-virtual {v0, v11}, Lcom/android/videoeditor/service/MovieMediaItem;->setAppVolume(I)V

    goto/16 :goto_0

    .line 3434
    .end local v23    # "mediaItemId":Ljava/lang/String;
    .end local v61    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_17
    if-eqz p6, :cond_34

    .line 3435
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3438
    :cond_34
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v76

    .line 3439
    .restart local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v76, :cond_0

    .line 3440
    const-string v11, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 3441
    .restart local v23    # "mediaItemId":Ljava/lang/String;
    move-object/from16 v0, v76

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v61

    .line 3442
    .restart local v61    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    if-eqz v61, :cond_0

    .line 3443
    const/4 v11, 0x0

    move-object/from16 v0, v76

    invoke-virtual {v0, v11}, Lcom/android/videoeditor/service/VideoEditorProject;->setClean(Z)V

    .line 3444
    if-nez p5, :cond_35

    .line 3445
    const-string v11, "mute"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    move-object/from16 v0, v61

    invoke-virtual {v0, v11}, Lcom/android/videoeditor/service/MovieMediaItem;->setMute(Z)V

    goto/16 :goto_0

    .line 3447
    :cond_35
    invoke-virtual/range {v61 .. v61}, Lcom/android/videoeditor/service/MovieMediaItem;->isMuted()Z

    move-result v11

    move-object/from16 v0, v61

    invoke-virtual {v0, v11}, Lcom/android/videoeditor/service/MovieMediaItem;->setAppMute(Z)V

    goto/16 :goto_0

    .line 3456
    .end local v23    # "mediaItemId":Ljava/lang/String;
    .end local v61    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_18
    if-eqz p6, :cond_36

    .line 3457
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3460
    :cond_36
    const-string v11, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 3461
    .restart local v23    # "mediaItemId":Ljava/lang/String;
    const-string v11, "prog_value"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 3463
    .restart local v10    # "progress":I
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v60

    .restart local v60    # "i$":Ljava/util/Iterator;
    :goto_1f
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiServiceListener;

    .line 3464
    .restart local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    move-object/from16 v0, v23

    invoke-virtual {v5, v6, v0, v10}, Lcom/android/videoeditor/service/ApiServiceListener;->onMediaItemExtractAudioWaveformProgress(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1f

    .line 3472
    .end local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    .end local v10    # "progress":I
    .end local v23    # "mediaItemId":Ljava/lang/String;
    .end local v60    # "i$":Ljava/util/Iterator;
    :sswitch_19
    if-eqz p6, :cond_37

    .line 3473
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3476
    :cond_37
    const-string v11, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 3478
    .restart local v23    # "mediaItemId":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v76

    .line 3479
    .restart local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    if-nez p5, :cond_38

    if-eqz v76, :cond_38

    .line 3480
    if-eqz p3, :cond_38

    .line 3481
    move-object/from16 v0, v76

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v61

    .line 3482
    .restart local v61    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    if-eqz v61, :cond_38

    .line 3483
    const/4 v11, 0x0

    move-object/from16 v0, v76

    invoke-virtual {v0, v11}, Lcom/android/videoeditor/service/VideoEditorProject;->setClean(Z)V

    .line 3484
    check-cast p3, Landroid/media/videoeditor/WaveformData;

    .end local p3    # "result":Ljava/lang/Object;
    move-object/from16 v0, v61

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/MovieMediaItem;->setWaveformData(Landroid/media/videoeditor/WaveformData;)V

    .line 3489
    .end local v61    # "mediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_38
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v60

    .restart local v60    # "i$":Ljava/util/Iterator;
    :goto_20
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiServiceListener;

    .line 3490
    .restart local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    move-object/from16 v0, v23

    move-object/from16 v1, p5

    invoke-virtual {v5, v6, v0, v1}, Lcom/android/videoeditor/service/ApiServiceListener;->onMediaItemExtractAudioWaveformComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_20

    .line 3500
    .end local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    .end local v23    # "mediaItemId":Ljava/lang/String;
    .end local v60    # "i$":Ljava/util/Iterator;
    .end local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    .restart local p3    # "result":Ljava/lang/Object;
    :sswitch_1a
    if-eqz p6, :cond_39

    .line 3501
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3504
    :cond_39
    const-string v11, "r_item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 3508
    .restart local v15    # "afterMediaItemId":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v76

    .line 3509
    .restart local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v76, :cond_3b

    move-object/from16 v73, p3

    .line 3510
    check-cast v73, Landroid/media/videoeditor/Transition;

    .line 3512
    .local v73, "transition":Landroid/media/videoeditor/Transition;
    if-nez p5, :cond_3a

    .line 3513
    new-instance v65, Lcom/android/videoeditor/service/MovieTransition;

    move-object/from16 v0, v65

    move-object/from16 v1, v73

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/MovieTransition;-><init>(Landroid/media/videoeditor/Transition;)V

    .line 3514
    .local v65, "movieTransition":Lcom/android/videoeditor/service/MovieTransition;
    move-object/from16 v0, v76

    move-object/from16 v1, v65

    invoke-virtual {v0, v1, v15}, Lcom/android/videoeditor/service/VideoEditorProject;->addTransition(Lcom/android/videoeditor/service/MovieTransition;Ljava/lang/String;)V

    .line 3522
    .end local v73    # "transition":Landroid/media/videoeditor/Transition;
    :goto_21
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v60

    .restart local v60    # "i$":Ljava/util/Iterator;
    :goto_22
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiServiceListener;

    .line 3523
    .restart local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    move-object/from16 v0, v65

    move-object/from16 v1, p5

    invoke-virtual {v5, v6, v0, v15, v1}, Lcom/android/videoeditor/service/ApiServiceListener;->onTransitionInserted(Ljava/lang/String;Lcom/android/videoeditor/service/MovieTransition;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_22

    .line 3516
    .end local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    .end local v60    # "i$":Ljava/util/Iterator;
    .end local v65    # "movieTransition":Lcom/android/videoeditor/service/MovieTransition;
    .restart local v73    # "transition":Landroid/media/videoeditor/Transition;
    :cond_3a
    const/16 v65, 0x0

    .restart local v65    # "movieTransition":Lcom/android/videoeditor/service/MovieTransition;
    goto :goto_21

    .line 3519
    .end local v65    # "movieTransition":Lcom/android/videoeditor/service/MovieTransition;
    .end local v73    # "transition":Landroid/media/videoeditor/Transition;
    :cond_3b
    const/16 v65, 0x0

    .restart local v65    # "movieTransition":Lcom/android/videoeditor/service/MovieTransition;
    goto :goto_21

    .line 3531
    .end local v15    # "afterMediaItemId":Ljava/lang/String;
    .end local v65    # "movieTransition":Lcom/android/videoeditor/service/MovieTransition;
    .end local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_1b
    if-eqz p6, :cond_3c

    .line 3532
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3535
    :cond_3c
    const-string v11, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 3537
    .local v31, "transitionId":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v76

    .line 3538
    .restart local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v76, :cond_3d

    .line 3539
    if-nez p5, :cond_3d

    .line 3540
    move-object/from16 v0, v76

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->removeTransition(Ljava/lang/String;)V

    .line 3544
    :cond_3d
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v60

    .restart local v60    # "i$":Ljava/util/Iterator;
    :goto_23
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiServiceListener;

    .line 3545
    .restart local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    move-object/from16 v0, v31

    move-object/from16 v1, p5

    invoke-virtual {v5, v6, v0, v1}, Lcom/android/videoeditor/service/ApiServiceListener;->onTransitionRemoved(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_23

    .line 3552
    .end local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    .end local v31    # "transitionId":Ljava/lang/String;
    .end local v60    # "i$":Ljava/util/Iterator;
    .end local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_1c
    if-eqz p6, :cond_3e

    .line 3553
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3556
    :cond_3e
    const-string v11, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 3557
    .restart local v31    # "transitionId":Ljava/lang/String;
    const-string v11, "duration"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v32

    .line 3559
    .local v32, "durationMs":J
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v76

    .line 3560
    .restart local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v76, :cond_3f

    .line 3561
    move-object/from16 v0, v76

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getTransition(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v73

    .line 3562
    .local v73, "transition":Lcom/android/videoeditor/service/MovieTransition;
    if-eqz v73, :cond_3f

    .line 3563
    const/4 v11, 0x0

    move-object/from16 v0, v76

    invoke-virtual {v0, v11}, Lcom/android/videoeditor/service/VideoEditorProject;->setClean(Z)V

    .line 3564
    if-nez p5, :cond_40

    .line 3565
    move-object/from16 v0, v73

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/videoeditor/service/MovieTransition;->setDuration(J)V

    .line 3572
    .end local v73    # "transition":Lcom/android/videoeditor/service/MovieTransition;
    :cond_3f
    :goto_24
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v60

    .restart local v60    # "i$":Ljava/util/Iterator;
    :goto_25
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiServiceListener;

    .restart local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    move-object/from16 v29, v5

    move-object/from16 v30, v6

    move-object/from16 v34, p5

    .line 3573
    invoke-virtual/range {v29 .. v34}, Lcom/android/videoeditor/service/ApiServiceListener;->onTransitionDurationSet(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Exception;)V

    goto :goto_25

    .line 3567
    .end local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    .end local v60    # "i$":Ljava/util/Iterator;
    .restart local v73    # "transition":Lcom/android/videoeditor/service/MovieTransition;
    :cond_40
    invoke-virtual/range {v73 .. v73}, Lcom/android/videoeditor/service/MovieTransition;->getDuration()J

    move-result-wide v11

    move-object/from16 v0, v73

    invoke-virtual {v0, v11, v12}, Lcom/android/videoeditor/service/MovieTransition;->setAppDuration(J)V

    goto :goto_24

    .line 3580
    .end local v31    # "transitionId":Ljava/lang/String;
    .end local v32    # "durationMs":J
    .end local v73    # "transition":Lcom/android/videoeditor/service/MovieTransition;
    .end local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_1d
    if-eqz p6, :cond_41

    .line 3581
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3584
    :cond_41
    check-cast p3, [Landroid/graphics/Bitmap;

    .end local p3    # "result":Ljava/lang/Object;
    move-object/from16 v55, p3

    check-cast v55, [Landroid/graphics/Bitmap;

    .line 3585
    .local v55, "bitmaps":[Landroid/graphics/Bitmap;
    const/16 v75, 0x0

    .line 3586
    .restart local v75    # "used":Z
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v60

    .restart local v60    # "i$":Ljava/util/Iterator;
    :goto_26
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_42

    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiServiceListener;

    .line 3587
    .restart local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    const-string v11, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v55

    move-object/from16 v1, p5

    invoke-virtual {v5, v6, v11, v0, v1}, Lcom/android/videoeditor/service/ApiServiceListener;->onTransitionThumbnails(Ljava/lang/String;Ljava/lang/String;[Landroid/graphics/Bitmap;Ljava/lang/Exception;)Z

    move-result v11

    or-int v75, v75, v11

    goto :goto_26

    .line 3592
    .end local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    :cond_42
    if-nez v75, :cond_0

    .line 3593
    if-eqz v55, :cond_0

    .line 3594
    const/16 v59, 0x0

    .local v59, "i":I
    :goto_27
    move-object/from16 v0, v55

    array-length v11, v0

    move/from16 v0, v59

    if-ge v0, v11, :cond_0

    .line 3595
    aget-object v11, v55, v59

    if-eqz v11, :cond_43

    .line 3596
    aget-object v11, v55, v59

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 3594
    :cond_43
    add-int/lit8 v59, v59, 0x1

    goto :goto_27

    .line 3606
    .end local v55    # "bitmaps":[Landroid/graphics/Bitmap;
    .end local v59    # "i":I
    .end local v60    # "i$":Ljava/util/Iterator;
    .end local v75    # "used":Z
    .restart local p3    # "result":Ljava/lang/Object;
    :sswitch_1e
    if-eqz p6, :cond_44

    .line 3607
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3610
    :cond_44
    const-string v11, "r_item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .restart local v23    # "mediaItemId":Ljava/lang/String;
    move-object/from16 v64, p3

    .line 3613
    check-cast v64, Lcom/android/videoeditor/service/MovieOverlay;

    .line 3614
    .local v64, "movieOverlay":Lcom/android/videoeditor/service/MovieOverlay;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v76

    .line 3615
    .restart local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v76, :cond_45

    .line 3616
    if-nez p5, :cond_45

    .line 3617
    move-object/from16 v0, v76

    move-object/from16 v1, v23

    move-object/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lcom/android/videoeditor/service/VideoEditorProject;->addOverlay(Ljava/lang/String;Lcom/android/videoeditor/service/MovieOverlay;)V

    .line 3621
    :cond_45
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v60

    .restart local v60    # "i$":Ljava/util/Iterator;
    :goto_28
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiServiceListener;

    .line 3622
    .restart local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    move-object/from16 v0, v64

    move-object/from16 v1, v23

    move-object/from16 v2, p5

    invoke-virtual {v5, v6, v0, v1, v2}, Lcom/android/videoeditor/service/ApiServiceListener;->onOverlayAdded(Ljava/lang/String;Lcom/android/videoeditor/service/MovieOverlay;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_28

    .line 3629
    .end local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    .end local v23    # "mediaItemId":Ljava/lang/String;
    .end local v60    # "i$":Ljava/util/Iterator;
    .end local v64    # "movieOverlay":Lcom/android/videoeditor/service/MovieOverlay;
    .end local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_1f
    if-eqz p6, :cond_46

    .line 3630
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3633
    :cond_46
    const-string v11, "r_item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 3635
    .restart local v23    # "mediaItemId":Ljava/lang/String;
    const-string v11, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 3637
    .local v36, "overlayId":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v76

    .line 3638
    .restart local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v76, :cond_47

    .line 3639
    if-nez p5, :cond_47

    .line 3640
    move-object/from16 v0, v76

    move-object/from16 v1, v23

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/android/videoeditor/service/VideoEditorProject;->removeOverlay(Ljava/lang/String;Ljava/lang/String;)V

    .line 3644
    :cond_47
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v60

    .restart local v60    # "i$":Ljava/util/Iterator;
    :goto_29
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiServiceListener;

    .line 3645
    .restart local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    move-object/from16 v0, v36

    move-object/from16 v1, v23

    move-object/from16 v2, p5

    invoke-virtual {v5, v6, v0, v1, v2}, Lcom/android/videoeditor/service/ApiServiceListener;->onOverlayRemoved(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_29

    .line 3652
    .end local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    .end local v23    # "mediaItemId":Ljava/lang/String;
    .end local v36    # "overlayId":Ljava/lang/String;
    .end local v60    # "i$":Ljava/util/Iterator;
    .end local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_20
    if-eqz p6, :cond_48

    .line 3653
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3656
    :cond_48
    const-string v11, "r_item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 3658
    .restart local v23    # "mediaItemId":Ljava/lang/String;
    const-string v11, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 3659
    .restart local v36    # "overlayId":Ljava/lang/String;
    const-string v11, "s_time"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v38

    .line 3661
    .local v38, "startTimeMs":J
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v76

    .line 3662
    .restart local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v76, :cond_49

    .line 3663
    move-object/from16 v0, v76

    move-object/from16 v1, v23

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/android/videoeditor/service/VideoEditorProject;->getOverlay(Ljava/lang/String;Ljava/lang/String;)Lcom/android/videoeditor/service/MovieOverlay;

    move-result-object v69

    .line 3664
    .local v69, "overlay":Lcom/android/videoeditor/service/MovieOverlay;
    if-eqz v69, :cond_49

    .line 3665
    const/4 v11, 0x0

    move-object/from16 v0, v76

    invoke-virtual {v0, v11}, Lcom/android/videoeditor/service/VideoEditorProject;->setClean(Z)V

    .line 3666
    if-nez p5, :cond_4a

    .line 3667
    move-object/from16 v0, v69

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/videoeditor/service/MovieOverlay;->setStartTime(J)V

    .line 3674
    .end local v69    # "overlay":Lcom/android/videoeditor/service/MovieOverlay;
    :cond_49
    :goto_2a
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v60

    .restart local v60    # "i$":Ljava/util/Iterator;
    :goto_2b
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiServiceListener;

    .restart local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    move-object/from16 v34, v5

    move-object/from16 v35, v6

    move-object/from16 v37, v23

    move-object/from16 v40, p5

    .line 3675
    invoke-virtual/range {v34 .. v40}, Lcom/android/videoeditor/service/ApiServiceListener;->onOverlayStartTimeSet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Exception;)V

    goto :goto_2b

    .line 3669
    .end local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    .end local v60    # "i$":Ljava/util/Iterator;
    .restart local v69    # "overlay":Lcom/android/videoeditor/service/MovieOverlay;
    :cond_4a
    invoke-virtual/range {v69 .. v69}, Lcom/android/videoeditor/service/MovieOverlay;->getStartTime()J

    move-result-wide v11

    move-object/from16 v0, v69

    invoke-virtual {v0, v11, v12}, Lcom/android/videoeditor/service/MovieOverlay;->setAppStartTime(J)V

    goto :goto_2a

    .line 3683
    .end local v23    # "mediaItemId":Ljava/lang/String;
    .end local v36    # "overlayId":Ljava/lang/String;
    .end local v38    # "startTimeMs":J
    .end local v69    # "overlay":Lcom/android/videoeditor/service/MovieOverlay;
    .end local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_21
    if-eqz p6, :cond_4b

    .line 3684
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3687
    :cond_4b
    const-string v11, "r_item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 3689
    .restart local v23    # "mediaItemId":Ljava/lang/String;
    const-string v11, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 3690
    .restart local v36    # "overlayId":Ljava/lang/String;
    const-string v11, "duration"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v32

    .line 3692
    .restart local v32    # "durationMs":J
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v76

    .line 3693
    .restart local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v76, :cond_4c

    .line 3694
    move-object/from16 v0, v76

    move-object/from16 v1, v23

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/android/videoeditor/service/VideoEditorProject;->getOverlay(Ljava/lang/String;Ljava/lang/String;)Lcom/android/videoeditor/service/MovieOverlay;

    move-result-object v69

    .line 3695
    .restart local v69    # "overlay":Lcom/android/videoeditor/service/MovieOverlay;
    if-eqz v69, :cond_4c

    .line 3696
    const/4 v11, 0x0

    move-object/from16 v0, v76

    invoke-virtual {v0, v11}, Lcom/android/videoeditor/service/VideoEditorProject;->setClean(Z)V

    .line 3697
    if-nez p5, :cond_4d

    .line 3698
    move-object/from16 v0, v69

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/videoeditor/service/MovieOverlay;->setDuration(J)V

    .line 3705
    .end local v69    # "overlay":Lcom/android/videoeditor/service/MovieOverlay;
    :cond_4c
    :goto_2c
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v60

    .restart local v60    # "i$":Ljava/util/Iterator;
    :goto_2d
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiServiceListener;

    .restart local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    move-object/from16 v40, v5

    move-object/from16 v41, v6

    move-object/from16 v42, v36

    move-object/from16 v43, v23

    move-wide/from16 v44, v32

    move-object/from16 v46, p5

    .line 3706
    invoke-virtual/range {v40 .. v46}, Lcom/android/videoeditor/service/ApiServiceListener;->onOverlayDurationSet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Exception;)V

    goto :goto_2d

    .line 3700
    .end local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    .end local v60    # "i$":Ljava/util/Iterator;
    .restart local v69    # "overlay":Lcom/android/videoeditor/service/MovieOverlay;
    :cond_4d
    invoke-virtual/range {v69 .. v69}, Lcom/android/videoeditor/service/MovieOverlay;->getDuration()J

    move-result-wide v11

    move-object/from16 v0, v69

    invoke-virtual {v0, v11, v12}, Lcom/android/videoeditor/service/MovieOverlay;->setAppDuration(J)V

    goto :goto_2c

    .line 3714
    .end local v23    # "mediaItemId":Ljava/lang/String;
    .end local v32    # "durationMs":J
    .end local v36    # "overlayId":Ljava/lang/String;
    .end local v69    # "overlay":Lcom/android/videoeditor/service/MovieOverlay;
    .end local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_22
    if-eqz p6, :cond_4e

    .line 3715
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3718
    :cond_4e
    const-string v11, "r_item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 3720
    .restart local v23    # "mediaItemId":Ljava/lang/String;
    const-string v11, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 3721
    .restart local v36    # "overlayId":Ljava/lang/String;
    const-string v11, "attributes"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v44

    .line 3723
    .local v44, "userAttributes":Landroid/os/Bundle;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v76

    .line 3724
    .restart local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v76, :cond_4f

    .line 3725
    if-nez p5, :cond_4f

    .line 3726
    move-object/from16 v0, v76

    move-object/from16 v1, v23

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/android/videoeditor/service/VideoEditorProject;->getOverlay(Ljava/lang/String;Ljava/lang/String;)Lcom/android/videoeditor/service/MovieOverlay;

    move-result-object v69

    .line 3728
    .restart local v69    # "overlay":Lcom/android/videoeditor/service/MovieOverlay;
    if-eqz v69, :cond_4f

    .line 3729
    const/4 v11, 0x0

    move-object/from16 v0, v76

    invoke-virtual {v0, v11}, Lcom/android/videoeditor/service/VideoEditorProject;->setClean(Z)V

    .line 3730
    move-object/from16 v0, v69

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/MovieOverlay;->updateUserAttributes(Landroid/os/Bundle;)V

    .line 3735
    .end local v69    # "overlay":Lcom/android/videoeditor/service/MovieOverlay;
    :cond_4f
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v60

    .restart local v60    # "i$":Ljava/util/Iterator;
    :goto_2e
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiServiceListener;

    .restart local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    move-object/from16 v40, v5

    move-object/from16 v41, v6

    move-object/from16 v42, v36

    move-object/from16 v43, v23

    move-object/from16 v45, p5

    .line 3736
    invoke-virtual/range {v40 .. v45}, Lcom/android/videoeditor/service/ApiServiceListener;->onOverlayUserAttributesSet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Exception;)V

    goto :goto_2e

    .line 3745
    .end local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    .end local v23    # "mediaItemId":Ljava/lang/String;
    .end local v36    # "overlayId":Ljava/lang/String;
    .end local v44    # "userAttributes":Landroid/os/Bundle;
    .end local v60    # "i$":Ljava/util/Iterator;
    .end local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_23
    if-eqz p6, :cond_50

    .line 3746
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3749
    :cond_50
    const-string v11, "r_item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .restart local v23    # "mediaItemId":Ljava/lang/String;
    move-object/from16 v63, p3

    .line 3752
    check-cast v63, Lcom/android/videoeditor/service/MovieEffect;

    .line 3753
    .local v63, "movieEffect":Lcom/android/videoeditor/service/MovieEffect;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v76

    .line 3754
    .restart local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v76, :cond_51

    .line 3755
    if-nez p5, :cond_51

    .line 3756
    move-object/from16 v0, v76

    move-object/from16 v1, v23

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lcom/android/videoeditor/service/VideoEditorProject;->addEffect(Ljava/lang/String;Lcom/android/videoeditor/service/MovieEffect;)V

    .line 3760
    :cond_51
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v60

    .restart local v60    # "i$":Ljava/util/Iterator;
    :goto_2f
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiServiceListener;

    .line 3761
    .restart local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    move-object/from16 v0, v63

    move-object/from16 v1, v23

    move-object/from16 v2, p5

    invoke-virtual {v5, v6, v0, v1, v2}, Lcom/android/videoeditor/service/ApiServiceListener;->onEffectAdded(Ljava/lang/String;Lcom/android/videoeditor/service/MovieEffect;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2f

    .line 3768
    .end local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    .end local v23    # "mediaItemId":Ljava/lang/String;
    .end local v60    # "i$":Ljava/util/Iterator;
    .end local v63    # "movieEffect":Lcom/android/videoeditor/service/MovieEffect;
    .end local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_24
    if-eqz p6, :cond_52

    .line 3769
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3772
    :cond_52
    const-string v11, "r_item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 3774
    .restart local v23    # "mediaItemId":Ljava/lang/String;
    const-string v11, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    .line 3776
    .local v57, "effectId":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v76

    .line 3777
    .restart local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v76, :cond_53

    .line 3778
    if-nez p5, :cond_53

    .line 3779
    move-object/from16 v0, v76

    move-object/from16 v1, v23

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lcom/android/videoeditor/service/VideoEditorProject;->removeEffect(Ljava/lang/String;Ljava/lang/String;)V

    .line 3783
    :cond_53
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v60

    .restart local v60    # "i$":Ljava/util/Iterator;
    :goto_30
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiServiceListener;

    .line 3784
    .restart local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    move-object/from16 v0, v57

    move-object/from16 v1, v23

    move-object/from16 v2, p5

    invoke-virtual {v5, v6, v0, v1, v2}, Lcom/android/videoeditor/service/ApiServiceListener;->onEffectRemoved(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_30

    .line 3791
    .end local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    .end local v23    # "mediaItemId":Ljava/lang/String;
    .end local v57    # "effectId":Ljava/lang/String;
    .end local v60    # "i$":Ljava/util/Iterator;
    .end local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_25
    if-eqz p6, :cond_54

    .line 3792
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    :cond_54
    move-object/from16 v62, p3

    .line 3795
    check-cast v62, Lcom/android/videoeditor/service/MovieAudioTrack;

    .line 3796
    .local v62, "movieAudioTrack":Lcom/android/videoeditor/service/MovieAudioTrack;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v76

    .line 3797
    .restart local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v76, :cond_55

    .line 3798
    if-nez p5, :cond_55

    .line 3799
    move-object/from16 v0, v76

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->addAudioTrack(Lcom/android/videoeditor/service/MovieAudioTrack;)V

    .line 3803
    :cond_55
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v60

    .restart local v60    # "i$":Ljava/util/Iterator;
    :goto_31
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiServiceListener;

    .line 3804
    .restart local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    move-object/from16 v0, v62

    move-object/from16 v1, p5

    invoke-virtual {v5, v6, v0, v1}, Lcom/android/videoeditor/service/ApiServiceListener;->onAudioTrackAdded(Ljava/lang/String;Lcom/android/videoeditor/service/MovieAudioTrack;Ljava/lang/Exception;)V

    goto :goto_31

    .line 3811
    .end local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    .end local v60    # "i$":Ljava/util/Iterator;
    .end local v62    # "movieAudioTrack":Lcom/android/videoeditor/service/MovieAudioTrack;
    .end local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_26
    if-eqz p6, :cond_56

    .line 3812
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3815
    :cond_56
    const-string v11, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 3817
    .local v47, "audioTrackId":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v76

    .line 3818
    .restart local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v76, :cond_57

    .line 3819
    if-nez p5, :cond_57

    .line 3820
    move-object/from16 v0, v76

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->removeAudioTrack(Ljava/lang/String;)V

    .line 3824
    :cond_57
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v60

    .restart local v60    # "i$":Ljava/util/Iterator;
    :goto_32
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiServiceListener;

    .line 3825
    .restart local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    move-object/from16 v0, v47

    move-object/from16 v1, p5

    invoke-virtual {v5, v6, v0, v1}, Lcom/android/videoeditor/service/ApiServiceListener;->onAudioTrackRemoved(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_32

    .line 3832
    .end local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    .end local v47    # "audioTrackId":Ljava/lang/String;
    .end local v60    # "i$":Ljava/util/Iterator;
    .end local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_27
    if-eqz p6, :cond_58

    .line 3833
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3836
    :cond_58
    const-string v11, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 3837
    .restart local v47    # "audioTrackId":Ljava/lang/String;
    const-string v11, "b_boundary"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v48

    .line 3838
    .local v48, "beginBoundary":J
    const-string v11, "e_boundary"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v50

    .line 3840
    .local v50, "endBoundary":J
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v76

    .line 3841
    .restart local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v76, :cond_59

    .line 3842
    if-nez p5, :cond_59

    .line 3843
    move-object/from16 v0, v76

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getAudioTrack(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieAudioTrack;

    move-result-object v54

    .line 3845
    .local v54, "audioTrack":Lcom/android/videoeditor/service/MovieAudioTrack;
    if-eqz v54, :cond_59

    .line 3846
    const/4 v11, 0x0

    move-object/from16 v0, v76

    invoke-virtual {v0, v11}, Lcom/android/videoeditor/service/VideoEditorProject;->setClean(Z)V

    .line 3847
    move-object/from16 v0, v54

    move-wide/from16 v1, v48

    move-wide/from16 v3, v50

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/videoeditor/service/MovieAudioTrack;->setExtractBoundaries(JJ)V

    .line 3852
    .end local v54    # "audioTrack":Lcom/android/videoeditor/service/MovieAudioTrack;
    :cond_59
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v60

    .restart local v60    # "i$":Ljava/util/Iterator;
    :goto_33
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiServiceListener;

    .restart local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    move-object/from16 v45, v5

    move-object/from16 v46, v6

    move-object/from16 v52, p5

    .line 3853
    invoke-virtual/range {v45 .. v52}, Lcom/android/videoeditor/service/ApiServiceListener;->onAudioTrackBoundariesSet(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/Exception;)V

    goto :goto_33

    .line 3861
    .end local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    .end local v47    # "audioTrackId":Ljava/lang/String;
    .end local v48    # "beginBoundary":J
    .end local v50    # "endBoundary":J
    .end local v60    # "i$":Ljava/util/Iterator;
    .end local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_28
    if-eqz p6, :cond_5a

    .line 3862
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3865
    :cond_5a
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v76

    .line 3866
    .restart local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v76, :cond_0

    .line 3867
    const-string v11, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 3868
    .restart local v47    # "audioTrackId":Ljava/lang/String;
    move-object/from16 v0, v76

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getAudioTrack(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieAudioTrack;

    move-result-object v54

    .line 3869
    .restart local v54    # "audioTrack":Lcom/android/videoeditor/service/MovieAudioTrack;
    if-eqz v54, :cond_0

    .line 3870
    const/4 v11, 0x0

    move-object/from16 v0, v76

    invoke-virtual {v0, v11}, Lcom/android/videoeditor/service/VideoEditorProject;->setClean(Z)V

    .line 3871
    if-nez p5, :cond_5b

    .line 3872
    const-string v11, "loop"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    move-object/from16 v0, v54

    invoke-virtual {v0, v11}, Lcom/android/videoeditor/service/MovieAudioTrack;->enableLoop(Z)V

    goto/16 :goto_0

    .line 3874
    :cond_5b
    invoke-virtual/range {v54 .. v54}, Lcom/android/videoeditor/service/MovieAudioTrack;->isLooping()Z

    move-result v11

    move-object/from16 v0, v54

    invoke-virtual {v0, v11}, Lcom/android/videoeditor/service/MovieAudioTrack;->enableAppLoop(Z)V

    goto/16 :goto_0

    .line 3883
    .end local v47    # "audioTrackId":Ljava/lang/String;
    .end local v54    # "audioTrack":Lcom/android/videoeditor/service/MovieAudioTrack;
    .end local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_29
    if-eqz p6, :cond_5c

    .line 3884
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3887
    :cond_5c
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v76

    .line 3888
    .restart local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v76, :cond_0

    .line 3889
    const-string v11, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 3890
    .restart local v47    # "audioTrackId":Ljava/lang/String;
    move-object/from16 v0, v76

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getAudioTrack(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieAudioTrack;

    move-result-object v54

    .line 3891
    .restart local v54    # "audioTrack":Lcom/android/videoeditor/service/MovieAudioTrack;
    if-eqz v54, :cond_0

    .line 3892
    const/4 v11, 0x0

    move-object/from16 v0, v76

    invoke-virtual {v0, v11}, Lcom/android/videoeditor/service/VideoEditorProject;->setClean(Z)V

    .line 3893
    if-nez p5, :cond_5d

    .line 3894
    const-string v11, "duck"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    move-object/from16 v0, v54

    invoke-virtual {v0, v11}, Lcom/android/videoeditor/service/MovieAudioTrack;->enableDucking(Z)V

    goto/16 :goto_0

    .line 3896
    :cond_5d
    invoke-virtual/range {v54 .. v54}, Lcom/android/videoeditor/service/MovieAudioTrack;->isDuckingEnabled()Z

    move-result v11

    move-object/from16 v0, v54

    invoke-virtual {v0, v11}, Lcom/android/videoeditor/service/MovieAudioTrack;->enableAppDucking(Z)V

    goto/16 :goto_0

    .line 3905
    .end local v47    # "audioTrackId":Ljava/lang/String;
    .end local v54    # "audioTrack":Lcom/android/videoeditor/service/MovieAudioTrack;
    .end local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_2a
    if-eqz p6, :cond_5e

    .line 3906
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3909
    :cond_5e
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v76

    .line 3910
    .restart local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v76, :cond_0

    .line 3911
    const-string v11, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 3912
    .restart local v47    # "audioTrackId":Ljava/lang/String;
    move-object/from16 v0, v76

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getAudioTrack(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieAudioTrack;

    move-result-object v54

    .line 3913
    .restart local v54    # "audioTrack":Lcom/android/videoeditor/service/MovieAudioTrack;
    if-eqz v54, :cond_0

    .line 3914
    const/4 v11, 0x0

    move-object/from16 v0, v76

    invoke-virtual {v0, v11}, Lcom/android/videoeditor/service/VideoEditorProject;->setClean(Z)V

    .line 3915
    if-nez p5, :cond_5f

    .line 3916
    const-string v11, "volume"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    move-object/from16 v0, v54

    invoke-virtual {v0, v11}, Lcom/android/videoeditor/service/MovieAudioTrack;->setVolume(I)V

    goto/16 :goto_0

    .line 3918
    :cond_5f
    invoke-virtual/range {v54 .. v54}, Lcom/android/videoeditor/service/MovieAudioTrack;->getVolume()I

    move-result v11

    move-object/from16 v0, v54

    invoke-virtual {v0, v11}, Lcom/android/videoeditor/service/MovieAudioTrack;->setAppVolume(I)V

    goto/16 :goto_0

    .line 3927
    .end local v47    # "audioTrackId":Ljava/lang/String;
    .end local v54    # "audioTrack":Lcom/android/videoeditor/service/MovieAudioTrack;
    .end local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_2b
    if-eqz p6, :cond_60

    .line 3928
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3931
    :cond_60
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v76

    .line 3932
    .restart local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v76, :cond_0

    .line 3933
    const-string v11, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 3934
    .restart local v47    # "audioTrackId":Ljava/lang/String;
    move-object/from16 v0, v76

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getAudioTrack(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieAudioTrack;

    move-result-object v54

    .line 3935
    .restart local v54    # "audioTrack":Lcom/android/videoeditor/service/MovieAudioTrack;
    if-eqz v54, :cond_0

    .line 3936
    const/4 v11, 0x0

    move-object/from16 v0, v76

    invoke-virtual {v0, v11}, Lcom/android/videoeditor/service/VideoEditorProject;->setClean(Z)V

    .line 3937
    if-nez p5, :cond_61

    .line 3938
    const-string v11, "mute"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    move-object/from16 v0, v54

    invoke-virtual {v0, v11}, Lcom/android/videoeditor/service/MovieAudioTrack;->setMute(Z)V

    goto/16 :goto_0

    .line 3940
    :cond_61
    invoke-virtual/range {v54 .. v54}, Lcom/android/videoeditor/service/MovieAudioTrack;->isMuted()Z

    move-result v11

    move-object/from16 v0, v54

    invoke-virtual {v0, v11}, Lcom/android/videoeditor/service/MovieAudioTrack;->setAppMute(Z)V

    goto/16 :goto_0

    .line 3949
    .end local v47    # "audioTrackId":Ljava/lang/String;
    .end local v54    # "audioTrack":Lcom/android/videoeditor/service/MovieAudioTrack;
    .end local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_2c
    if-eqz p6, :cond_62

    .line 3950
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3953
    :cond_62
    const-string v11, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 3954
    .restart local v47    # "audioTrackId":Ljava/lang/String;
    const-string v11, "prog_value"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 3956
    .restart local v10    # "progress":I
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v60

    .restart local v60    # "i$":Ljava/util/Iterator;
    :goto_34
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiServiceListener;

    .line 3957
    .restart local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    move-object/from16 v0, v47

    invoke-virtual {v5, v6, v0, v10}, Lcom/android/videoeditor/service/ApiServiceListener;->onAudioTrackExtractAudioWaveformProgress(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_34

    .line 3965
    .end local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    .end local v10    # "progress":I
    .end local v47    # "audioTrackId":Ljava/lang/String;
    .end local v60    # "i$":Ljava/util/Iterator;
    :sswitch_2d
    if-eqz p6, :cond_63

    .line 3966
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3969
    :cond_63
    const-string v11, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 3971
    .restart local v47    # "audioTrackId":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v76

    .line 3972
    .restart local v76    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    if-nez p5, :cond_64

    if-eqz v76, :cond_64

    .line 3973
    if-eqz p3, :cond_64

    .line 3974
    move-object/from16 v0, v76

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getAudioTrack(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieAudioTrack;

    move-result-object v54

    .line 3976
    .restart local v54    # "audioTrack":Lcom/android/videoeditor/service/MovieAudioTrack;
    if-eqz v54, :cond_64

    .line 3977
    const/4 v11, 0x0

    move-object/from16 v0, v76

    invoke-virtual {v0, v11}, Lcom/android/videoeditor/service/VideoEditorProject;->setClean(Z)V

    .line 3978
    check-cast p3, Landroid/media/videoeditor/WaveformData;

    .end local p3    # "result":Ljava/lang/Object;
    move-object/from16 v0, v54

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/MovieAudioTrack;->setWaveformData(Landroid/media/videoeditor/WaveformData;)V

    .line 3983
    .end local v54    # "audioTrack":Lcom/android/videoeditor/service/MovieAudioTrack;
    :cond_64
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v60

    .restart local v60    # "i$":Ljava/util/Iterator;
    :goto_35
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiServiceListener;

    .line 3984
    .restart local v5    # "listener":Lcom/android/videoeditor/service/ApiServiceListener;
    move-object/from16 v0, v47

    move-object/from16 v1, p5

    invoke-virtual {v5, v6, v0, v1}, Lcom/android/videoeditor/service/ApiServiceListener;->onAudioTrackExtractAudioWaveformComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_35

    .line 2928
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_9
        0x4 -> :sswitch_0
        0x5 -> :sswitch_7
        0x6 -> :sswitch_8
        0x8 -> :sswitch_a
        0x9 -> :sswitch_b
        0xa -> :sswitch_4
        0xb -> :sswitch_5
        0xc -> :sswitch_6
        0xd -> :sswitch_1
        0x64 -> :sswitch_c
        0x65 -> :sswitch_d
        0x66 -> :sswitch_10
        0x67 -> :sswitch_11
        0x68 -> :sswitch_12
        0x69 -> :sswitch_13
        0x6a -> :sswitch_14
        0x6b -> :sswitch_16
        0x6c -> :sswitch_17
        0x6d -> :sswitch_19
        0x6e -> :sswitch_18
        0x70 -> :sswitch_15
        0x71 -> :sswitch_e
        0x72 -> :sswitch_f
        0xc8 -> :sswitch_23
        0xc9 -> :sswitch_23
        0xca -> :sswitch_24
        0x12c -> :sswitch_1a
        0x12d -> :sswitch_1a
        0x12e -> :sswitch_1a
        0x12f -> :sswitch_1a
        0x130 -> :sswitch_1b
        0x131 -> :sswitch_1c
        0x132 -> :sswitch_1d
        0x190 -> :sswitch_1e
        0x191 -> :sswitch_1f
        0x192 -> :sswitch_20
        0x193 -> :sswitch_21
        0x194 -> :sswitch_22
        0x1f4 -> :sswitch_25
        0x1f5 -> :sswitch_26
        0x1f6 -> :sswitch_2a
        0x1f7 -> :sswitch_2b
        0x1f9 -> :sswitch_27
        0x1fa -> :sswitch_28
        0x1fb -> :sswitch_29
        0x1fc -> :sswitch_2d
        0x1fd -> :sswitch_2c
    .end sparse-switch
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 1390
    const-string v11, "op"

    const/4 v12, -0x1

    invoke-virtual {p1, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1391
    .local v4, "op":I
    sparse-switch v4, :sswitch_data_0

    .line 1487
    const-string v11, "VEApiService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No thread assigned: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    :goto_0
    const/4 v11, 0x2

    return v11

    .line 1438
    :sswitch_0
    iget-object v11, p0, Lcom/android/videoeditor/service/ApiService;->mVideoThread:Lcom/android/videoeditor/service/ApiService$IntentProcessor;

    invoke-virtual {v11, p1}, Lcom/android/videoeditor/service/ApiService$IntentProcessor;->submit(Landroid/content/Intent;)V

    goto :goto_0

    .line 1443
    :sswitch_1
    iget-object v11, p0, Lcom/android/videoeditor/service/ApiService;->mThumbnailThread:Lcom/android/videoeditor/service/ApiService$IntentProcessor;

    invoke-virtual {v11, p1}, Lcom/android/videoeditor/service/ApiService$IntentProcessor;->submit(Landroid/content/Intent;)V

    goto :goto_0

    .line 1448
    :sswitch_2
    const-string v11, "project"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1449
    .local v7, "projectPath":Ljava/lang/String;
    const-string v11, "item_id"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1450
    .local v2, "mediaItemId":Ljava/lang/String;
    const-string v11, "token"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 1453
    .local v10, "token":I
    iget-object v11, p0, Lcom/android/videoeditor/service/ApiService;->mThumbnailThread:Lcom/android/videoeditor/service/ApiService$IntentProcessor;

    invoke-virtual {v11}, Lcom/android/videoeditor/service/ApiService$IntentProcessor;->getIntentQueueIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1454
    .local v1, "intentQueueIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/Intent;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1455
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 1456
    .local v8, "qIntent":Landroid/content/Intent;
    const-string v11, "op"

    const/4 v12, -0x1

    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1457
    .local v5, "opi":I
    const-string v11, "project"

    invoke-virtual {v8, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1458
    .local v6, "pp":Ljava/lang/String;
    const-string v11, "item_id"

    invoke-virtual {v8, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1459
    .local v3, "mid":Ljava/lang/String;
    const-string v11, "token"

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 1460
    .local v9, "tk":I
    if-ne v5, v4, :cond_0

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    if-eq v9, v10, :cond_0

    .line 1462
    iget-object v11, p0, Lcom/android/videoeditor/service/ApiService;->mThumbnailThread:Lcom/android/videoeditor/service/ApiService$IntentProcessor;

    invoke-virtual {v11, v8}, Lcom/android/videoeditor/service/ApiService$IntentProcessor;->cancel(Landroid/content/Intent;)Z

    move-result v0

    .line 1463
    .local v0, "canceled":Z
    if-eqz v0, :cond_1

    .line 1464
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Canceled operation: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " for media item"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/videoeditor/service/ApiService;->logd(Ljava/lang/String;)V

    .line 1465
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mPendingIntents:Ljava/util/Map;

    const-string v12, "rid"

    invoke-virtual {v8, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1466
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    invoke-virtual {v11, v8}, Lcom/android/videoeditor/service/IntentPool;->put(Landroid/content/Intent;)V

    .line 1471
    .end local v0    # "canceled":Z
    .end local v3    # "mid":Ljava/lang/String;
    .end local v5    # "opi":I
    .end local v6    # "pp":Ljava/lang/String;
    .end local v8    # "qIntent":Landroid/content/Intent;
    .end local v9    # "tk":I
    :cond_1
    iget-object v11, p0, Lcom/android/videoeditor/service/ApiService;->mThumbnailThread:Lcom/android/videoeditor/service/ApiService$IntentProcessor;

    invoke-virtual {v11, p1}, Lcom/android/videoeditor/service/ApiService$IntentProcessor;->submit(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1482
    .end local v1    # "intentQueueIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/Intent;>;"
    .end local v2    # "mediaItemId":Ljava/lang/String;
    .end local v7    # "projectPath":Ljava/lang/String;
    .end local v10    # "token":I
    :sswitch_3
    iget-object v11, p0, Lcom/android/videoeditor/service/ApiService;->mAudioThread:Lcom/android/videoeditor/service/ApiService$IntentProcessor;

    invoke-virtual {v11, p1}, Lcom/android/videoeditor/service/ApiService$IntentProcessor;->submit(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1391
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xd -> :sswitch_0
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
        0x68 -> :sswitch_0
        0x69 -> :sswitch_0
        0x6a -> :sswitch_0
        0x6b -> :sswitch_3
        0x6c -> :sswitch_3
        0x6d -> :sswitch_0
        0x6e -> :sswitch_0
        0x70 -> :sswitch_2
        0x71 -> :sswitch_0
        0x72 -> :sswitch_0
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_0
        0xca -> :sswitch_0
        0x12c -> :sswitch_0
        0x12d -> :sswitch_0
        0x12e -> :sswitch_0
        0x12f -> :sswitch_0
        0x130 -> :sswitch_0
        0x131 -> :sswitch_0
        0x132 -> :sswitch_1
        0x190 -> :sswitch_0
        0x191 -> :sswitch_0
        0x192 -> :sswitch_0
        0x193 -> :sswitch_0
        0x194 -> :sswitch_0
        0x1f4 -> :sswitch_0
        0x1f5 -> :sswitch_0
        0x1f6 -> :sswitch_3
        0x1f7 -> :sswitch_3
        0x1f9 -> :sswitch_0
        0x1fa -> :sswitch_3
        0x1fb -> :sswitch_3
        0x1fc -> :sswitch_0
        0x1fd -> :sswitch_0
    .end sparse-switch
.end method

.method public processIntent(Landroid/content/Intent;)V
    .locals 124
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1526
    const-string v4, "op"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v113

    .line 1527
    .local v113, "op":I
    const/4 v6, 0x0

    .line 1529
    .local v6, "videoEditor":Landroid/media/videoeditor/VideoEditor;
    :try_start_0
    const-string v4, "project"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v118

    .line 1531
    .local v118, "projectPath":Ljava/lang/String;
    sparse-switch v113, :sswitch_data_0

    .line 1540
    move-object/from16 v0, p0

    move-object/from16 v1, v118

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->getVideoEditor(Ljava/lang/String;)Landroid/media/videoeditor/VideoEditor;

    move-result-object v6

    .line 1541
    if-nez v6, :cond_0

    .line 1542
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid project path: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v118

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " for operation: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v113

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2870
    .end local v118    # "projectPath":Ljava/lang/String;
    :catch_0
    move-exception v88

    .line 2871
    .local v88, "ex":Ljava/lang/Exception;
    invoke-virtual/range {v88 .. v88}, Ljava/lang/Exception;->printStackTrace()V

    .line 2872
    const/16 v89, 0x0

    const/16 v90, 0x0

    const/16 v91, 0x1

    move-object/from16 v85, p0

    move-object/from16 v86, p1

    move-object/from16 v87, v6

    invoke-direct/range {v85 .. v91}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 2874
    .end local v88    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 1549
    .restart local v118    # "projectPath":Ljava/lang/String;
    :cond_0
    :sswitch_0
    sparse-switch v113, :sswitch_data_1

    .line 2867
    :try_start_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unhandled operation: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v113

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1551
    :sswitch_1
    const-string v4, "OP_LOAD_PROJECTS"

    invoke-static {v4}, Lcom/android/videoeditor/service/ApiService;->logd(Ljava/lang/String;)V

    .line 1552
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1553
    .local v8, "projects":Ljava/util/List;, "Ljava/util/List<Lcom/android/videoeditor/service/VideoEditorProject;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/service/ApiService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/videoeditor/util/FileUtils;->getProjectsRootDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v96

    .line 1554
    .local v96, "dir":Ljava/io/File;
    if-eqz v96, :cond_3

    .line 1556
    invoke-virtual/range {v96 .. v96}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v100

    .line 1557
    .local v100, "files":[Ljava/io/File;
    if-eqz v100, :cond_3

    .line 1558
    const/16 v102, 0x0

    .local v102, "i":I
    :goto_1
    move-object/from16 v0, v100

    array-length v4, v0

    move/from16 v0, v102

    if-ge v0, v4, :cond_2

    .line 1559
    aget-object v4, v100, v102

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1560
    aget-object v4, v100, v102

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v117

    .line 1562
    .local v117, "pp":Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_2
    move-object/from16 v0, v117

    invoke-static {v4, v0}, Lcom/android/videoeditor/service/VideoEditorProject;->fromXml(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1558
    .end local v117    # "pp":Ljava/lang/String;
    :cond_1
    :goto_2
    add-int/lit8 v102, v102, 0x1

    goto :goto_1

    .line 1563
    .restart local v117    # "pp":Ljava/lang/String;
    :catch_1
    move-exception v88

    .line 1564
    .local v88, "ex":Ljava/io/FileNotFoundException;
    :try_start_3
    const-string v4, "VEApiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processIntent: Project file not found: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v117

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v117

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/videoeditor/util/FileUtils;->deleteDir(Ljava/io/File;)Z

    goto :goto_2

    .line 1566
    .end local v88    # "ex":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v88

    .line 1567
    .local v88, "ex":Ljava/lang/Exception;
    invoke-virtual/range {v88 .. v88}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1572
    .end local v88    # "ex":Ljava/lang/Exception;
    .end local v117    # "pp":Ljava/lang/String;
    :cond_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 1574
    new-instance v4, Lcom/android/videoeditor/service/ApiService$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/videoeditor/service/ApiService$2;-><init>(Lcom/android/videoeditor/service/ApiService;)V

    invoke-static {v8, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1591
    .end local v100    # "files":[Ljava/io/File;
    .end local v102    # "i":I
    :cond_3
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto/16 :goto_0

    .line 1596
    .end local v8    # "projects":Ljava/util/List;, "Ljava/util/List<Lcom/android/videoeditor/service/VideoEditorProject;>;"
    .end local v96    # "dir":Ljava/io/File;
    :sswitch_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OP_VIDEO_EDITOR_CREATE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v118

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/videoeditor/service/ApiService;->logd(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1600
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/android/videoeditor/service/ApiService;->releaseEditor()V

    .line 1602
    invoke-static/range {v118 .. v118}, Landroid/media/videoeditor/VideoEditorFactory;->create(Ljava/lang/String;)Landroid/media/videoeditor/VideoEditor;

    move-result-object v6

    .line 1605
    const-string v4, "movies"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v111

    .line 1606
    .local v111, "movies":[Ljava/lang/String;
    const/16 v102, 0x0

    .restart local v102    # "i":I
    :goto_3
    move-object/from16 v0, v111

    array-length v4, v0

    move/from16 v0, v102

    if-ge v0, v4, :cond_4

    .line 1607
    new-instance v9, Landroid/media/videoeditor/MediaVideoItem;

    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->generateId()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v111, v102

    const/4 v7, 0x0

    invoke-direct {v9, v6, v4, v5, v7}, Landroid/media/videoeditor/MediaVideoItem;-><init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1610
    .local v9, "mediaItem":Landroid/media/videoeditor/MediaItem;
    invoke-interface {v6, v9}, Landroid/media/videoeditor/VideoEditor;->addMediaItem(Landroid/media/videoeditor/MediaItem;)V

    .line 1606
    add-int/lit8 v102, v102, 0x1

    goto :goto_3

    .line 1614
    .end local v9    # "mediaItem":Landroid/media/videoeditor/MediaItem;
    :cond_4
    const-string v4, "images"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v116

    .line 1615
    .local v116, "photos":[Ljava/lang/String;
    const/16 v102, 0x0

    :goto_4
    move-object/from16 v0, v116

    array-length v4, v0

    move/from16 v0, v102

    if-ge v0, v4, :cond_5

    .line 1616
    new-instance v9, Landroid/media/videoeditor/MediaImageItem;

    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->generateId()Ljava/lang/String;

    move-result-object v11

    aget-object v12, v116, v102

    invoke-static {}, Lcom/android/videoeditor/util/MediaItemUtils;->getDefaultImageDuration()J

    move-result-wide v13

    const/4 v15, 0x0

    move-object v10, v6

    invoke-direct/range {v9 .. v15}, Landroid/media/videoeditor/MediaImageItem;-><init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 1620
    .restart local v9    # "mediaItem":Landroid/media/videoeditor/MediaItem;
    invoke-interface {v6, v9}, Landroid/media/videoeditor/VideoEditor;->addMediaItem(Landroid/media/videoeditor/MediaItem;)V

    .line 1615
    add-int/lit8 v102, v102, 0x1

    goto :goto_4

    .line 1624
    .end local v9    # "mediaItem":Landroid/media/videoeditor/MediaItem;
    :cond_5
    const-string v4, "name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1625
    .local v13, "projectName":Ljava/lang/String;
    const-string v4, "theme"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1626
    .local v22, "themeId":Ljava/lang/String;
    if-eqz v22, :cond_6

    .line 1627
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v6, v1}, Lcom/android/videoeditor/service/ApiService;->applyThemeToMovie(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;)V

    .line 1631
    :cond_6
    invoke-interface {v6}, Landroid/media/videoeditor/VideoEditor;->getAllMediaItems()Ljava/util/List;

    move-result-object v106

    .line 1632
    .local v106, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/MediaItem;>;"
    invoke-interface/range {v106 .. v106}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 1633
    const/4 v4, 0x0

    move-object/from16 v0, v106

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/videoeditor/MediaItem;

    invoke-virtual {v4}, Landroid/media/videoeditor/MediaItem;->getAspectRatio()I

    move-result v4

    invoke-interface {v6, v4}, Landroid/media/videoeditor/VideoEditor;->setAspectRatio(I)V

    .line 1637
    :cond_7
    new-instance v10, Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x14

    const/16 v21, 0x0

    const/16 v23, 0x0

    move-object v11, v6

    move-object/from16 v12, v118

    invoke-direct/range {v10 .. v23}, Lcom/android/videoeditor/service/VideoEditorProject;-><init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;JJJILandroid/net/Uri;Ljava/lang/String;Ljava/util/List;)V

    .line 1640
    .local v10, "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    invoke-interface {v6}, Landroid/media/videoeditor/VideoEditor;->getAllMediaItems()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/videoeditor/service/ApiService;->copyMediaItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/android/videoeditor/service/VideoEditorProject;->setMediaItems(Ljava/util/List;)V

    .line 1642
    invoke-interface {v6}, Landroid/media/videoeditor/VideoEditor;->getAllAudioTracks()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/videoeditor/service/ApiService;->copyAudioTracks(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/android/videoeditor/service/VideoEditorProject;->setAudioTracks(Ljava/util/List;)V

    .line 1646
    sput-object v6, Lcom/android/videoeditor/service/ApiService;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    .line 1647
    new-instance v4, Lcom/android/videoeditor/service/ApiService$ServiceMediaProcessingProgressListener;

    move-object/from16 v0, p0

    move-object/from16 v1, v118

    invoke-direct {v4, v0, v1}, Lcom/android/videoeditor/service/ApiService$ServiceMediaProcessingProgressListener;-><init>(Lcom/android/videoeditor/service/ApiService;Ljava/lang/String;)V

    sput-object v4, Lcom/android/videoeditor/service/ApiService;->mGeneratePreviewListener:Lcom/android/videoeditor/service/ApiService$ServiceMediaProcessingProgressListener;

    .line 1650
    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v16, v6

    move-object/from16 v18, v10

    invoke-direct/range {v14 .. v20}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 1651
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 1652
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 1653
    .end local v10    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    .end local v13    # "projectName":Ljava/lang/String;
    .end local v22    # "themeId":Ljava/lang/String;
    .end local v102    # "i":I
    .end local v106    # "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/MediaItem;>;"
    .end local v111    # "movies":[Ljava/lang/String;
    .end local v116    # "photos":[Ljava/lang/String;
    :catch_3
    move-exception v88

    .line 1654
    .restart local v88    # "ex":Ljava/lang/Exception;
    if-eqz v6, :cond_8

    .line 1655
    :try_start_5
    invoke-interface {v6}, Landroid/media/videoeditor/VideoEditor;->release()V

    .line 1656
    const/4 v6, 0x0

    .line 1658
    :cond_8
    throw v88

    .line 1665
    .end local v88    # "ex":Ljava/lang/Exception;
    :sswitch_3
    move-object/from16 v0, p0

    move-object/from16 v1, v118

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->releaseEditorNot(Ljava/lang/String;)Landroid/media/videoeditor/VideoEditor;

    move-result-object v6

    .line 1667
    if-nez v6, :cond_a

    .line 1668
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OP_VIDEO_EDITOR_LOAD: Loading: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v118

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/videoeditor/service/ApiService;->logd(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 1671
    const/4 v4, 0x0

    :try_start_6
    move-object/from16 v0, v118

    invoke-static {v0, v4}, Landroid/media/videoeditor/VideoEditorFactory;->load(Ljava/lang/String;Z)Landroid/media/videoeditor/VideoEditor;

    move-result-object v6

    .line 1674
    move-object/from16 v0, v118

    invoke-static {v6, v0}, Lcom/android/videoeditor/service/VideoEditorProject;->fromXml(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v10

    .line 1676
    .restart local v10    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    invoke-interface {v6}, Landroid/media/videoeditor/VideoEditor;->getAllMediaItems()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/videoeditor/service/ApiService;->copyMediaItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/android/videoeditor/service/VideoEditorProject;->setMediaItems(Ljava/util/List;)V

    .line 1678
    invoke-interface {v6}, Landroid/media/videoeditor/VideoEditor;->getAllAudioTracks()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/videoeditor/service/ApiService;->copyAudioTracks(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/android/videoeditor/service/VideoEditorProject;->setAudioTracks(Ljava/util/List;)V

    .line 1681
    sput-object v6, Lcom/android/videoeditor/service/ApiService;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    .line 1682
    new-instance v4, Lcom/android/videoeditor/service/ApiService$ServiceMediaProcessingProgressListener;

    move-object/from16 v0, p0

    move-object/from16 v1, v118

    invoke-direct {v4, v0, v1}, Lcom/android/videoeditor/service/ApiService$ServiceMediaProcessingProgressListener;-><init>(Lcom/android/videoeditor/service/ApiService;Ljava/lang/String;)V

    sput-object v4, Lcom/android/videoeditor/service/ApiService;->mGeneratePreviewListener:Lcom/android/videoeditor/service/ApiService$ServiceMediaProcessingProgressListener;

    .line 1685
    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v16, v6

    move-object/from16 v18, v10

    invoke-direct/range {v14 .. v20}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 1686
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 1687
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 1688
    .end local v10    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    :catch_4
    move-exception v88

    .line 1689
    .restart local v88    # "ex":Ljava/lang/Exception;
    if-eqz v6, :cond_9

    .line 1690
    :try_start_7
    invoke-interface {v6}, Landroid/media/videoeditor/VideoEditor;->release()V

    .line 1691
    const/4 v6, 0x0

    .line 1693
    :cond_9
    throw v88

    .line 1696
    .end local v88    # "ex":Ljava/lang/Exception;
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OP_VIDEO_EDITOR_LOAD: Was already loaded: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v118

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/videoeditor/service/ApiService;->logd(Ljava/lang/String;)V

    .line 1697
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v16, v6

    invoke-direct/range {v14 .. v20}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto/16 :goto_0

    .line 1704
    :sswitch_4
    const-string v4, "OP_VIDEO_EDITOR_SET_ASPECT_RATIO"

    invoke-static {v4}, Lcom/android/videoeditor/service/ApiService;->logd(Ljava/lang/String;)V

    .line 1706
    const-string v4, "aspect_ratio"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v6, v4}, Landroid/media/videoeditor/VideoEditor;->setAspectRatio(I)V

    .line 1709
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v16, v6

    invoke-direct/range {v14 .. v20}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 1710
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 1711
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1716
    :sswitch_5
    const-string v4, "OP_VIDEO_EDITOR_APPLY_THEME"

    invoke-static {v4}, Lcom/android/videoeditor/service/ApiService;->logd(Ljava/lang/String;)V

    .line 1719
    const-string v4, "theme"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/videoeditor/service/ApiService;->applyThemeToMovie(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;)V

    .line 1721
    invoke-interface {v6}, Landroid/media/videoeditor/VideoEditor;->getAllMediaItems()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/videoeditor/service/ApiService;->copyMediaItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v18

    .line 1723
    .local v18, "mediaItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/videoeditor/service/MovieMediaItem;>;"
    invoke-interface {v6}, Landroid/media/videoeditor/VideoEditor;->getAllAudioTracks()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/videoeditor/service/ApiService;->copyAudioTracks(Ljava/util/List;)Ljava/util/List;

    move-result-object v19

    .line 1726
    .local v19, "audioTracks":Ljava/util/List;, "Ljava/util/List<Lcom/android/videoeditor/service/MovieAudioTrack;>;"
    const/16 v17, 0x0

    const/16 v20, 0x0

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v16, v6

    invoke-direct/range {v14 .. v20}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 1727
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 1728
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1733
    .end local v18    # "mediaItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/videoeditor/service/MovieMediaItem;>;"
    .end local v19    # "audioTracks":Ljava/util/List;, "Ljava/util/List<Lcom/android/videoeditor/service/MovieAudioTrack;>;"
    :sswitch_6
    const-string v4, "OP_VIDEO_EDITOR_EXPORT"

    invoke-static {v4}, Lcom/android/videoeditor/service/ApiService;->logd(Ljava/lang/String;)V

    .line 1734
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v1}, Lcom/android/videoeditor/service/ApiService;->exportMovie(Landroid/media/videoeditor/VideoEditor;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1739
    :sswitch_7
    const-string v4, "OP_VIDEO_EDITOR_CANCEL_EXPORT"

    invoke-static {v4}, Lcom/android/videoeditor/service/ApiService;->logd(Ljava/lang/String;)V

    .line 1740
    const-string v4, "filename"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Landroid/media/videoeditor/VideoEditor;->cancelExport(Ljava/lang/String;)V

    .line 1741
    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x1

    move-object/from16 v23, p0

    move-object/from16 v24, p1

    move-object/from16 v25, v6

    invoke-direct/range {v23 .. v29}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto/16 :goto_0

    .line 1746
    :sswitch_8
    const-string v4, "OP_VIDEO_EDITOR_EXPORT_STATUS"

    invoke-static {v4}, Lcom/android/videoeditor/service/ApiService;->logd(Ljava/lang/String;)V

    .line 1747
    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x1

    move-object/from16 v23, p0

    move-object/from16 v24, p1

    move-object/from16 v25, v6

    invoke-direct/range {v23 .. v29}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto/16 :goto_0

    .line 1752
    :sswitch_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OP_VIDEO_EDITOR_SAVE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v118

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/videoeditor/service/ApiService;->logd(Ljava/lang/String;)V

    .line 1753
    invoke-interface {v6}, Landroid/media/videoeditor/VideoEditor;->save()V

    .line 1755
    move-object/from16 v0, p0

    move-object/from16 v1, v118

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v10

    .line 1756
    .restart local v10    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v10, :cond_b

    .line 1757
    invoke-virtual {v10}, Lcom/android/videoeditor/service/VideoEditorProject;->saveToXml()V

    .line 1760
    :cond_b
    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x1

    move-object/from16 v23, p0

    move-object/from16 v24, p1

    move-object/from16 v25, v6

    invoke-direct/range {v23 .. v29}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto/16 :goto_0

    .line 1765
    .end local v10    # "videoProject":Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OP_VIDEO_EDITOR_RELEASE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v118

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/videoeditor/service/ApiService;->logd(Ljava/lang/String;)V

    .line 1766
    move-object/from16 v0, p0

    move-object/from16 v1, v118

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->releaseEditor(Ljava/lang/String;)V

    .line 1767
    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x1

    move-object/from16 v23, p0

    move-object/from16 v24, p1

    move-object/from16 v25, v6

    invoke-direct/range {v23 .. v29}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto/16 :goto_0

    .line 1772
    :sswitch_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OP_VIDEO_EDITOR_DELETE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v118

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/videoeditor/service/ApiService;->logd(Ljava/lang/String;)V

    .line 1773
    move-object/from16 v0, p0

    move-object/from16 v1, v118

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->releaseEditor(Ljava/lang/String;)V

    .line 1775
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v118

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/videoeditor/util/FileUtils;->deleteDir(Ljava/io/File;)Z

    .line 1776
    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x1

    move-object/from16 v23, p0

    move-object/from16 v24, p1

    move-object/from16 v25, v6

    invoke-direct/range {v23 .. v29}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto/16 :goto_0

    .line 1781
    :sswitch_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OP_MEDIA_ITEM_ADD_VIDEO_URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/videoeditor/service/ApiService;->logd(Ljava/lang/String;)V

    .line 1783
    const-string v4, "filename"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v24

    check-cast v24, Landroid/net/Uri;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 1784
    .local v24, "data":Landroid/net/Uri;
    const/16 v34, 0x0

    .line 1786
    .local v34, "filename":Ljava/lang/String;
    const/16 v95, 0x0

    .line 1788
    .local v95, "cursor":Landroid/database/Cursor;
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/service/ApiService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/4 v4, 0x0

    const-string v5, "_data"

    aput-object v5, v25, v4

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v23 .. v28}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v95

    if-nez v95, :vs_ok_vid

    invoke-virtual/range {v24 .. v24}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v34

    goto :cond_d

    :vs_ok_vid

    .line 1790
    invoke-interface/range {v95 .. v95}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1791
    const/4 v4, 0x0

    move-object/from16 v0, v95

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v34

    .line 1794
    :cond_c
    if-eqz v95, :cond_d

    .line 1795
    :try_start_9
    invoke-interface/range {v95 .. v95}, Landroid/database/Cursor;->close()V

    .line 1799
    :cond_d
    if-nez v34, :cond_f

    .line 1800
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Media file not found: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1794
    :catchall_0
    move-exception v4

    if-eqz v95, :cond_e

    .line 1795
    invoke-interface/range {v95 .. v95}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v4

    .line 1803
    :cond_f
    new-instance v9, Landroid/media/videoeditor/MediaVideoItem;

    const-string v4, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "rm"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    move-object/from16 v0, v34

    invoke-direct {v9, v6, v4, v0, v5}, Landroid/media/videoeditor/MediaVideoItem;-><init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1808
    .restart local v9    # "mediaItem":Landroid/media/videoeditor/MediaItem;
    const-string v4, "r_item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v9, v4}, Landroid/media/videoeditor/VideoEditor;->insertMediaItem(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;)V

    .line 1813
    invoke-interface {v6}, Landroid/media/videoeditor/VideoEditor;->getAllMediaItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_11

    .line 1814
    invoke-virtual {v9}, Landroid/media/videoeditor/MediaItem;->getAspectRatio()I

    move-result v4

    invoke-interface {v6, v4}, Landroid/media/videoeditor/VideoEditor;->setAspectRatio(I)V

    .line 1815
    invoke-interface {v6}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    .line 1821
    .local v30, "aspectRatio":Ljava/lang/Integer;
    :goto_5
    const-string v4, "theme"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1822
    .restart local v22    # "themeId":Ljava/lang/String;
    if-eqz v22, :cond_10

    .line 1823
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v6, v1, v9}, Lcom/android/videoeditor/service/ApiService;->applyThemeToMediaItem(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Landroid/media/videoeditor/MediaItem;)V

    .line 1826
    :cond_10
    const/16 v28, 0x0

    new-instance v29, Lcom/android/videoeditor/service/MovieMediaItem;

    move-object/from16 v0, v29

    invoke-direct {v0, v9}, Lcom/android/videoeditor/service/MovieMediaItem;-><init>(Landroid/media/videoeditor/MediaItem;)V

    const/16 v31, 0x0

    move-object/from16 v25, p0

    move-object/from16 v26, p1

    move-object/from16 v27, v6

    invoke-direct/range {v25 .. v31}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 1828
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 1829
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1817
    .end local v22    # "themeId":Ljava/lang/String;
    .end local v30    # "aspectRatio":Ljava/lang/Integer;
    :cond_11
    const/16 v30, 0x0

    .restart local v30    # "aspectRatio":Ljava/lang/Integer;
    goto :goto_5

    .line 1834
    .end local v9    # "mediaItem":Landroid/media/videoeditor/MediaItem;
    .end local v24    # "data":Landroid/net/Uri;
    .end local v30    # "aspectRatio":Ljava/lang/Integer;
    .end local v34    # "filename":Ljava/lang/String;
    .end local v95    # "cursor":Landroid/database/Cursor;
    :sswitch_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OP_MEDIA_ITEM_ADD_IMAGE_URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/videoeditor/service/ApiService;->logd(Ljava/lang/String;)V

    .line 1837
    const-string v4, "filename"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v24

    check-cast v24, Landroid/net/Uri;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 1838
    .restart local v24    # "data":Landroid/net/Uri;
    const/16 v34, 0x0

    .line 1840
    .restart local v34    # "filename":Ljava/lang/String;
    const/16 v95, 0x0

    .line 1842
    .restart local v95    # "cursor":Landroid/database/Cursor;
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/service/ApiService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/4 v4, 0x0

    const-string v5, "_data"

    aput-object v5, v25, v4

    const/4 v4, 0x1

    const-string v5, "mime_type"

    aput-object v5, v25, v4

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v23 .. v28}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v95

    if-nez v95, :vs_ok_img

    invoke-virtual/range {v24 .. v24}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v34

    goto :cond_12

    :vs_ok_img

    .line 1845
    invoke-interface/range {v95 .. v95}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1846
    const/4 v4, 0x0

    move-object/from16 v0, v95

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 1847
    const/4 v4, 0x1

    move-object/from16 v0, v95

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v109

    .line 1848
    .local v109, "mimeType":Ljava/lang/String;
    const-string v4, "image/jpeg"

    move-object/from16 v0, v109

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result v4

    if-eqz v4, :cond_12

    .line 1850
    :try_start_b
    new-instance v114, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gallery_image_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->generateId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v114

    move-object/from16 v1, v118

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1852
    .local v114, "outputFile":Ljava/io/File;
    move-object/from16 v0, v34

    move-object/from16 v1, v114

    invoke-static {v0, v1}, Lcom/android/videoeditor/util/ImageUtils;->transformJpeg(Ljava/lang/String;Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1853
    invoke-virtual/range {v114 .. v114}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-result-object v34

    .line 1862
    .end local v109    # "mimeType":Ljava/lang/String;
    .end local v114    # "outputFile":Ljava/io/File;
    :cond_12
    :goto_6
    if-eqz v95, :cond_13

    .line 1863
    :try_start_c
    invoke-interface/range {v95 .. v95}, Landroid/database/Cursor;->close()V

    .line 1867
    :cond_13
    if-nez v34, :cond_15

    .line 1868
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Media file not found: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 1855
    .restart local v109    # "mimeType":Ljava/lang/String;
    :catch_5
    move-exception v88

    .line 1857
    .restart local v88    # "ex":Ljava/lang/Exception;
    :try_start_d
    const-string v4, "VEApiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not transform JPEG: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v88

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_6

    .line 1862
    .end local v88    # "ex":Ljava/lang/Exception;
    .end local v109    # "mimeType":Ljava/lang/String;
    :catchall_1
    move-exception v4

    if-eqz v95, :cond_14

    .line 1863
    :try_start_e
    invoke-interface/range {v95 .. v95}, Landroid/database/Cursor;->close()V

    :cond_14
    throw v4

    .line 1871
    :cond_15
    new-instance v9, Landroid/media/videoeditor/MediaImageItem;

    const-string v4, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string v4, "duration"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v35

    const-string v4, "rm"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v37

    move-object/from16 v31, v9

    move-object/from16 v32, v6

    invoke-direct/range {v31 .. v37}, Landroid/media/videoeditor/MediaImageItem;-><init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 1877
    .restart local v9    # "mediaItem":Landroid/media/videoeditor/MediaItem;
    const-string v4, "r_item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v9, v4}, Landroid/media/videoeditor/VideoEditor;->insertMediaItem(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;)V

    .line 1882
    invoke-interface {v6}, Landroid/media/videoeditor/VideoEditor;->getAllMediaItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_17

    .line 1883
    invoke-virtual {v9}, Landroid/media/videoeditor/MediaItem;->getAspectRatio()I

    move-result v4

    invoke-interface {v6, v4}, Landroid/media/videoeditor/VideoEditor;->setAspectRatio(I)V

    .line 1884
    invoke-interface {v6}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    .line 1890
    .restart local v30    # "aspectRatio":Ljava/lang/Integer;
    :goto_7
    const-string v4, "theme"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1891
    .restart local v22    # "themeId":Ljava/lang/String;
    if-eqz v22, :cond_16

    .line 1892
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v6, v1, v9}, Lcom/android/videoeditor/service/ApiService;->applyThemeToMediaItem(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Landroid/media/videoeditor/MediaItem;)V

    .line 1895
    :cond_16
    const/16 v28, 0x0

    new-instance v29, Lcom/android/videoeditor/service/MovieMediaItem;

    move-object/from16 v0, v29

    invoke-direct {v0, v9}, Lcom/android/videoeditor/service/MovieMediaItem;-><init>(Landroid/media/videoeditor/MediaItem;)V

    const/16 v31, 0x0

    move-object/from16 v25, p0

    move-object/from16 v26, p1

    move-object/from16 v27, v6

    invoke-direct/range {v25 .. v31}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 1897
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 1898
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1886
    .end local v22    # "themeId":Ljava/lang/String;
    .end local v30    # "aspectRatio":Ljava/lang/Integer;
    :cond_17
    const/16 v30, 0x0

    .restart local v30    # "aspectRatio":Ljava/lang/Integer;
    goto :goto_7

    .line 1903
    .end local v9    # "mediaItem":Landroid/media/videoeditor/MediaItem;
    .end local v24    # "data":Landroid/net/Uri;
    .end local v30    # "aspectRatio":Ljava/lang/Integer;
    .end local v34    # "filename":Ljava/lang/String;
    .end local v95    # "cursor":Landroid/database/Cursor;
    :sswitch_e
    const-string v4, "filename"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v24

    check-cast v24, Landroid/net/Uri;

    .line 1904
    .restart local v24    # "data":Landroid/net/Uri;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OP_MEDIA_ITEM_LOAD: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/videoeditor/service/ApiService;->logd(Ljava/lang/String;)V

    .line 1905
    move-object/from16 v120, p1

    .line 1906
    .local v120, "requestIntent":Landroid/content/Intent;
    new-instance v4, Lcom/android/videoeditor/service/ApiService$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v118

    move-object/from16 v2, v120

    move-object/from16 v3, v24

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/videoeditor/service/ApiService$3;-><init>(Lcom/android/videoeditor/service/ApiService;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V

    invoke-virtual {v4}, Lcom/android/videoeditor/service/ApiService$3;->start()V

    goto/16 :goto_0

    .line 1983
    .end local v24    # "data":Landroid/net/Uri;
    .end local v120    # "requestIntent":Landroid/content/Intent;
    :sswitch_f
    const-string v4, "req_intent"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v40

    check-cast v40, Landroid/content/Intent;

    .line 1984
    .local v40, "originalIntent":Landroid/content/Intent;
    const-string v4, "ex"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1985
    const-string v4, "ex"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v38

    check-cast v38, Ljava/lang/Exception;

    .line 1987
    .local v38, "exception":Ljava/lang/Exception;
    const/16 v39, 0x0

    const/16 v41, 0x1

    move-object/from16 v35, p0

    move-object/from16 v36, p1

    move-object/from16 v37, v6

    invoke-direct/range {v35 .. v41}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto/16 :goto_0

    .line 1990
    .end local v38    # "exception":Ljava/lang/Exception;
    :cond_18
    const/16 v44, 0x0

    const-string v4, "filename"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    const/16 v47, 0x1

    move-object/from16 v41, p0

    move-object/from16 v42, p1

    move-object/from16 v43, v6

    move-object/from16 v46, v40

    invoke-direct/range {v41 .. v47}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto/16 :goto_0

    .line 1997
    .end local v40    # "originalIntent":Landroid/content/Intent;
    :sswitch_10
    const-string v4, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v105

    .line 1998
    .local v105, "mediaItemId":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OP_MEDIA_ITEM_MOVE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v105

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/videoeditor/service/ApiService;->logd(Ljava/lang/String;)V

    .line 2001
    invoke-interface {v6}, Landroid/media/videoeditor/VideoEditor;->getAllMediaItems()Ljava/util/List;

    move-result-object v106

    .line 2002
    .restart local v106    # "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/MediaItem;>;"
    invoke-interface/range {v106 .. v106}, Ljava/util/List;->size()I

    move-result v107

    .line 2003
    .local v107, "mediaItemsCount":I
    const/16 v45, -0x1

    .line 2004
    .local v45, "movedItemPosition":I
    const/16 v44, 0x0

    .line 2005
    .local v44, "movedMediaItem":Landroid/media/videoeditor/MediaItem;
    const/16 v102, 0x0

    .restart local v102    # "i":I
    :goto_8
    move/from16 v0, v102

    move/from16 v1, v107

    if-ge v0, v1, :cond_19

    .line 2006
    move-object/from16 v0, v106

    move/from16 v1, v102

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v108

    check-cast v108, Landroid/media/videoeditor/MediaItem;

    .line 2007
    .local v108, "mi":Landroid/media/videoeditor/MediaItem;
    invoke-virtual/range {v108 .. v108}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v105

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 2008
    move-object/from16 v44, v108

    .line 2009
    move/from16 v45, v102

    .line 2014
    .end local v108    # "mi":Landroid/media/videoeditor/MediaItem;
    :cond_19
    const/4 v4, -0x1

    move/from16 v0, v45

    if-ne v0, v4, :cond_1b

    .line 2015
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Moved MediaItem not found: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v105

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2005
    .restart local v108    # "mi":Landroid/media/videoeditor/MediaItem;
    :cond_1a
    add-int/lit8 v102, v102, 0x1

    goto :goto_8

    .line 2019
    .end local v108    # "mi":Landroid/media/videoeditor/MediaItem;
    :cond_1b
    invoke-virtual/range {v44 .. v44}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v46

    .line 2020
    .local v46, "beginTransition":Landroid/media/videoeditor/Transition;
    invoke-virtual/range {v44 .. v44}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v47

    .line 2022
    .local v47, "endTransition":Landroid/media/videoeditor/Transition;
    const-string v4, "r_item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v92

    .line 2024
    .local v92, "afterMediaItemId":Ljava/lang/String;
    move-object/from16 v0, v105

    move-object/from16 v1, v92

    invoke-interface {v6, v0, v1}, Landroid/media/videoeditor/VideoEditor;->moveMediaItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 2027
    const-string v4, "theme"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2028
    .restart local v22    # "themeId":Ljava/lang/String;
    if-eqz v22, :cond_1c

    move-object/from16 v41, p0

    move-object/from16 v42, v6

    move-object/from16 v43, v22

    .line 2030
    invoke-direct/range {v41 .. v47}, Lcom/android/videoeditor/service/ApiService;->applyThemeAfterMove(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Landroid/media/videoeditor/MediaItem;ILandroid/media/videoeditor/Transition;Landroid/media/videoeditor/Transition;)V

    .line 2034
    :cond_1c
    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->copyMediaItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v52

    .line 2035
    .local v52, "mediaItemsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/android/videoeditor/service/MovieMediaItem;>;"
    const/16 v51, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    move-object/from16 v48, p0

    move-object/from16 v49, p1

    move-object/from16 v50, v6

    invoke-direct/range {v48 .. v54}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 2036
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 2037
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2042
    .end local v22    # "themeId":Ljava/lang/String;
    .end local v44    # "movedMediaItem":Landroid/media/videoeditor/MediaItem;
    .end local v45    # "movedItemPosition":I
    .end local v46    # "beginTransition":Landroid/media/videoeditor/Transition;
    .end local v47    # "endTransition":Landroid/media/videoeditor/Transition;
    .end local v52    # "mediaItemsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/android/videoeditor/service/MovieMediaItem;>;"
    .end local v92    # "afterMediaItemId":Ljava/lang/String;
    .end local v102    # "i":I
    .end local v105    # "mediaItemId":Ljava/lang/String;
    .end local v106    # "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/MediaItem;>;"
    .end local v107    # "mediaItemsCount":I
    :sswitch_11
    const-string v4, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v105

    .line 2043
    .restart local v105    # "mediaItemId":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OP_MEDIA_ITEM_REMOVE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v105

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/videoeditor/service/ApiService;->logd(Ljava/lang/String;)V

    .line 2046
    invoke-interface {v6}, Landroid/media/videoeditor/VideoEditor;->getAllMediaItems()Ljava/util/List;

    move-result-object v106

    .line 2047
    .restart local v106    # "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/MediaItem;>;"
    invoke-interface/range {v106 .. v106}, Ljava/util/List;->size()I

    move-result v107

    .line 2048
    .restart local v107    # "mediaItemsCount":I
    const/16 v56, -0x1

    .line 2049
    .local v56, "removedItemPosition":I
    const/16 v119, 0x0

    .line 2050
    .local v119, "removedMediaItem":Landroid/media/videoeditor/MediaItem;
    const/16 v102, 0x0

    .restart local v102    # "i":I
    :goto_9
    move/from16 v0, v102

    move/from16 v1, v107

    if-ge v0, v1, :cond_1d

    .line 2051
    move-object/from16 v0, v106

    move/from16 v1, v102

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/videoeditor/MediaItem;

    invoke-virtual {v4}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v105

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 2052
    move-object/from16 v0, v106

    move/from16 v1, v102

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v119

    .end local v119    # "removedMediaItem":Landroid/media/videoeditor/MediaItem;
    check-cast v119, Landroid/media/videoeditor/MediaItem;

    .line 2053
    .restart local v119    # "removedMediaItem":Landroid/media/videoeditor/MediaItem;
    move/from16 v56, v102

    .line 2058
    :cond_1d
    if-nez v119, :cond_1f

    .line 2059
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MediaItem not found: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v105

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2050
    :cond_1e
    add-int/lit8 v102, v102, 0x1

    goto :goto_9

    .line 2062
    :cond_1f
    invoke-virtual/range {v119 .. v119}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v46

    .line 2063
    .restart local v46    # "beginTransition":Landroid/media/videoeditor/Transition;
    invoke-virtual/range {v119 .. v119}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v47

    .line 2065
    .restart local v47    # "endTransition":Landroid/media/videoeditor/Transition;
    move-object/from16 v0, v105

    invoke-interface {v6, v0}, Landroid/media/videoeditor/VideoEditor;->removeMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    .line 2068
    const/16 v61, 0x0

    .line 2069
    .local v61, "movieTransition":Lcom/android/videoeditor/service/MovieTransition;
    const-string v4, "theme"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2070
    .restart local v22    # "themeId":Ljava/lang/String;
    if-eqz v22, :cond_20

    invoke-interface/range {v106 .. v106}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_20

    move-object/from16 v53, p0

    move-object/from16 v54, v6

    move-object/from16 v55, v22

    move-object/from16 v57, v46

    move-object/from16 v58, v47

    .line 2071
    invoke-direct/range {v53 .. v58}, Lcom/android/videoeditor/service/ApiService;->applyThemeAfterRemove(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;ILandroid/media/videoeditor/Transition;Landroid/media/videoeditor/Transition;)Landroid/media/videoeditor/Transition;

    move-result-object v67

    .line 2073
    .local v67, "transition":Landroid/media/videoeditor/Transition;
    if-eqz v67, :cond_20

    .line 2074
    new-instance v61, Lcom/android/videoeditor/service/MovieTransition;

    .end local v61    # "movieTransition":Lcom/android/videoeditor/service/MovieTransition;
    move-object/from16 v0, v61

    move-object/from16 v1, v67

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/MovieTransition;-><init>(Landroid/media/videoeditor/Transition;)V

    .line 2078
    .end local v67    # "transition":Landroid/media/videoeditor/Transition;
    .restart local v61    # "movieTransition":Lcom/android/videoeditor/service/MovieTransition;
    :cond_20
    const/16 v60, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    move-object/from16 v57, p0

    move-object/from16 v58, p1

    move-object/from16 v59, v6

    invoke-direct/range {v57 .. v63}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 2079
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 2080
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2085
    .end local v22    # "themeId":Ljava/lang/String;
    .end local v46    # "beginTransition":Landroid/media/videoeditor/Transition;
    .end local v47    # "endTransition":Landroid/media/videoeditor/Transition;
    .end local v56    # "removedItemPosition":I
    .end local v61    # "movieTransition":Lcom/android/videoeditor/service/MovieTransition;
    .end local v102    # "i":I
    .end local v105    # "mediaItemId":Ljava/lang/String;
    .end local v106    # "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/MediaItem;>;"
    .end local v107    # "mediaItemsCount":I
    .end local v119    # "removedMediaItem":Landroid/media/videoeditor/MediaItem;
    :sswitch_12
    const-string v4, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v105

    .line 2086
    .restart local v105    # "mediaItemId":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OP_MEDIA_ITEM_SET_RENDERING_MODE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v105

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/videoeditor/service/ApiService;->logd(Ljava/lang/String;)V

    .line 2088
    move-object/from16 v0, v105

    invoke-interface {v6, v0}, Landroid/media/videoeditor/VideoEditor;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v9

    .line 2089
    .restart local v9    # "mediaItem":Landroid/media/videoeditor/MediaItem;
    if-nez v9, :cond_21

    .line 2090
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MediaItem not found: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v105

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2092
    :cond_21
    const-string v4, "rm"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v9, v4}, Landroid/media/videoeditor/MediaItem;->setRenderingMode(I)V

    .line 2095
    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    move-object/from16 v62, p0

    move-object/from16 v63, p1

    move-object/from16 v64, v6

    invoke-direct/range {v62 .. v68}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 2096
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 2097
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2102
    .end local v9    # "mediaItem":Landroid/media/videoeditor/MediaItem;
    .end local v105    # "mediaItemId":Ljava/lang/String;
    :sswitch_13
    const-string v4, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v105

    .line 2103
    .restart local v105    # "mediaItemId":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OP_MEDIA_ITEM_SET_DURATION: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v105

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/videoeditor/service/ApiService;->logd(Ljava/lang/String;)V

    .line 2105
    move-object/from16 v0, v105

    invoke-interface {v6, v0}, Landroid/media/videoeditor/VideoEditor;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v9

    check-cast v9, Landroid/media/videoeditor/MediaImageItem;

    .line 2107
    .local v9, "mediaItem":Landroid/media/videoeditor/MediaImageItem;
    if-nez v9, :cond_22

    .line 2108
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MediaItem not found: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v105

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2111
    :cond_22
    const-string v4, "duration"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v97

    .line 2112
    .local v97, "durationMs":J
    move-wide/from16 v0, v97

    invoke-virtual {v9, v0, v1}, Landroid/media/videoeditor/MediaImageItem;->setDuration(J)V

    .line 2114
    invoke-virtual {v9}, Landroid/media/videoeditor/MediaImageItem;->getAllEffects()Ljava/util/List;

    move-result-object v99

    .line 2115
    .local v99, "effects":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    invoke-interface/range {v99 .. v99}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v103

    .local v103, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface/range {v103 .. v103}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface/range {v103 .. v103}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v76

    check-cast v76, Landroid/media/videoeditor/Effect;

    .line 2116
    .local v76, "effect":Landroid/media/videoeditor/Effect;
    move-object/from16 v0, v76

    move-wide/from16 v1, v97

    invoke-virtual {v0, v1, v2}, Landroid/media/videoeditor/Effect;->setDuration(J)V

    goto :goto_a

    .line 2119
    .end local v76    # "effect":Landroid/media/videoeditor/Effect;
    :cond_23
    const/16 v65, 0x0

    new-instance v66, Lcom/android/videoeditor/service/MovieMediaItem;

    move-object/from16 v0, v66

    invoke-direct {v0, v9}, Lcom/android/videoeditor/service/MovieMediaItem;-><init>(Landroid/media/videoeditor/MediaItem;)V

    const/16 v67, 0x0

    const/16 v68, 0x0

    move-object/from16 v62, p0

    move-object/from16 v63, p1

    move-object/from16 v64, v6

    invoke-direct/range {v62 .. v68}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 2121
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 2122
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2127
    .end local v9    # "mediaItem":Landroid/media/videoeditor/MediaImageItem;
    .end local v97    # "durationMs":J
    .end local v99    # "effects":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    .end local v103    # "i$":Ljava/util/Iterator;
    .end local v105    # "mediaItemId":Ljava/lang/String;
    :sswitch_14
    const-string v4, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v105

    .line 2128
    .restart local v105    # "mediaItemId":Ljava/lang/String;
    move-object/from16 v0, v105

    invoke-interface {v6, v0}, Landroid/media/videoeditor/VideoEditor;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v9

    check-cast v9, Landroid/media/videoeditor/MediaVideoItem;

    .line 2130
    .local v9, "mediaItem":Landroid/media/videoeditor/MediaVideoItem;
    if-nez v9, :cond_24

    .line 2131
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MediaItem not found: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v105

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2134
    :cond_24
    const-string v4, "b_boundary"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v7, "e_boundary"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    invoke-virtual {v9, v4, v5, v11, v12}, Landroid/media/videoeditor/MediaVideoItem;->setExtractBoundaries(JJ)V

    .line 2137
    invoke-virtual {v9}, Landroid/media/videoeditor/MediaVideoItem;->getAllOverlays()Ljava/util/List;

    move-result-object v115

    .line 2138
    .local v115, "overlays":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    invoke-interface/range {v115 .. v115}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_25

    .line 2140
    const/4 v4, 0x0

    move-object/from16 v0, v115

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v84

    check-cast v84, Landroid/media/videoeditor/Overlay;

    .line 2141
    .local v84, "overlay":Landroid/media/videoeditor/Overlay;
    invoke-virtual/range {v84 .. v84}, Landroid/media/videoeditor/Overlay;->getStartTime()J

    move-result-wide v4

    invoke-virtual {v9}, Landroid/media/videoeditor/MediaVideoItem;->getBoundaryBeginTime()J

    move-result-wide v11

    cmp-long v4, v4, v11

    if-gez v4, :cond_26

    .line 2142
    invoke-virtual {v9}, Landroid/media/videoeditor/MediaVideoItem;->getBoundaryBeginTime()J

    move-result-wide v4

    move-object/from16 v0, v84

    invoke-virtual {v0, v4, v5}, Landroid/media/videoeditor/Overlay;->setStartTime(J)V

    .line 2143
    invoke-virtual/range {v84 .. v84}, Landroid/media/videoeditor/Overlay;->getDuration()J

    move-result-wide v4

    invoke-virtual {v9}, Landroid/media/videoeditor/MediaVideoItem;->getTimelineDuration()J

    move-result-wide v11

    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object/from16 v0, v84

    invoke-virtual {v0, v4, v5}, Landroid/media/videoeditor/Overlay;->setDuration(J)V

    .line 2154
    .end local v84    # "overlay":Landroid/media/videoeditor/Overlay;
    :cond_25
    :goto_b
    const/16 v65, 0x0

    new-instance v66, Lcom/android/videoeditor/service/MovieMediaItem;

    move-object/from16 v0, v66

    invoke-direct {v0, v9}, Lcom/android/videoeditor/service/MovieMediaItem;-><init>(Landroid/media/videoeditor/MediaItem;)V

    const/16 v67, 0x0

    const/16 v68, 0x0

    move-object/from16 v62, p0

    move-object/from16 v63, p1

    move-object/from16 v64, v6

    invoke-direct/range {v62 .. v68}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 2156
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 2157
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2145
    .restart local v84    # "overlay":Landroid/media/videoeditor/Overlay;
    :cond_26
    invoke-virtual/range {v84 .. v84}, Landroid/media/videoeditor/Overlay;->getStartTime()J

    move-result-wide v4

    invoke-virtual/range {v84 .. v84}, Landroid/media/videoeditor/Overlay;->getDuration()J

    move-result-wide v11

    add-long/2addr v4, v11

    invoke-virtual {v9}, Landroid/media/videoeditor/MediaVideoItem;->getBoundaryEndTime()J

    move-result-wide v11

    cmp-long v4, v4, v11

    if-lez v4, :cond_25

    .line 2147
    invoke-virtual {v9}, Landroid/media/videoeditor/MediaVideoItem;->getBoundaryBeginTime()J

    move-result-wide v4

    invoke-virtual {v9}, Landroid/media/videoeditor/MediaVideoItem;->getBoundaryEndTime()J

    move-result-wide v11

    invoke-virtual/range {v84 .. v84}, Landroid/media/videoeditor/Overlay;->getDuration()J

    move-result-wide v14

    sub-long/2addr v11, v14

    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    move-object/from16 v0, v84

    invoke-virtual {v0, v4, v5}, Landroid/media/videoeditor/Overlay;->setStartTime(J)V

    .line 2149
    invoke-virtual {v9}, Landroid/media/videoeditor/MediaVideoItem;->getBoundaryEndTime()J

    move-result-wide v4

    invoke-virtual/range {v84 .. v84}, Landroid/media/videoeditor/Overlay;->getStartTime()J

    move-result-wide v11

    sub-long/2addr v4, v11

    move-object/from16 v0, v84

    invoke-virtual {v0, v4, v5}, Landroid/media/videoeditor/Overlay;->setDuration(J)V

    goto :goto_b

    .line 2163
    .end local v9    # "mediaItem":Landroid/media/videoeditor/MediaVideoItem;
    .end local v84    # "overlay":Landroid/media/videoeditor/Overlay;
    .end local v105    # "mediaItemId":Ljava/lang/String;
    .end local v115    # "overlays":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    :sswitch_15
    const-string v4, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v105

    .line 2164
    .restart local v105    # "mediaItemId":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OP_MEDIA_ITEM_GET_THUMBNAILS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v105

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/videoeditor/service/ApiService;->logd(Ljava/lang/String;)V

    .line 2166
    move-object/from16 v0, v105

    invoke-interface {v6, v0}, Landroid/media/videoeditor/VideoEditor;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v9

    .line 2167
    .local v9, "mediaItem":Landroid/media/videoeditor/MediaItem;
    if-nez v9, :cond_27

    .line 2168
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MediaItem not found: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v105

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2171
    :cond_27
    move-object/from16 v123, v6

    .line 2172
    .local v123, "ve":Landroid/media/videoeditor/VideoEditor;
    const-string v4, "width"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v63

    const-string v4, "height"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v64

    const-string v4, "s_time"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v65

    const-string v4, "e_time"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v67

    const-string v4, "count"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v69

    const-string v4, "indices"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v70

    new-instance v71, Lcom/android/videoeditor/service/ApiService$4;

    move-object/from16 v0, v71

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v123

    invoke-direct {v0, v1, v2, v3}, Lcom/android/videoeditor/service/ApiService$4;-><init>(Lcom/android/videoeditor/service/ApiService;Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;)V

    move-object/from16 v62, v9

    invoke-virtual/range {v62 .. v71}, Landroid/media/videoeditor/MediaItem;->getThumbnailList(IIJJI[ILandroid/media/videoeditor/MediaItem$GetThumbnailListCallback;)V

    .line 2188
    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x1

    move-object/from16 v62, p0

    move-object/from16 v63, p1

    move-object/from16 v64, v6

    invoke-direct/range {v62 .. v68}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto/16 :goto_0

    .line 2193
    .end local v9    # "mediaItem":Landroid/media/videoeditor/MediaItem;
    .end local v105    # "mediaItemId":Ljava/lang/String;
    .end local v123    # "ve":Landroid/media/videoeditor/VideoEditor;
    :sswitch_16
    const-string v4, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v105

    .line 2194
    .restart local v105    # "mediaItemId":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OP_MEDIA_ITEM_SET_VOLUME: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v105

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/videoeditor/service/ApiService;->logd(Ljava/lang/String;)V

    .line 2196
    move-object/from16 v0, v105

    invoke-interface {v6, v0}, Landroid/media/videoeditor/VideoEditor;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v9

    .line 2197
    .restart local v9    # "mediaItem":Landroid/media/videoeditor/MediaItem;
    if-eqz v9, :cond_28

    instance-of v4, v9, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v4, :cond_28

    .line 2198
    check-cast v9, Landroid/media/videoeditor/MediaVideoItem;

    .end local v9    # "mediaItem":Landroid/media/videoeditor/MediaItem;
    const-string v4, "volume"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v9, v4}, Landroid/media/videoeditor/MediaVideoItem;->setVolume(I)V

    .line 2200
    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    move-object/from16 v62, p0

    move-object/from16 v63, p1

    move-object/from16 v64, v6

    invoke-direct/range {v62 .. v68}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 2201
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 2202
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2204
    .restart local v9    # "mediaItem":Landroid/media/videoeditor/MediaItem;
    :cond_28
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MediaItem not found: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v105

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2210
    .end local v9    # "mediaItem":Landroid/media/videoeditor/MediaItem;
    .end local v105    # "mediaItemId":Ljava/lang/String;
    :sswitch_17
    const-string v4, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v105

    .line 2211
    .restart local v105    # "mediaItemId":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OP_MEDIA_ITEM_SET_MUTE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v105

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/videoeditor/service/ApiService;->logd(Ljava/lang/String;)V

    .line 2213
    move-object/from16 v0, v105

    invoke-interface {v6, v0}, Landroid/media/videoeditor/VideoEditor;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v9

    .line 2214
    .restart local v9    # "mediaItem":Landroid/media/videoeditor/MediaItem;
    if-eqz v9, :cond_29

    instance-of v4, v9, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v4, :cond_29

    .line 2215
    check-cast v9, Landroid/media/videoeditor/MediaVideoItem;

    .end local v9    # "mediaItem":Landroid/media/videoeditor/MediaItem;
    const-string v4, "mute"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v9, v4}, Landroid/media/videoeditor/MediaVideoItem;->setMute(Z)V

    .line 2218
    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    move-object/from16 v62, p0

    move-object/from16 v63, p1

    move-object/from16 v64, v6

    invoke-direct/range {v62 .. v68}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 2219
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 2220
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2222
    .restart local v9    # "mediaItem":Landroid/media/videoeditor/MediaItem;
    :cond_29
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MediaItem not found: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v105

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2228
    .end local v9    # "mediaItem":Landroid/media/videoeditor/MediaItem;
    .end local v105    # "mediaItemId":Ljava/lang/String;
    :sswitch_18
    const-string v4, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v105

    .line 2229
    .restart local v105    # "mediaItemId":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OP_MEDIA_ITEM_EXTRACT_AUDIO_WAVEFORM: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v105

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/videoeditor/service/ApiService;->logd(Ljava/lang/String;)V

    .line 2231
    move-object/from16 v0, v105

    invoke-interface {v6, v0}, Landroid/media/videoeditor/VideoEditor;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v9

    .line 2232
    .restart local v9    # "mediaItem":Landroid/media/videoeditor/MediaItem;
    if-eqz v9, :cond_2b

    instance-of v4, v9, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v4, :cond_2b

    .line 2233
    move-object v0, v9

    check-cast v0, Landroid/media/videoeditor/MediaVideoItem;

    move-object/from16 v110, v0

    .line 2234
    .local v110, "movieMediaItem":Landroid/media/videoeditor/MediaVideoItem;
    invoke-virtual/range {v110 .. v110}, Landroid/media/videoeditor/MediaVideoItem;->getWaveformData()Landroid/media/videoeditor/WaveformData;

    move-result-object v66

    .line 2235
    .local v66, "waveformData":Landroid/media/videoeditor/WaveformData;
    if-nez v66, :cond_2a

    .line 2236
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v110

    invoke-direct {v0, v1, v6, v2}, Lcom/android/videoeditor/service/ApiService;->extractMediaItemAudioWaveform(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Landroid/media/videoeditor/MediaVideoItem;)V

    .line 2237
    const/16 v65, 0x0

    invoke-virtual/range {v110 .. v110}, Landroid/media/videoeditor/MediaVideoItem;->getWaveformData()Landroid/media/videoeditor/WaveformData;

    move-result-object v66

    .end local v66    # "waveformData":Landroid/media/videoeditor/WaveformData;
    const/16 v67, 0x0

    const/16 v68, 0x1

    move-object/from16 v62, p0

    move-object/from16 v63, p1

    move-object/from16 v64, v6

    invoke-direct/range {v62 .. v68}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto/16 :goto_0

    .line 2240
    .restart local v66    # "waveformData":Landroid/media/videoeditor/WaveformData;
    :cond_2a
    const/16 v65, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x1

    move-object/from16 v62, p0

    move-object/from16 v63, p1

    move-object/from16 v64, v6

    invoke-direct/range {v62 .. v68}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto/16 :goto_0

    .line 2243
    .end local v66    # "waveformData":Landroid/media/videoeditor/WaveformData;
    .end local v110    # "movieMediaItem":Landroid/media/videoeditor/MediaVideoItem;
    :cond_2b
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MediaItem not found: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v105

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2249
    .end local v9    # "mediaItem":Landroid/media/videoeditor/MediaItem;
    .end local v105    # "mediaItemId":Ljava/lang/String;
    :sswitch_19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OP_TRANSITION_INSERT_ALPHA: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/videoeditor/service/ApiService;->logd(Ljava/lang/String;)V

    .line 2252
    const-string v4, "r_item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v92

    .line 2255
    .restart local v92    # "afterMediaItemId":Ljava/lang/String;
    if-eqz v92, :cond_2c

    .line 2256
    move-object/from16 v0, v92

    invoke-interface {v6, v0}, Landroid/media/videoeditor/VideoEditor;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v69

    .line 2261
    .local v69, "afterMediaItem":Landroid/media/videoeditor/MediaItem;
    :goto_c
    const-string v4, "t_mask"

    const/high16 v5, 0x7f050000

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v104

    .line 2264
    .local v104, "maskRawResourceId":I
    move-object/from16 v0, v92

    invoke-static {v6, v0}, Lcom/android/videoeditor/service/ApiService;->nextMediaItem(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v70

    .line 2265
    .local v70, "beforeMediaItem":Landroid/media/videoeditor/MediaItem;
    new-instance v67, Landroid/media/videoeditor/TransitionAlpha;

    const-string v4, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v68

    const-string v4, "duration"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v71

    const-string v4, "behavior"

    const/4 v5, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v73

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/service/ApiService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move/from16 v0, v104

    invoke-static {v4, v0}, Lcom/android/videoeditor/util/FileUtils;->getMaskFilename(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v74

    const-string v4, "t_blending"

    const/16 v5, 0x64

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v75

    const-string v4, "t_invert"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v76

    invoke-direct/range {v67 .. v76}, Landroid/media/videoeditor/TransitionAlpha;-><init>(Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;JILjava/lang/String;IZ)V

    .line 2275
    .restart local v67    # "transition":Landroid/media/videoeditor/Transition;
    move-object/from16 v0, v67

    invoke-interface {v6, v0}, Landroid/media/videoeditor/VideoEditor;->addTransition(Landroid/media/videoeditor/Transition;)V

    .line 2277
    const/16 v74, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    move-object/from16 v71, p0

    move-object/from16 v72, p1

    move-object/from16 v73, v6

    move-object/from16 v75, v67

    invoke-direct/range {v71 .. v77}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 2278
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 2279
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2258
    .end local v67    # "transition":Landroid/media/videoeditor/Transition;
    .end local v69    # "afterMediaItem":Landroid/media/videoeditor/MediaItem;
    .end local v70    # "beforeMediaItem":Landroid/media/videoeditor/MediaItem;
    .end local v104    # "maskRawResourceId":I
    :cond_2c
    const/16 v69, 0x0

    .restart local v69    # "afterMediaItem":Landroid/media/videoeditor/MediaItem;
    goto :goto_c

    .line 2284
    .end local v69    # "afterMediaItem":Landroid/media/videoeditor/MediaItem;
    .end local v92    # "afterMediaItemId":Ljava/lang/String;
    :sswitch_1a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OP_TRANSITION_INSERT_CROSSFADE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/videoeditor/service/ApiService;->logd(Ljava/lang/String;)V

    .line 2287
    const-string v4, "r_item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v92

    .line 2290
    .restart local v92    # "afterMediaItemId":Ljava/lang/String;
    if-eqz v92, :cond_2d

    .line 2291
    move-object/from16 v0, v92

    invoke-interface {v6, v0}, Landroid/media/videoeditor/VideoEditor;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v69

    .line 2296
    .restart local v69    # "afterMediaItem":Landroid/media/videoeditor/MediaItem;
    :goto_d
    move-object/from16 v0, v92

    invoke-static {v6, v0}, Lcom/android/videoeditor/service/ApiService;->nextMediaItem(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v70

    .line 2297
    .restart local v70    # "beforeMediaItem":Landroid/media/videoeditor/MediaItem;
    new-instance v67, Landroid/media/videoeditor/TransitionCrossfade;

    const-string v4, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v68

    const-string v4, "duration"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v71

    const-string v4, "behavior"

    const/4 v5, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v73

    invoke-direct/range {v67 .. v73}, Landroid/media/videoeditor/TransitionCrossfade;-><init>(Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;JI)V

    .line 2303
    .restart local v67    # "transition":Landroid/media/videoeditor/Transition;
    move-object/from16 v0, v67

    invoke-interface {v6, v0}, Landroid/media/videoeditor/VideoEditor;->addTransition(Landroid/media/videoeditor/Transition;)V

    .line 2305
    const/16 v74, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    move-object/from16 v71, p0

    move-object/from16 v72, p1

    move-object/from16 v73, v6

    move-object/from16 v75, v67

    invoke-direct/range {v71 .. v77}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 2306
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 2307
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2293
    .end local v67    # "transition":Landroid/media/videoeditor/Transition;
    .end local v69    # "afterMediaItem":Landroid/media/videoeditor/MediaItem;
    .end local v70    # "beforeMediaItem":Landroid/media/videoeditor/MediaItem;
    :cond_2d
    const/16 v69, 0x0

    .restart local v69    # "afterMediaItem":Landroid/media/videoeditor/MediaItem;
    goto :goto_d

    .line 2312
    .end local v69    # "afterMediaItem":Landroid/media/videoeditor/MediaItem;
    .end local v92    # "afterMediaItemId":Ljava/lang/String;
    :sswitch_1b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OP_TRANSITION_INSERT_FADE_TO_BLACK: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/videoeditor/service/ApiService;->logd(Ljava/lang/String;)V

    .line 2315
    const-string v4, "r_item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v92

    .line 2318
    .restart local v92    # "afterMediaItemId":Ljava/lang/String;
    if-eqz v92, :cond_2e

    .line 2319
    move-object/from16 v0, v92

    invoke-interface {v6, v0}, Landroid/media/videoeditor/VideoEditor;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v69

    .line 2324
    .restart local v69    # "afterMediaItem":Landroid/media/videoeditor/MediaItem;
    :goto_e
    move-object/from16 v0, v92

    invoke-static {v6, v0}, Lcom/android/videoeditor/service/ApiService;->nextMediaItem(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v70

    .line 2325
    .restart local v70    # "beforeMediaItem":Landroid/media/videoeditor/MediaItem;
    new-instance v67, Landroid/media/videoeditor/TransitionFadeBlack;

    const-string v4, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v68

    const-string v4, "duration"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v71

    const-string v4, "behavior"

    const/4 v5, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v73

    invoke-direct/range {v67 .. v73}, Landroid/media/videoeditor/TransitionFadeBlack;-><init>(Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;JI)V

    .line 2331
    .restart local v67    # "transition":Landroid/media/videoeditor/Transition;
    move-object/from16 v0, v67

    invoke-interface {v6, v0}, Landroid/media/videoeditor/VideoEditor;->addTransition(Landroid/media/videoeditor/Transition;)V

    .line 2333
    const/16 v74, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    move-object/from16 v71, p0

    move-object/from16 v72, p1

    move-object/from16 v73, v6

    move-object/from16 v75, v67

    invoke-direct/range {v71 .. v77}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 2334
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 2335
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2321
    .end local v67    # "transition":Landroid/media/videoeditor/Transition;
    .end local v69    # "afterMediaItem":Landroid/media/videoeditor/MediaItem;
    .end local v70    # "beforeMediaItem":Landroid/media/videoeditor/MediaItem;
    :cond_2e
    const/16 v69, 0x0

    .restart local v69    # "afterMediaItem":Landroid/media/videoeditor/MediaItem;
    goto :goto_e

    .line 2340
    .end local v69    # "afterMediaItem":Landroid/media/videoeditor/MediaItem;
    .end local v92    # "afterMediaItemId":Ljava/lang/String;
    :sswitch_1c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OP_TRANSITION_INSERT_SLIDING: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/videoeditor/service/ApiService;->logd(Ljava/lang/String;)V

    .line 2343
    const-string v4, "r_item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v92

    .line 2346
    .restart local v92    # "afterMediaItemId":Ljava/lang/String;
    if-eqz v92, :cond_2f

    .line 2347
    move-object/from16 v0, v92

    invoke-interface {v6, v0}, Landroid/media/videoeditor/VideoEditor;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v69

    .line 2352
    .restart local v69    # "afterMediaItem":Landroid/media/videoeditor/MediaItem;
    :goto_f
    move-object/from16 v0, v92

    invoke-static {v6, v0}, Lcom/android/videoeditor/service/ApiService;->nextMediaItem(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v70

    .line 2353
    .restart local v70    # "beforeMediaItem":Landroid/media/videoeditor/MediaItem;
    new-instance v67, Landroid/media/videoeditor/TransitionSliding;

    const-string v4, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v68

    const-string v4, "duration"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v71

    const-string v4, "behavior"

    const/4 v5, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v73

    const-string v4, "t_dir"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v74

    invoke-direct/range {v67 .. v74}, Landroid/media/videoeditor/TransitionSliding;-><init>(Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;JII)V

    .line 2361
    .restart local v67    # "transition":Landroid/media/videoeditor/Transition;
    move-object/from16 v0, v67

    invoke-interface {v6, v0}, Landroid/media/videoeditor/VideoEditor;->addTransition(Landroid/media/videoeditor/Transition;)V

    .line 2363
    const/16 v74, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    move-object/from16 v71, p0

    move-object/from16 v72, p1

    move-object/from16 v73, v6

    move-object/from16 v75, v67

    invoke-direct/range {v71 .. v77}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 2364
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 2365
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2349
    .end local v67    # "transition":Landroid/media/videoeditor/Transition;
    .end local v69    # "afterMediaItem":Landroid/media/videoeditor/MediaItem;
    .end local v70    # "beforeMediaItem":Landroid/media/videoeditor/MediaItem;
    :cond_2f
    const/16 v69, 0x0

    .restart local v69    # "afterMediaItem":Landroid/media/videoeditor/MediaItem;
    goto :goto_f

    .line 2370
    .end local v69    # "afterMediaItem":Landroid/media/videoeditor/MediaItem;
    .end local v92    # "afterMediaItemId":Ljava/lang/String;
    :sswitch_1d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OP_TRANSITION_REMOVE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/videoeditor/service/ApiService;->logd(Ljava/lang/String;)V

    .line 2373
    const-string v4, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Landroid/media/videoeditor/VideoEditor;->removeTransition(Ljava/lang/String;)Landroid/media/videoeditor/Transition;

    .line 2375
    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    move-object/from16 v71, p0

    move-object/from16 v72, p1

    move-object/from16 v73, v6

    invoke-direct/range {v71 .. v77}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 2376
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 2377
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2382
    :sswitch_1e
    const-string v4, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v121

    .line 2383
    .local v121, "transitionId":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OP_TRANSITION_SET_DURATION: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v121

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/videoeditor/service/ApiService;->logd(Ljava/lang/String;)V

    .line 2385
    move-object/from16 v0, v121

    invoke-interface {v6, v0}, Landroid/media/videoeditor/VideoEditor;->getTransition(Ljava/lang/String;)Landroid/media/videoeditor/Transition;

    move-result-object v67

    .line 2386
    .restart local v67    # "transition":Landroid/media/videoeditor/Transition;
    if-nez v67, :cond_30

    .line 2387
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Transition not found: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v121

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2390
    :cond_30
    const-string v4, "duration"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    move-object/from16 v0, v67

    invoke-virtual {v0, v4, v5}, Landroid/media/videoeditor/Transition;->setDuration(J)V

    .line 2392
    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    move-object/from16 v71, p0

    move-object/from16 v72, p1

    move-object/from16 v73, v6

    invoke-direct/range {v71 .. v77}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 2393
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 2394
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2399
    .end local v67    # "transition":Landroid/media/videoeditor/Transition;
    .end local v121    # "transitionId":Ljava/lang/String;
    :sswitch_1f
    const-string v4, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v121

    .line 2400
    .restart local v121    # "transitionId":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OP_TRANSITION_GET_THUMBNAIL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v121

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/videoeditor/service/ApiService;->logd(Ljava/lang/String;)V

    .line 2402
    move-object/from16 v0, v121

    invoke-interface {v6, v0}, Landroid/media/videoeditor/VideoEditor;->getTransition(Ljava/lang/String;)Landroid/media/videoeditor/Transition;

    move-result-object v67

    .line 2403
    .restart local v67    # "transition":Landroid/media/videoeditor/Transition;
    if-nez v67, :cond_31

    .line 2404
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Transition not found: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v121

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2408
    :cond_31
    const-string v4, "height"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v101

    .line 2409
    .local v101, "height":I
    invoke-virtual/range {v67 .. v67}, Landroid/media/videoeditor/Transition;->getAfterMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v69

    .line 2410
    .restart local v69    # "afterMediaItem":Landroid/media/videoeditor/MediaItem;
    const/4 v4, 0x2

    new-array v0, v4, [Landroid/graphics/Bitmap;

    move-object/from16 v75, v0

    .line 2411
    .local v75, "thumbnails":[Landroid/graphics/Bitmap;
    if-eqz v69, :cond_32

    .line 2412
    const/4 v4, 0x0

    invoke-virtual/range {v69 .. v69}, Landroid/media/videoeditor/MediaItem;->getWidth()I

    move-result v5

    mul-int v5, v5, v101

    invoke-virtual/range {v69 .. v69}, Landroid/media/videoeditor/MediaItem;->getHeight()I

    move-result v7

    div-int/2addr v5, v7

    invoke-virtual/range {v69 .. v69}, Landroid/media/videoeditor/MediaItem;->getTimelineDuration()J

    move-result-wide v11

    move-object/from16 v0, v69

    move/from16 v1, v101

    invoke-virtual {v0, v5, v1, v11, v12}, Landroid/media/videoeditor/MediaItem;->getThumbnail(IIJ)Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v75, v4

    .line 2419
    :goto_10
    invoke-virtual/range {v67 .. v67}, Landroid/media/videoeditor/Transition;->getBeforeMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v70

    .line 2420
    .restart local v70    # "beforeMediaItem":Landroid/media/videoeditor/MediaItem;
    if-eqz v70, :cond_33

    .line 2421
    const/4 v4, 0x1

    invoke-virtual/range {v70 .. v70}, Landroid/media/videoeditor/MediaItem;->getWidth()I

    move-result v5

    mul-int v5, v5, v101

    invoke-virtual/range {v70 .. v70}, Landroid/media/videoeditor/MediaItem;->getHeight()I

    move-result v7

    div-int/2addr v5, v7

    const-wide/16 v11, 0x0

    move-object/from16 v0, v70

    move/from16 v1, v101

    invoke-virtual {v0, v5, v1, v11, v12}, Landroid/media/videoeditor/MediaItem;->getThumbnail(IIJ)Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v75, v4

    .line 2428
    :goto_11
    const/16 v74, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x1

    move-object/from16 v71, p0

    move-object/from16 v72, p1

    move-object/from16 v73, v6

    invoke-direct/range {v71 .. v77}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto/16 :goto_0

    .line 2416
    .end local v70    # "beforeMediaItem":Landroid/media/videoeditor/MediaItem;
    :cond_32
    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-object v5, v75, v4

    goto :goto_10

    .line 2425
    .restart local v70    # "beforeMediaItem":Landroid/media/videoeditor/MediaItem;
    :cond_33
    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-object v5, v75, v4

    goto :goto_11

    .line 2433
    .end local v67    # "transition":Landroid/media/videoeditor/Transition;
    .end local v69    # "afterMediaItem":Landroid/media/videoeditor/MediaItem;
    .end local v70    # "beforeMediaItem":Landroid/media/videoeditor/MediaItem;
    .end local v75    # "thumbnails":[Landroid/graphics/Bitmap;
    .end local v101    # "height":I
    .end local v121    # "transitionId":Ljava/lang/String;
    :sswitch_20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OP_EFFECT_ADD_COLOR: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/videoeditor/service/ApiService;->logd(Ljava/lang/String;)V

    .line 2436
    const-string v4, "r_item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Landroid/media/videoeditor/VideoEditor;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v9

    .line 2438
    .restart local v9    # "mediaItem":Landroid/media/videoeditor/MediaItem;
    if-nez v9, :cond_34

    .line 2439
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MediaItem not found: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "r_item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2444
    :cond_34
    invoke-virtual {v9}, Landroid/media/videoeditor/MediaItem;->getAllEffects()Ljava/util/List;

    move-result-object v99

    .line 2445
    .restart local v99    # "effects":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    invoke-interface/range {v99 .. v99}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v103

    .restart local v103    # "i$":Ljava/util/Iterator;
    :goto_12
    invoke-interface/range {v103 .. v103}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface/range {v103 .. v103}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v76

    check-cast v76, Landroid/media/videoeditor/Effect;

    .line 2446
    .restart local v76    # "effect":Landroid/media/videoeditor/Effect;
    invoke-virtual/range {v76 .. v76}, Landroid/media/videoeditor/Effect;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/media/videoeditor/MediaItem;->removeEffect(Ljava/lang/String;)Landroid/media/videoeditor/Effect;

    goto :goto_12

    .line 2449
    .end local v76    # "effect":Landroid/media/videoeditor/Effect;
    :cond_35
    new-instance v76, Landroid/media/videoeditor/EffectColor;

    const-string v4, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v78

    const-string v4, "s_time"

    const-wide/16 v11, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v79

    const-string v4, "duration"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v81

    const-string v4, "e_type"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v83

    const-string v4, "e_param"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v84

    move-object/from16 v77, v9

    invoke-direct/range {v76 .. v84}, Landroid/media/videoeditor/EffectColor;-><init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;JJII)V

    .line 2455
    .restart local v76    # "effect":Landroid/media/videoeditor/Effect;
    move-object/from16 v0, v76

    invoke-virtual {v9, v0}, Landroid/media/videoeditor/MediaItem;->addEffect(Landroid/media/videoeditor/Effect;)V

    .line 2457
    const/16 v80, 0x0

    new-instance v81, Lcom/android/videoeditor/service/MovieEffect;

    move-object/from16 v0, v81

    move-object/from16 v1, v76

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/MovieEffect;-><init>(Landroid/media/videoeditor/Effect;)V

    const/16 v82, 0x0

    const/16 v83, 0x0

    move-object/from16 v77, p0

    move-object/from16 v78, p1

    move-object/from16 v79, v6

    invoke-direct/range {v77 .. v83}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 2459
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 2460
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2465
    .end local v9    # "mediaItem":Landroid/media/videoeditor/MediaItem;
    .end local v76    # "effect":Landroid/media/videoeditor/Effect;
    .end local v99    # "effects":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    .end local v103    # "i$":Ljava/util/Iterator;
    :sswitch_21
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OP_EFFECT_ADD_IMAGE_KEN_BURNS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/videoeditor/service/ApiService;->logd(Ljava/lang/String;)V

    .line 2468
    const-string v4, "r_item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Landroid/media/videoeditor/VideoEditor;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v9

    .line 2470
    .restart local v9    # "mediaItem":Landroid/media/videoeditor/MediaItem;
    if-nez v9, :cond_36

    .line 2471
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MediaItem not found: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "r_item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2476
    :cond_36
    invoke-virtual {v9}, Landroid/media/videoeditor/MediaItem;->getAllEffects()Ljava/util/List;

    move-result-object v99

    .line 2477
    .restart local v99    # "effects":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    invoke-interface/range {v99 .. v99}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v103

    .restart local v103    # "i$":Ljava/util/Iterator;
    :goto_13
    invoke-interface/range {v103 .. v103}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface/range {v103 .. v103}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v76

    check-cast v76, Landroid/media/videoeditor/Effect;

    .line 2478
    .restart local v76    # "effect":Landroid/media/videoeditor/Effect;
    invoke-virtual/range {v76 .. v76}, Landroid/media/videoeditor/Effect;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/media/videoeditor/MediaItem;->removeEffect(Ljava/lang/String;)Landroid/media/videoeditor/Effect;

    goto :goto_13

    .line 2481
    .end local v76    # "effect":Landroid/media/videoeditor/Effect;
    :cond_37
    new-instance v76, Landroid/media/videoeditor/EffectKenBurns;

    const-string v4, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v78

    const-string v4, "start_rect"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v79

    check-cast v79, Landroid/graphics/Rect;

    const-string v4, "end_rect"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v80

    check-cast v80, Landroid/graphics/Rect;

    const-string v4, "s_time"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v81

    const-string v4, "duration"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v83

    move-object/from16 v77, v9

    invoke-direct/range {v76 .. v84}, Landroid/media/videoeditor/EffectKenBurns;-><init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Rect;JJ)V

    .line 2487
    .restart local v76    # "effect":Landroid/media/videoeditor/Effect;
    move-object/from16 v0, v76

    invoke-virtual {v9, v0}, Landroid/media/videoeditor/MediaItem;->addEffect(Landroid/media/videoeditor/Effect;)V

    .line 2489
    const/16 v80, 0x0

    new-instance v81, Lcom/android/videoeditor/service/MovieEffect;

    move-object/from16 v0, v81

    move-object/from16 v1, v76

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/MovieEffect;-><init>(Landroid/media/videoeditor/Effect;)V

    const/16 v82, 0x0

    const/16 v83, 0x0

    move-object/from16 v77, p0

    move-object/from16 v78, p1

    move-object/from16 v79, v6

    invoke-direct/range {v77 .. v83}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 2491
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 2492
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2497
    .end local v9    # "mediaItem":Landroid/media/videoeditor/MediaItem;
    .end local v76    # "effect":Landroid/media/videoeditor/Effect;
    .end local v99    # "effects":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    .end local v103    # "i$":Ljava/util/Iterator;
    :sswitch_22
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OP_EFFECT_REMOVE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/videoeditor/service/ApiService;->logd(Ljava/lang/String;)V

    .line 2499
    const-string v4, "r_item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Landroid/media/videoeditor/VideoEditor;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v9

    .line 2501
    .restart local v9    # "mediaItem":Landroid/media/videoeditor/MediaItem;
    if-nez v9, :cond_38

    .line 2502
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MediaItem not found: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "r_item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2506
    :cond_38
    const-string v4, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/media/videoeditor/MediaItem;->removeEffect(Ljava/lang/String;)Landroid/media/videoeditor/Effect;

    .line 2508
    const/16 v80, 0x0

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    move-object/from16 v77, p0

    move-object/from16 v78, p1

    move-object/from16 v79, v6

    invoke-direct/range {v77 .. v83}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 2509
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 2510
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2515
    .end local v9    # "mediaItem":Landroid/media/videoeditor/MediaItem;
    :sswitch_23
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OP_OVERLAY_ADD: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/videoeditor/service/ApiService;->logd(Ljava/lang/String;)V

    .line 2517
    const-string v4, "r_item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Landroid/media/videoeditor/VideoEditor;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v9

    .line 2519
    .restart local v9    # "mediaItem":Landroid/media/videoeditor/MediaItem;
    if-nez v9, :cond_39

    .line 2520
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MediaItem not found: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "r_item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2525
    :cond_39
    invoke-virtual {v9}, Landroid/media/videoeditor/MediaItem;->getAllOverlays()Ljava/util/List;

    move-result-object v115

    .line 2526
    .restart local v115    # "overlays":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    invoke-interface/range {v115 .. v115}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v103

    .restart local v103    # "i$":Ljava/util/Iterator;
    :goto_14
    invoke-interface/range {v103 .. v103}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface/range {v103 .. v103}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v84

    check-cast v84, Landroid/media/videoeditor/Overlay;

    .line 2527
    .restart local v84    # "overlay":Landroid/media/videoeditor/Overlay;
    invoke-virtual/range {v84 .. v84}, Landroid/media/videoeditor/Overlay;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/media/videoeditor/MediaItem;->removeOverlay(Ljava/lang/String;)Landroid/media/videoeditor/Overlay;

    goto :goto_14

    .line 2531
    .end local v84    # "overlay":Landroid/media/videoeditor/Overlay;
    :cond_3a
    instance-of v4, v9, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v4, :cond_3b

    .line 2532
    move-object v0, v9

    check-cast v0, Landroid/media/videoeditor/MediaVideoItem;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/media/videoeditor/MediaVideoItem;->getWidth()I

    move-result v82

    .line 2533
    .local v82, "scaledWidth":I
    move-object v0, v9

    check-cast v0, Landroid/media/videoeditor/MediaVideoItem;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/media/videoeditor/MediaVideoItem;->getHeight()I

    move-result v83

    .line 2539
    .local v83, "scaledHeight":I
    :goto_15
    const-string v4, "attributes"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v122

    .line 2541
    .local v122, "userAttributes":Landroid/os/Bundle;
    invoke-static/range {v122 .. v122}, Lcom/android/videoeditor/service/MovieOverlay;->getType(Landroid/os/Bundle;)I

    move-result v79

    .line 2542
    .local v79, "overlayType":I
    invoke-static/range {v122 .. v122}, Lcom/android/videoeditor/service/MovieOverlay;->getTitle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v80

    .line 2543
    .local v80, "title":Ljava/lang/String;
    invoke-static/range {v122 .. v122}, Lcom/android/videoeditor/service/MovieOverlay;->getSubtitle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v81

    .line 2545
    .local v81, "subTitle":Ljava/lang/String;
    new-instance v84, Landroid/media/videoeditor/OverlayFrame;

    const-string v4, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v86

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/service/ApiService;->getApplicationContext()Landroid/content/Context;

    move-result-object v77

    const/16 v78, 0x0

    invoke-static/range {v77 .. v83}, Lcom/android/videoeditor/util/ImageUtils;->buildOverlayBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;ILjava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v87

    const-string v4, "s_time"

    const-wide/16 v11, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v88

    const-string v4, "duration"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v90

    move-object/from16 v85, v9

    invoke-direct/range {v84 .. v91}, Landroid/media/videoeditor/OverlayFrame;-><init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;Landroid/graphics/Bitmap;JJ)V

    .line 2553
    .local v84, "overlay":Landroid/media/videoeditor/OverlayFrame;
    invoke-virtual/range {v122 .. v122}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v103

    :goto_16
    invoke-interface/range {v103 .. v103}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface/range {v103 .. v103}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v112

    check-cast v112, Ljava/lang/String;

    .line 2554
    .local v112, "name":Ljava/lang/String;
    invoke-static/range {v112 .. v112}, Lcom/android/videoeditor/service/MovieOverlay;->getAttributeType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 2555
    move-object/from16 v0, v122

    move-object/from16 v1, v112

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v84

    move-object/from16 v1, v112

    invoke-virtual {v0, v1, v4}, Landroid/media/videoeditor/OverlayFrame;->setUserAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 2535
    .end local v79    # "overlayType":I
    .end local v80    # "title":Ljava/lang/String;
    .end local v81    # "subTitle":Ljava/lang/String;
    .end local v82    # "scaledWidth":I
    .end local v83    # "scaledHeight":I
    .end local v84    # "overlay":Landroid/media/videoeditor/OverlayFrame;
    .end local v112    # "name":Ljava/lang/String;
    .end local v122    # "userAttributes":Landroid/os/Bundle;
    :cond_3b
    move-object v0, v9

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/media/videoeditor/MediaImageItem;->getScaledWidth()I

    move-result v82

    .line 2536
    .restart local v82    # "scaledWidth":I
    move-object v0, v9

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v83

    .restart local v83    # "scaledHeight":I
    goto/16 :goto_15

    .line 2558
    .restart local v79    # "overlayType":I
    .restart local v80    # "title":Ljava/lang/String;
    .restart local v81    # "subTitle":Ljava/lang/String;
    .restart local v84    # "overlay":Landroid/media/videoeditor/OverlayFrame;
    .restart local v112    # "name":Ljava/lang/String;
    .restart local v122    # "userAttributes":Landroid/os/Bundle;
    :cond_3c
    move-object/from16 v0, v122

    move-object/from16 v1, v112

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v84

    move-object/from16 v1, v112

    invoke-virtual {v0, v1, v4}, Landroid/media/videoeditor/OverlayFrame;->setUserAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 2561
    .end local v112    # "name":Ljava/lang/String;
    :cond_3d
    move-object/from16 v0, v84

    invoke-virtual {v9, v0}, Landroid/media/videoeditor/MediaItem;->addOverlay(Landroid/media/videoeditor/Overlay;)V

    .line 2563
    const/16 v88, 0x0

    new-instance v89, Lcom/android/videoeditor/service/MovieOverlay;

    move-object/from16 v0, v89

    move-object/from16 v1, v84

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/MovieOverlay;-><init>(Landroid/media/videoeditor/Overlay;)V

    const/16 v90, 0x0

    const/16 v91, 0x0

    move-object/from16 v85, p0

    move-object/from16 v86, p1

    move-object/from16 v87, v6

    invoke-direct/range {v85 .. v91}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 2565
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 2566
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2571
    .end local v9    # "mediaItem":Landroid/media/videoeditor/MediaItem;
    .end local v79    # "overlayType":I
    .end local v80    # "title":Ljava/lang/String;
    .end local v81    # "subTitle":Ljava/lang/String;
    .end local v82    # "scaledWidth":I
    .end local v83    # "scaledHeight":I
    .end local v84    # "overlay":Landroid/media/videoeditor/OverlayFrame;
    .end local v103    # "i$":Ljava/util/Iterator;
    .end local v115    # "overlays":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    .end local v122    # "userAttributes":Landroid/os/Bundle;
    :sswitch_24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OP_OVERLAY_REMOVE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/videoeditor/service/ApiService;->logd(Ljava/lang/String;)V

    .line 2573
    const-string v4, "r_item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Landroid/media/videoeditor/VideoEditor;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v9

    .line 2575
    .restart local v9    # "mediaItem":Landroid/media/videoeditor/MediaItem;
    if-nez v9, :cond_3e

    .line 2576
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MediaItem not found: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "r_item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2580
    :cond_3e
    const-string v4, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/media/videoeditor/MediaItem;->removeOverlay(Ljava/lang/String;)Landroid/media/videoeditor/Overlay;

    .line 2582
    const/16 v88, 0x0

    const/16 v89, 0x0

    const/16 v90, 0x0

    const/16 v91, 0x0

    move-object/from16 v85, p0

    move-object/from16 v86, p1

    move-object/from16 v87, v6

    invoke-direct/range {v85 .. v91}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 2583
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 2584
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2589
    .end local v9    # "mediaItem":Landroid/media/videoeditor/MediaItem;
    :sswitch_25
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OP_OVERLAY_SET_START_TIME: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/videoeditor/service/ApiService;->logd(Ljava/lang/String;)V

    .line 2592
    const-string v4, "r_item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Landroid/media/videoeditor/VideoEditor;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v9

    .line 2594
    .restart local v9    # "mediaItem":Landroid/media/videoeditor/MediaItem;
    if-nez v9, :cond_3f

    .line 2595
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MediaItem not found: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "r_item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2599
    :cond_3f
    const-string v4, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/media/videoeditor/MediaItem;->getOverlay(Ljava/lang/String;)Landroid/media/videoeditor/Overlay;

    move-result-object v84

    .line 2601
    .local v84, "overlay":Landroid/media/videoeditor/Overlay;
    if-nez v84, :cond_40

    .line 2602
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Overlay not found: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2606
    :cond_40
    const-string v4, "s_time"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    move-object/from16 v0, v84

    invoke-virtual {v0, v4, v5}, Landroid/media/videoeditor/Overlay;->setStartTime(J)V

    .line 2608
    const/16 v88, 0x0

    const/16 v89, 0x0

    const/16 v90, 0x0

    const/16 v91, 0x0

    move-object/from16 v85, p0

    move-object/from16 v86, p1

    move-object/from16 v87, v6

    invoke-direct/range {v85 .. v91}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 2609
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 2610
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2615
    .end local v9    # "mediaItem":Landroid/media/videoeditor/MediaItem;
    .end local v84    # "overlay":Landroid/media/videoeditor/Overlay;
    :sswitch_26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OP_OVERLAY_SET_DURATION: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/videoeditor/service/ApiService;->logd(Ljava/lang/String;)V

    .line 2618
    const-string v4, "r_item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Landroid/media/videoeditor/VideoEditor;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v9

    .line 2620
    .restart local v9    # "mediaItem":Landroid/media/videoeditor/MediaItem;
    if-nez v9, :cond_41

    .line 2621
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MediaItem not found: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "r_item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2625
    :cond_41
    const-string v4, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/media/videoeditor/MediaItem;->getOverlay(Ljava/lang/String;)Landroid/media/videoeditor/Overlay;

    move-result-object v84

    .line 2627
    .restart local v84    # "overlay":Landroid/media/videoeditor/Overlay;
    if-nez v84, :cond_42

    .line 2628
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Overlay not found: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2632
    :cond_42
    const-string v4, "duration"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    move-object/from16 v0, v84

    invoke-virtual {v0, v4, v5}, Landroid/media/videoeditor/Overlay;->setDuration(J)V

    .line 2634
    const/16 v88, 0x0

    const/16 v89, 0x0

    const/16 v90, 0x0

    const/16 v91, 0x0

    move-object/from16 v85, p0

    move-object/from16 v86, p1

    move-object/from16 v87, v6

    invoke-direct/range {v85 .. v91}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 2635
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 2636
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2641
    .end local v9    # "mediaItem":Landroid/media/videoeditor/MediaItem;
    .end local v84    # "overlay":Landroid/media/videoeditor/Overlay;
    :sswitch_27
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OP_OVERLAY_SET_ATTRIBUTES: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/videoeditor/service/ApiService;->logd(Ljava/lang/String;)V

    .line 2644
    const-string v4, "r_item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Landroid/media/videoeditor/VideoEditor;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v9

    .line 2646
    .restart local v9    # "mediaItem":Landroid/media/videoeditor/MediaItem;
    if-nez v9, :cond_43

    .line 2647
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MediaItem not found: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "r_item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2651
    :cond_43
    const-string v4, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/media/videoeditor/MediaItem;->getOverlay(Ljava/lang/String;)Landroid/media/videoeditor/Overlay;

    move-result-object v84

    .line 2653
    .restart local v84    # "overlay":Landroid/media/videoeditor/Overlay;
    if-nez v84, :cond_44

    .line 2654
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Overlay not found: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2659
    :cond_44
    instance-of v4, v9, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v4, :cond_45

    .line 2660
    move-object v0, v9

    check-cast v0, Landroid/media/videoeditor/MediaVideoItem;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/media/videoeditor/MediaVideoItem;->getWidth()I

    move-result v82

    .line 2661
    .restart local v82    # "scaledWidth":I
    check-cast v9, Landroid/media/videoeditor/MediaVideoItem;

    .end local v9    # "mediaItem":Landroid/media/videoeditor/MediaItem;
    invoke-virtual {v9}, Landroid/media/videoeditor/MediaVideoItem;->getHeight()I

    move-result v83

    .line 2667
    .restart local v83    # "scaledHeight":I
    :goto_17
    const-string v4, "attributes"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v122

    .line 2668
    .restart local v122    # "userAttributes":Landroid/os/Bundle;
    invoke-static/range {v122 .. v122}, Lcom/android/videoeditor/service/MovieOverlay;->getType(Landroid/os/Bundle;)I

    move-result v79

    .line 2669
    .restart local v79    # "overlayType":I
    invoke-static/range {v122 .. v122}, Lcom/android/videoeditor/service/MovieOverlay;->getTitle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v80

    .line 2670
    .restart local v80    # "title":Ljava/lang/String;
    invoke-static/range {v122 .. v122}, Lcom/android/videoeditor/service/MovieOverlay;->getSubtitle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v81

    .line 2672
    .restart local v81    # "subTitle":Ljava/lang/String;
    move-object/from16 v0, v84

    check-cast v0, Landroid/media/videoeditor/OverlayFrame;

    move-object v4, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/service/ApiService;->getApplicationContext()Landroid/content/Context;

    move-result-object v77

    const/16 v78, 0x0

    invoke-static/range {v77 .. v83}, Lcom/android/videoeditor/util/ImageUtils;->buildOverlayBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;ILjava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/videoeditor/OverlayFrame;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2676
    invoke-virtual/range {v122 .. v122}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v103

    .restart local v103    # "i$":Ljava/util/Iterator;
    :goto_18
    invoke-interface/range {v103 .. v103}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface/range {v103 .. v103}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v112

    check-cast v112, Ljava/lang/String;

    .line 2677
    .restart local v112    # "name":Ljava/lang/String;
    invoke-static/range {v112 .. v112}, Lcom/android/videoeditor/service/MovieOverlay;->getAttributeType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 2678
    move-object/from16 v0, v122

    move-object/from16 v1, v112

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v84

    move-object/from16 v1, v112

    invoke-virtual {v0, v1, v4}, Landroid/media/videoeditor/Overlay;->setUserAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 2663
    .end local v79    # "overlayType":I
    .end local v80    # "title":Ljava/lang/String;
    .end local v81    # "subTitle":Ljava/lang/String;
    .end local v82    # "scaledWidth":I
    .end local v83    # "scaledHeight":I
    .end local v103    # "i$":Ljava/util/Iterator;
    .end local v112    # "name":Ljava/lang/String;
    .end local v122    # "userAttributes":Landroid/os/Bundle;
    .restart local v9    # "mediaItem":Landroid/media/videoeditor/MediaItem;
    :cond_45
    move-object v0, v9

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/media/videoeditor/MediaImageItem;->getScaledWidth()I

    move-result v82

    .line 2664
    .restart local v82    # "scaledWidth":I
    check-cast v9, Landroid/media/videoeditor/MediaImageItem;

    .end local v9    # "mediaItem":Landroid/media/videoeditor/MediaItem;
    invoke-virtual {v9}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v83

    .restart local v83    # "scaledHeight":I
    goto :goto_17

    .line 2681
    .restart local v79    # "overlayType":I
    .restart local v80    # "title":Ljava/lang/String;
    .restart local v81    # "subTitle":Ljava/lang/String;
    .restart local v103    # "i$":Ljava/util/Iterator;
    .restart local v112    # "name":Ljava/lang/String;
    .restart local v122    # "userAttributes":Landroid/os/Bundle;
    :cond_46
    move-object/from16 v0, v122

    move-object/from16 v1, v112

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v84

    move-object/from16 v1, v112

    invoke-virtual {v0, v1, v4}, Landroid/media/videoeditor/Overlay;->setUserAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 2685
    .end local v112    # "name":Ljava/lang/String;
    :cond_47
    const/16 v88, 0x0

    const/16 v89, 0x0

    const/16 v90, 0x0

    const/16 v91, 0x0

    move-object/from16 v85, p0

    move-object/from16 v86, p1

    move-object/from16 v87, v6

    invoke-direct/range {v85 .. v91}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 2686
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 2687
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2692
    .end local v79    # "overlayType":I
    .end local v80    # "title":Ljava/lang/String;
    .end local v81    # "subTitle":Ljava/lang/String;
    .end local v82    # "scaledWidth":I
    .end local v83    # "scaledHeight":I
    .end local v84    # "overlay":Landroid/media/videoeditor/Overlay;
    .end local v103    # "i$":Ljava/util/Iterator;
    .end local v122    # "userAttributes":Landroid/os/Bundle;
    :sswitch_28
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OP_AUDIO_TRACK_ADD: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/videoeditor/service/ApiService;->logd(Ljava/lang/String;)V

    .line 2694
    const-string v4, "filename"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v24

    check-cast v24, Landroid/net/Uri;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    .line 2695
    .restart local v24    # "data":Landroid/net/Uri;
    const/16 v34, 0x0

    .line 2697
    .restart local v34    # "filename":Ljava/lang/String;
    const/16 v95, 0x0

    .line 2699
    .restart local v95    # "cursor":Landroid/database/Cursor;
    :try_start_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/service/ApiService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/4 v4, 0x0

    const-string v5, "_data"

    aput-object v5, v25, v4

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v23 .. v28}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v95

    .line 2701
    invoke-interface/range {v95 .. v95}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_48

    .line 2702
    const/4 v4, 0x0

    move-object/from16 v0, v95

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    move-result-object v34

    .line 2705
    :cond_48
    if-eqz v95, :cond_49

    .line 2706
    :try_start_10
    invoke-interface/range {v95 .. v95}, Landroid/database/Cursor;->close()V

    .line 2710
    :cond_49
    if-nez v34, :cond_4b

    .line 2711
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Media file not found: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2705
    :catchall_2
    move-exception v4

    if-eqz v95, :cond_4a

    .line 2706
    invoke-interface/range {v95 .. v95}, Landroid/database/Cursor;->close()V

    :cond_4a
    throw v4

    .line 2714
    :cond_4b
    new-instance v93, Landroid/media/videoeditor/AudioTrack;

    const-string v4, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v93

    move-object/from16 v1, v34

    invoke-direct {v0, v6, v4, v1}, Landroid/media/videoeditor/AudioTrack;-><init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;)V

    .line 2716
    .local v93, "audioTrack":Landroid/media/videoeditor/AudioTrack;
    const/16 v4, 0x14

    const/16 v5, 0x41

    move-object/from16 v0, v93

    invoke-virtual {v0, v4, v5}, Landroid/media/videoeditor/AudioTrack;->enableDucking(II)V

    .line 2717
    const/16 v4, 0x32

    move-object/from16 v0, v93

    invoke-virtual {v0, v4}, Landroid/media/videoeditor/AudioTrack;->setVolume(I)V

    .line 2718
    const-string v4, "loop"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 2719
    invoke-virtual/range {v93 .. v93}, Landroid/media/videoeditor/AudioTrack;->enableLoop()V

    .line 2724
    :goto_19
    move-object/from16 v0, v93

    invoke-interface {v6, v0}, Landroid/media/videoeditor/VideoEditor;->addAudioTrack(Landroid/media/videoeditor/AudioTrack;)V

    .line 2726
    const/16 v88, 0x0

    new-instance v89, Lcom/android/videoeditor/service/MovieAudioTrack;

    move-object/from16 v0, v89

    move-object/from16 v1, v93

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/MovieAudioTrack;-><init>(Landroid/media/videoeditor/AudioTrack;)V

    const/16 v90, 0x0

    const/16 v91, 0x0

    move-object/from16 v85, p0

    move-object/from16 v86, p1

    move-object/from16 v87, v6

    invoke-direct/range {v85 .. v91}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 2729
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 2730
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2721
    :cond_4c
    invoke-virtual/range {v93 .. v93}, Landroid/media/videoeditor/AudioTrack;->disableLoop()V

    goto :goto_19

    .line 2735
    .end local v24    # "data":Landroid/net/Uri;
    .end local v34    # "filename":Ljava/lang/String;
    .end local v93    # "audioTrack":Landroid/media/videoeditor/AudioTrack;
    .end local v95    # "cursor":Landroid/database/Cursor;
    :sswitch_29
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OP_AUDIO_TRACK_REMOVE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/videoeditor/service/ApiService;->logd(Ljava/lang/String;)V

    .line 2738
    const-string v4, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Landroid/media/videoeditor/VideoEditor;->removeAudioTrack(Ljava/lang/String;)Landroid/media/videoeditor/AudioTrack;

    .line 2740
    const/16 v88, 0x0

    const/16 v89, 0x0

    const/16 v90, 0x0

    const/16 v91, 0x0

    move-object/from16 v85, p0

    move-object/from16 v86, p1

    move-object/from16 v87, v6

    invoke-direct/range {v85 .. v91}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 2741
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 2742
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2747
    :sswitch_2a
    const-string v4, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v94

    .line 2748
    .local v94, "audioTrackId":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OP_AUDIO_TRACK_SET_BOUNDARIES: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v94

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/videoeditor/service/ApiService;->logd(Ljava/lang/String;)V

    .line 2750
    move-object/from16 v0, v94

    invoke-interface {v6, v0}, Landroid/media/videoeditor/VideoEditor;->getAudioTrack(Ljava/lang/String;)Landroid/media/videoeditor/AudioTrack;

    move-result-object v93

    .line 2751
    .restart local v93    # "audioTrack":Landroid/media/videoeditor/AudioTrack;
    if-nez v93, :cond_4d

    .line 2752
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AudioTrack not found: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v94

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2756
    :cond_4d
    const-string v4, "b_boundary"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v7, "e_boundary"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    move-object/from16 v0, v93

    invoke-virtual {v0, v4, v5, v11, v12}, Landroid/media/videoeditor/AudioTrack;->setExtractBoundaries(JJ)V

    .line 2759
    const/16 v88, 0x0

    const/16 v89, 0x0

    const/16 v90, 0x0

    const/16 v91, 0x0

    move-object/from16 v85, p0

    move-object/from16 v86, p1

    move-object/from16 v87, v6

    invoke-direct/range {v85 .. v91}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 2760
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 2761
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2766
    .end local v93    # "audioTrack":Landroid/media/videoeditor/AudioTrack;
    .end local v94    # "audioTrackId":Ljava/lang/String;
    :sswitch_2b
    const-string v4, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v94

    .line 2767
    .restart local v94    # "audioTrackId":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OP_AUDIO_TRACK_SET_LOOP: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v94

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/videoeditor/service/ApiService;->logd(Ljava/lang/String;)V

    .line 2769
    move-object/from16 v0, v94

    invoke-interface {v6, v0}, Landroid/media/videoeditor/VideoEditor;->getAudioTrack(Ljava/lang/String;)Landroid/media/videoeditor/AudioTrack;

    move-result-object v93

    .line 2770
    .restart local v93    # "audioTrack":Landroid/media/videoeditor/AudioTrack;
    if-nez v93, :cond_4e

    .line 2771
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AudioTrack not found: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v94

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2775
    :cond_4e
    const-string v4, "loop"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 2776
    invoke-virtual/range {v93 .. v93}, Landroid/media/videoeditor/AudioTrack;->enableLoop()V

    .line 2781
    :goto_1a
    const/16 v88, 0x0

    const/16 v89, 0x0

    const/16 v90, 0x0

    const/16 v91, 0x0

    move-object/from16 v85, p0

    move-object/from16 v86, p1

    move-object/from16 v87, v6

    invoke-direct/range {v85 .. v91}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 2782
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 2783
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2778
    :cond_4f
    invoke-virtual/range {v93 .. v93}, Landroid/media/videoeditor/AudioTrack;->disableLoop()V

    goto :goto_1a

    .line 2788
    .end local v93    # "audioTrack":Landroid/media/videoeditor/AudioTrack;
    .end local v94    # "audioTrackId":Ljava/lang/String;
    :sswitch_2c
    const-string v4, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v94

    .line 2789
    .restart local v94    # "audioTrackId":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OP_AUDIO_TRACK_SET_DUCK: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v94

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/videoeditor/service/ApiService;->logd(Ljava/lang/String;)V

    .line 2791
    move-object/from16 v0, v94

    invoke-interface {v6, v0}, Landroid/media/videoeditor/VideoEditor;->getAudioTrack(Ljava/lang/String;)Landroid/media/videoeditor/AudioTrack;

    move-result-object v93

    .line 2792
    .restart local v93    # "audioTrack":Landroid/media/videoeditor/AudioTrack;
    if-nez v93, :cond_50

    .line 2793
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AudioTrack not found: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v94

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2797
    :cond_50
    const-string v4, "duck"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 2798
    const/16 v4, 0x14

    const/16 v5, 0x41

    move-object/from16 v0, v93

    invoke-virtual {v0, v4, v5}, Landroid/media/videoeditor/AudioTrack;->enableDucking(II)V

    .line 2803
    :goto_1b
    const/16 v88, 0x0

    const/16 v89, 0x0

    const/16 v90, 0x0

    const/16 v91, 0x0

    move-object/from16 v85, p0

    move-object/from16 v86, p1

    move-object/from16 v87, v6

    invoke-direct/range {v85 .. v91}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 2804
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 2805
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2800
    :cond_51
    invoke-virtual/range {v93 .. v93}, Landroid/media/videoeditor/AudioTrack;->disableDucking()V

    goto :goto_1b

    .line 2810
    .end local v93    # "audioTrack":Landroid/media/videoeditor/AudioTrack;
    .end local v94    # "audioTrackId":Ljava/lang/String;
    :sswitch_2d
    const-string v4, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v94

    .line 2811
    .restart local v94    # "audioTrackId":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OP_AUDIO_TRACK_SET_VOLUME: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v94

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/videoeditor/service/ApiService;->logd(Ljava/lang/String;)V

    .line 2813
    move-object/from16 v0, v94

    invoke-interface {v6, v0}, Landroid/media/videoeditor/VideoEditor;->getAudioTrack(Ljava/lang/String;)Landroid/media/videoeditor/AudioTrack;

    move-result-object v93

    .line 2814
    .restart local v93    # "audioTrack":Landroid/media/videoeditor/AudioTrack;
    if-nez v93, :cond_52

    .line 2815
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AudioTrack not found: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v94

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2819
    :cond_52
    const-string v4, "volume"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    move-object/from16 v0, v93

    invoke-virtual {v0, v4}, Landroid/media/videoeditor/AudioTrack;->setVolume(I)V

    .line 2821
    const/16 v88, 0x0

    const/16 v89, 0x0

    const/16 v90, 0x0

    const/16 v91, 0x0

    move-object/from16 v85, p0

    move-object/from16 v86, p1

    move-object/from16 v87, v6

    invoke-direct/range {v85 .. v91}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 2822
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 2823
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2828
    .end local v93    # "audioTrack":Landroid/media/videoeditor/AudioTrack;
    .end local v94    # "audioTrackId":Ljava/lang/String;
    :sswitch_2e
    const-string v4, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v94

    .line 2829
    .restart local v94    # "audioTrackId":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OP_AUDIO_TRACK_SET_MUTE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v94

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/videoeditor/service/ApiService;->logd(Ljava/lang/String;)V

    .line 2831
    move-object/from16 v0, v94

    invoke-interface {v6, v0}, Landroid/media/videoeditor/VideoEditor;->getAudioTrack(Ljava/lang/String;)Landroid/media/videoeditor/AudioTrack;

    move-result-object v93

    .line 2832
    .restart local v93    # "audioTrack":Landroid/media/videoeditor/AudioTrack;
    if-nez v93, :cond_53

    .line 2833
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AudioTrack not found: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v94

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2837
    :cond_53
    const-string v4, "mute"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    move-object/from16 v0, v93

    invoke-virtual {v0, v4}, Landroid/media/videoeditor/AudioTrack;->setMute(Z)V

    .line 2839
    const/16 v88, 0x0

    const/16 v89, 0x0

    const/16 v90, 0x0

    const/16 v91, 0x0

    move-object/from16 v85, p0

    move-object/from16 v86, p1

    move-object/from16 v87, v6

    invoke-direct/range {v85 .. v91}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 2840
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 2841
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2846
    .end local v93    # "audioTrack":Landroid/media/videoeditor/AudioTrack;
    .end local v94    # "audioTrackId":Ljava/lang/String;
    :sswitch_2f
    const-string v4, "item_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v94

    .line 2847
    .restart local v94    # "audioTrackId":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OP_AUDIO_TRACK_EXTRACT_AUDIO_WAVEFORM: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v94

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/videoeditor/service/ApiService;->logd(Ljava/lang/String;)V

    .line 2849
    move-object/from16 v0, v94

    invoke-interface {v6, v0}, Landroid/media/videoeditor/VideoEditor;->getAudioTrack(Ljava/lang/String;)Landroid/media/videoeditor/AudioTrack;

    move-result-object v93

    .line 2850
    .restart local v93    # "audioTrack":Landroid/media/videoeditor/AudioTrack;
    if-nez v93, :cond_54

    .line 2851
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AudioTrack not found: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v94

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2855
    :cond_54
    invoke-virtual/range {v93 .. v93}, Landroid/media/videoeditor/AudioTrack;->getWaveformData()Landroid/media/videoeditor/WaveformData;

    move-result-object v66

    .line 2856
    .restart local v66    # "waveformData":Landroid/media/videoeditor/WaveformData;
    if-nez v66, :cond_55

    .line 2857
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v93

    invoke-direct {v0, v1, v6, v2}, Lcom/android/videoeditor/service/ApiService;->extractAudioTrackAudioWaveform(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Landroid/media/videoeditor/AudioTrack;)V

    .line 2858
    const/16 v88, 0x0

    invoke-virtual/range {v93 .. v93}, Landroid/media/videoeditor/AudioTrack;->getWaveformData()Landroid/media/videoeditor/WaveformData;

    move-result-object v89

    const/16 v90, 0x0

    const/16 v91, 0x1

    move-object/from16 v85, p0

    move-object/from16 v86, p1

    move-object/from16 v87, v6

    invoke-direct/range {v85 .. v91}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto/16 :goto_0

    .line 2861
    :cond_55
    const/16 v88, 0x0

    const/16 v90, 0x0

    const/16 v91, 0x1

    move-object/from16 v85, p0

    move-object/from16 v86, p1

    move-object/from16 v87, v6

    move-object/from16 v89, v66

    invoke-direct/range {v85 .. v91}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    goto/16 :goto_0

    .line 1531
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x9 -> :sswitch_0
        0xd -> :sswitch_0
    .end sparse-switch

    .line 1549
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_9
        0x4 -> :sswitch_6
        0x5 -> :sswitch_7
        0x6 -> :sswitch_8
        0x8 -> :sswitch_a
        0x9 -> :sswitch_b
        0xa -> :sswitch_4
        0xb -> :sswitch_5
        0xd -> :sswitch_1
        0x64 -> :sswitch_c
        0x65 -> :sswitch_d
        0x66 -> :sswitch_10
        0x67 -> :sswitch_11
        0x68 -> :sswitch_12
        0x69 -> :sswitch_13
        0x6a -> :sswitch_14
        0x6b -> :sswitch_16
        0x6c -> :sswitch_17
        0x6d -> :sswitch_18
        0x70 -> :sswitch_15
        0x71 -> :sswitch_e
        0x72 -> :sswitch_f
        0xc8 -> :sswitch_20
        0xc9 -> :sswitch_21
        0xca -> :sswitch_22
        0x12c -> :sswitch_19
        0x12d -> :sswitch_1a
        0x12e -> :sswitch_1b
        0x12f -> :sswitch_1c
        0x130 -> :sswitch_1d
        0x131 -> :sswitch_1e
        0x132 -> :sswitch_1f
        0x190 -> :sswitch_23
        0x191 -> :sswitch_24
        0x192 -> :sswitch_25
        0x193 -> :sswitch_26
        0x194 -> :sswitch_27
        0x1f4 -> :sswitch_28
        0x1f5 -> :sswitch_29
        0x1f6 -> :sswitch_2d
        0x1f7 -> :sswitch_2e
        0x1f9 -> :sswitch_2a
        0x1fa -> :sswitch_2b
        0x1fb -> :sswitch_2c
        0x1fc -> :sswitch_2f
    .end sparse-switch
.end method
