.class Lcom/android/videoeditor/VideoEditorActivity$4;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Lcom/android/videoeditor/widgets/ScrollViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/VideoEditorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mActiveWidth:I

.field private mDurationMs:J

.field final synthetic this$0:Lcom/android/videoeditor/VideoEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/VideoEditorActivity;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/videoeditor/VideoEditorActivity$4;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollBegin(Landroid/view/View;IIZ)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "scrollX"    # I
    .param p3, "scrollY"    # I
    .param p4, "appScroll"    # Z

    .prologue
    .line 312
    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$4;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$4;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity;->access$600(Lcom/android/videoeditor/VideoEditorActivity;)Lcom/android/videoeditor/widgets/MediaLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity$4;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-static {v1}, Lcom/android/videoeditor/VideoEditorActivity;->access$700(Lcom/android/videoeditor/VideoEditorActivity;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/videoeditor/VideoEditorActivity$4;->mActiveWidth:I

    .line 314
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$4;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/VideoEditorProject;->computeDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/videoeditor/VideoEditorActivity$4;->mDurationMs:J

    .line 318
    :goto_0
    return-void

    .line 316
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/videoeditor/VideoEditorActivity$4;->mActiveWidth:I

    goto :goto_0
.end method

.method public onScrollEnd(Landroid/view/View;IIZ)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "scrollX"    # I
    .param p3, "scrollY"    # I
    .param p4, "appScroll"    # Z

    .prologue
    const-wide/16 v2, 0x0

    .line 328
    if-nez p4, :cond_1

    iget v4, p0, Lcom/android/videoeditor/VideoEditorActivity$4;->mActiveWidth:I

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity$4;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iget-object v4, v4, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v4, :cond_1

    .line 329
    int-to-long v4, p2

    iget-wide v6, p0, Lcom/android/videoeditor/VideoEditorActivity$4;->mDurationMs:J

    mul-long/2addr v4, v6

    iget v6, p0, Lcom/android/videoeditor/VideoEditorActivity$4;->mActiveWidth:I

    int-to-long v6, v6

    div-long v0, v4, v6

    .line 330
    .local v0, "timeMs":J
    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity$4;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    cmp-long v5, v0, v2

    if-gez v5, :cond_0

    move-wide v0, v2

    .end local v0    # "timeMs":J
    :cond_0
    invoke-static {v4, v0, v1}, Lcom/android/videoeditor/VideoEditorActivity;->access$800(Lcom/android/videoeditor/VideoEditorActivity;J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 331
    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity$4;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-virtual {v2}, Lcom/android/videoeditor/VideoEditorActivity;->showPreviewFrame()Z

    .line 334
    :cond_1
    return-void
.end method

.method public onScrollProgress(Landroid/view/View;IIZ)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "scrollX"    # I
    .param p3, "scrollY"    # I
    .param p4, "appScroll"    # Z

    .prologue
    .line 322
    return-void
.end method
