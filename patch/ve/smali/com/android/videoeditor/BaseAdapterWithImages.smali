.class public abstract Lcom/android/videoeditor/BaseAdapterWithImages;
.super Landroid/widget/BaseAdapter;
.source "BaseAdapterWithImages.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/videoeditor/BaseAdapterWithImages$ImageLoaderAsyncTask;,
        Lcom/android/videoeditor/BaseAdapterWithImages$ImageTextViewHolder;,
        Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private final mListView:Landroid/widget/AbsListView;

.field private final mLoadingImages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final mViewHolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder",
            "<TK;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/AbsListView;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listView"    # Landroid/widget/AbsListView;

    .prologue
    .line 120
    .local p0, "this":Lcom/android/videoeditor/BaseAdapterWithImages;, "Lcom/android/videoeditor/BaseAdapterWithImages<TK;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/android/videoeditor/BaseAdapterWithImages;->mContext:Landroid/content/Context;

    .line 122
    iput-object p2, p0, Lcom/android/videoeditor/BaseAdapterWithImages;->mListView:Landroid/widget/AbsListView;

    .line 123
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/videoeditor/BaseAdapterWithImages;->mLoadingImages:Ljava/util/Set;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/videoeditor/BaseAdapterWithImages;->mViewHolders:Ljava/util/List;

    .line 126
    iget-object v0, p0, Lcom/android/videoeditor/BaseAdapterWithImages;->mListView:Landroid/widget/AbsListView;

    new-instance v1, Lcom/android/videoeditor/BaseAdapterWithImages$1;

    invoke-direct {v1, p0}, Lcom/android/videoeditor/BaseAdapterWithImages$1;-><init>(Lcom/android/videoeditor/BaseAdapterWithImages;)V

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/android/videoeditor/BaseAdapterWithImages;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/BaseAdapterWithImages;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/videoeditor/BaseAdapterWithImages;->mLoadingImages:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/videoeditor/BaseAdapterWithImages;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/BaseAdapterWithImages;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/videoeditor/BaseAdapterWithImages;->mViewHolders:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public abstract getCount()I
.end method

.method public abstract getItem(I)Ljava/lang/Object;
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 189
    .local p0, "this":Lcom/android/videoeditor/BaseAdapterWithImages;, "Lcom/android/videoeditor/BaseAdapterWithImages<TK;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public abstract getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected initiateLoad(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder;)V
    .locals 2
    .param p2, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            "Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, "this":Lcom/android/videoeditor/BaseAdapterWithImages;, "Lcom/android/videoeditor/BaseAdapterWithImages<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "viewHolder":Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder;, "Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder<TK;>;"
    iget-object v0, p0, Lcom/android/videoeditor/BaseAdapterWithImages;->mViewHolders:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/videoeditor/BaseAdapterWithImages;->mViewHolders:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_0
    invoke-virtual {p3, p1}, Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder;->setKey(Ljava/lang/Object;)V

    .line 181
    iget-object v0, p0, Lcom/android/videoeditor/BaseAdapterWithImages;->mLoadingImages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/android/videoeditor/BaseAdapterWithImages;->mLoadingImages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v0, Lcom/android/videoeditor/BaseAdapterWithImages$ImageLoaderAsyncTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/videoeditor/BaseAdapterWithImages$ImageLoaderAsyncTask;-><init>(Lcom/android/videoeditor/BaseAdapterWithImages;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/BaseAdapterWithImages$ImageLoaderAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 185
    :cond_1
    return-void
.end method

.method protected abstract loadImage(Ljava/lang/Object;)Landroid/graphics/Bitmap;
.end method

.method public onDestroy()V
    .locals 7

    .prologue
    .line 153
    .local p0, "this":Lcom/android/videoeditor/BaseAdapterWithImages;, "Lcom/android/videoeditor/BaseAdapterWithImages<TK;>;"
    iget-object v5, p0, Lcom/android/videoeditor/BaseAdapterWithImages;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 154
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 155
    iget-object v5, p0, Lcom/android/videoeditor/BaseAdapterWithImages;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v5, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 156
    .local v4, "rowView":Landroid/view/View;
    const v5, 0x7f08000f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 157
    .local v3, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 158
    .local v1, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 159
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 154
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    .end local v1    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v3    # "imageView":Landroid/widget/ImageView;
    .end local v4    # "rowView":Landroid/view/View;
    :cond_1
    iget-object v5, p0, Lcom/android/videoeditor/BaseAdapterWithImages;->mListView:Landroid/widget/AbsListView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v0}, Landroid/widget/AbsListView;->removeViews(II)V

    .line 164
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 165
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 146
    .local p0, "this":Lcom/android/videoeditor/BaseAdapterWithImages;, "Lcom/android/videoeditor/BaseAdapterWithImages<TK;>;"
    iget-object v0, p0, Lcom/android/videoeditor/BaseAdapterWithImages;->mViewHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 147
    return-void
.end method
