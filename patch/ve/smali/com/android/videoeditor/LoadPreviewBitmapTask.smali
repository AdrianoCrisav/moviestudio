.class Lcom/android/videoeditor/LoadPreviewBitmapTask;
.super Landroid/os/AsyncTask;
.source "ProjectPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mContextAdapter:Lcom/android/videoeditor/ProjectPickerAdapter;

.field private mDuration:Ljava/lang/String;

.field private mHeight:I

.field private mImageView:Landroid/widget/ImageView;

.field private mPreviewBitmapCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mProjectPath:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mWidth:I


# direct methods
.method public constructor <init>(Lcom/android/videoeditor/ProjectPickerAdapter;Ljava/lang/String;Landroid/widget/ImageView;IILjava/lang/String;Ljava/lang/String;Landroid/util/LruCache;)V
    .locals 0
    .param p1, "contextAdapter"    # Lcom/android/videoeditor/ProjectPickerAdapter;
    .param p2, "projectPath"    # Ljava/lang/String;
    .param p3, "imageView"    # Landroid/widget/ImageView;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "title"    # Ljava/lang/String;
    .param p7, "duration"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/videoeditor/ProjectPickerAdapter;",
            "Ljava/lang/String;",
            "Landroid/widget/ImageView;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 254
    .local p8, "previewBitmapCache":Landroid/util/LruCache;, "Landroid/util/LruCache<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 255
    iput-object p1, p0, Lcom/android/videoeditor/LoadPreviewBitmapTask;->mContextAdapter:Lcom/android/videoeditor/ProjectPickerAdapter;

    .line 256
    iput-object p2, p0, Lcom/android/videoeditor/LoadPreviewBitmapTask;->mProjectPath:Ljava/lang/String;

    .line 257
    iput-object p3, p0, Lcom/android/videoeditor/LoadPreviewBitmapTask;->mImageView:Landroid/widget/ImageView;

    .line 258
    iput p4, p0, Lcom/android/videoeditor/LoadPreviewBitmapTask;->mWidth:I

    .line 259
    iput p5, p0, Lcom/android/videoeditor/LoadPreviewBitmapTask;->mHeight:I

    .line 260
    iput-object p6, p0, Lcom/android/videoeditor/LoadPreviewBitmapTask;->mTitle:Ljava/lang/String;

    .line 261
    iput-object p7, p0, Lcom/android/videoeditor/LoadPreviewBitmapTask;->mDuration:Ljava/lang/String;

    .line 262
    iput-object p8, p0, Lcom/android/videoeditor/LoadPreviewBitmapTask;->mPreviewBitmapCache:Landroid/util/LruCache;

    .line 263
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "param"    # [Ljava/lang/Void;

    .prologue
    const/4 v6, 0x0

    .line 267
    new-instance v5, Ljava/io/File;

    iget-object v7, p0, Lcom/android/videoeditor/LoadPreviewBitmapTask;->mProjectPath:Ljava/lang/String;

    const-string v8, "thumbnail.jpg"

    invoke-direct {v5, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .local v5, "thumbnail":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    move-object v0, v6

    .line 296
    :goto_0
    return-object v0

    .line 274
    :cond_0
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/android/videoeditor/LoadPreviewBitmapTask;->mWidth:I

    iget v9, p0, Lcom/android/videoeditor/LoadPreviewBitmapTask;->mHeight:I

    sget v10, Lcom/android/videoeditor/util/ImageUtils;->MATCH_LARGER_DIMENSION:I

    invoke-static {v7, v8, v9, v10}, Lcom/android/videoeditor/util/ImageUtils;->scaleImage(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 279
    .local v4, "previewBitmap":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_1

    .line 280
    iget v7, p0, Lcom/android/videoeditor/LoadPreviewBitmapTask;->mWidth:I

    iget v8, p0, Lcom/android/videoeditor/LoadPreviewBitmapTask;->mHeight:I

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 282
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 283
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    const/4 v7, 0x3

    invoke-direct {v3, v7}, Landroid/graphics/Paint;-><init>(I)V

    .line 286
    .local v3, "paint":Landroid/graphics/Paint;
    iget v7, p0, Lcom/android/videoeditor/LoadPreviewBitmapTask;->mWidth:I

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    iget v8, p0, Lcom/android/videoeditor/LoadPreviewBitmapTask;->mHeight:I

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {v1, v4, v7, v8, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 292
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "paint":Landroid/graphics/Paint;
    .end local v4    # "previewBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 293
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    move-object v0, v6

    .line 296
    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 240
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/videoeditor/LoadPreviewBitmapTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 301
    if-nez p1, :cond_0

    .line 303
    iget v0, p0, Lcom/android/videoeditor/LoadPreviewBitmapTask;->mWidth:I

    iget v1, p0, Lcom/android/videoeditor/LoadPreviewBitmapTask;->mHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 304
    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 310
    :goto_0
    iget-object v0, p0, Lcom/android/videoeditor/LoadPreviewBitmapTask;->mContextAdapter:Lcom/android/videoeditor/ProjectPickerAdapter;

    iget-object v1, p0, Lcom/android/videoeditor/LoadPreviewBitmapTask;->mTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/videoeditor/LoadPreviewBitmapTask;->mDuration:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/videoeditor/ProjectPickerAdapter;->drawBottomOverlay(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/android/videoeditor/LoadPreviewBitmapTask;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 312
    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/LoadPreviewBitmapTask;->mPreviewBitmapCache:Landroid/util/LruCache;

    iget-object v1, p0, Lcom/android/videoeditor/LoadPreviewBitmapTask;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 240
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/videoeditor/LoadPreviewBitmapTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
