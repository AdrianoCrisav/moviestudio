.class public Lcom/android/videoeditor/widgets/PlayheadView;
.super Landroid/view/View;
.source "PlayheadView.java"


# instance fields
.field private final mLinePaint:Landroid/graphics/Paint;

.field private mProject:Lcom/android/videoeditor/service/VideoEditorProject;

.field private final mScreenWidth:I

.field private final mScrollListener:Lcom/android/videoeditor/widgets/ScrollViewListener;

.field private mScrollX:I

.field private final mTextPaint:Landroid/graphics/Paint;

.field private final mTicksHeight:I

.field private final mTimeTextSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/videoeditor/widgets/PlayheadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/videoeditor/widgets/PlayheadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const v5, 0x7f060004

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 54
    .local v2, "resources":Landroid/content/res/Resources;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/videoeditor/widgets/PlayheadView;->mLinePaint:Landroid/graphics/Paint;

    .line 55
    iget-object v3, p0, Lcom/android/videoeditor/widgets/PlayheadView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    iget-object v3, p0, Lcom/android/videoeditor/widgets/PlayheadView;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 57
    iget-object v3, p0, Lcom/android/videoeditor/widgets/PlayheadView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/videoeditor/widgets/PlayheadView;->mTextPaint:Landroid/graphics/Paint;

    .line 61
    iget-object v3, p0, Lcom/android/videoeditor/widgets/PlayheadView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    iget-object v3, p0, Lcom/android/videoeditor/widgets/PlayheadView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    const v3, 0x7f07000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/videoeditor/widgets/PlayheadView;->mTimeTextSize:F

    .line 64
    iget-object v3, p0, Lcom/android/videoeditor/widgets/PlayheadView;->mTextPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/videoeditor/widgets/PlayheadView;->mTimeTextSize:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 67
    const v3, 0x7f070017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/videoeditor/widgets/PlayheadView;->mTicksHeight:I

    .line 70
    const-string v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 72
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 73
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 74
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/android/videoeditor/widgets/PlayheadView;->mScreenWidth:I

    .line 77
    new-instance v3, Lcom/android/videoeditor/widgets/PlayheadView$1;

    invoke-direct {v3, p0}, Lcom/android/videoeditor/widgets/PlayheadView$1;-><init>(Lcom/android/videoeditor/widgets/PlayheadView;)V

    iput-object v3, p0, Lcom/android/videoeditor/widgets/PlayheadView;->mScrollListener:Lcom/android/videoeditor/widgets/ScrollViewListener;

    .line 95
    return-void
.end method

