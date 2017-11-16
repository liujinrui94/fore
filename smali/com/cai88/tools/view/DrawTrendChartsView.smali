.class public Lcom/cai88/tools/view/DrawTrendChartsView;
.super Landroid/view/View;
.source "DrawTrendChartsView.java"


# instance fields
.field private analysisArray:[Ljava/lang/String;

.field private calDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private circleViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cai88/tools/chart/ChartOptModel;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private defaultTextColor:I

.field private defaultTextColor2:I

.field private defaultTextSize:I

.field private drawHeadLineSingle:Z

.field private drawLeftView:Z

.field private fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private gameCode:Ljava/lang/String;

.field private greenColor:I

.field private height:I

.field private issueList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lineBackgroundColor1:I

.field private lineBackgroundColor2:I

.field private mCirclePaint:Landroid/graphics/Paint;

.field private mLinePaint:Landroid/graphics/Paint;

.field private mLinePaintDiv:Landroid/graphics/Paint;

.field private mRectPaint:Landroid/graphics/Paint;

.field private mTextPaint:Landroid/graphics/Paint;

.field private openingTipString:Ljava/lang/String;

.field private playCode:Ljava/lang/String;

.field private points:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private rectViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cai88/tools/chart/ChartOptModel;",
            ">;"
        }
    .end annotation
.end field

.field private redColor:I

.field private rowNum:I

.field private showAnalysis:Z

.field private showLine:Z

.field private showMissNumber:Z

.field private showOpeningTips:Z

.field private textColorBlack:I

.field private textColorBlue:I

.field private textColorDarkBlack:I

.field private textColorRed:I

.field private textColorWhite:I

.field private views:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cai88/tools/chart/ChartOptModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->circleViews:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->rectViews:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->points:Ljava/util/ArrayList;

    .line 38
    iput v1, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->rowNum:I

    .line 39
    iput v1, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->width:I

    .line 40
    iput v1, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->height:I

    .line 41
    iput-boolean v1, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->showLine:Z

    .line 42
    iput-boolean v1, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->showMissNumber:Z

    .line 43
    iput-boolean v1, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->showOpeningTips:Z

    .line 44
    iput-boolean v1, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->showAnalysis:Z

    .line 47
    iput-boolean v1, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->drawHeadLineSingle:Z

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->openingTipString:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->issueList:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->calDataList:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->views:Ljava/util/ArrayList;

    .line 53
    iput v1, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->redColor:I

    .line 54
    const v0, -0x703ce1

    iput v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->greenColor:I

    .line 55
    iput v1, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->textColorWhite:I

    .line 56
    iput v1, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->textColorBlack:I

    .line 57
    iput v1, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->textColorDarkBlack:I

    .line 58
    iput v1, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->textColorRed:I

    .line 59
    const v0, -0xdba558

    iput v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->textColorBlue:I

    .line 60
    iput v1, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->lineBackgroundColor1:I

    .line 61
    iput v1, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->lineBackgroundColor2:I

    .line 62
    iput v1, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->defaultTextColor:I

    .line 63
    iput v1, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->defaultTextColor2:I

    .line 65
    iput-boolean v1, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->drawLeftView:Z

    .line 67
    const/16 v0, 0xd

    iput v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->defaultTextSize:I

    .line 77
    iput-object p1, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->context:Landroid/content/Context;

    .line 78
    invoke-direct {p0}, Lcom/cai88/tools/view/DrawTrendChartsView;->init()V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->circleViews:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->rectViews:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->points:Ljava/util/ArrayList;

    .line 38
    iput v1, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->rowNum:I

    .line 39
    iput v1, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->width:I

    .line 40
    iput v1, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->height:I

    .line 41
    iput-boolean v1, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->showLine:Z

    .line 42
    iput-boolean v1, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->showMissNumber:Z

    .line 43
    iput-boolean v1, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->showOpeningTips:Z

    .line 44
    iput-boolean v1, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->showAnalysis:Z

    .line 47
    iput-boolean v1, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->drawHeadLineSingle:Z

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->openingTipString:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->issueList:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->calDataList:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->views:Ljava/util/ArrayList;

    .line 53
    iput v1, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->redColor:I

    .line 54
    const v0, -0x703ce1

    iput v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->greenColor:I

    .line 55
    iput v1, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->textColorWhite:I

    .line 56
    iput v1, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->textColorBlack:I

    .line 57
    iput v1, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->textColorDarkBlack:I

    .line 58
    iput v1, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->textColorRed:I

    .line 59
    const v0, -0xdba558

    iput v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->textColorBlue:I

    .line 60
    iput v1, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->lineBackgroundColor1:I

    .line 61
    iput v1, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->lineBackgroundColor2:I

    .line 62
    iput v1, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->defaultTextColor:I

    .line 63
    iput v1, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->defaultTextColor2:I

    .line 65
    iput-boolean v1, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->drawLeftView:Z

    .line 67
    const/16 v0, 0xd

    iput v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->defaultTextSize:I

    .line 71
    iput-object p1, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->context:Landroid/content/Context;

    .line 72
    invoke-direct {p0}, Lcom/cai88/tools/view/DrawTrendChartsView;->init()V

    .line 73
    return-void
