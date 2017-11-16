.class public Lcom/cai88/tools/adapter/LotteryOpenlistAdapter;
.super Landroid/widget/BaseAdapter;
.source "LotteryOpenlistAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cai88/tools/adapter/LotteryOpenlistAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private dlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cai88/tools/model/LotteryOpenModel;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/cai88/tools/model/LotteryOpenModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/cai88/tools/model/LotteryOpenModel;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cai88/tools/adapter/LotteryOpenlistAdapter;->dlist:Ljava/util/List;

    .line 28
    iput-object p1, p0, Lcom/cai88/tools/adapter/LotteryOpenlistAdapter;->context:Landroid/content/Context;

    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/cai88/tools/adapter/LotteryOpenlistAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 30
    iput-object p2, p0, Lcom/cai88/tools/adapter/LotteryOpenlistAdapter;->dlist:Ljava/util/List;

    .line 31
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cai88/tools/adapter/LotteryOpenlistAdapter;->dlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cai88/tools/adapter/LotteryOpenlistAdapter;->dlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 45
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x4

    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "holder":Lcom/cai88/tools/adapter/LotteryOpenlistAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 52
    new-instance v0, Lcom/cai88/tools/adapter/LotteryOpenlistAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/cai88/tools/adapter/LotteryOpenlistAdapter$ViewHolder;
    invoke-direct {v0, p0, v4}, Lcom/cai88/tools/adapter/LotteryOpenlistAdapter$ViewHolder;-><init>(Lcom/cai88/tools/adapter/LotteryOpenlistAdapter;Lcom/cai88/tools/adapter/LotteryOpenlistAdapter$ViewHolder;)V

    .line 53
    .restart local v0    # "holder":Lcom/cai88/tools/adapter/LotteryOpenlistAdapter$ViewHolder;
    iget-object v2, p0, Lcom/cai88/tools/adapter/LotteryOpenlistAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030009

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 54
    const v2, 0x7f070026

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Lcom/cai88/tools/adapter/LotteryOpenlistAdapter$ViewHolder;->itemLayout:Landroid/widget/LinearLayout;

    .line 55
    const v2, 0x7f070027

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/cai88/tools/adapter/LotteryOpenlistAdapter$ViewHolder;->issueTv:Landroid/widget/TextView;

    .line 56
    const v2, 0x7f070028

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/cai88/tools/adapter/LotteryOpenlistAdapter$ViewHolder;->code1Tv:Landroid/widget/TextView;

    .line 57
    const v2, 0x7f070029

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/cai88/tools/adapter/LotteryOpenlistAdapter$ViewHolder;->code2Tv:Landroid/widget/TextView;

    .line 58
    const v2, 0x7f07002a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/cai88/tools/adapter/LotteryOpenlistAdapter$ViewHolder;->code3Tv:Landroid/widget/TextView;

    .line 59
    const v2, 0x7f07002b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/cai88/tools/adapter/LotteryOpenlistAdapter$ViewHolder;->code4Tv:Landroid/widget/TextView;

    .line 60
    const v2, 0x7f07002c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/cai88/tools/adapter/LotteryOpenlistAdapter$ViewHolder;->code5Tv:Landroid/widget/TextView;

    .line 61
    const v2, 0x7f07002d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/cai88/tools/adapter/LotteryOpenlistAdapter$ViewHolder;->sumTv:Landroid/widget/TextView;

    .line 62
    const v2, 0x7f07002e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/cai88/tools/adapter/LotteryOpenlistAdapter$ViewHolder;->longhuTv:Landroid/widget/TextView;

    .line 63
    const v2, 0x7f07002f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/cai88/tools/adapter/LotteryOpenlistAdapter$ViewHolder;->qzhSanTv:Landroid/widget/TextView;

    .line 66
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 77
    :goto_0
    iget-object v2, p0, Lcom/cai88/tools/adapter/LotteryOpenlistAdapter;->dlist:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cai88/tools/model/LotteryOpenModel;

    .line 78
    .local v1, "model":Lcom/cai88/tools/model/LotteryOpenModel;
    iget-object v2, v0, Lcom/cai88/tools/adapter/LotteryOpenlistAdapter$ViewHolder;->issueTv:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/cai88/tools/model/LotteryOpenModel;->issue:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v2, v0, Lcom/cai88/tools/adapter/LotteryOpenlistAdapter$ViewHolder;->code1Tv:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/cai88/tools/model/LotteryOpenModel;->getCodeList()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v2, v0, Lcom/cai88/tools/adapter/LotteryOpenlistAdapter$ViewHolder;->code2Tv:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/cai88/tools/model/LotteryOpenModel;->getCodeList()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v2, v0, Lcom/cai88/tools/adapter/LotteryOpenlistAdapter$ViewHolder;->code3Tv:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/cai88/tools/model/LotteryOpenModel;->getCodeList()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v2, v0, Lcom/cai88/tools/adapter/LotteryOpenlistAdapter$ViewHolder;->code4Tv:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/cai88/tools/model/LotteryOpenModel;->getCodeList()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v2, v0, Lcom/cai88/tools/adapter/LotteryOpenlistAdapter$ViewHolder;->code5Tv:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/cai88/tools/model/LotteryOpenModel;->getCodeList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v2, v0, Lcom/cai88/tools/adapter/LotteryOpenlistAdapter$ViewHolder;->sumTv:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/cai88/tools/model/LotteryOpenModel;->getSunString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v2, v0, Lcom/cai88/tools/adapter/LotteryOpenlistAdapter$ViewHolder;->longhuTv:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/cai88/tools/model/LotteryOpenModel;->getLonghu()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v2, v0, Lcom/cai88/tools/adapter/LotteryOpenlistAdapter$ViewHolder;->qzhSanTv:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/cai88/tools/model/LotteryOpenModel;->getQzhSanString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    return-object p2

    .line 68
    .end local v1    # "model":Lcom/cai88/tools/model/LotteryOpenModel;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/cai88/tools/adapter/LotteryOpenlistAdapter$ViewHolder;
    check-cast v0, Lcom/cai88/tools/adapter/LotteryOpenlistAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/cai88/tools/adapter/LotteryOpenlistAdapter$ViewHolder;
    goto/16 :goto_0
.end method
