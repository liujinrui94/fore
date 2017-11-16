.class public Lcom/cai88/tools/view/TabView;
.super Landroid/widget/LinearLayout;
.source "TabView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field animX:Landroid/animation/ObjectAnimator;

.field private clickListener:Landroid/view/View$OnClickListener;

.field private context:Landroid/content/Context;

.field indicatorWidth:I

.field private inflater:Landroid/view/LayoutInflater;

.field private lp:Landroid/widget/LinearLayout$LayoutParams;

.field private lp2:Landroid/widget/LinearLayout$LayoutParams;

.field private mActiveView:Landroid/view/View;

.field menuHeight:I

.field menuTop:I

.field private needMenuPosition:I

.field paint:Landroid/graphics/Paint;

.field r:Landroid/graphics/Rect;

.field private selected:I

.field private strArr:[Ljava/lang/String;

.field private tabItemCheckedColor:I

.field private tabLayout:Landroid/widget/LinearLayout;

.field private tabMain:Landroid/widget/RelativeLayout;

.field private textColorChecked:I

.field private textColorNormal:I

.field private theme:Ljava/lang/String;

.field private tvArr:[Landroid/widget/TextView;

.field tx:I

.field private viewArr:[Landroid/view/View;

.field x:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object v0, p0, Lcom/cai88/tools/view/TabView;->context:Landroid/content/Context;

    .line 33
    iput-object v0, p0, Lcom/cai88/tools/view/TabView;->inflater:Landroid/view/LayoutInflater;

    .line 34
    iput-object v0, p0, Lcom/cai88/tools/view/TabView;->strArr:[Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/cai88/tools/view/TabView;->tvArr:[Landroid/widget/TextView;

    .line 36
    iput-object v0, p0, Lcom/cai88/tools/view/TabView;->viewArr:[Landroid/view/View;

    .line 42
    iput v1, p0, Lcom/cai88/tools/view/TabView;->selected:I

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/cai88/tools/view/TabView;->needMenuPosition:I

    .line 45
    const v0, 0x7f050006

    iput v0, p0, Lcom/cai88/tools/view/TabView;->textColorNormal:I

    .line 46
    const v0, 0x7f050003

    iput v0, p0, Lcom/cai88/tools/view/TabView;->textColorChecked:I

    .line 47
    const v0, -0x1b93f0

    iput v0, p0, Lcom/cai88/tools/view/TabView;->tabItemCheckedColor:I

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/cai88/tools/view/TabView;->paint:Landroid/graphics/Paint;

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/cai88/tools/view/TabView;->r:Landroid/graphics/Rect;

    .line 52
    iput v1, p0, Lcom/cai88/tools/view/TabView;->menuHeight:I

    .line 53
    iput v1, p0, Lcom/cai88/tools/view/TabView;->menuTop:I

    .line 187
    iput v1, p0, Lcom/cai88/tools/view/TabView;->tx:I

    .line 188
    const/4 v0, 0x0

    iput v0, p0, Lcom/cai88/tools/view/TabView;->x:F

    .line 189
    iput v1, p0, Lcom/cai88/tools/view/TabView;->indicatorWidth:I

    .line 63
    iput-object p1, p0, Lcom/cai88/tools/view/TabView;->context:Landroid/content/Context;

    .line 64
    invoke-direct {p0}, Lcom/cai88/tools/view/TabView;->initView()V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput-object v0, p0, Lcom/cai88/tools/view/TabView;->context:Landroid/content/Context;

    .line 33
    iput-object v0, p0, Lcom/cai88/tools/view/TabView;->inflater:Landroid/view/LayoutInflater;

    .line 34
    iput-object v0, p0, Lcom/cai88/tools/view/TabView;->strArr:[Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/cai88/tools/view/TabView;->tvArr:[Landroid/widget/TextView;

    .line 36
    iput-object v0, p0, Lcom/cai88/tools/view/TabView;->viewArr:[Landroid/view/View;

    .line 42
    iput v1, p0, Lcom/cai88/tools/view/TabView;->selected:I

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/cai88/tools/view/TabView;->needMenuPosition:I

    .line 45
    const v0, 0x7f050006

    iput v0, p0, Lcom/cai88/tools/view/TabView;->textColorNormal:I

    .line 46
    const v0, 0x7f050003

    iput v0, p0, Lcom/cai88/tools/view/TabView;->textColorChecked:I

    .line 47
    const v0, -0x1b93f0

    iput v0, p0, Lcom/cai88/tools/view/TabView;->tabItemCheckedColor:I

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/cai88/tools/view/TabView;->paint:Landroid/graphics/Paint;

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/cai88/tools/view/TabView;->r:Landroid/graphics/Rect;

    .line 52
    iput v1, p0, Lcom/cai88/tools/view/TabView;->menuHeight:I

    .line 53
    iput v1, p0, Lcom/cai88/tools/view/TabView;->menuTop:I

    .line 187
    iput v1, p0, Lcom/cai88/tools/view/TabView;->tx:I

    .line 188
    const/4 v0, 0x0

    iput v0, p0, Lcom/cai88/tools/view/TabView;->x:F

    .line 189
    iput v1, p0, Lcom/cai88/tools/view/TabView;->indicatorWidth:I

    .line 57
    iput-object p1, p0, Lcom/cai88/tools/view/TabView;->context:Landroid/content/Context;

    .line 58
    invoke-direct {p0}, Lcom/cai88/tools/view/TabView;->initView()V

    .line 59
    return-void
.end method

.method private initView()V
    .locals 5

    .prologue
    const/16 v4, 0x11

    const/4 v3, -0x1

    .line 68
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/cai88/tools/view/TabView;->lp:Landroid/widget/LinearLayout$LayoutParams;

    .line 69
    iget-object v1, p0, Lcom/cai88/tools/view/TabView;->lp:Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 70
    iget-object v1, p0, Lcom/cai88/tools/view/TabView;->lp:Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 72
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/cai88/tools/view/TabView;->lp2:Landroid/widget/LinearLayout$LayoutParams;

    .line 73
    iget-object v1, p0, Lcom/cai88/tools/view/TabView;->lp2:Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 74
    iget-object v1, p0, Lcom/cai88/tools/view/TabView;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/cai88/tools/view/TabView;->inflater:Landroid/view/LayoutInflater;

    .line 75
    iget-object v1, p0, Lcom/cai88/tools/view/TabView;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03001a

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 76
    .local v0, "layout":Landroid/view/View;
    const v1, 0x7f0700a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cai88/tools/view/TabView;->tabMain:Landroid/widget/RelativeLayout;

    .line 77
    const v1, 0x7f0700a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cai88/tools/view/TabView;->tabLayout:Landroid/widget/LinearLayout;

    .line 79
    iget-object v1, p0, Lcom/cai88/tools/view/TabView;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/cai88/tools/view/TabView;->tabItemCheckedColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    return-void
.end method


# virtual methods
.method public changeShowText(ILjava/lang/String;)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "stext"    # Ljava/lang/String;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/cai88/tools/view/TabView;->tvArr:[Landroid/widget/TextView;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/cai88/tools/view/TabView;->tvArr:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :cond_0
    return-void
.end method

.method public changeTabbg(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 231
    iget-object v0, p0, Lcom/cai88/tools/view/TabView;->tabMain:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 232
    return-void
.end method

.method public changeTheme(Ljava/lang/String;)V
    .locals 2
    .param p1, "theme"    # Ljava/lang/String;

    .prologue
    const v1, 0x7f050002

    .line 235
    iput-object p1, p0, Lcom/cai88/tools/view/TabView;->theme:Ljava/lang/String;

    .line 236
    const-string v0, "trendchart"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/cai88/tools/view/TabView;->tabMain:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 238
    const v0, 0x7f050011

    iput v0, p0, Lcom/cai88/tools/view/TabView;->textColorNormal:I

    .line 239
    const v0, 0x7f050012

    iput v0, p0, Lcom/cai88/tools/view/TabView;->textColorChecked:I

    .line 240
    const v0, -0x1b93f0

    iput v0, p0, Lcom/cai88/tools/view/TabView;->tabItemCheckedColor:I

    .line 252
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cai88/tools/view/TabView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/cai88/tools/view/TabView;->tabItemCheckedColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 253
    return-void

    .line 241
    :cond_1
    const-string v0, "chartKuai3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 242
    iget-object v0, p0, Lcom/cai88/tools/view/TabView;->tabMain:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 243
    const v0, 0x7f050013

    iput v0, p0, Lcom/cai88/tools/view/TabView;->textColorNormal:I

    .line 244
    const v0, 0x7f050014

    iput v0, p0, Lcom/cai88/tools/view/TabView;->textColorChecked:I

    .line 245
    const v0, -0x1986ee

    iput v0, p0, Lcom/cai88/tools/view/TabView;->tabItemCheckedColor:I

    goto :goto_0

    .line 246
    :cond_2
    const-string v0, "chartKlpk3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/cai88/tools/view/TabView;->tabMain:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 248
    const v0, 0x7f050015

    iput v0, p0, Lcom/cai88/tools/view/TabView;->textColorNormal:I

    .line 249
    const v0, 0x7f050016

    iput v0, p0, Lcom/cai88/tools/view/TabView;->textColorChecked:I

    .line 250
    const v0, -0x83ada

    iput v0, p0, Lcom/cai88/tools/view/TabView;->tabItemCheckedColor:I

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 85
    iget-object v2, p0, Lcom/cai88/tools/view/TabView;->mActiveView:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/cai88/tools/view/TabView;->mActiveView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 86
    iget-object v2, p0, Lcom/cai88/tools/view/TabView;->mActiveView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 87
    .local v1, "position":Ljava/lang/Integer;
    if-nez v1, :cond_3

    const/4 v0, 0x0

    .line 88
    .local v0, "pos":I
    :goto_0
    iget v2, p0, Lcom/cai88/tools/view/TabView;->selected:I

    if-ne v0, v2, :cond_2

    .line 89
    iget v2, p0, Lcom/cai88/tools/view/TabView;->menuHeight:I

    if-nez v2, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/cai88/tools/view/TabView;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/cai88/tools/view/TabView;->menuHeight:I

    .line 91
    iget v2, p0, Lcom/cai88/tools/view/TabView;->menuHeight:I

    iget-object v3, p0, Lcom/cai88/tools/view/TabView;->context:Landroid/content/Context;

    const/high16 v4, 0x40200000    # 2.5f

    invoke-static {v3, v4}, Lcom/cai88/tools/uitl/Common;->dip2px(Landroid/content/Context;F)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/cai88/tools/view/TabView;->menuTop:I

    .line 93
    :cond_0
    iget v2, p0, Lcom/cai88/tools/view/TabView;->indicatorWidth:I

    if-nez v2, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/cai88/tools/view/TabView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/cai88/tools/view/TabView;->tabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    div-int/2addr v2, v3

    iput v2, p0, Lcom/cai88/tools/view/TabView;->indicatorWidth:I

    .line 95
    invoke-virtual {p0}, Lcom/cai88/tools/view/TabView;->startAnimatingIndicator()V

    .line 97
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 98
    iget-object v2, p0, Lcom/cai88/tools/view/TabView;->r:Landroid/graphics/Rect;

    iget v3, p0, Lcom/cai88/tools/view/TabView;->tx:I

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 99
    iget-object v2, p0, Lcom/cai88/tools/view/TabView;->r:Landroid/graphics/Rect;

    iget v3, p0, Lcom/cai88/tools/view/TabView;->menuTop:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 100
    iget-object v2, p0, Lcom/cai88/tools/view/TabView;->r:Landroid/graphics/Rect;

    iget v3, p0, Lcom/cai88/tools/view/TabView;->tx:I

    iget v4, p0, Lcom/cai88/tools/view/TabView;->indicatorWidth:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 101
    iget-object v2, p0, Lcom/cai88/tools/view/TabView;->r:Landroid/graphics/Rect;

    iget v3, p0, Lcom/cai88/tools/view/TabView;->menuHeight:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 102
    iget-object v2, p0, Lcom/cai88/tools/view/TabView;->r:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/cai88/tools/view/TabView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 103
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 106
    .end local v0    # "pos":I
    .end local v1    # "position":Ljava/lang/Integer;
    :cond_2
    return-void

    .line 87
    .restart local v1    # "position":Ljava/lang/Integer;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public emptyData()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/cai88/tools/view/TabView;->tabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 154
    return-void
.end method

.method public getSelected()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/cai88/tools/view/TabView;->selected:I

    return v0
.end method

.method public getTX()F
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/cai88/tools/view/TabView;->x:F

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 219
    :try_start_0
    iget-object v1, p0, Lcom/cai88/tools/view/TabView;->clickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/cai88/tools/view/TabView;->clickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/cai88/tools/view/TabView;->tvArr:[Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 223
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/cai88/tools/view/TabView;->setSelected(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :cond_1
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "iws"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TabView click er:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setData([Ljava/lang/String;)V
    .locals 7
    .param p1, "strArr"    # [Ljava/lang/String;

    .prologue
    const v6, 0x7f060005

    const/4 v5, 0x0

    .line 119
    iput v5, p0, Lcom/cai88/tools/view/TabView;->indicatorWidth:I

    .line 120
    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/cai88/tools/view/TabView;->theme:Ljava/lang/String;

    invoke-static {v1}, Lcom/cai88/tools/uitl/Common;->strIsBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    array-length v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 122
    const v1, 0x7f050002

    iput v1, p0, Lcom/cai88/tools/view/TabView;->tabItemCheckedColor:I

    .line 123
    iget v1, p0, Lcom/cai88/tools/view/TabView;->textColorNormal:I

    iput v1, p0, Lcom/cai88/tools/view/TabView;->textColorChecked:I

    .line 125
    :cond_0
    iput-object p1, p0, Lcom/cai88/tools/view/TabView;->strArr:[Ljava/lang/String;

    .line 126
    array-length v1, p1

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Lcom/cai88/tools/view/TabView;->viewArr:[Landroid/view/View;

    .line 127
    array-length v1, p1

    new-array v1, v1, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cai88/tools/view/TabView;->tvArr:[Landroid/widget/TextView;

    .line 128
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_2

    .line 148
    iget-object v1, p0, Lcom/cai88/tools/view/TabView;->tvArr:[Landroid/widget/TextView;

    aget-object v1, v1, v5

    iput-object v1, p0, Lcom/cai88/tools/view/TabView;->mActiveView:Landroid/view/View;

    .line 150
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 129
    .restart local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/cai88/tools/view/TabView;->viewArr:[Landroid/view/View;

    iget-object v2, p0, Lcom/cai88/tools/view/TabView;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v0

    .line 130
    iget-object v2, p0, Lcom/cai88/tools/view/TabView;->tvArr:[Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cai88/tools/view/TabView;->viewArr:[Landroid/view/View;

    aget-object v1, v1, v0

    const v3, 0x7f070031

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v2, v0

    .line 131
    iget-object v1, p0, Lcom/cai88/tools/view/TabView;->tvArr:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v1, p0, Lcom/cai88/tools/view/TabView;->tvArr:[Landroid/widget/TextView;

    aget-object v2, v1, v0

    iget-object v1, p0, Lcom/cai88/tools/view/TabView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-nez v0, :cond_3

    iget v1, p0, Lcom/cai88/tools/view/TabView;->textColorChecked:I

    :goto_1
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    iget-object v1, p0, Lcom/cai88/tools/view/TabView;->tvArr:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 134
    iget-object v1, p0, Lcom/cai88/tools/view/TabView;->theme:Ljava/lang/String;

    invoke-static {v1}, Lcom/cai88/tools/uitl/Common;->strIsBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 135
    iget-object v1, p0, Lcom/cai88/tools/view/TabView;->tvArr:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/cai88/tools/view/TabView;->lp2:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    :goto_2
    iget-object v1, p0, Lcom/cai88/tools/view/TabView;->tvArr:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 143
    iget-object v1, p0, Lcom/cai88/tools/view/TabView;->viewArr:[Landroid/view/View;

    aget-object v1, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 144
    iget-object v1, p0, Lcom/cai88/tools/view/TabView;->viewArr:[Landroid/view/View;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/cai88/tools/view/TabView;->lp:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    iget-object v1, p0, Lcom/cai88/tools/view/TabView;->viewArr:[Landroid/view/View;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v1, p0, Lcom/cai88/tools/view/TabView;->tabLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/cai88/tools/view/TabView;->viewArr:[Landroid/view/View;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 132
    :cond_3
    iget v1, p0, Lcom/cai88/tools/view/TabView;->textColorNormal:I

    goto :goto_1

    .line 137
    :cond_4
    iget-object v1, p0, Lcom/cai88/tools/view/TabView;->tvArr:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/cai88/tools/view/TabView;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 138
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iget-object v3, p0, Lcom/cai88/tools/view/TabView;->context:Landroid/content/Context;

    .line 139
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 140
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 137
    invoke-virtual {v1, v2, v5, v3, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_2
.end method

.method public setMyClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "clickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/cai88/tools/view/TabView;->clickListener:Landroid/view/View$OnClickListener;

    .line 158
    return-void
.end method

.method public setNeedMenuPosition(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/cai88/tools/view/TabView;->needMenuPosition:I

    .line 110
    return-void
.end method

.method public setSelected(I)V
    .locals 6
    .param p1, "pos"    # I

    .prologue
    .line 166
    :try_start_0
    iget-object v2, p0, Lcom/cai88/tools/view/TabView;->mActiveView:Landroid/view/View;

    .line 167
    .local v2, "oldView":Landroid/view/View;
    iget-object v3, p0, Lcom/cai88/tools/view/TabView;->tvArr:[Landroid/widget/TextView;

    aget-object v3, v3, p1

    iput-object v3, p0, Lcom/cai88/tools/view/TabView;->mActiveView:Landroid/view/View;

    .line 168
    iput p1, p0, Lcom/cai88/tools/view/TabView;->selected:I

    .line 169
    if-eqz v2, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/cai88/tools/view/TabView;->startAnimatingIndicator()V

    .line 172
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/cai88/tools/view/TabView;->tvArr:[Landroid/widget/TextView;

    array-length v3, v3

    if-lt v1, v3, :cond_1

    .line 179
    invoke-virtual {p0}, Lcom/cai88/tools/view/TabView;->invalidate()V

    .line 184
    .end local v1    # "i":I
    .end local v2    # "oldView":Landroid/view/View;
    :goto_1
    return-void

    .line 173
    .restart local v1    # "i":I
    .restart local v2    # "oldView":Landroid/view/View;
    :cond_1
    if-ne p1, v1, :cond_2

    .line 174
    iget-object v3, p0, Lcom/cai88/tools/view/TabView;->tvArr:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/cai88/tools/view/TabView;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/cai88/tools/view/TabView;->textColorChecked:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 172
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 176
    :cond_2
    iget-object v3, p0, Lcom/cai88/tools/view/TabView;->tvArr:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/cai88/tools/view/TabView;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/cai88/tools/view/TabView;->textColorNormal:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 180
    .end local v1    # "i":I
    .end local v2    # "oldView":Landroid/view/View;
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "iws"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "TagView setSelected e:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setTX(F)V
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 207
    iput p1, p0, Lcom/cai88/tools/view/TabView;->x:F

    .line 208
    float-to-int v0, p1

    iput v0, p0, Lcom/cai88/tools/view/TabView;->tx:I

    .line 209
    invoke-virtual {p0}, Lcom/cai88/tools/view/TabView;->invalidate()V

    .line 210
    return-void
.end method

.method public startAnimatingIndicator()V
    .locals 6

    .prologue
    .line 191
    iget-object v2, p0, Lcom/cai88/tools/view/TabView;->animX:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_0

    .line 192
    iget-object v2, p0, Lcom/cai88/tools/view/TabView;->animX:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 193
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/cai88/tools/view/TabView;->animX:Landroid/animation/ObjectAnimator;

    .line 195
    :cond_0
    iget v1, p0, Lcom/cai88/tools/view/TabView;->tx:I

    .line 196
    .local v1, "startX":I
    const/4 v0, 0x0

    .line 197
    .local v0, "endX":I
    iget v2, p0, Lcom/cai88/tools/view/TabView;->indicatorWidth:I

    if-nez v2, :cond_1

    .line 198
    invoke-virtual {p0}, Lcom/cai88/tools/view/TabView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/cai88/tools/view/TabView;->tabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    div-int/2addr v2, v3

    iput v2, p0, Lcom/cai88/tools/view/TabView;->indicatorWidth:I

    .line 200
    :cond_1
    iget v2, p0, Lcom/cai88/tools/view/TabView;->indicatorWidth:I

    iget v3, p0, Lcom/cai88/tools/view/TabView;->selected:I

    mul-int v0, v2, v3

    .line 201
    const-string v2, "tX"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    int-to-float v5, v1

    aput v5, v3, v4

    const/4 v4, 0x1

    int-to-float v5, v0

    aput v5, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/cai88/tools/view/TabView;->animX:Landroid/animation/ObjectAnimator;

    .line 202
    iget-object v2, p0, Lcom/cai88/tools/view/TabView;->animX:Landroid/animation/ObjectAnimator;

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 203
    iget-object v2, p0, Lcom/cai88/tools/view/TabView;->animX:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 204
    return-void
.end method