.end method

.method private drawLeftView(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v13, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 338
    invoke-direct {p0}, Lcom/cai88/tools/view/DrawTrendChartsView;->setPaintColor()V

    .line 340
    iget-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->issueList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->issueList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->issueList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->rowNum:I

    .line 343
    iget-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->mTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->defaultTextColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 344
    const/4 v7, 0x0

    .local v7, "bottom":I
    const/4 v12, 0x0

    .line 345
    .local v12, "top":I
    iget v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->width:I

    int-to-float v0, v0

    invoke-direct {p0, v1, v0}, Lcom/cai88/tools/view/DrawTrendChartsView;->getCenterX(FF)I

    move-result v8

    .line 346
    .local v8, "centerX":I
    const/4 v9, 0x0

    .line 348
    .local v9, "centerY":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    iget-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->issueList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v10, v0, :cond_2

    .line 373
    iget-boolean v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->showAnalysis:Z

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41400000    # 12.0f

    iget-object v3, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/cai88/tools/uitl/Common;->GetD(Landroid/content/Context;)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 375
    const/4 v10, 0x0

    :goto_1
    const/4 v0, 0x4

    if-lt v10, v0, :cond_5

    .line 392
    iget-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->mTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->defaultTextSize:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/cai88/tools/uitl/Common;->GetD(Landroid/content/Context;)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 396
    :cond_0
    const/4 v10, 0x0

    :goto_2
    iget v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->rowNum:I

    if-lt v10, v0, :cond_7

    .line 401
    .end local v7    # "bottom":I
    .end local v8    # "centerX":I
    .end local v9    # "centerY":I
    .end local v10    # "i":I
    .end local v12    # "top":I
    :cond_1
    return-void

    .line 349
    .restart local v7    # "bottom":I
    .restart local v8    # "centerX":I
    .restart local v9    # "centerY":I
    .restart local v10    # "i":I
    .restart local v12    # "top":I
    :cond_2
    iget v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->height:I

    mul-int v12, v10, v0

    .line 350
    add-int/lit8 v0, v10, 0x1

    iget v2, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->height:I

    mul-int v7, v0, v2

    .line 351
    int-to-float v0, v12

    int-to-float v2, v7

    invoke-direct {p0, v0, v2}, Lcom/cai88/tools/view/DrawTrendChartsView;->getCenterY(FF)I

    move-result v9

    .line 354
    rem-int/lit8 v0, v10, 0x2

    if-eqz v0, :cond_3

    .line 355
    iget-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->mRectPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->lineBackgroundColor1:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 359
    :goto_3
    int-to-float v2, v12

    iget v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->width:I

    int-to-float v3, v0

    int-to-float v4, v7

    iget-object v5, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->mRectPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 361
    iget-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v2, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v9, v0

    iget-object v2, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v6, v0, v2

    .line 362
    .local v6, "baseline":I
    iget-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->issueList:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "\u65b0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 363
    iget-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->issueList:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "\u65b0"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 364
    .local v11, "str":Ljava/lang/String;
    int-to-float v0, v8

    iget-object v2, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->mTextPaint:Landroid/graphics/Paint;

    const-string v3, "\u65b0"

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    div-float/2addr v2, v13

    sub-float/2addr v0, v2

    int-to-float v2, v6

    iget-object v3, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v11, v0, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 365
    iget-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->mTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->defaultTextColor2:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 366
    const-string v0, "\u65b0"

    int-to-float v2, v8

    iget-object v3, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    div-float/2addr v3, v13

    add-float/2addr v2, v3

    int-to-float v3, v6

    iget-object v4, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 367
    iget-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->mTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->defaultTextColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 348
    .end local v11    # "str":Ljava/lang/String;
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 357
    .end local v6    # "baseline":I
    :cond_3
    iget-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->mRectPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->lineBackgroundColor2:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    .line 369
    .restart local v6    # "baseline":I
    :cond_4
    iget-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->issueList:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    int-to-float v2, v8

    int-to-float v3, v6

    iget-object v4, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 376
    .end local v6    # "baseline":I
    :cond_5
    iget v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->rowNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->rowNum:I

    .line 377
    iget v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->rowNum:I

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->height:I

    mul-int v12, v0, v2

    .line 378
    iget v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->rowNum:I

    iget v2, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->height:I

    mul-int v7, v0, v2

    .line 379
    int-to-float v0, v12

    int-to-float v2, v7

    invoke-direct {p0, v0, v2}, Lcom/cai88/tools/view/DrawTrendChartsView;->getCenterY(FF)I

    move-result v9

    .line 381
    iget v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->rowNum:I

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    .line 382
    iget-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->mRectPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->lineBackgroundColor1:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 386
    :goto_5
    invoke-direct {p0, v10}, Lcom/cai88/tools/view/DrawTrendChartsView;->generateAnalysisPaint(I)V

    .line 387
    int-to-float v2, v12

    iget v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->width:I

    int-to-float v3, v0

    int-to-float v4, v7

    iget-object v5, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->mRectPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 389
    iget-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v2, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v9, v0

    iget-object v2, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v6, v0, v2

    .line 390
    .restart local v6    # "baseline":I
    iget-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->analysisArray:[Ljava/lang/String;

    aget-object v0, v0, v10

    int-to-float v2, v8

    int-to-float v3, v6

    iget-object v4, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 375
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 384
    .end local v6    # "baseline":I
    :cond_6
    iget-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->mRectPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->lineBackgroundColor2:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_5

    .line 397
    :cond_7
    add-int/lit8 v0, v10, 0x1

    iget v2, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->height:I

    mul-int v7, v0, v2

    .line 398
    int-to-float v2, v7

    iget v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->width:I

    int-to-float v3, v0

    int-to-float v4, v7

    iget-object v5, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->mLinePaintDiv:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 396
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2
.end method

.method private drawRightView(Landroid/graphics/Canvas;)V
    .locals 36
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 135
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->circleViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 136
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->rectViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 137
    invoke-direct/range {p0 .. p0}, Lcom/cai88/tools/view/DrawTrendChartsView;->setPaintColor()V

    .line 139
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->views:Ljava/util/ArrayList;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->views:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 140
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->views:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->rowNum:I

    .line 141
    const/16 v35, 0x0

    .local v35, "top":I
    const/16 v19, 0x0

    .line 142
    .local v19, "bottom":I
    const/4 v6, 0x0

    .local v6, "wholeWidth":F
    const/4 v8, 0x0

    .local v8, "left":F
    const/4 v10, 0x0

    .line 143
    .local v10, "right":F
    const/16 v20, 0x0

    .local v20, "centerX":I
    const/16 v21, 0x0

    .line 145
    .local v21, "centerY":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->views:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/ArrayList;

    .line 146
    .local v23, "exampleLine":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cai88/tools/chart/ChartOptModel;>;"
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_0
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v24

    if-lt v0, v3, :cond_7

    .line 150
    new-instance v29, Landroid/graphics/RectF;

    invoke-direct/range {v29 .. v29}, Landroid/graphics/RectF;-><init>()V

    .line 151
    .local v29, "outerRect":Landroid/graphics/RectF;
    const/16 v24, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->rowNum:I

    move/from16 v0, v24

    if-lt v0, v3, :cond_8

    .line 217
    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 218
    const/16 v35, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->rowNum:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->height:I

    mul-int v19, v3, v4

    .line 219
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->drawHeadLineSingle:Z

    if-eqz v3, :cond_11

    .line 220
    const/16 v19, 0x0

    .line 229
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->defaultTextColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 230
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->showOpeningTips:Z

    if-eqz v3, :cond_2

    .line 231
    move-object/from16 v0, p0

    iget v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->rowNum:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->rowNum:I

    .line 232
    move-object/from16 v0, p0

    iget v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->rowNum:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->height:I

    mul-int v35, v3, v4

    .line 233
    move-object/from16 v0, p0

    iget v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->rowNum:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->height:I

    mul-int v19, v3, v4

    .line 234
    const/4 v4, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cai88/tools/chart/ChartOptModel;

    invoke-virtual {v3}, Lcom/cai88/tools/chart/ChartOptModel;->getWidth()F

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lcom/cai88/tools/view/DrawTrendChartsView;->getCenterX(FF)I

    move-result v20

    .line 235
    move/from16 v0, v35

    int-to-float v3, v0

    move/from16 v0, v19

    int-to-float v4, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/cai88/tools/view/DrawTrendChartsView;->getCenterY(FF)I

    move-result v21

    .line 236
    move-object/from16 v0, p0

    iget v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->rowNum:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_1

    .line 237
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->mRectPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->lineBackgroundColor1:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 238
    const/4 v12, 0x0

    move/from16 v0, v35

    int-to-float v13, v0

    move/from16 v0, v19

    int-to-float v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->mRectPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v11, p1

    move v14, v6

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 240
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v21, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v17, v3, v4

    .line 241
    .local v17, "baseline":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->openingTipString:Ljava/lang/String;

    invoke-static {v3}, Lcom/cai88/tools/uitl/Common;->strIsBlank(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->openingTipString:Ljava/lang/String;

    move-object/from16 v33, v0

    .line 242
    .local v33, "str":Ljava/lang/String;
    :goto_2
    div-int/lit8 v3, v20, 0x8

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    move/from16 v0, v17

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 245
    .end local v17    # "baseline":I
    .end local v33    # "str":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->showAnalysis:Z

    if-eqz v3, :cond_4

    .line 246
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->calDataList:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->calDataList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 247
    const/16 v24, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->calDataList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v24

    if-lt v0, v3, :cond_13

    .line 273
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->calDataList:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->calDataList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 274
    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 275
    move-object/from16 v0, p0

    iget v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->rowNum:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->calDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->height:I

    mul-int v35, v3, v4

    .line 276
    move-object/from16 v0, p0

    iget v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->rowNum:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->height:I

    mul-int v19, v3, v4

    .line 277
    const/16 v24, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->calDataList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, v24

    if-lt v0, v3, :cond_17

    .line 285
    :cond_4
    const/16 v19, 0x0

    .line 286
    const/16 v24, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->rowNum:I

    move/from16 v0, v24

    if-lt v0, v3, :cond_18

    .line 291
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->points:Ljava/util/ArrayList;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->points:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 293
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->showLine:Z

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->circleViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 294
    const/16 v25, 0x1

    .line 295
    .local v25, "isFirst":Z
    const/16 v24, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->points:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v24

    if-lt v0, v3, :cond_19

    .line 308
    .end local v25    # "isFirst":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->textColorWhite:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 310
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->circleViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 311
    const/high16 v3, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/cai88/tools/uitl/Common;->GetD(Landroid/content/Context;)F

    move-result v4

    mul-float v32, v3, v4

    .line 312
    .local v32, "smallCircleRadius":F
    const/16 v24, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->points:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v24

    if-lt v0, v3, :cond_1c

    .line 335
    .end local v6    # "wholeWidth":F
    .end local v8    # "left":F
    .end local v10    # "right":F
    .end local v19    # "bottom":I
    .end local v20    # "centerX":I
    .end local v21    # "centerY":I
    .end local v23    # "exampleLine":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cai88/tools/chart/ChartOptModel;>;"
    .end local v24    # "i":I
    .end local v29    # "outerRect":Landroid/graphics/RectF;
    .end local v32    # "smallCircleRadius":F
    .end local v35    # "top":I
    :cond_6
    return-void

    .line 147
    .restart local v6    # "wholeWidth":F
    .restart local v8    # "left":F
    .restart local v10    # "right":F
    .restart local v19    # "bottom":I
    .restart local v20    # "centerX":I
    .restart local v21    # "centerY":I
    .restart local v23    # "exampleLine":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cai88/tools/chart/ChartOptModel;>;"
    .restart local v24    # "i":I
    .restart local v35    # "top":I
    :cond_7
    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cai88/tools/chart/ChartOptModel;

    invoke-virtual {v3}, Lcom/cai88/tools/chart/ChartOptModel;->getWidth()F

    move-result v3

    add-float/2addr v6, v3

    .line 146
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_0

    .line 152
    .restart local v29    # "outerRect":Landroid/graphics/RectF;
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->views:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/ArrayList;

    .line 153
    .local v28, "lineList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cai88/tools/chart/ChartOptModel;>;"
    move-object/from16 v0, p0

    iget v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->height:I

    mul-int v35, v24, v3

    add-int/lit8 v3, v24, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->height:I

    mul-int v19, v3, v4

    .line 154
    move/from16 v0, v35

    int-to-float v3, v0

    move/from16 v0, v19

    int-to-float v4, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/cai88/tools/view/DrawTrendChartsView;->getCenterY(FF)I

    move-result v21

    .line 157
    rem-int/lit8 v3, v24, 0x2

    if-eqz v3, :cond_9

    .line 158
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->mRectPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->lineBackgroundColor1:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    :goto_8
    const/4 v4, 0x0

    move/from16 v0, v35

    int-to-float v5, v0

    move/from16 v0, v19

    int-to-float v7, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->mRectPaint:Landroid/graphics/Paint;

    .end local v8    # "left":F
    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 164
    const/4 v8, 0x0

    .restart local v8    # "left":F
    const/4 v10, 0x0

    .line 165
    const/16 v27, 0x0

    .local v27, "j":I
    :goto_9
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v27

    if-lt v0, v3, :cond_a

    .line 151
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_1

    .line 160
    .end local v27    # "j":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->mRectPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->lineBackgroundColor2:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_8

    .line 166
    .restart local v27    # "j":I
    :cond_a
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/cai88/tools/chart/ChartOptModel;

    .line 167
    .local v26, "item":Lcom/cai88/tools/chart/ChartOptModel;
    invoke-virtual/range {v26 .. v26}, Lcom/cai88/tools/chart/ChartOptModel;->getWidth()F

    move-result v3

    add-float/2addr v10, v3

    .line 168
    move-object/from16 v0, v26

    iget v3, v0, Lcom/cai88/tools/chart/ChartOptModel;->drawLayout:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_c

    .line 169
    const-wide v3, 0x3ff3333333333333L    # 1.2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v26 .. v26}, Lcom/cai88/tools/chart/ChartOptModel;->getInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-double v11, v5

    mul-double/2addr v3, v11

    double-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v3, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v3}, Lcom/cai88/tools/view/DrawTrendChartsView;->getCenterX(FF)I

    move-result v20

    .line 173
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v21, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v17, v3, v4

    .line 174
    .restart local v17    # "baseline":I
    invoke-virtual/range {v26 .. v26}, Lcom/cai88/tools/chart/ChartOptModel;->isDrawCircle()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 175
    new-instance v30, Landroid/graphics/Point;

    move-object/from16 v0, v30

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 176
    .local v30, "point":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->points:Ljava/util/ArrayList;

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->circleViews:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    .end local v30    # "point":Landroid/graphics/Point;
    :cond_b
    :goto_b
    invoke-virtual/range {v26 .. v26}, Lcom/cai88/tools/chart/ChartOptModel;->getWidth()F

    move-result v3

    add-float/2addr v8, v3

    .line 165
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_9

    .line 171
    .end local v17    # "baseline":I
    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v10}, Lcom/cai88/tools/view/DrawTrendChartsView;->getCenterX(FF)I

    move-result v20

    goto :goto_a

    .line 178
    .restart local v17    # "baseline":I
    :cond_d
    invoke-virtual/range {v26 .. v26}, Lcom/cai88/tools/chart/ChartOptModel;->isDrawBackground()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 179
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v26 .. v26}, Lcom/cai88/tools/chart/ChartOptModel;->getBackgroundColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 180
    move/from16 v0, v35

    int-to-float v9, v0

    move/from16 v0, v19

    int-to-float v11, v0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->mRectPaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->textColorWhite:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 183
    invoke-virtual/range {v26 .. v26}, Lcom/cai88/tools/chart/ChartOptModel;->getInfo()Ljava/lang/String;

    move-result-object v3

    move/from16 v0, v20

    int-to-float v4, v0

    move/from16 v0, v17

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_b

    .line 184
    :cond_e
    invoke-virtual/range {v26 .. v26}, Lcom/cai88/tools/chart/ChartOptModel;->isDrawHightLine()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 186
    :try_start_0
    const-string v18, ""

    .line 187
    .local v18, "blackStr":Ljava/lang/String;
    const-string v31, ""

    .line 188
    .local v31, "redStr":Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Lcom/cai88/tools/chart/ChartOptModel;->getInfoOrg()Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_f

    .line 189
    invoke-virtual/range {v26 .. v26}, Lcom/cai88/tools/chart/ChartOptModel;->getInfoOrg()Ljava/lang/String;

    move-result-object v31

    .line 194
    :goto_c
    const-string v3, ","

    const-string v4, "  "

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    .line 195
    const-string v3, ","

    const-string v4, "  "

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v31

    .line 197
    const-wide v3, 0x3ff3333333333333L    # 1.2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->mTextPaint:Landroid/graphics/Paint;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-double v11, v5

    mul-double/2addr v3, v11

    double-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v3, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v3}, Lcom/cai88/tools/view/DrawTrendChartsView;->getCenterX(FF)I

    move-result v20

    .line 199
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->textColorBlack:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 200
    move/from16 v0, v20

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    move/from16 v0, v17

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->textColorRed:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 202
    move/from16 v0, v20

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    move/from16 v0, v17

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_b

    .line 203
    .end local v18    # "blackStr":Ljava/lang/String;
    .end local v31    # "redStr":Ljava/lang/String;
    :catch_0
    move-exception v22

    .line 204
    .local v22, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v26 .. v26}, Lcom/cai88/tools/chart/ChartOptModel;->getInfoColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 205
    invoke-virtual/range {v26 .. v26}, Lcom/cai88/tools/chart/ChartOptModel;->getInfoOrg()Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    const-string v5, "  "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, v20

    int-to-float v4, v0

    move/from16 v0, v17

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_b

    .line 191
    .end local v22    # "e":Ljava/lang/Exception;
    .restart local v18    # "blackStr":Ljava/lang/String;
    .restart local v31    # "redStr":Ljava/lang/String;
    :cond_f
    :try_start_1
    invoke-virtual/range {v26 .. v26}, Lcom/cai88/tools/chart/ChartOptModel;->getInfoOrg()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v18

    goto/16 :goto_c

    .line 208
    .end local v18    # "blackStr":Ljava/lang/String;
    .end local v31    # "redStr":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->showMissNumber:Z

    if-eqz v3, :cond_b

    .line 209
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v26 .. v26}, Lcom/cai88/tools/chart/ChartOptModel;->getInfoColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 210
    invoke-virtual/range {v26 .. v26}, Lcom/cai88/tools/chart/ChartOptModel;->getInfo()Ljava/lang/String;

    move-result-object v3

    move/from16 v0, v20

    int-to-float v4, v0

    move/from16 v0, v17

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_b

    .line 222
    .end local v17    # "baseline":I
    .end local v26    # "item":Lcom/cai88/tools/chart/ChartOptModel;
    .end local v27    # "j":I
    .end local v28    # "lineList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cai88/tools/chart/ChartOptModel;>;"
    :cond_11
    const/16 v24, 0x0

    :goto_d
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, v24

    if-ge v0, v3, :cond_0

    .line 223
    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cai88/tools/chart/ChartOptModel;

    invoke-virtual {v3}, Lcom/cai88/tools/chart/ChartOptModel;->getWidth()F

    move-result v3

    add-float/2addr v10, v3

    .line 224
    move/from16 v0, v35

    int-to-float v11, v0

    move/from16 v0, v19

    int-to-float v13, v0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->mLinePaintDiv:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move v12, v10

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 222
    add-int/lit8 v24, v24, 0x1

    goto :goto_d

    .line 241
    .restart local v17    # "baseline":I
    :cond_12
    const-string v33, "\u5f00\u5956\u4e2d......"

    goto/16 :goto_2

    .line 248
    .end local v17    # "baseline":I
    :cond_13
    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 249
    move-object/from16 v0, p0

    iget v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->rowNum:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->height:I

    mul-int v35, v3, v4

    .line 250
    move-object/from16 v0, p0

    iget v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->rowNum:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->height:I

    mul-int v19, v3, v4

    .line 251
    move/from16 v0, v35

    int-to-float v3, v0

    move/from16 v0, v19

    int-to-float v4, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/cai88/tools/view/DrawTrendChartsView;->getCenterY(FF)I

    move-result v21

    .line 253
    move-object/from16 v0, p0

    iget v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->rowNum:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_14

    .line 254
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->mRectPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->lineBackgroundColor1:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 258
    :goto_e
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/cai88/tools/view/DrawTrendChartsView;->generateAnalysisPaint(I)V

    .line 259
    const/4 v12, 0x0

    move/from16 v0, v35

    int-to-float v13, v0

    move/from16 v0, v19

    int-to-float v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->mRectPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v11, p1

    move v14, v6

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 261
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->calDataList:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/util/ArrayList;

    .line 262
    .local v34, "tmpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v27, 0x0

    .restart local v27    # "j":I
    :goto_f
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v27

    if-lt v0, v3, :cond_15

    .line 268
    move-object/from16 v0, p0

    iget v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->rowNum:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->rowNum:I

    .line 247
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_3

    .line 256
    .end local v27    # "j":I
    .end local v34    # "tmpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->mRectPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->lineBackgroundColor2:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_e

    .line 263
    .restart local v27    # "j":I
    .restart local v34    # "tmpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_15
    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cai88/tools/chart/ChartOptModel;

    invoke-virtual {v3}, Lcom/cai88/tools/chart/ChartOptModel;->getWidth()F

    move-result v3

    add-float/2addr v10, v3

    .line 264
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v21, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v17, v3, v4

    .line 265
    .restart local v17    # "baseline":I
    move-object/from16 v0, v34

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_16

    move-object/from16 v0, v34

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_10
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v10}, Lcom/cai88/tools/view/DrawTrendChartsView;->getCenterX(FF)I

    move-result v4

    int-to-float v4, v4

    move/from16 v0, v17

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 266
    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cai88/tools/chart/ChartOptModel;

    invoke-virtual {v3}, Lcom/cai88/tools/chart/ChartOptModel;->getWidth()F

    move-result v3

    add-float/2addr v8, v3

    .line 262
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_f

    .line 265
    :cond_16
    const-string v3, "--"

    goto :goto_10

    .line 278
    .end local v17    # "baseline":I
    .end local v27    # "j":I
    .end local v34    # "tmpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_17
    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cai88/tools/chart/ChartOptModel;

    invoke-virtual {v3}, Lcom/cai88/tools/chart/ChartOptModel;->getWidth()F

    move-result v3

    add-float/2addr v10, v3

    .line 279
    move/from16 v0, v35

    int-to-float v11, v0

    move/from16 v0, v19

    int-to-float v13, v0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->mLinePaintDiv:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move v12, v10

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 277
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_4

    .line 287
    :cond_18
    add-int/lit8 v3, v24, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->height:I

    mul-int v19, v3, v4

    .line 288
    const/4 v12, 0x0

    move/from16 v0, v19

    int-to-float v13, v0

    move/from16 v0, v19

    int-to-float v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->mLinePaintDiv:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v11, p1

    move v14, v6

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 286
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_5

    .line 296
    .restart local v25    # "isFirst":Z
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->circleViews:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cai88/tools/chart/ChartOptModel;

    invoke-virtual {v3}, Lcom/cai88/tools/chart/ChartOptModel;->isDrawLine()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 297
    if-eqz v25, :cond_1b

    .line 298
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->circleViews:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cai88/tools/chart/ChartOptModel;

    invoke-virtual {v3}, Lcom/cai88/tools/chart/ChartOptModel;->getCircleColor()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 299
    const/16 v25, 0x0

    .line 295
    :cond_1a
    :goto_11
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_6

    .line 301
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->points:Ljava/util/ArrayList;

    add-int/lit8 v4, v24, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v12, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->points:Ljava/util/ArrayList;

    add-int/lit8 v4, v24, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v13, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->points:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v14, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->points:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v15, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_11

    .line 313
    .end local v25    # "isFirst":Z
    .restart local v32    # "smallCircleRadius":F
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->circleViews:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/cai88/tools/chart/ChartOptModel;

    .line 314
    .restart local v26    # "item":Lcom/cai88/tools/chart/ChartOptModel;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->points:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/graphics/Point;

    .line 316
    .restart local v30    # "point":Landroid/graphics/Point;
    move-object/from16 v0, v30

    iget v3, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->height:I

    div-int/lit8 v4, v4, 0x6

    add-int v17, v3, v4

    .line 317
    .restart local v17    # "baseline":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v26 .. v26}, Lcom/cai88/tools/chart/ChartOptModel;->getCircleColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 318
    move-object/from16 v0, v30

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    move-object/from16 v0, v30

    iget v4, v0, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    const/high16 v5, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/cai88/tools/uitl/Common;->GetD(Landroid/content/Context;)F

    move-result v7

    mul-float/2addr v5, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->mCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 319
    invoke-virtual/range {v26 .. v26}, Lcom/cai88/tools/chart/ChartOptModel;->getInfo()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v30

    iget v4, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    move/from16 v0, v17

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 321
    invoke-virtual/range {v26 .. v26}, Lcom/cai88/tools/chart/ChartOptModel;->getDoubleCount()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1d

    .line 322
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v26 .. v26}, Lcom/cai88/tools/chart/ChartOptModel;->getSmallCircleColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 323
    move-object/from16 v0, v30

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    const/high16 v4, 0x40200000    # 2.5f

    mul-float v4, v4, v32

    add-float/2addr v3, v4

    move-object/from16 v0, v30

    iget v4, v0, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    const v5, 0x3fe66666    # 1.8f

    mul-float v5, v5, v32

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->mCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v3, v4, v1, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 325
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->textColorBlack:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 326
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/cai88/tools/uitl/Common;->GetD(Landroid/content/Context;)F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 327
    invoke-virtual/range {v26 .. v26}, Lcom/cai88/tools/chart/ChartOptModel;->getDoubleCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v30

    iget v4, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    const/high16 v5, 0x40200000    # 2.5f

    mul-float v5, v5, v32

    add-float/2addr v4, v5

    move/from16 v0, v17

    int-to-float v5, v0

    const/high16 v7, 0x40000000    # 2.0f

    mul-float v7, v7, v32

    sub-float/2addr v5, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 328
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->textColorWhite:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 329
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->defaultTextSize:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cai88/tools/view/DrawTrendChartsView;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/cai88/tools/uitl/Common;->GetD(Landroid/content/Context;)F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 312
    :cond_1d
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_7
.end method

