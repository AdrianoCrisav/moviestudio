.class public Lcom/android/videoeditor/EffectType;
.super Ljava/lang/Object;
.source "EffectType.java"


# static fields
.field public static final CATEGORY_IMAGE:I = 0x0

.field public static final CATEGORY_VIDEO:I = 0x1

.field public static final EFFECT_COLOR_GRADIENT:I = 0x1

.field public static final EFFECT_COLOR_NEGATIVE:I = 0x3

.field public static final EFFECT_COLOR_SEPIA:I = 0x2

.field public static final EFFECT_KEN_BURNS:I


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/android/videoeditor/EffectType;->mName:Ljava/lang/String;

    .line 86
    iput p2, p0, Lcom/android/videoeditor/EffectType;->mType:I

    .line 87
    return-void
.end method

.method public static getEffects(Landroid/content/Context;I)[Lcom/android/videoeditor/EffectType;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I

    .prologue
    const v7, 0x7f090079

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    packed-switch p1, :pswitch_data_0

    .line 72
    new-array v0, v3, [Lcom/android/videoeditor/EffectType;

    .line 77
    .local v0, "effects":[Lcom/android/videoeditor/EffectType;
    :goto_0
    return-object v0

    .line 48
    .end local v0    # "effects":[Lcom/android/videoeditor/EffectType;
    :pswitch_0
    const/16 v1, 0xe

    new-array v0, v1, [Lcom/android/videoeditor/EffectType;

    .line 49
    .restart local v0    # "effects":[Lcom/android/videoeditor/EffectType;
    new-instance v1, Lcom/android/videoeditor/EffectType;

    const v2, 0x7f090078

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v3

    .line 51
    new-instance v1, Lcom/android/videoeditor/EffectType;

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v4

    .line 53
    new-instance v1, Lcom/android/videoeditor/EffectType;

    const v2, 0x7f09007a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v5}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v5

    .line 55
    new-instance v1, Lcom/android/videoeditor/EffectType;

    const v2, 0x7f09007b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v6}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/android/videoeditor/EffectType;

    const-string v2, "Blanco y negro"

    invoke-static {v2}, Landroid/media/videoeditor/lang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v8, 4

    invoke-direct {v1, v2, v8}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V

    const/16 v9, 4

    aput-object v1, v0, v9

    new-instance v1, Lcom/android/videoeditor/EffectType;

    const-string v2, "Pixelar"

    invoke-static {v2}, Landroid/media/videoeditor/lang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v8, 5

    invoke-direct {v1, v2, v8}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V

    const/16 v9, 5

    aput-object v1, v0, v9

    new-instance v1, Lcom/android/videoeditor/EffectType;

    const-string v2, "Vi\u00f1eta"

    invoke-static {v2}, Landroid/media/videoeditor/lang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v8, 6

    invoke-direct {v1, v2, v8}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V

    const/16 v9, 6

    aput-object v1, v0, v9

    new-instance v1, Lcom/android/videoeditor/EffectType;

    const-string v2, "Posterizar"

    invoke-static {v2}, Landroid/media/videoeditor/lang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v8, 7

    invoke-direct {v1, v2, v8}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V

    const/16 v9, 7

    aput-object v1, v0, v9

    new-instance v1, Lcom/android/videoeditor/EffectType;

    const-string v2, "Espejo"

    invoke-static {v2}, Landroid/media/videoeditor/lang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v8, 8

    invoke-direct {v1, v2, v8}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V

    const/16 v9, 8

    aput-object v1, v0, v9

    new-instance v1, Lcom/android/videoeditor/EffectType;

    const-string v2, "Separaci\u00f3n RGB"

    invoke-static {v2}, Landroid/media/videoeditor/lang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v8, 9

    invoke-direct {v1, v2, v8}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V

    const/16 v9, 9

    aput-object v1, v0, v9

    new-instance v1, Lcom/android/videoeditor/EffectType;

    const-string v2, "Desenfoque"

    invoke-static {v2}, Landroid/media/videoeditor/lang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v8, 10

    invoke-direct {v1, v2, v8}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V

    const/16 v9, 10

    aput-object v1, v0, v9

    new-instance v1, Lcom/android/videoeditor/EffectType;

    const-string v2, "L\u00edneas de escaneo"

    invoke-static {v2}, Landroid/media/videoeditor/lang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v8, 11

    invoke-direct {v1, v2, v8}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V

    const/16 v9, 11

    aput-object v1, v0, v9

    new-instance v1, Lcom/android/videoeditor/EffectType;

    const-string v2, "Aclarar"

    invoke-static {v2}, Landroid/media/videoeditor/lang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v8, 12

    invoke-direct {v1, v2, v8}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V

    const/16 v9, 12

    aput-object v1, v0, v9

    new-instance v1, Lcom/android/videoeditor/EffectType;

    const-string v2, "Duotono"

    invoke-static {v2}, Landroid/media/videoeditor/lang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v8, 13

    invoke-direct {v1, v2, v8}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V

    const/16 v9, 13

    aput-object v1, v0, v9

        new-instance v1, Lcom/android/videoeditor/EffectType;
    const-string v2, "Sacudida"
    invoke-static {v2}, Landroid/media/videoeditor/lang;->tr(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    const/16 v8, 14
    invoke-direct {v1, v2, v8}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V
    const/16 v9, 14
    aput-object v1, v0, v9
    new-instance v1, Lcom/android/videoeditor/EffectType;
    const-string v2, "Pulso"
    invoke-static {v2}, Landroid/media/videoeditor/lang;->tr(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    const/16 v8, 15
    invoke-direct {v1, v2, v8}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V
    const/16 v9, 15
    aput-object v1, v0, v9
    new-instance v1, Lcom/android/videoeditor/EffectType;
    const-string v2, "Ondas"
    invoke-static {v2}, Landroid/media/videoeditor/lang;->tr(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    const/16 v8, 16
    invoke-direct {v1, v2, v8}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V
    const/16 v9, 16
    aput-object v1, v0, v9
    new-instance v1, Lcom/android/videoeditor/EffectType;
    const-string v2, "Remolino"
    invoke-static {v2}, Landroid/media/videoeditor/lang;->tr(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    const/16 v8, 17
    invoke-direct {v1, v2, v8}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V
    const/16 v9, 17
    aput-object v1, v0, v9
    new-instance v1, Lcom/android/videoeditor/EffectType;
    const-string v2, "Lupa"
    invoke-static {v2}, Landroid/media/videoeditor/lang;->tr(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    const/16 v8, 18
    invoke-direct {v1, v2, v8}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V
    const/16 v9, 18
    aput-object v1, v0, v9
    new-instance v1, Lcom/android/videoeditor/EffectType;
    const-string v2, "Caleidoscopio"
    invoke-static {v2}, Landroid/media/videoeditor/lang;->tr(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    const/16 v8, 19
    invoke-direct {v1, v2, v8}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V
    const/16 v9, 19
    aput-object v1, v0, v9
    new-instance v1, Lcom/android/videoeditor/EffectType;
    const-string v2, "Glitch"
    invoke-static {v2}, Landroid/media/videoeditor/lang;->tr(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    const/16 v8, 20
    invoke-direct {v1, v2, v8}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V
    const/16 v9, 20
    aput-object v1, v0, v9
    new-instance v1, Lcom/android/videoeditor/EffectType;
    const-string v2, "Desenfoque radial"
    invoke-static {v2}, Landroid/media/videoeditor/lang;->tr(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    const/16 v8, 21
    invoke-direct {v1, v2, v8}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V
    const/16 v9, 21
    aput-object v1, v0, v9
    new-instance v1, Lcom/android/videoeditor/EffectType;
    const-string v2, "Mosaico doble"
    invoke-static {v2}, Landroid/media/videoeditor/lang;->tr(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    const/16 v8, 22
    invoke-direct {v1, v2, v8}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V
    const/16 v9, 22
    aput-object v1, v0, v9
    new-instance v1, Lcom/android/videoeditor/EffectType;
    const-string v2, "Fantasma"
    invoke-static {v2}, Landroid/media/videoeditor/lang;->tr(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    const/16 v8, 23
    invoke-direct {v1, v2, v8}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V
    const/16 v9, 23
    aput-object v1, v0, v9
    goto :goto_0

    .line 61
    .end local v0    # "effects":[Lcom/android/videoeditor/EffectType;
    :pswitch_1
    const/16 v1, 0xd

    new-array v0, v1, [Lcom/android/videoeditor/EffectType;

    .line 62
    .restart local v0    # "effects":[Lcom/android/videoeditor/EffectType;
    new-instance v1, Lcom/android/videoeditor/EffectType;

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v3

    .line 64
    new-instance v1, Lcom/android/videoeditor/EffectType;

    const v2, 0x7f09007a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v5}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v4

    .line 66
    new-instance v1, Lcom/android/videoeditor/EffectType;

    const v2, 0x7f09007b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v6}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/android/videoeditor/EffectType;

    const-string v2, "Blanco y negro"

    invoke-static {v2}, Landroid/media/videoeditor/lang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v8, 4

    invoke-direct {v1, v2, v8}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V

    const/16 v9, 3

    aput-object v1, v0, v9

    new-instance v1, Lcom/android/videoeditor/EffectType;

    const-string v2, "Pixelar"

    invoke-static {v2}, Landroid/media/videoeditor/lang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v8, 5

    invoke-direct {v1, v2, v8}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V

    const/16 v9, 4

    aput-object v1, v0, v9

    new-instance v1, Lcom/android/videoeditor/EffectType;

    const-string v2, "Vi\u00f1eta"

    invoke-static {v2}, Landroid/media/videoeditor/lang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v8, 6

    invoke-direct {v1, v2, v8}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V

    const/16 v9, 5

    aput-object v1, v0, v9

    new-instance v1, Lcom/android/videoeditor/EffectType;

    const-string v2, "Posterizar"

    invoke-static {v2}, Landroid/media/videoeditor/lang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v8, 7

    invoke-direct {v1, v2, v8}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V

    const/16 v9, 6

    aput-object v1, v0, v9

    new-instance v1, Lcom/android/videoeditor/EffectType;

    const-string v2, "Espejo"

    invoke-static {v2}, Landroid/media/videoeditor/lang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v8, 8

    invoke-direct {v1, v2, v8}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V

    const/16 v9, 7

    aput-object v1, v0, v9

    new-instance v1, Lcom/android/videoeditor/EffectType;

    const-string v2, "Separaci\u00f3n RGB"

    invoke-static {v2}, Landroid/media/videoeditor/lang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v8, 9

    invoke-direct {v1, v2, v8}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V

    const/16 v9, 8

    aput-object v1, v0, v9

    new-instance v1, Lcom/android/videoeditor/EffectType;

    const-string v2, "Desenfoque"

    invoke-static {v2}, Landroid/media/videoeditor/lang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v8, 10

    invoke-direct {v1, v2, v8}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V

    const/16 v9, 9

    aput-object v1, v0, v9

    new-instance v1, Lcom/android/videoeditor/EffectType;

    const-string v2, "L\u00edneas de escaneo"

    invoke-static {v2}, Landroid/media/videoeditor/lang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v8, 11

    invoke-direct {v1, v2, v8}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V

    const/16 v9, 10

    aput-object v1, v0, v9

    new-instance v1, Lcom/android/videoeditor/EffectType;

    const-string v2, "Aclarar"

    invoke-static {v2}, Landroid/media/videoeditor/lang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v8, 12

    invoke-direct {v1, v2, v8}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V

    const/16 v9, 11

    aput-object v1, v0, v9

    new-instance v1, Lcom/android/videoeditor/EffectType;

    const-string v2, "Duotono"

    invoke-static {v2}, Landroid/media/videoeditor/lang;->tr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v8, 13

    invoke-direct {v1, v2, v8}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V

    const/16 v9, 12

    aput-object v1, v0, v9

        new-instance v1, Lcom/android/videoeditor/EffectType;
    const-string v2, "Sacudida"
    invoke-static {v2}, Landroid/media/videoeditor/lang;->tr(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    const/16 v8, 14
    invoke-direct {v1, v2, v8}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V
    const/16 v9, 13
    aput-object v1, v0, v9
    new-instance v1, Lcom/android/videoeditor/EffectType;
    const-string v2, "Pulso"
    invoke-static {v2}, Landroid/media/videoeditor/lang;->tr(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    const/16 v8, 15
    invoke-direct {v1, v2, v8}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V
    const/16 v9, 14
    aput-object v1, v0, v9
    new-instance v1, Lcom/android/videoeditor/EffectType;
    const-string v2, "Ondas"
    invoke-static {v2}, Landroid/media/videoeditor/lang;->tr(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    const/16 v8, 16
    invoke-direct {v1, v2, v8}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V
    const/16 v9, 15
    aput-object v1, v0, v9
    new-instance v1, Lcom/android/videoeditor/EffectType;
    const-string v2, "Remolino"
    invoke-static {v2}, Landroid/media/videoeditor/lang;->tr(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    const/16 v8, 17
    invoke-direct {v1, v2, v8}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V
    const/16 v9, 16
    aput-object v1, v0, v9
    new-instance v1, Lcom/android/videoeditor/EffectType;
    const-string v2, "Lupa"
    invoke-static {v2}, Landroid/media/videoeditor/lang;->tr(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    const/16 v8, 18
    invoke-direct {v1, v2, v8}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V
    const/16 v9, 17
    aput-object v1, v0, v9
    new-instance v1, Lcom/android/videoeditor/EffectType;
    const-string v2, "Caleidoscopio"
    invoke-static {v2}, Landroid/media/videoeditor/lang;->tr(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    const/16 v8, 19
    invoke-direct {v1, v2, v8}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V
    const/16 v9, 18
    aput-object v1, v0, v9
    new-instance v1, Lcom/android/videoeditor/EffectType;
    const-string v2, "Glitch"
    invoke-static {v2}, Landroid/media/videoeditor/lang;->tr(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    const/16 v8, 20
    invoke-direct {v1, v2, v8}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V
    const/16 v9, 19
    aput-object v1, v0, v9
    new-instance v1, Lcom/android/videoeditor/EffectType;
    const-string v2, "Desenfoque radial"
    invoke-static {v2}, Landroid/media/videoeditor/lang;->tr(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    const/16 v8, 21
    invoke-direct {v1, v2, v8}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V
    const/16 v9, 20
    aput-object v1, v0, v9
    new-instance v1, Lcom/android/videoeditor/EffectType;
    const-string v2, "Mosaico doble"
    invoke-static {v2}, Landroid/media/videoeditor/lang;->tr(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    const/16 v8, 22
    invoke-direct {v1, v2, v8}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V
    const/16 v9, 21
    aput-object v1, v0, v9
    new-instance v1, Lcom/android/videoeditor/EffectType;
    const-string v2, "Fantasma"
    invoke-static {v2}, Landroid/media/videoeditor/lang;->tr(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    const/16 v8, 23
    invoke-direct {v1, v2, v8}, Lcom/android/videoeditor/EffectType;-><init>(Ljava/lang/String;I)V
    const/16 v9, 22
    aput-object v1, v0, v9
    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/videoeditor/EffectType;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/android/videoeditor/EffectType;->mType:I

    return v0
.end method
