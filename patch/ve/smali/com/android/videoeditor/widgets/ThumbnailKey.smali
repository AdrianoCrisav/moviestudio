.class Lcom/android/videoeditor/widgets/ThumbnailKey;
.super Ljava/lang/Object;
.source "MediaItemView.java"


# instance fields
.field public index:I

.field public mediaItemId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 614
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "idx"    # I

    .prologue
    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 617
    iput-object p1, p0, Lcom/android/videoeditor/widgets/ThumbnailKey;->mediaItemId:Ljava/lang/String;

    .line 618
    iput p2, p0, Lcom/android/videoeditor/widgets/ThumbnailKey;->index:I

    .line 619
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 623
    instance-of v2, p1, Lcom/android/videoeditor/widgets/ThumbnailKey;

    if-nez v2, :cond_1

    .line 627
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 626
    check-cast v0, Lcom/android/videoeditor/widgets/ThumbnailKey;

    .line 627
    .local v0, "key":Lcom/android/videoeditor/widgets/ThumbnailKey;
    iget v2, p0, Lcom/android/videoeditor/widgets/ThumbnailKey;->index:I

    iget v3, v0, Lcom/android/videoeditor/widgets/ThumbnailKey;->index:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/videoeditor/widgets/ThumbnailKey;->mediaItemId:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/videoeditor/widgets/ThumbnailKey;->mediaItemId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 632
    iget-object v0, p0, Lcom/android/videoeditor/widgets/ThumbnailKey;->mediaItemId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/android/videoeditor/widgets/ThumbnailKey;->index:I

    xor-int/2addr v0, v1

    return v0
.end method
