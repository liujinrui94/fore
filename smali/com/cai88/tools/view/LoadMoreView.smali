.class public Lcom/cai88/tools/view/LoadMoreView;
.super Landroid/widget/LinearLayout;
.source "LoadMoreView.java"


# instance fields
.field private context:Landroid/content/Context;

.field private inflater:Landroid/view/LayoutInflater;

.field private moreBtnPnl:Landroid/widget/LinearLayout;

.field private moreTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 13
    iput-object v0, p0, Lcom/cai88/tools/view/LoadMoreView;->context:Landroid/content/Context;

    .line 14
    iput-object v0, p0, Lcom/cai88/tools/view/LoadMoreView;->inflater:Landroid/view/LayoutInflater;

    .line 21
    iput-object p1, p0, Lcom/cai88/tools/view/LoadMoreView;->context:Landroid/content/Context;

    .line 22
    invoke-direct {p0}, Lcom/cai88/tools/view/LoadMoreView;->initView()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    iput-object v0, p0, Lcom/cai88/tools/view/LoadMoreView;->context:Landroid/content/Context;

    .line 14
    iput-object v0, p0, Lcom/cai88/tools/view/LoadMoreView;->inflater:Landroid/view/LayoutInflater;

    .line 27
    iput-object p1, p0, Lcom/cai88/tools/view/LoadMoreView;->context:Landroid/content/Context;

    .line 28
    invoke-direct {p0}, Lcom/cai88/tools/view/LoadMoreView;->initView()V

    .line 29
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 31
    iget-object v1, p0, Lcom/cai88/tools/view/LoadMoreView;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/cai88/tools/view/LoadMoreView;->inflater:Landroid/view/LayoutInflater;

    .line 32
    iget-object v1, p0, Lcom/cai88/tools/view/LoadMoreView;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03000c

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 33
    .local v0, "layout":Landroid/view/View;
    const v1, 0x7f070037

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cai88/tools/view/LoadMoreView;->moreBtnPnl:Landroid/widget/LinearLayout;

    .line 34
    const v1, 0x7f070038

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cai88/tools/view/LoadMoreView;->moreTv:Landroid/widget/TextView;

    .line 35
    return-void
.end method


# virtual methods
.method public setBtnState(Z)V
    .locals 2
    .param p1, "isloading"    # Z

    .prologue
    .line 37
    if-eqz p1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/cai88/tools/view/LoadMoreView;->moreTv:Landroid/widget/TextView;

    const-string v1, "\u52a0\u8f7d\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/cai88/tools/view/LoadMoreView;->moreTv:Landroid/widget/TextView;

    const-string v1, "\u70b9\u51fb\u52a0\u8f7d\u66f4\u591a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 1
    .param p1, "isVisible"    # Z

    .prologue
    .line 45
    if-eqz p1, :cond_0

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cai88/tools/view/LoadMoreView;->setVisibility(I)V

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/cai88/tools/view/LoadMoreView;->setVisibility(I)V

    goto :goto_0
.end method
