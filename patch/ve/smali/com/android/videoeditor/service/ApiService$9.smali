.class Lcom/android/videoeditor/service/ApiService$9;
.super Ljava/lang/Object;
.source "ApiService.java"

# interfaces
.implements Landroid/media/videoeditor/ExtractAudioWaveformProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/service/ApiService;->extractAudioTrackAudioWaveform(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Landroid/media/videoeditor/AudioTrack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/service/ApiService;

.field final synthetic val$audioTrack:Landroid/media/videoeditor/AudioTrack;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$videoEditor:Landroid/media/videoeditor/VideoEditor;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/service/ApiService;Landroid/content/Intent;Landroid/media/videoeditor/AudioTrack;Landroid/media/videoeditor/VideoEditor;)V
    .locals 0

    .prologue
    .line 4244
    iput-object p1, p0, Lcom/android/videoeditor/service/ApiService$9;->this$0:Lcom/android/videoeditor/service/ApiService;

    iput-object p2, p0, Lcom/android/videoeditor/service/ApiService$9;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/videoeditor/service/ApiService$9;->val$audioTrack:Landroid/media/videoeditor/AudioTrack;

    iput-object p4, p0, Lcom/android/videoeditor/service/ApiService$9;->val$videoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(I)V
    .locals 7
    .param p1, "progress"    # I

    .prologue
    const/4 v3, 0x0

    .line 4247
    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->access$200()Lcom/android/videoeditor/service/IntentPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videoeditor/service/IntentPool;->get()Landroid/content/Intent;

    move-result-object v1

    .line 4248
    .local v1, "progressIntent":Landroid/content/Intent;
    const-string v0, "op"

    const/16 v2, 0x1fd

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4250
    const-string v0, "project"

    iget-object v2, p0, Lcom/android/videoeditor/service/ApiService$9;->val$intent:Landroid/content/Intent;

    const-string v4, "project"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4252
    const-string v0, "req_intent"

    iget-object v2, p0, Lcom/android/videoeditor/service/ApiService$9;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4253
    const-string v0, "item_id"

    iget-object v2, p0, Lcom/android/videoeditor/service/ApiService$9;->val$audioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v2}, Landroid/media/videoeditor/AudioTrack;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4254
    const-string v0, "prog_value"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4256
    iget-object v0, p0, Lcom/android/videoeditor/service/ApiService$9;->this$0:Lcom/android/videoeditor/service/ApiService;

    iget-object v2, p0, Lcom/android/videoeditor/service/ApiService$9;->val$videoEditor:Landroid/media/videoeditor/VideoEditor;

    const/4 v6, 0x1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Lcom/android/videoeditor/service/ApiService;->access$300(Lcom/android/videoeditor/service/ApiService;Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 4257
    return-void
.end method
