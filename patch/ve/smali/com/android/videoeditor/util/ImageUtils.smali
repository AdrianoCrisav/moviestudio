.class public Lcom/android/videoeditor/util/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# static fields
.field public static MATCH_LARGER_DIMENSION:I = 0x0

.field public static MATCH_SMALLER_DIMENSION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ImageUtils"

.field private static final sResizePaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/android/videoeditor/util/ImageUtils;->sResizePaint:Landroid/graphics/Paint;

    .line 55
    const/4 v0, 0x1

    sput v0, Lcom/android/videoeditor/util/ImageUtils;->MATCH_SMALLER_DIMENSION:I

    .line 56
    sput v1, Lcom/android/videoeditor/util/ImageUtils;->MATCH_LARGER_DIMENSION:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public static buildOverlayBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;ILjava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1
    invoke-static/range {p0 .. p6}, Landroid/media/videoeditor/titledraw;->build(Landroid/content/Context;Landroid/graphics/Bitmap;ILjava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    move-result-object v0
    return-object v0
.end method

.method public static buildOverlayPreview(Landroid/content/Context;Landroid/graphics/Canvas;ILjava/lang/String;Ljava/lang/String;IIII)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "overlayType"    # I
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "subTitle"    # Ljava/lang/String;
    .param p5, "startX"    # I
    .param p6, "startY"    # I
    .param p7, "width"    # I
    .param p8, "height"    # I

    .prologue
    and-int/lit8 p2, p2, 0x3

    .line 390
    packed-switch p2, :pswitch_data_0

    .line 406
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported overlay type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :pswitch_0
    const v2, 0x7f02003d

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v0 .. v9}, Lcom/android/videoeditor/util/ImageUtils;->drawOverlayPreview(Landroid/content/Context;Landroid/graphics/Canvas;IILjava/lang/String;Ljava/lang/String;IIII)V

    .line 409
    :goto_0
    return-void

    .line 400
    :pswitch_1
    const v2, 0x7f02003e

    const/high16 v3, -0x1000000

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v0 .. v9}, Lcom/android/videoeditor/util/ImageUtils;->drawOverlayPreview(Landroid/content/Context;Landroid/graphics/Canvas;IILjava/lang/String;Ljava/lang/String;IIII)V

    goto :goto_0

    .line 390
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static drawBottomOverlay(Landroid/content/Context;Landroid/graphics/Canvas;IILjava/lang/String;Ljava/lang/String;II)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawableId"    # I
    .param p3, "textColor"    # I
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "subTitle"    # Ljava/lang/String;
    .param p6, "width"    # I
    .param p7, "height"    # I

    .prologue
    .line 347
    div-int/lit8 v0, p6, 0x48

    .line 348
    .local v0, "INSET":I
    mul-int/lit8 v7, p7, 0x2

    div-int/lit8 v7, v7, 0x3

    add-int v4, v7, v0

    .line 349
    .local v4, "startHeight":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 350
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    sub-int v7, p6, v0

    sub-int v8, p7, v0

    invoke-virtual {v1, v0, v4, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 351
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 353
    new-instance v3, Landroid/graphics/Paint;

    const/4 v7, 0x3

    invoke-direct {v3, v7}, Landroid/graphics/Paint;-><init>(I)V

    .line 354
    .local v3, "p":Landroid/graphics/Paint;
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 355
    invoke-virtual {v3, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 357
    div-int/lit8 v6, p7, 0xc

    .line 358
    .local v6, "titleFontSize":I
    mul-int/lit8 v7, v0, 0x2

    sub-int v7, p6, v7

    mul-int/lit8 v8, v6, 0x2

    sub-int v2, v7, v8

    .line 359
    .local v2, "maxWidth":I
    div-int/lit8 v7, p7, 0x6

    add-int v5, v4, v7

    .line 360
    .local v5, "startYOffset":I
    if-eqz p4, :cond_0

    .line 361
    int-to-float v7, v6

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 362
    invoke-static {p4, v3, v2}, Lcom/android/videoeditor/util/StringUtils;->trimText(Ljava/lang/String;Landroid/graphics/Paint;I)Ljava/lang/String;

    move-result-object p4

    .line 363
    mul-int/lit8 v7, v0, 0x2

    sub-int v7, p6, v7

    int-to-float v7, v7

    invoke-virtual {v3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    int-to-float v8, v5

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v9

    sub-float/2addr v8, v9

    invoke-virtual {p1, p4, v7, v8, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 367
    :cond_0
    if-eqz p5, :cond_1

    .line 368
    add-int/lit8 v7, v6, -0x6

    int-to-float v7, v7

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 369
    invoke-static {p5, v3, v2}, Lcom/android/videoeditor/util/StringUtils;->trimText(Ljava/lang/String;Landroid/graphics/Paint;I)Ljava/lang/String;

    move-result-object p5

    .line 370
    mul-int/lit8 v7, v0, 0x2

    sub-int v7, p6, v7

    int-to-float v7, v7

    invoke-virtual {v3, p5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    int-to-float v8, v5

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v9

    sub-float/2addr v8, v9

    invoke-virtual {p1, p5, v7, v8, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 373
    :cond_1
    return-void
.end method

.method private static drawCenterOverlay(Landroid/content/Context;Landroid/graphics/Canvas;IILjava/lang/String;Ljava/lang/String;II)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawableId"    # I
    .param p3, "textColor"    # I
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "subTitle"    # Ljava/lang/String;
    .param p6, "width"    # I
    .param p7, "height"    # I

    .prologue
    .line 304
    div-int/lit8 v0, p6, 0x48

    .line 305
    .local v0, "INSET":I
    div-int/lit8 v7, p7, 0x3

    add-int v4, v7, v0

    .line 306
    .local v4, "startHeight":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 307
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    sub-int v7, p6, v0

    mul-int/lit8 v8, p7, 0x2

    div-int/lit8 v8, v8, 0x3

    sub-int/2addr v8, v0

    invoke-virtual {v1, v0, v4, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 309
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 311
    new-instance v3, Landroid/graphics/Paint;

    const/4 v7, 0x3

    invoke-direct {v3, v7}, Landroid/graphics/Paint;-><init>(I)V

    .line 312
    .local v3, "p":Landroid/graphics/Paint;
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 313
    invoke-virtual {v3, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 315
    div-int/lit8 v6, p7, 0xc

    .line 316
    .local v6, "titleFontSize":I
    mul-int/lit8 v7, v0, 0x2

    sub-int v7, p6, v7

    mul-int/lit8 v8, v6, 0x2

    sub-int v2, v7, v8

    .line 317
    .local v2, "maxWidth":I
    div-int/lit8 v7, p7, 0x6

    add-int v5, v4, v7

    .line 318
    .local v5, "startYOffset":I
    if-eqz p4, :cond_0

    .line 319
    int-to-float v7, v6

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 320
    invoke-static {p4, v3, v2}, Lcom/android/videoeditor/util/StringUtils;->trimText(Ljava/lang/String;Landroid/graphics/Paint;I)Ljava/lang/String;

    move-result-object p4

    .line 321
    mul-int/lit8 v7, v0, 0x2

    sub-int v7, p6, v7

    int-to-float v7, v7

    invoke-virtual {v3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    int-to-float v8, v5

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v9

    sub-float/2addr v8, v9

    invoke-virtual {p1, p4, v7, v8, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 325
    :cond_0
    if-eqz p5, :cond_1

    .line 326
    add-int/lit8 v7, v6, -0x6

    int-to-float v7, v7

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 327
    invoke-static {p5, v3, v2}, Lcom/android/videoeditor/util/StringUtils;->trimText(Ljava/lang/String;Landroid/graphics/Paint;I)Ljava/lang/String;

    move-result-object p5

    .line 328
    mul-int/lit8 v7, v0, 0x2

    sub-int v7, p6, v7

    int-to-float v7, v7

    invoke-virtual {v3, p5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    int-to-float v8, v5

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v9

    sub-float/2addr v8, v9

    invoke-virtual {p1, p5, v7, v8, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 331
    :cond_1
    return-void
.end method

.method private static drawOverlayPreview(Landroid/content/Context;Landroid/graphics/Canvas;IILjava/lang/String;Ljava/lang/String;IIII)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawableId"    # I
    .param p3, "textColor"    # I
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "subTitle"    # Ljava/lang/String;
    .param p6, "startX"    # I
    .param p7, "startY"    # I
    .param p8, "width"    # I
    .param p9, "height"    # I

    .prologue
    .line 425
    const/4 v0, 0x0

    .line 426
    .local v0, "INSET":I
    add-int/lit8 v4, p7, 0x0

    .line 427
    .local v4, "startHeight":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 428
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    add-int/lit8 v7, p6, 0x0

    add-int v8, p6, p8

    add-int/lit8 v8, v8, 0x0

    add-int/lit8 v9, p9, 0x0

    add-int v9, v9, p7

    invoke-virtual {v1, v7, v4, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 430
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 432
    new-instance v3, Landroid/graphics/Paint;

    const/4 v7, 0x3

    invoke-direct {v3, v7}, Landroid/graphics/Paint;-><init>(I)V

    .line 433
    .local v3, "p":Landroid/graphics/Paint;
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 434
    invoke-virtual {v3, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 436
    div-int/lit8 v6, p9, 0x4

    .line 437
    .local v6, "titleFontSize":I
    add-int/lit8 v7, p8, 0x0

    mul-int/lit8 v8, v6, 0x2

    sub-int v2, v7, v8

    .line 438
    .local v2, "maxWidth":I
    div-int/lit8 v7, p9, 0x2

    add-int v5, v4, v7

    .line 439
    .local v5, "startYOffset":I
    if-eqz p4, :cond_0

    .line 440
    int-to-float v7, v6

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 441
    invoke-static {p4, v3, v2}, Lcom/android/videoeditor/util/StringUtils;->trimText(Ljava/lang/String;Landroid/graphics/Paint;I)Ljava/lang/String;

    move-result-object p4

    .line 442
    add-int/lit8 v7, p8, 0x0

    int-to-float v7, v7

    invoke-virtual {v3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    int-to-float v8, v5

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v9

    sub-float/2addr v8, v9

    invoke-virtual {p1, p4, v7, v8, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 446
    :cond_0
    if-eqz p5, :cond_1

    .line 447
    add-int/lit8 v7, v6, -0x6

    int-to-float v7, v7

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 448
    invoke-static {p5, v3, v2}, Lcom/android/videoeditor/util/StringUtils;->trimText(Ljava/lang/String;Landroid/graphics/Paint;I)Ljava/lang/String;

    move-result-object p5

    .line 449
    add-int/lit8 v7, p8, 0x0

    int-to-float v7, v7

    invoke-virtual {v3, p5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    int-to-float v8, v5

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v9

    sub-float/2addr v8, v9

    invoke-virtual {p1, p5, v7, v8, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 452
    :cond_1
    return-void
.end method

.method private static nextPowerOf2(I)I
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 222
    if-lez p0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    if-le p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 223
    :cond_1
    add-int/lit8 p0, p0, -0x1

    .line 224
    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 225
    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 226
    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 227
    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 228
    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 229
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method private static rotateAndScaleImage(Ljava/lang/String;ILjava/io/File;)V
    .locals 18
    .param p0, "inputFilename"    # Ljava/lang/String;
    .param p1, "orientation"    # I
    .param p2, "outputFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 177
    .local v11, "opt":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 178
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 181
    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v17, v0

    .line 182
    .local v17, "width":I
    iget v10, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 183
    .local v10, "height":I
    mul-int v13, v17, v10

    .line 184
    .local v13, "pixelCount":I
    const v8, 0x1e8480

    .line 185
    .local v8, "MAX_PIXELS_FOR_SCALED_IMAGE":I
    int-to-double v2, v13

    const-wide v4, 0x413e848000000000L    # 2000000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v15

    .line 186
    .local v15, "scale":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v15, v2

    if-gtz v2, :cond_0

    .line 187
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    .line 196
    :goto_0
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 197
    .local v12, "opt2":Landroid/graphics/BitmapFactory$Options;
    double-to-int v2, v15

    iput v2, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 198
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 201
    .local v1, "scaledBmp":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 202
    .local v6, "mtx":Landroid/graphics/Matrix;
    move/from16 v0, p1

    int-to-float v2, v0

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 204
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 206
    .local v14, "rotatedBmp":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 209
    new-instance v9, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 210
    .local v9, "fos":Ljava/io/FileOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v14, v2, v3, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 211
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 213
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 214
    return-void

    .line 192
    .end local v1    # "scaledBmp":Landroid/graphics/Bitmap;
    .end local v6    # "mtx":Landroid/graphics/Matrix;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "opt2":Landroid/graphics/BitmapFactory$Options;
    .end local v14    # "rotatedBmp":Landroid/graphics/Bitmap;
    :cond_0
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v2}, Lcom/android/videoeditor/util/ImageUtils;->nextPowerOf2(I)I

    move-result v2

    int-to-double v15, v2

    goto :goto_0
.end method

.method public static scaleImage(Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 19
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "match"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 77
    .local v3, "dbo":Landroid/graphics/BitmapFactory$Options;
    const/4 v13, 0x1

    iput-boolean v13, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 78
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 80
    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 81
    .local v7, "nativeWidth":I
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 85
    .local v6, "nativeHeight":I
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 86
    .local v8, "options":Landroid/graphics/BitmapFactory$Options;
    move/from16 v0, p1

    if-gt v7, v0, :cond_0

    move/from16 v0, p2

    if-le v6, v0, :cond_3

    .line 87
    :cond_0
    int-to-float v13, v7

    move/from16 v0, p1

    int-to-float v14, v0

    div-float v4, v13, v14

    .line 88
    .local v4, "dx":F
    int-to-float v13, v6

    move/from16 v0, p2

    int-to-float v14, v0

    div-float v5, v13, v14

    .line 89
    .local v5, "dy":F
    sget v13, Lcom/android/videoeditor/util/ImageUtils;->MATCH_SMALLER_DIMENSION:I

    move/from16 v0, p3

    if-ne v0, v13, :cond_1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 90
    .local v9, "scale":F
    :goto_0
    int-to-float v13, v7

    div-float v11, v13, v9

    .line 91
    .local v11, "scaledWidth":F
    int-to-float v13, v6

    div-float v10, v13, v9

    .line 93
    .local v10, "scaledHeight":F
    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v13, v9, v13

    if-lez v13, :cond_2

    float-to-int v13, v9

    :goto_1
    iput v13, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 100
    .end local v4    # "dx":F
    .end local v5    # "dy":F
    .end local v9    # "scale":F
    :goto_2
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 101
    .local v12, "srcBitmap":Landroid/graphics/Bitmap;
    if-nez v12, :cond_4

    .line 102
    new-instance v13, Ljava/io/IOException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot decode file: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 89
    .end local v10    # "scaledHeight":F
    .end local v11    # "scaledWidth":F
    .end local v12    # "srcBitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "dx":F
    .restart local v5    # "dy":F
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v9

    goto :goto_0

    .line 93
    .restart local v9    # "scale":F
    .restart local v10    # "scaledHeight":F
    .restart local v11    # "scaledWidth":F
    :cond_2
    const/4 v13, 0x1

    goto :goto_1

    .line 95
    .end local v4    # "dx":F
    .end local v5    # "dy":F
    .end local v9    # "scale":F
    .end local v10    # "scaledHeight":F
    .end local v11    # "scaledWidth":F
    :cond_3
    move/from16 v0, p1

    int-to-float v11, v0

    .line 96
    .restart local v11    # "scaledWidth":F
    move/from16 v0, p2

    int-to-float v10, v0

    .line 97
    .restart local v10    # "scaledHeight":F
    const/4 v13, 0x1

    iput v13, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_2

    .line 106
    .restart local v12    # "srcBitmap":Landroid/graphics/Bitmap;
    :cond_4
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v14

    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 109
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 110
    .local v2, "canvas":Landroid/graphics/Canvas;
    new-instance v13, Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    invoke-direct/range {v13 .. v17}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v14, Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v17

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v18

    invoke-direct/range {v14 .. v18}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v15, Lcom/android/videoeditor/util/ImageUtils;->sResizePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v12, v13, v14, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 116
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    .line 117
    return-object v1
.end method

.method public static transformJpeg(Ljava/lang/String;Ljava/io/File;)Z
    .locals 7
    .param p0, "inputFilename"    # Ljava/lang/String;
    .param p1, "outputFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 130
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 131
    .local v1, "exif":Landroid/media/ExifInterface;
    const-string v4, "Orientation"

    invoke-virtual {v1, v4, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    .line 134
    .local v2, "orientation":I
    const-string v4, "ImageUtils"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 135
    const-string v4, "ImageUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exif orientation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    const/4 v0, 0x0

    .line 140
    .local v0, "degrees":I
    packed-switch v2, :pswitch_data_0

    .line 156
    :goto_0
    :pswitch_0
    invoke-static {p0, v0, p1}, Lcom/android/videoeditor/util/ImageUtils;->rotateAndScaleImage(Ljava/lang/String;ILjava/io/File;)V

    .line 157
    if-eqz v0, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3

    .line 142
    :pswitch_1
    const/16 v0, 0x5a

    .line 143
    goto :goto_0

    .line 147
    :pswitch_2
    const/16 v0, 0xb4

    .line 148
    goto :goto_0

    .line 152
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
