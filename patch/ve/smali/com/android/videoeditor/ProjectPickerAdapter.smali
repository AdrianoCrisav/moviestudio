.class public Lcom/android/videoeditor/ProjectPickerAdapter;
.super Landroid/widget/BaseAdapter;
.source "ProjectPickerAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemHeight:I

.field private mItemWidth:I

.field private mOverlayHeight:I

.field private mOverlayHorizontalInset:I

.field private mOverlayVerticalInset:I

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

.field private mProjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/videoeditor/service/VideoEditorProject;",
            ">;"
        }
    .end annotation
.end field

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Ljava/util/List;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/LayoutInflater;",
            "Ljava/util/List",
            "<",
            "Lcom/android/videoeditor/service/VideoEditorProject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p3, "projects":Ljava/util/List;, "Ljava/util/List<Lcom/android/videoeditor/service/VideoEditorProject;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/videoeditor/ProjectPickerAdapter;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/videoeditor/ProjectPickerAdapter;->mResources:Landroid/content/res/Resources;

    .line 66
    iput-object p2, p0, Lcom/android/videoeditor/ProjectPickerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 67
    iput-object p3, p0, Lcom/android/videoeditor/ProjectPickerAdapter;->mProjects:Ljava/util/List;

    .line 68
    iget-object v0, p0, Lcom/android/videoeditor/ProjectPickerAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f070006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/videoeditor/ProjectPickerAdapter;->mItemWidth:I

    .line 69
    iget-object v0, p0, Lcom/android/videoeditor/ProjectPickerAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f070007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/videoeditor/ProjectPickerAdapter;->mItemHeight:I

    .line 70
    iget-object v0, p0, Lcom/android/videoeditor/ProjectPickerAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f070002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/videoeditor/ProjectPickerAdapter;->mOverlayHeight:I

    .line 72
    iget-object v0, p0, Lcom/android/videoeditor/ProjectPickerAdapter;->mResources:Landroid/content/res/Resources;

    const/high16 v1, 0x7f070000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/videoeditor/ProjectPickerAdapter;->mOverlayVerticalInset:I

    .line 74
    iget-object v0, p0, Lcom/android/videoeditor/ProjectPickerAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f070001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/videoeditor/ProjectPickerAdapter;->mOverlayHorizontalInset:I

    .line 77
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/videoeditor/ProjectPickerAdapter;->mPreviewBitmapCache:Landroid/util/LruCache;

    .line 78
    return-void
.end method

