.class public Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder;
.super Ljava/lang/Object;
.source "BaseAdapterWithImages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/videoeditor/BaseAdapterWithImages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ImageViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mImageView:Landroid/widget/ImageView;

.field private mKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "rowView"    # Landroid/view/View;

    .prologue
    .line 52
    .local p0, "this":Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder;, "Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const v0, 0x7f08000f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 54
    return-void
.end method

.method static synthetic access$200(Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder;->mKey:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public setKey(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder;, "Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iput-object p1, p0, Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder;->mKey:Ljava/lang/Object;

    .line 58
    return-void
.end method
