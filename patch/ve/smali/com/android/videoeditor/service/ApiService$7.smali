.class Lcom/android/videoeditor/service/ApiService$7;
.super Ljava/lang/Thread;
.source "ApiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/service/ApiService;->exportMovie(Landroid/media/videoeditor/VideoEditor;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/service/ApiService;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$videoEditor:Landroid/media/videoeditor/VideoEditor;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/service/ApiService;Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;)V
    .locals 0

    .prologue
    .line 4151
    iput-object p1, p0, Lcom/android/videoeditor/service/ApiService$7;->this$0:Lcom/android/videoeditor/service/ApiService;

    iput-object p2, p0, Lcom/android/videoeditor/service/ApiService$7;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/videoeditor/service/ApiService$7;->val$videoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    .line 4154
    iget-object v7, p0, Lcom/android/videoeditor/service/ApiService$7;->val$intent:Landroid/content/Intent;

    const-string v8, "filename"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4155
    .local v2, "filename":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/videoeditor/service/ApiService$7;->val$intent:Landroid/content/Intent;

    const-string v8, "height"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 4156
    .local v3, "height":I
    iget-object v7, p0, Lcom/android/videoeditor/service/ApiService$7;->val$intent:Landroid/content/Intent;

    const-string v8, "bitrate"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 4159
    .local v0, "bitrate":I
    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->access$200()Lcom/android/videoeditor/service/IntentPool;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/videoeditor/service/IntentPool;->get()Landroid/content/Intent;

    move-result-object v6

    .line 4160
    .local v6, "statusIntent":Landroid/content/Intent;
    const-string v7, "op"

    const/4 v8, 0x6

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4161
    const-string v7, "project"

    iget-object v8, p0, Lcom/android/videoeditor/service/ApiService$7;->val$intent:Landroid/content/Intent;

    const-string v9, "project"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4163
    const-string v7, "filename"

    invoke-virtual {v6, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4164
    const-string v7, "req_intent"

    iget-object v8, p0, Lcom/android/videoeditor/service/ApiService$7;->val$intent:Landroid/content/Intent;

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4165
    const/4 v4, 0x0

    .line 4168
    .local v4, "resultException":Ljava/lang/Exception;
    :try_start_0
    iget-object v7, p0, Lcom/android/videoeditor/service/ApiService$7;->val$videoEditor:Landroid/media/videoeditor/VideoEditor;

    new-instance v8, Lcom/android/videoeditor/service/ApiService$7$1;

    invoke-direct {v8, p0}, Lcom/android/videoeditor/service/ApiService$7$1;-><init>(Lcom/android/videoeditor/service/ApiService$7;)V

    invoke-interface {v7, v2, v3, v0, v8}, Landroid/media/videoeditor/VideoEditor;->export(Ljava/lang/String;IILandroid/media/videoeditor/VideoEditor$ExportProgressListener;)V

    .line 4184
    const-string v7, "cancelled"

    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->access$700()Z

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4185
    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->access$700()Z

    move-result v7

    if-nez v7, :cond_1

    .line 4186
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4187
    const-string v7, "uri"

    iget-object v8, p0, Lcom/android/videoeditor/service/ApiService$7;->this$0:Lcom/android/videoeditor/service/ApiService;

    invoke-static {v8, v2}, Lcom/android/videoeditor/service/ApiService;->access$800(Lcom/android/videoeditor/service/ApiService;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4191
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Export complete for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/videoeditor/service/ApiService;->access$600(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4202
    :goto_1
    const-string v7, "ex"

    invoke-virtual {v6, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4203
    iget-object v7, p0, Lcom/android/videoeditor/service/ApiService$7;->this$0:Lcom/android/videoeditor/service/ApiService;

    invoke-static {v7}, Lcom/android/videoeditor/service/ApiService;->access$400(Lcom/android/videoeditor/service/ApiService;)Lcom/android/videoeditor/service/ApiService$IntentProcessor;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/videoeditor/service/ApiService$IntentProcessor;->submit(Landroid/content/Intent;)V

    .line 4204
    return-void

    .line 4189
    :cond_0
    :try_start_1
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Export file does not exist: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v4    # "resultException":Ljava/lang/Exception;
    .local v5, "resultException":Ljava/lang/Exception;
    move-object v4, v5

    .end local v5    # "resultException":Ljava/lang/Exception;
    .restart local v4    # "resultException":Ljava/lang/Exception;
    goto :goto_0

    .line 4193
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Export cancelled by user, file name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/videoeditor/service/ApiService;->access$600(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 4195
    :catch_0
    move-exception v1

    .line 4196
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Export error for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/videoeditor/service/ApiService;->access$600(Ljava/lang/String;)V

    .line 4197
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 4198
    move-object v4, v1

    goto :goto_1
.end method
