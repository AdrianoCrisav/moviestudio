.class public Lcom/android/videoeditor/service/MovieEffect;
.super Ljava/lang/Object;
.source "MovieEffect.java"


# instance fields
.field private mDurationMs:J

.field private mEndRect:Landroid/graphics/Rect;

.field private mStartRect:Landroid/graphics/Rect;

.field private mStartTimeMs:J

.field private final mType:I

.field private final mUniqueId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/videoeditor/service/MovieEffect;-><init>(Landroid/media/videoeditor/Effect;)V

    .line 43
    return-void
.end method

.method constructor <init>(Landroid/media/videoeditor/Effect;)V
    .locals 3
    .param p1, "effect"    # Landroid/media/videoeditor/Effect;

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/media/videoeditor/Effect;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/videoeditor/service/MovieEffect;->mUniqueId:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/media/videoeditor/Effect;->getStartTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/videoeditor/service/MovieEffect;->mStartTimeMs:J

    .line 53
    invoke-virtual {p1}, Landroid/media/videoeditor/Effect;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/videoeditor/service/MovieEffect;->mDurationMs:J

    .line 54
    instance-of v0, p1, Landroid/media/videoeditor/EffectKenBurns;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 55
    check-cast v0, Landroid/media/videoeditor/EffectKenBurns;

    invoke-virtual {v0}, Landroid/media/videoeditor/EffectKenBurns;->getStartRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/videoeditor/service/MovieEffect;->mStartRect:Landroid/graphics/Rect;

    move-object v0, p1

    .line 56
    check-cast v0, Landroid/media/videoeditor/EffectKenBurns;

    invoke-virtual {v0}, Landroid/media/videoeditor/EffectKenBurns;->getEndRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/videoeditor/service/MovieEffect;->mEndRect:Landroid/graphics/Rect;

    .line 62
    :goto_0
    invoke-static {p1}, Lcom/android/videoeditor/service/MovieEffect;->toType(Landroid/media/videoeditor/Effect;)I

    move-result v0

    iput v0, p0, Lcom/android/videoeditor/service/MovieEffect;->mType:I

    .line 63
    return-void

    .line 58
    :cond_0
    iput-object v2, p0, Lcom/android/videoeditor/service/MovieEffect;->mStartRect:Landroid/graphics/Rect;

    .line 59
    iput-object v2, p0, Lcom/android/videoeditor/service/MovieEffect;->mEndRect:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method private static toType(Landroid/media/videoeditor/Effect;)I
    .locals 4
    .param p0, "effect"    # Landroid/media/videoeditor/Effect;

    .prologue
    .line 148
    instance-of v1, p0, Landroid/media/videoeditor/EffectKenBurns;

    if-eqz v1, :cond_0

    .line 149
    const/4 v1, 0x0

    .line 162
    :goto_0
    return v1

    .line 150
    :cond_0
    instance-of v1, p0, Landroid/media/videoeditor/EffectColor;

    if-eqz v1, :cond_1

    move-object v0, p0

    .line 151
    check-cast v0, Landroid/media/videoeditor/EffectColor;

    .line 152
    .local v0, "colorEffect":Landroid/media/videoeditor/EffectColor;
    invoke-virtual {v0}, Landroid/media/videoeditor/EffectColor;->getType()I

    move-result v1

    const/16 v2, 16
    if-lt v1, v2, :vs_old_fx
    add-int/lit8 v1, v1, -2
    goto :goto_0
    :vs_old_fx
    packed-switch v1, :pswitch_data_0

    .line 167
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported color type effect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/media/videoeditor/EffectColor;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 158
    :pswitch_1
    const/4 v1, 0x2

    goto :goto_0

    .line 162
    :pswitch_2
    const/4 v1, 0x3

    goto :goto_0

    :pswitch_6
    const/4 v1, 0x4
    goto :goto_0

    :pswitch_7
    const/4 v1, 0x5
    goto :goto_0

    :pswitch_8
    const/4 v1, 0x6
    goto :goto_0

    :pswitch_9
    const/4 v1, 0x7
    goto :goto_0

    :pswitch_m10
    const/16 v1, 8
    goto :goto_0

    :pswitch_m11
    const/16 v1, 9
    goto :goto_0

    :pswitch_m12
    const/16 v1, 10
    goto :goto_0

    :pswitch_m13
    const/16 v1, 11
    goto :goto_0

    :pswitch_m14
    const/16 v1, 12
    goto :goto_0

    :pswitch_m15
    const/16 v1, 13
    goto :goto_0

    .line 172
    .end local v0    # "colorEffect":Landroid/media/videoeditor/EffectColor;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported effect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 152
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_m10
        :pswitch_m11
        :pswitch_m12
        :pswitch_m13
        :pswitch_m14
        :pswitch_m15
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 178
    instance-of v0, p1, Lcom/android/videoeditor/service/MovieEffect;

    if-nez v0, :cond_0

    .line 179
    const/4 v0, 0x0

    .line 181
    .end local p1    # "object":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/service/MovieEffect;->mUniqueId:Ljava/lang/String;

    check-cast p1, Lcom/android/videoeditor/service/MovieEffect;

    .end local p1    # "object":Ljava/lang/Object;
    iget-object v1, p1, Lcom/android/videoeditor/service/MovieEffect;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/android/videoeditor/service/MovieEffect;->mDurationMs:J

    return-wide v0
.end method

.method public getEndRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/videoeditor/service/MovieEffect;->mEndRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/videoeditor/service/MovieEffect;->mUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public getStartRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/videoeditor/service/MovieEffect;->mStartRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method getStartTime()J
    .locals 2

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/android/videoeditor/service/MovieEffect;->mStartTimeMs:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/android/videoeditor/service/MovieEffect;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/videoeditor/service/MovieEffect;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method setDuration(J)V
    .locals 0
    .param p1, "durationMs"    # J

    .prologue
    .line 85
    iput-wide p1, p0, Lcom/android/videoeditor/service/MovieEffect;->mDurationMs:J

    .line 86
    return-void
.end method

.method setRectangles(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "startRect"    # Landroid/graphics/Rect;
    .param p2, "endRect"    # Landroid/graphics/Rect;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/videoeditor/service/MovieEffect;->mStartRect:Landroid/graphics/Rect;

    .line 123
    iput-object p2, p0, Lcom/android/videoeditor/service/MovieEffect;->mEndRect:Landroid/graphics/Rect;

    .line 124
    return-void
.end method

.method setStartTime(J)V
    .locals 0
    .param p1, "startTimeMs"    # J

    .prologue
    .line 105
    iput-wide p1, p0, Lcom/android/videoeditor/service/MovieEffect;->mStartTimeMs:J

    .line 106
    return-void
.end method
