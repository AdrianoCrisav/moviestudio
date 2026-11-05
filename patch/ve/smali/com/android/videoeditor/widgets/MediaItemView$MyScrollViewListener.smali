.class Lcom/android/videoeditor/widgets/MediaItemView$MyScrollViewListener;
.super Ljava/lang/Object;
.source "MediaItemView.java"

# interfaces
.implements Lcom/android/videoeditor/widgets/ScrollViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/videoeditor/widgets/MediaItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyScrollViewListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/widgets/MediaItemView;


# direct methods
.method private constructor <init>(Lcom/android/videoeditor/widgets/MediaItemView;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/videoeditor/widgets/MediaItemView$MyScrollViewListener;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/videoeditor/widgets/MediaItemView;Lcom/android/videoeditor/widgets/MediaItemView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/videoeditor/widgets/MediaItemView;
    .param p2, "x1"    # Lcom/android/videoeditor/widgets/MediaItemView$1;

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/MediaItemView$MyScrollViewListener;-><init>(Lcom/android/videoeditor/widgets/MediaItemView;)V

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
    .line 193
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaItemView$MyScrollViewListener;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/videoeditor/widgets/MediaItemView;->access$602(Lcom/android/videoeditor/widgets/MediaItemView;Z)Z

    .line 194
    return-void
.end method

.method public onScrollEnd(Landroid/view/View;IIZ)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "scrollX"    # I
    .param p3, "scrollY"    # I
    .param p4, "appScroll"    # Z

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaItemView$MyScrollViewListener;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/videoeditor/widgets/MediaItemView;->access$602(Lcom/android/videoeditor/widgets/MediaItemView;Z)Z

    .line 205
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaItemView$MyScrollViewListener;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-static {v0, p2}, Lcom/android/videoeditor/widgets/MediaItemView;->access$702(Lcom/android/videoeditor/widgets/MediaItemView;I)I

    .line 206
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaItemView$MyScrollViewListener;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/MediaItemView;->invalidate()V

    .line 207
    return-void
.end method

.method public onScrollProgress(Landroid/view/View;IIZ)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "scrollX"    # I
    .param p3, "scrollY"    # I
    .param p4, "appScroll"    # Z

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaItemView$MyScrollViewListener;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-static {v0, p2}, Lcom/android/videoeditor/widgets/MediaItemView;->access$702(Lcom/android/videoeditor/widgets/MediaItemView;I)I

    .line 199
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaItemView$MyScrollViewListener;->this$0:Lcom/android/videoeditor/widgets/MediaItemView;

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/MediaItemView;->invalidate()V

    .line 200
    return-void
.end method
