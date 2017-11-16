.class public Lcom/cai88/tools/chart/ChartOptView;
.super Landroid/widget/LinearLayout;
.source "ChartOptView.java"


# instance fields
.field private context:Landroid/content/Context;

.field private gameCode:Ljava/lang/String;

.field private inflater:Landroid/view/LayoutInflater;

.field private infoTv:Landroid/widget/TextView;

.field private line1:Landroid/widget/ImageView;

.field private opt:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 14
    iput-object v0, p0, Lcom/cai88/tools/chart/ChartOptView;->context:Landroid/content/Context;

    .line 15
    iput-object v0, p0, Lcom/cai88/tools/chart/ChartOptView;->inflater:Landroid/view/LayoutInflater;

    .line 23
    iput-object p1, p0, Lcom/cai88/tools/chart/ChartOptView;->context:Landroid/content/Context;

    .line 24
    invoke-direct {p0}, Lcom/cai88/tools/chart/ChartOptView;->initView()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gameCode"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 14
    iput-object v0, p0, Lcom/cai88/tools/chart/ChartOptView;->context:Landroid/content/Context;

    .line 15
    iput-object v0, p0, Lcom/cai88/tools/chart/ChartOptView;->inflater:Landroid/view/LayoutInflater;

    .line 29
    iput-object p1, p0, Lcom/cai88/tools/chart/ChartOptView;->context:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/cai88/tools/chart/ChartOptView;->gameCode:Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Lcom/cai88/tools/chart/ChartOptView;->initView()V

    .line 32
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 35
    iget-object v1, p0, Lcom/cai88/tools/chart/ChartOptView;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/cai88/tools/chart/ChartOptView;->inflater:Landroid/view/LayoutInflater;

    .line 36
    iget-object v1, p0, Lcom/cai88/tools/chart/ChartOptView;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030010

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 37
    .local v0, "layout":Landroid/view/View;
    const v1, 0x7f07006c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cai88/tools/chart/ChartOptView;->opt:Landroid/widget/LinearLayout;

    .line 38
    const v1, 0x7f07006d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cai88/tools/chart/ChartOptView;->infoTv:Landroid/widget/TextView;

    .line 39
    const v1, 0x7f07006e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cai88/tools/chart/ChartOptView;->line1:Landroid/widget/ImageView;

    .line 40
    iget-object v1, p0, Lcom/cai88/tools/chart/ChartOptView;->infoTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cai88/tools/chart/ChartOptView;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 41
    return-void
.end method


# virtual methods
.method public setData(Ljava/lang/String;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 2
    .param p1, "num"    # Ljava/lang/String;
    .param p2, "lp"    # Landroid/widget/LinearLayout$LayoutParams;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cai88/tools/chart/ChartOptView;->infoTv:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    if-eqz p2, :cond_0

    .line 47
    iget-object v0, p0, Lcom/cai88/tools/chart/ChartOptView;->opt:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    :cond_0
    return-void
.end method

.method public setDataWithoutLine(Ljava/lang/String;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 2
    .param p1, "num"    # Ljava/lang/String;
    .param p2, "lp"    # Landroid/widget/LinearLayout$LayoutParams;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cai88/tools/chart/ChartOptView;->infoTv:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/cai88/tools/chart/ChartOptView;->line1:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    if-eqz p2, :cond_0

    .line 55
    iget-object v0, p0, Lcom/cai88/tools/chart/ChartOptView;->opt:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    :cond_0
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "colorId"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/cai88/tools/chart/ChartOptView;->infoTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    return-void
.end method

.method public toogleChooseBg(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/cai88/tools/chart/ChartOptView;->infoTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 66
    return-void
.end method
