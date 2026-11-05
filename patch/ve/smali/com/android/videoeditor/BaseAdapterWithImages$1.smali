.class Lcom/android/videoeditor/BaseAdapterWithImages$1;
.super Ljava/lang/Object;
.source "BaseAdapterWithImages.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/BaseAdapterWithImages;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/BaseAdapterWithImages;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/BaseAdapterWithImages;)V
    .locals 0

    .prologue
    .line 126
    .local p0, "this":Lcom/android/videoeditor/BaseAdapterWithImages$1;, "Lcom/android/videoeditor/BaseAdapterWithImages.1;"
    iput-object p1, p0, Lcom/android/videoeditor/BaseAdapterWithImages$1;->this$0:Lcom/android/videoeditor/BaseAdapterWithImages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .local p0, "this":Lcom/android/videoeditor/BaseAdapterWithImages$1;, "Lcom/android/videoeditor/BaseAdapterWithImages.1;"
    const/4 v3, 0x0

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder;

    .line 132
    .local v1, "viewHolder":Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder;, "Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder<TK;>;"
    iget-object v2, p0, Lcom/android/videoeditor/BaseAdapterWithImages$1;->this$0:Lcom/android/videoeditor/BaseAdapterWithImages;

    invoke-static {v2}, Lcom/android/videoeditor/BaseAdapterWithImages;->access$100(Lcom/android/videoeditor/BaseAdapterWithImages;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 133
    invoke-virtual {v1, v3}, Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder;->setKey(Ljava/lang/Object;)V

    .line 135
    invoke-static {v1}, Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder;->access$300(Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 137
    .local v0, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 138
    invoke-static {v1}, Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder;->access$300(Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 141
    :cond_0
    return-void
.end method
