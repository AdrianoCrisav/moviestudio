.class Lcom/android/videoeditor/widgets/MediaLinearLayout$6;
.super Ljava/lang/Object;
.source "MediaLinearLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/widgets/MediaLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;)V
    .locals 0

    .prologue
    .line 504
    iput-object p1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$6;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 507
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$6;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 508
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$6;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1600(Lcom/android/videoeditor/widgets/MediaLinearLayout;)V

    .line 510
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$6;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getLastMediaItem()Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v0

    .line 511
    .local v0, "lastMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    if-eqz v0, :cond_1

    .line 512
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$6;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1700(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/widgets/MediaLinearLayoutListener;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayoutListener;->onAddMediaItem(Ljava/lang/String;)V

    .line 517
    .end local v0    # "lastMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_0
    :goto_0
    return-void

    .line 514
    .restart local v0    # "lastMediaItem":Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_1
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$6;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1700(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/widgets/MediaLinearLayoutListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayoutListener;->onAddMediaItem(Ljava/lang/String;)V

    goto :goto_0
.end method
