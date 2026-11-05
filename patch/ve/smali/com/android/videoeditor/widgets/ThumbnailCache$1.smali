.class Lcom/android/videoeditor/widgets/ThumbnailCache$1;
.super Landroid/util/LruCache;
.source "MediaItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/widgets/ThumbnailCache;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Lcom/android/videoeditor/widgets/ThumbnailKey;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/widgets/ThumbnailCache;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/widgets/ThumbnailCache;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 640
    iput-object p1, p0, Lcom/android/videoeditor/widgets/ThumbnailCache$1;->this$0:Lcom/android/videoeditor/widgets/ThumbnailCache;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected sizeOf(Lcom/android/videoeditor/widgets/ThumbnailKey;Landroid/graphics/Bitmap;)I
    .locals 1
    .param p1, "key"    # Lcom/android/videoeditor/widgets/ThumbnailKey;
    .param p2, "value"    # Landroid/graphics/Bitmap;

    .prologue
    .line 643
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    return v0
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 640
    check-cast p1, Lcom/android/videoeditor/widgets/ThumbnailKey;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/videoeditor/widgets/ThumbnailCache$1;->sizeOf(Lcom/android/videoeditor/widgets/ThumbnailKey;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method
