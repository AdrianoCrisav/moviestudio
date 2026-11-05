.class Lcom/android/videoeditor/service/ApiService$IntentProcessor;
.super Ljava/lang/Thread;
.source "ApiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/videoeditor/service/ApiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntentProcessor"
.end annotation


# instance fields
.field private final mIntentQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/videoeditor/service/ApiService;


# direct methods
.method public constructor <init>(Lcom/android/videoeditor/service/ApiService;Ljava/lang/String;)V
    .locals 2
    .param p2, "threadName"    # Ljava/lang/String;

    .prologue
    .line 4713
    iput-object p1, p0, Lcom/android/videoeditor/service/ApiService$IntentProcessor;->this$0:Lcom/android/videoeditor/service/ApiService;

    .line 4714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IntentProcessor-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 4715
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/videoeditor/service/ApiService$IntentProcessor;->mIntentQueue:Ljava/util/concurrent/BlockingQueue;

    .line 4716
    return-void
.end method


# virtual methods
.method public cancel(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4750
    iget-object v0, p0, Lcom/android/videoeditor/service/ApiService$IntentProcessor;->mIntentQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getIntentQueueIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4754
    iget-object v0, p0, Lcom/android/videoeditor/service/ApiService$IntentProcessor;->mIntentQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public quit()V
    .locals 4

    .prologue
    .line 4759
    iget-object v1, p0, Lcom/android/videoeditor/service/ApiService$IntentProcessor;->mIntentQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    .line 4760
    .local v0, "queueSize":I
    if-lez v0, :cond_0

    .line 4761
    const-string v1, "VEApiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread queue is not empty. Size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4762
    iget-object v1, p0, Lcom/android/videoeditor/service/ApiService$IntentProcessor;->mIntentQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 4764
    :cond_0
    invoke-virtual {p0}, Lcom/android/videoeditor/service/ApiService$IntentProcessor;->interrupt()V

    .line 4765
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 4722
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/videoeditor/service/ApiService$IntentProcessor;->this$0:Lcom/android/videoeditor/service/ApiService;

    iget-object v1, p0, Lcom/android/videoeditor/service/ApiService$IntentProcessor;->mIntentQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {v2, v1}, Lcom/android/videoeditor/service/ApiService;->processIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4724
    :catch_0
    move-exception v0

    .line 4725
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "VEApiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Terminating "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/videoeditor/service/ApiService$IntentProcessor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4727
    return-void
.end method

.method public submit(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4735
    invoke-virtual {p0}, Lcom/android/videoeditor/service/ApiService$IntentProcessor;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4736
    iget-object v0, p0, Lcom/android/videoeditor/service/ApiService$IntentProcessor;->mIntentQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 4740
    :goto_0
    return-void

    .line 4738
    :cond_0
    const-string v0, "VEApiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/videoeditor/service/ApiService$IntentProcessor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should be started before submitting tasks."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