.method static synthetic access$002(Lcom/android/videoeditor/widgets/PlayheadView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/videoeditor/widgets/PlayheadView;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/android/videoeditor/widgets/PlayheadView;->mScrollX:I

    return p1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/PlayheadView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    .line 109
    .local v0, "scrollView":Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;
    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->getScrollX()I

    move-result v1

    iput v1, p0, Lcom/android/videoeditor/widgets/PlayheadView;->mScrollX:I

    .line 110
    iget-object v1, p0, Lcom/android/videoeditor/widgets/PlayheadView;->mScrollListener:Lcom/android/videoeditor/widgets/ScrollViewListener;

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->addScrollListener(Lcom/android/videoeditor/widgets/ScrollViewListener;)V

    .line 111
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/PlayheadView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    .line 117
    .local v0, "scrollView":Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;
    iget-object v1, p0, Lcom/android/videoeditor/widgets/PlayheadView;->mScrollListener:Lcom/android/videoeditor/widgets/ScrollViewListener;

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->removeScrollListener(Lcom/android/videoeditor/widgets/ScrollViewListener;)V

    .line 118
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 129
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/videoeditor/widgets/PlayheadView;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-nez v2, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/videoeditor/widgets/PlayheadView;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/VideoEditorProject;->computeDuration()J

    move-result-wide v9

    .line 136
    .local v9, "durationMs":J
    const-wide/16 v4, 0x3e8

    div-long v11, v9, v4

    .line 137
    .local v11, "durationSec":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/videoeditor/widgets/PlayheadView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float v2, v2

    float-to-int v0, v2

    move/from16 v23, v0

    .line 139
    .local v23, "y":I
    const-wide/16 v4, 0x0

    cmp-long v2, v9, v4

    if-eqz v2, :cond_2

    const-wide/16 v4, 0x0

    cmp-long v2, v11, v4

    if-nez v2, :cond_3

    .line 140
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/PlayheadView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcom/android/videoeditor/util/StringUtils;->getSimpleTimestampAsString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v20

    .line 141
    .local v20, "timeText":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/PlayheadView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/videoeditor/widgets/PlayheadView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    sub-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    float-to-int v0, v2

    move/from16 v22, v0

    .line 142
    .local v22, "x":I
    move/from16 v0, v22

    int-to-float v2, v0

    move/from16 v0, v23

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/videoeditor/widgets/PlayheadView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 146
    .end local v20    # "timeText":Ljava/lang/String;
    .end local v22    # "x":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/PlayheadView;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/videoeditor/widgets/PlayheadView;->mScreenWidth:I

    sub-int v21, v2, v4

    .line 148
    .local v21, "width":I
    move/from16 v0, v21

    int-to-long v4, v0

    div-long/2addr v4, v11

    long-to-int v14, v4

    .line 152
    .local v14, "pixelsPerSec":I
    const/4 v2, 0x4

    if-ge v14, v2, :cond_4

    .line 153
    const-wide/32 v18, 0x3a980

    .line 166
    .local v18, "tickMs":J
    :goto_1
    move/from16 v0, v21

    int-to-long v4, v0

    mul-long v4, v4, v18

    long-to-float v2, v4

    long-to-float v4, v9

    div-float v15, v2, v4

    .line 167
    .local v15, "spacing":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/videoeditor/widgets/PlayheadView;->mScrollX:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/videoeditor/widgets/PlayheadView;->mScrollX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/videoeditor/widgets/PlayheadView;->mScreenWidth:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    rem-float/2addr v4, v15

    sub-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/videoeditor/widgets/PlayheadView;->mScreenWidth:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v17

    .line 169
    .local v17, "startX":F
    move-wide/from16 v0, v18

    long-to-float v2, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/videoeditor/widgets/PlayheadView;->mScreenWidth:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v4, v17, v4

    mul-float/2addr v2, v4

    div-float v16, v2, v15

    .line 170
    .local v16, "startMs":F
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v0, v2

    move/from16 v16, v0

    .line 171
    move-wide/from16 v0, v18

    long-to-float v2, v0

    rem-float v2, v16, v2

    sub-float v16, v16, v2

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/PlayheadView;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 174
    .local v8, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/videoeditor/widgets/PlayheadView;->mScrollX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/videoeditor/widgets/PlayheadView;->mScreenWidth:I

    add-int/2addr v2, v4

    int-to-float v13, v2

    .line 175
    .local v13, "endX":F
    move/from16 v3, v17

    .local v3, "i":F
    :goto_2
    cmpg-float v2, v3, v13

    if-gtz v2, :cond_0

    .line 176
    move/from16 v0, v16

    float-to-long v4, v0

    invoke-static {v8, v4, v5}, Lcom/android/videoeditor/util/StringUtils;->getSimpleTimestampAsString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v20

    .line 177
    .restart local v20    # "timeText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/videoeditor/widgets/PlayheadView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    sub-float v2, v3, v2

    float-to-int v0, v2

    move/from16 v22, v0

    .line 178
    .restart local v22    # "x":I
    move/from16 v0, v22

    int-to-float v2, v0

    move/from16 v0, v23

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/videoeditor/widgets/PlayheadView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 179
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/videoeditor/widgets/PlayheadView;->mTicksHeight:I

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/videoeditor/widgets/PlayheadView;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v5, v3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 175
    add-float/2addr v3, v15

    move-wide/from16 v0, v18

    long-to-float v2, v0

    add-float v16, v16, v2

    goto :goto_2

    .line 154
    .end local v3    # "i":F
    .end local v8    # "context":Landroid/content/Context;
    .end local v13    # "endX":F
    .end local v15    # "spacing":F
    .end local v16    # "startMs":F
    .end local v17    # "startX":F
    .end local v18    # "tickMs":J
    .end local v20    # "timeText":Ljava/lang/String;
    .end local v22    # "x":I
    :cond_4
    const/4 v2, 0x6

    if-ge v14, v2, :cond_5

    .line 155
    const-wide/32 v18, 0x1d4c0

    .restart local v18    # "tickMs":J
    goto/16 :goto_1

    .line 156
    .end local v18    # "tickMs":J
    :cond_5
    const/16 v2, 0xa

    if-ge v14, v2, :cond_6

    .line 157
    const-wide/32 v18, 0xea60

    .restart local v18    # "tickMs":J
    goto/16 :goto_1

    .line 158
    .end local v18    # "tickMs":J
    :cond_6
    const/16 v2, 0x32

    if-ge v14, v2, :cond_7

    .line 159
    const-wide/16 v18, 0x2710

    .restart local v18    # "tickMs":J
    goto/16 :goto_1

    .line 160
    .end local v18    # "tickMs":J
    :cond_7
    const/16 v2, 0xc8

    if-ge v14, v2, :cond_8

    .line 161
    const-wide/16 v18, 0x1388

    .restart local v18    # "tickMs":J
    goto/16 :goto_1

    .line 163
    .end local v18    # "tickMs":J
    :cond_8
    const-wide/16 v18, 0x3e8

    .restart local v18    # "tickMs":J
    goto/16 :goto_1
.end method

.method public setProject(Lcom/android/videoeditor/service/VideoEditorProject;)V
    .locals 0
    .param p1, "project"    # Lcom/android/videoeditor/service/VideoEditorProject;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/videoeditor/widgets/PlayheadView;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    .line 125
    return-void
.end method