.method private getThumbnail(Ljava/lang/String;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "duration"    # Ljava/lang/String;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/videoeditor/ProjectPickerAdapter;->mPreviewBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    .line 198
    .local v9, "previewBitmap":Landroid/graphics/Bitmap;
    if-nez v9, :cond_0

    .line 201
    new-instance v0, Lcom/android/videoeditor/LoadPreviewBitmapTask;

    iget v4, p0, Lcom/android/videoeditor/ProjectPickerAdapter;->mItemWidth:I

    iget v5, p0, Lcom/android/videoeditor/ProjectPickerAdapter;->mItemHeight:I

    iget-object v8, p0, Lcom/android/videoeditor/ProjectPickerAdapter;->mPreviewBitmapCache:Landroid/util/LruCache;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/videoeditor/LoadPreviewBitmapTask;-><init>(Lcom/android/videoeditor/ProjectPickerAdapter;Ljava/lang/String;Landroid/widget/ImageView;IILjava/lang/String;Ljava/lang/String;Landroid/util/LruCache;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/LoadPreviewBitmapTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 207
    const/4 v9, 0x0

    .end local v9    # "previewBitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-object v9
.end method

.method private millisecondsToTimeString(J)Ljava/lang/String;
    .locals 2
    .param p1, "milliseconds"    # J

    .prologue
    .line 233
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private renderNewProjectThumbnail()Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 211
    iget v2, p0, Lcom/android/videoeditor/ProjectPickerAdapter;->mItemWidth:I

    iget v3, p0, Lcom/android/videoeditor/ProjectPickerAdapter;->mItemHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 213
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 214
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 215
    .local v5, "paint":Landroid/graphics/Paint;
    iget v2, p0, Lcom/android/videoeditor/ProjectPickerAdapter;->mItemWidth:I

    int-to-float v3, v2

    iget v2, p0, Lcom/android/videoeditor/ProjectPickerAdapter;->mItemHeight:I

    int-to-float v4, v2

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 217
    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 218
    const/16 v1, 0xff

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 219
    iget-object v1, p0, Lcom/android/videoeditor/ProjectPickerAdapter;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f020007

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 221
    .local v7, "newProjectIcon":Landroid/graphics/Bitmap;
    iget v1, p0, Lcom/android/videoeditor/ProjectPickerAdapter;->mItemWidth:I

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v8, v1, 0x2

    .line 222
    .local v8, "x":I
    iget v1, p0, Lcom/android/videoeditor/ProjectPickerAdapter;->mItemHeight:I

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v9, v1, 0x2

    .line 223
    .local v9, "y":I
    int-to-float v1, v8

    int-to-float v2, v9

    invoke-virtual {v0, v7, v1, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 224
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 226
    return-object v6
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/videoeditor/ProjectPickerAdapter;->mPreviewBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 85
    iget-object v0, p0, Lcom/android/videoeditor/ProjectPickerAdapter;->mProjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 86
    invoke-virtual {p0}, Lcom/android/videoeditor/ProjectPickerAdapter;->notifyDataSetChanged()V

    .line 87
    return-void
.end method

.method public drawBottomOverlay(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "duration"    # Ljava/lang/String;

    .prologue
    .line 168
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 169
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v5, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 170
    .local v5, "paint":Landroid/graphics/Paint;
    const/high16 v1, -0x1000000

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    const/16 v1, 0x80

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 172
    const/4 v8, 0x0

    .local v8, "left":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/videoeditor/ProjectPickerAdapter;->mOverlayHeight:I

    sub-int v10, v1, v2

    .line 173
    .local v10, "top":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .local v9, "right":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 174
    .local v7, "bottom":I
    const/4 v1, 0x0

    int-to-float v2, v10

    int-to-float v3, v9

    int-to-float v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 176
    const/4 v1, -0x1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    iget-object v1, p0, Lcom/android/videoeditor/ProjectPickerAdapter;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f070003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 181
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v5, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    sub-int v6, v1, v2

    .line 182
    .local v6, "availableTitleWidth":I
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v5}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    int-to-float v2, v6

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p2, v1, v2, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 184
    iget v1, p0, Lcom/android/videoeditor/ProjectPickerAdapter;->mOverlayHorizontalInset:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/android/videoeditor/ProjectPickerAdapter;->mOverlayHeight:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/videoeditor/ProjectPickerAdapter;->mOverlayVerticalInset:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, p2, v1, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 189
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v5, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/videoeditor/ProjectPickerAdapter;->mOverlayHorizontalInset:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/android/videoeditor/ProjectPickerAdapter;->mOverlayHeight:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/videoeditor/ProjectPickerAdapter;->mOverlayVerticalInset:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, p3, v1, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 193
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/videoeditor/ProjectPickerAdapter;->mProjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/videoeditor/ProjectPickerAdapter;->mProjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 120
    const/4 v0, 0x0

    .line 122
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/ProjectPickerAdapter;->mProjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 127
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 136
    iget-object v6, p0, Lcom/android/videoeditor/ProjectPickerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040013

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 137
    .local v5, "v":Landroid/view/View;
    const v6, 0x7f08002f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 141
    .local v1, "iv":Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/android/videoeditor/ProjectPickerAdapter;->mProjects:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne p1, v6, :cond_1

    .line 142
    iget-object v6, p0, Lcom/android/videoeditor/ProjectPickerAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f090031

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 143
    .local v4, "title":Ljava/lang/String;
    const-string v0, ""

    .line 144
    .local v0, "duration":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/videoeditor/ProjectPickerAdapter;->renderNewProjectThumbnail()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 155
    .local v3, "thumbnail":Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v3, :cond_0

    .line 156
    invoke-virtual {p0, v3, v4, v0}, Lcom/android/videoeditor/ProjectPickerAdapter;->drawBottomOverlay(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 160
    :cond_0
    return-object v5

    .line 146
    .end local v0    # "duration":Ljava/lang/String;
    .end local v3    # "thumbnail":Landroid/graphics/Bitmap;
    .end local v4    # "title":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/android/videoeditor/ProjectPickerAdapter;->mProjects:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/videoeditor/service/VideoEditorProject;

    .line 147
    .local v2, "project":Lcom/android/videoeditor/service/VideoEditorProject;
    invoke-virtual {v2}, Lcom/android/videoeditor/service/VideoEditorProject;->getName()Ljava/lang/String;

    move-result-object v4

    .line 148
    .restart local v4    # "title":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 149
    const-string v4, ""

    .line 151
    :cond_2
    invoke-virtual {v2}, Lcom/android/videoeditor/service/VideoEditorProject;->getProjectDuration()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/android/videoeditor/ProjectPickerAdapter;->millisecondsToTimeString(J)Ljava/lang/String;

    move-result-object v0

    .line 152
    .restart local v0    # "duration":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v1, v4, v0}, Lcom/android/videoeditor/ProjectPickerAdapter;->getThumbnail(Ljava/lang/String;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .restart local v3    # "thumbnail":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 4
    .param p1, "projectPath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 98
    iget-object v3, p0, Lcom/android/videoeditor/ProjectPickerAdapter;->mProjects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/videoeditor/service/VideoEditorProject;

    .line 99
    .local v1, "project":Lcom/android/videoeditor/service/VideoEditorProject;
    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    iget-object v3, p0, Lcom/android/videoeditor/ProjectPickerAdapter;->mProjects:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 101
    invoke-virtual {p0}, Lcom/android/videoeditor/ProjectPickerAdapter;->notifyDataSetChanged()V

    .line 102
    const/4 v2, 0x1

    .line 108
    .end local v1    # "project":Lcom/android/videoeditor/service/VideoEditorProject;
    :cond_1
    return v2
.end method
