.class public Lcom/android/videoeditor/BaseAdapterWithImages$ImageTextViewHolder;
.super Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder;
.source "BaseAdapterWithImages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/videoeditor/BaseAdapterWithImages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ImageTextViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder",
        "<TK;>;"
    }
.end annotation


# instance fields
.field protected final mNameView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "rowView"    # Landroid/view/View;

    .prologue
    .line 68
    .local p0, "this":Lcom/android/videoeditor/BaseAdapterWithImages$ImageTextViewHolder;, "Lcom/android/videoeditor/BaseAdapterWithImages$ImageTextViewHolder<TK;>;"
    invoke-direct {p0, p1}, Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder;-><init>(Landroid/view/View;)V

    .line 69
    const v0, 0x7f080010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/videoeditor/BaseAdapterWithImages$ImageTextViewHolder;->mNameView:Landroid/widget/TextView;

    .line 70
    return-void
.end method
