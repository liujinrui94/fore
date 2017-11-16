.class public Lcom/cai88/tools/view/HomeBottomView;
.super Landroid/widget/LinearLayout;
.source "HomeBottomView.java"


# instance fields
.field private changlong:Landroid/widget/LinearLayout;

.field private changlongIv:Landroid/widget/ImageView;

.field private changlongTv:Landroid/widget/TextView;

.field private context:Landroid/content/Context;

.field private home:Landroid/widget/LinearLayout;

.field private homeIv:Landroid/widget/ImageView;

.field private homeTv:Landroid/widget/TextView;

.field private hoverTextColor:I

.field private inflater:Landroid/view/LayoutInflater;

.field private more:Landroid/widget/LinearLayout;

.field private moreIv:Landroid/widget/ImageView;

.field private moreTv:Landroid/widget/TextView;

.field private textColor:I

.field private tubiao:Landroid/widget/LinearLayout;

.field private tubiaoIv:Landroid/widget/ImageView;

.field private tubiaoTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 15
    iput-object v0, p0, Lcom/cai88/tools/view/HomeBottomView;->context:Landroid/content/Context;

    .line 16
    iput-object v0, p0, Lcom/cai88/tools/view/HomeBottomView;->inflater:Landroid/view/LayoutInflater;

    .line 18
    const v0, -0x767677

    iput v0, p0, Lcom/cai88/tools/view/HomeBottomView;->textColor:I

    .line 19
    const v0, -0x5c5ab

    iput v0, p0, Lcom/cai88/tools/view/HomeBottomView;->hoverTextColor:I

    .line 46
    iput-object p1, p0, Lcom/cai88/tools/view/HomeBottomView;->context:Landroid/content/Context;

    .line 47
    invoke-direct {p0}, Lcom/cai88/tools/view/HomeBottomView;->initView()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    iput-object v0, p0, Lcom/cai88/tools/view/HomeBottomView;->context:Landroid/content/Context;

    .line 16
    iput-object v0, p0, Lcom/cai88/tools/view/HomeBottomView;->inflater:Landroid/view/LayoutInflater;

    .line 18
    const v0, -0x767677

    iput v0, p0, Lcom/cai88/tools/view/HomeBottomView;->textColor:I

    .line 19
    const v0, -0x5c5ab

    iput v0, p0, Lcom/cai88/tools/view/HomeBottomView;->hoverTextColor:I

    .line 40
    iput-object p1, p0, Lcom/cai88/tools/view/HomeBottomView;->context:Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Lcom/cai88/tools/view/HomeBottomView;->initView()V

    .line 42
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 50
    iget-object v1, p0, Lcom/cai88/tools/view/HomeBottomView;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/cai88/tools/view/HomeBottomView;->inflater:Landroid/view/LayoutInflater;

    .line 51
    iget-object v1, p0, Lcom/cai88/tools/view/HomeBottomView;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030019

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, "layout":Landroid/view/View;
    const v1, 0x7f07009a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cai88/tools/view/HomeBottomView;->home:Landroid/widget/LinearLayout;

    .line 53
    const v1, 0x7f07009b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cai88/tools/view/HomeBottomView;->homeIv:Landroid/widget/ImageView;

    .line 54
    const v1, 0x7f07009c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cai88/tools/view/HomeBottomView;->homeTv:Landroid/widget/TextView;

    .line 56
    const v1, 0x7f07009d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cai88/tools/view/HomeBottomView;->tubiao:Landroid/widget/LinearLayout;

    .line 57
    const v1, 0x7f07009e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cai88/tools/view/HomeBottomView;->tubiaoIv:Landroid/widget/ImageView;

    .line 58
    const v1, 0x7f07009f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cai88/tools/view/HomeBottomView;->tubiaoTv:Landroid/widget/TextView;

    .line 60
    const v1, 0x7f0700a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cai88/tools/view/HomeBottomView;->changlong:Landroid/widget/LinearLayout;

    .line 61
    const v1, 0x7f0700a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cai88/tools/view/HomeBottomView;->changlongIv:Landroid/widget/ImageView;

    .line 62
    const v1, 0x7f0700a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cai88/tools/view/HomeBottomView;->changlongTv:Landroid/widget/TextView;

    .line 64
    const v1, 0x7f0700a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cai88/tools/view/HomeBottomView;->more:Landroid/widget/LinearLayout;

    .line 65
    const v1, 0x7f0700a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cai88/tools/view/HomeBottomView;->moreIv:Landroid/widget/ImageView;

    .line 66
    const v1, 0x7f070038

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cai88/tools/view/HomeBottomView;->moreTv:Landroid/widget/TextView;

    .line 67
    return-void
.end method


