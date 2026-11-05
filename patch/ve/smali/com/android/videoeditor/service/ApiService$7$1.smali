.class Lcom/android/videoeditor/service/ApiService$7$1;
.super Ljava/lang/Object;
.source "ApiService.java"

# interfaces
.implements Landroid/media/videoeditor/VideoEditor$ExportProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/service/ApiService$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/videoeditor/service/ApiService$7;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/service/ApiService$7;)V
    .locals 0

    .prologue
    .line 4168
    iput-object p1, p0, Lcom/android/videoeditor/service/ApiService$7$1;->this$1:Lcom/android/videoeditor/service/ApiService$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;I)V
    .locals 4
    .param p1, "videoEditor"    # Landroid/media/videoeditor/VideoEditor;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "progress"    # I

    .prologue
    .line 4172
    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->access$200()Lcom/android/videoeditor/service/IntentPool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/videoeditor/service/IntentPool;->get()Landroid/content/Intent;

    move-result-object v0

    .line 4173
    .local v0, "progressIntent":Landroid/content/Intent;
    const-string v1, "op"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4174
    const-string v1, "project"

    iget-object v2, p0, Lcom/android/videoeditor/service/ApiService$7$1;->this$1:Lcom/android/videoeditor/service/ApiService$7;

    iget-object v2, v2, Lcom/android/videoeditor/service/ApiService$7;->val$intent:Landroid/content/Intent;

    const-string v3, "project"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4176
    const-string v1, "filename"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4177
    const-string v1, "req_intent"

    iget-object v2, p0, Lcom/android/videoeditor/service/ApiService$7$1;->this$1:Lcom/android/videoeditor/service/ApiService$7;

    iget-object v2, v2, Lcom/android/videoeditor/service/ApiService$7;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4178
    const-string v1, "prog_value"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4179
    iget-object v1, p0, Lcom/android/videoeditor/service/ApiService$7$1;->this$1:Lcom/android/videoeditor/service/ApiService$7;

    iget-object v1, v1, Lcom/android/videoeditor/service/ApiService$7;->this$0:Lcom/android/videoeditor/service/ApiService;

    invoke-static {v1}, Lcom/android/videoeditor/service/ApiService;->access$400(Lcom/android/videoeditor/service/ApiService;)Lcom/android/videoeditor/service/ApiService$IntentProcessor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/videoeditor/service/ApiService$IntentProcessor;->submit(Landroid/content/Intent;)V

    .line 4180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Export progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/videoeditor/service/ApiService;->access$600(Ljava/lang/String;)V

    .line 4181
    return-void
.end method
