.class Lcom/android/videoeditor/widgets/ThumbnailCache;
.super Ljava/lang/Object;
.source "MediaItemView.java"


# instance fields
.field private mCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Lcom/android/videoeditor/widgets/ThumbnailKey;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 640
    new-instance v0, Lcom/android/videoeditor/widgets/ThumbnailCache$1;

    invoke-direct {v0, p0, p1}, Lcom/android/videoeditor/widgets/ThumbnailCache$1;-><init>(Lcom/android/videoeditor/widgets/ThumbnailCache;I)V

    iput-object v0, p0, Lcom/android/videoeditor/widgets/ThumbnailCache;->mCache:Landroid/util/LruCache;

    .line 646
    return-void
.end method


# virtual methods
.method clearForMediaItemId(Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 657
    iget-object v3, p0, Lcom/android/videoeditor/widgets/ThumbnailCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v3}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v2

    .line 658
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/videoeditor/widgets/ThumbnailKey;Landroid/graphics/Bitmap;>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/videoeditor/widgets/ThumbnailKey;

    .line 659
    .local v1, "key":Lcom/android/videoeditor/widgets/ThumbnailKey;
    iget-object v3, v1, Lcom/android/videoeditor/widgets/ThumbnailKey;->mediaItemId:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 660
    iget-object v3, p0, Lcom/android/videoeditor/widgets/ThumbnailCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v3, v1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 663
    .end local v1    # "key":Lcom/android/videoeditor/widgets/ThumbnailKey;
    :cond_1
    return-void
.end method

.method get(Lcom/android/videoeditor/widgets/ThumbnailKey;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "key"    # Lcom/android/videoeditor/widgets/ThumbnailKey;

    .prologue
    .line 653
    iget-object v0, p0, Lcom/android/videoeditor/widgets/ThumbnailCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method put(Lcom/android/videoeditor/widgets/ThumbnailKey;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "key"    # Lcom/android/videoeditor/widgets/ThumbnailKey;
    .param p2, "value"    # Landroid/graphics/Bitmap;

    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/videoeditor/widgets/ThumbnailCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    return-void
.end method
