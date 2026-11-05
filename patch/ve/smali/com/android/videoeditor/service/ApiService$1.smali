.class Lcom/android/videoeditor/service/ApiService$1;
.super Ljava/lang/Object;
.source "ApiService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/videoeditor/service/ApiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/service/ApiService;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/service/ApiService;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/videoeditor/service/ApiService$1;->this$0:Lcom/android/videoeditor/service/ApiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 215
    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->access$000()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 216
    const-string v0, "Stop runnable: Stopping service"

    invoke-static {v0}, Lcom/android/videoeditor/service/ApiService;->access$100(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/android/videoeditor/service/ApiService$1;->this$0:Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/ApiService;->stopSelf()V

    .line 219
    :cond_0
    return-void
.end method