.method private generateAnalysisPaint(I)V
    .locals 9
    .param p1, "pos"    # I

    .prologue
    .line 408
    const v0, -0x1f110b

    .local v0, "bg1":I
    const v1, -0x90504

    .local v1, "bg2":I
    const v2, -0x1f110b

    .local v2, "bg3":I
    const v3, -0x90504

    .line 409
    .local v3, "bg4":I
    const v4, -0xbfbebf

    .local v4, "tc1":I
    const v5, -0xbfbebf

    .local v5, "tc2":I
    const v6, -0xbfbebf

    .local v6, "tc3":I
    const v7, -0xbfbebf

    .line 411
    .local v7, "tc4":I
    if-nez p1, :cond_0

    .line 412
    iget-object v8, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 413
    iget-object v8, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 424
    :goto_0
    return-void

    .line 414
    :cond_0
    const/4 v8, 0x1

    if-ne p1, v8, :cond_1

    .line 415
    iget-object v8, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 416
    iget-object v8, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 417
    :cond_1
    const/4 v8, 0x2

    if-ne p1, v8, :cond_2

    .line 418
    iget-object v8, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 419
    iget-object v8, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 421
    :cond_2
    iget-object v8, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 422
    iget-object v8, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method private getCenterX(FF)I
    .locals 2
    .param p1, "l"    # F
    .param p2, "r"    # F

    .prologue
    .line 454
    sub-float v0, p2, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method private getCenterY(FF)I
    .locals 2
    .param p1, "t"    # F
    .param p2, "b"    # F

    .prologue
    .line 458
    sub-float v0, p2, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method private init()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    .line 82
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u51fa\u73b0\u6b21\u6570"

    aput-object v2, v0, v1

    const-string v1, "\u5e73\u5747\u9057\u6f0f"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "\u6700\u5927\u9057\u6f0f"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u6700\u5927\u8fde\u51fa"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->analysisArray:[Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->redColor:I

    .line 84
    iget-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->textColorBlack:I

    .line 85
    iget-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->textColorDarkBlack:I

    .line 86
    iget-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f050000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->textColorWhite:I

    .line 87
    iget-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->textColorRed:I

    .line 89
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->mLinePaint:Landroid/graphics/Paint;

    .line 90
    iget-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->mLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    iget-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 92
    iget-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 93
    iget-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->mLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/cai88/tools/uitl/Common;->GetD(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 95
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->mCirclePaint:Landroid/graphics/Paint;

    .line 96
    iget-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->mCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->greenColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    iget-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 98
    iget-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 99
    iget-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->mCirclePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/cai88/tools/uitl/Common;->GetD(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 101
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->mTextPaint:Landroid/graphics/Paint;

    .line 102
    iget-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 103
    iget-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->textColorDarkBlack:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    iget-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->defaultTextSize:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/cai88/tools/uitl/Common;->GetD(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 105
    iget-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 107
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->mLinePaintDiv:Landroid/graphics/Paint;

    .line 108
    iget-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->mLinePaintDiv:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    iget-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->mLinePaintDiv:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 110
    iget-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->mLinePaintDiv:Landroid/graphics/Paint;

    const v1, 0x3f19999a    # 0.6f

    iget-object v2, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/cai88/tools/uitl/Common;->GetD(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 112
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->mRectPaint:Landroid/graphics/Paint;

    .line 113
    iget-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 114
    iget-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->mRectPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    iget-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 117
    return-void
.end method

.method private setPaintColor()V
    .locals 3

    .prologue
    .line 462
    iget-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->lineBackgroundColor1:I

    .line 463
    iget-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->lineBackgroundColor2:I

    .line 464
    iget v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->textColorBlack:I

    iput v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->defaultTextColor:I

    .line 465
    iget v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->redColor:I

    iput v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->defaultTextColor2:I

    .line 466
    iget-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->mLinePaintDiv:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 467
    return-void
.end method


# virtual methods
.method public addAllView(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    .locals 1
    .param p4, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cai88/tools/chart/ChartOptModel;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 427
    .local p1, "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/cai88/tools/chart/ChartOptModel;>;>;"
    .local p2, "calDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .local p3, "issueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->views:Ljava/util/ArrayList;

    .line 428
    iput-object p2, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->calDataList:Ljava/util/ArrayList;

    .line 429
    iput-object p3, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->issueList:Ljava/util/ArrayList;

    .line 431
    :try_start_0
    const-string v0, "drawLeft"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->drawLeftView:Z

    .line 432
    const-string v0, "showLine"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->showLine:Z

    .line 433
    const-string v0, "showOpeningTips"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->showOpeningTips:Z

    .line 434
    const-string v0, "showMissNumber"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->showMissNumber:Z

    .line 435
    const-string v0, "showAnalysis"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->showAnalysis:Z

    .line 436
    const-string v0, "gameCode"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->gameCode:Ljava/lang/String;

    .line 437
    const-string v0, "playCode"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->playCode:Ljava/lang/String;

    .line 438
    const-string v0, "height"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->height:I

    .line 439
    const-string v0, "width"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->width:I

    .line 440
    const-string v0, "drawHeadLineSingle"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->drawHeadLineSingle:Z

    .line 441
    const-string v0, "openingTipString"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->openingTipString:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    :goto_0
    return-void

    .line 442
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f050000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 123
    iget-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 124
    iget-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->circleViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 126
    iget-boolean v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->drawLeftView:Z

    if-eqz v0, :cond_0

    .line 127
    invoke-direct {p0, p1}, Lcom/cai88/tools/view/DrawTrendChartsView;->drawLeftView(Landroid/graphics/Canvas;)V

    .line 131
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 132
    return-void

    .line 129
    :cond_0
    invoke-direct {p0, p1}, Lcom/cai88/tools/view/DrawTrendChartsView;->drawRightView(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public reDraw()V
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->points:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/cai88/tools/view/DrawTrendChartsView;->points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 450
    :cond_0
    invoke-virtual {p0}, Lcom/cai88/tools/view/DrawTrendChartsView;->postInvalidate()V

    .line 451
    return-void
.end method