# virtual methods
.method public dealBottomSelected(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    const v1, 0x7f020008

    const v4, 0x7f020006

    const v3, 0x7f020004

    const v2, 0x7f020002

    .line 69
    if-nez p1, :cond_1

    .line 70
    iget-object v0, p0, Lcom/cai88/tools/view/HomeBottomView;->homeIv:Landroid/widget/ImageView;

    const v1, 0x7f020009

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 71
    iget-object v0, p0, Lcom/cai88/tools/view/HomeBottomView;->homeTv:Landroid/widget/TextView;

    iget v1, p0, Lcom/cai88/tools/view/HomeBottomView;->hoverTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    iget-object v0, p0, Lcom/cai88/tools/view/HomeBottomView;->tubiaoIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 74
    iget-object v0, p0, Lcom/cai88/tools/view/HomeBottomView;->tubiaoTv:Landroid/widget/TextView;

    iget v1, p0, Lcom/cai88/tools/view/HomeBottomView;->textColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    iget-object v0, p0, Lcom/cai88/tools/view/HomeBottomView;->changlongIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 77
    iget-object v0, p0, Lcom/cai88/tools/view/HomeBottomView;->changlongTv:Landroid/widget/TextView;

    iget v1, p0, Lcom/cai88/tools/view/HomeBottomView;->textColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    iget-object v0, p0, Lcom/cai88/tools/view/HomeBottomView;->moreIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 80
    iget-object v0, p0, Lcom/cai88/tools/view/HomeBottomView;->moreTv:Landroid/widget/TextView;

    iget v1, p0, Lcom/cai88/tools/view/HomeBottomView;->textColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/cai88/tools/view/HomeBottomView;->homeIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 83
    iget-object v0, p0, Lcom/cai88/tools/view/HomeBottomView;->homeTv:Landroid/widget/TextView;

    iget v1, p0, Lcom/cai88/tools/view/HomeBottomView;->textColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    iget-object v0, p0, Lcom/cai88/tools/view/HomeBottomView;->tubiaoIv:Landroid/widget/ImageView;

    const v1, 0x7f020005

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 86
    iget-object v0, p0, Lcom/cai88/tools/view/HomeBottomView;->tubiaoTv:Landroid/widget/TextView;

    iget v1, p0, Lcom/cai88/tools/view/HomeBottomView;->hoverTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    iget-object v0, p0, Lcom/cai88/tools/view/HomeBottomView;->changlongIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 89
    iget-object v0, p0, Lcom/cai88/tools/view/HomeBottomView;->changlongTv:Landroid/widget/TextView;

    iget v1, p0, Lcom/cai88/tools/view/HomeBottomView;->textColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    iget-object v0, p0, Lcom/cai88/tools/view/HomeBottomView;->moreIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 92
    iget-object v0, p0, Lcom/cai88/tools/view/HomeBottomView;->moreTv:Landroid/widget/TextView;

    iget v1, p0, Lcom/cai88/tools/view/HomeBottomView;->textColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 93
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 94
    iget-object v0, p0, Lcom/cai88/tools/view/HomeBottomView;->homeIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 95
    iget-object v0, p0, Lcom/cai88/tools/view/HomeBottomView;->homeTv:Landroid/widget/TextView;

    iget v1, p0, Lcom/cai88/tools/view/HomeBottomView;->textColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    iget-object v0, p0, Lcom/cai88/tools/view/HomeBottomView;->tubiaoIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 98
    iget-object v0, p0, Lcom/cai88/tools/view/HomeBottomView;->tubiaoTv:Landroid/widget/TextView;

    iget v1, p0, Lcom/cai88/tools/view/HomeBottomView;->textColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    iget-object v0, p0, Lcom/cai88/tools/view/HomeBottomView;->changlongIv:Landroid/widget/ImageView;

    const v1, 0x7f020003

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 101
    iget-object v0, p0, Lcom/cai88/tools/view/HomeBottomView;->changlongTv:Landroid/widget/TextView;

    iget v1, p0, Lcom/cai88/tools/view/HomeBottomView;->hoverTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    iget-object v0, p0, Lcom/cai88/tools/view/HomeBottomView;->moreIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 104
    iget-object v0, p0, Lcom/cai88/tools/view/HomeBottomView;->moreTv:Landroid/widget/TextView;

    iget v1, p0, Lcom/cai88/tools/view/HomeBottomView;->textColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 105
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/cai88/tools/view/HomeBottomView;->homeIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 107
    iget-object v0, p0, Lcom/cai88/tools/view/HomeBottomView;->homeTv:Landroid/widget/TextView;

    iget v1, p0, Lcom/cai88/tools/view/HomeBottomView;->textColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    iget-object v0, p0, Lcom/cai88/tools/view/HomeBottomView;->tubiaoIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 110
    iget-object v0, p0, Lcom/cai88/tools/view/HomeBottomView;->tubiaoTv:Landroid/widget/TextView;

    iget v1, p0, Lcom/cai88/tools/view/HomeBottomView;->textColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    iget-object v0, p0, Lcom/cai88/tools/view/HomeBottomView;->changlongIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 113
    iget-object v0, p0, Lcom/cai88/tools/view/HomeBottomView;->changlongTv:Landroid/widget/TextView;

    iget v1, p0, Lcom/cai88/tools/view/HomeBottomView;->textColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    iget-object v0, p0, Lcom/cai88/tools/view/HomeBottomView;->moreIv:Landroid/widget/ImageView;

    const v1, 0x7f020007

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 116
    iget-object v0, p0, Lcom/cai88/tools/view/HomeBottomView;->moreTv:Landroid/widget/TextView;

    iget v1, p0, Lcom/cai88/tools/view/HomeBottomView;->hoverTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0
.end method
