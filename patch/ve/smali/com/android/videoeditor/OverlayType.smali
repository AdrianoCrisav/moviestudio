.class public Lcom/android/videoeditor/OverlayType;
.super Ljava/lang/Object;
.source "OverlayType.java"


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/videoeditor/OverlayType;->mName:Ljava/lang/String;

    .line 57
    iput p2, p0, Lcom/android/videoeditor/OverlayType;->mType:I

    .line 58
    return-void
.end method

.method public static getOverlays(Landroid/content/Context;)[Lcom/android/videoeditor/OverlayType;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const v7, 0x7f09006e

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    const/16 v1, 0xc

    new-array v0, v1, [Lcom/android/videoeditor/OverlayType;

    .line 36
    .local v0, "overlays":[Lcom/android/videoeditor/OverlayType;
    new-instance v1, Lcom/android/videoeditor/OverlayType;

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lcom/android/videoeditor/OverlayType;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v3

    .line 38
    new-instance v1, Lcom/android/videoeditor/OverlayType;

    const v2, 0x7f09006f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Lcom/android/videoeditor/OverlayType;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v4

    .line 40
    new-instance v1, Lcom/android/videoeditor/OverlayType;

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v5}, Lcom/android/videoeditor/OverlayType;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v5

    .line 42
    new-instance v1, Lcom/android/videoeditor/OverlayType;

    const v2, 0x7f09006f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v6}, Lcom/android/videoeditor/OverlayType;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v6

    .line 45
    new-instance v1, Lcom/android/videoeditor/OverlayType;

    const-string v2, "Center fade"

    invoke-static {v2}, Landroid/media/videoeditor/lang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/android/videoeditor/OverlayType;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x4

    aput-object v1, v0, v4

    new-instance v1, Lcom/android/videoeditor/OverlayType;

    const-string v2, "Bottom fade"

    invoke-static {v2}, Landroid/media/videoeditor/lang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/android/videoeditor/OverlayType;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x5

    aput-object v1, v0, v4

    new-instance v1, Lcom/android/videoeditor/OverlayType;

    const-string v2, "Center 2 fade"

    invoke-static {v2}, Landroid/media/videoeditor/lang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/android/videoeditor/OverlayType;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x6

    aput-object v1, v0, v4

    new-instance v1, Lcom/android/videoeditor/OverlayType;

    const-string v2, "Bottom 2 fade"

    invoke-static {v2}, Landroid/media/videoeditor/lang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/android/videoeditor/OverlayType;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x7

    aput-object v1, v0, v4

    new-instance v1, Lcom/android/videoeditor/OverlayType;

    const-string v2, "Center slide"

    invoke-static {v2}, Landroid/media/videoeditor/lang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/android/videoeditor/OverlayType;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x8

    aput-object v1, v0, v4

    new-instance v1, Lcom/android/videoeditor/OverlayType;

    const-string v2, "Bottom slide"

    invoke-static {v2}, Landroid/media/videoeditor/lang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lcom/android/videoeditor/OverlayType;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x9

    aput-object v1, v0, v4

    new-instance v1, Lcom/android/videoeditor/OverlayType;

    const-string v2, "Center 2 slide"

    invoke-static {v2}, Landroid/media/videoeditor/lang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/android/videoeditor/OverlayType;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0xa

    aput-object v1, v0, v4

    new-instance v1, Lcom/android/videoeditor/OverlayType;

    const-string v2, "Bottom 2 slide"

    invoke-static {v2}, Landroid/media/videoeditor/lang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Lcom/android/videoeditor/OverlayType;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0xb

    aput-object v1, v0, v4

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/videoeditor/OverlayType;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/android/videoeditor/OverlayType;->mType:I

    return v0
.end method
