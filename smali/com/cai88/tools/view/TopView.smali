.class public Lcom/cai88/tools/view/TopView;
.super Landroid/widget/LinearLayout;
.source "TopView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cai88/tools/view/TopView$OnBackListener;,
        Lcom/cai88/tools/view/TopView$OnOtherListener;
    }
.end annotation


# instance fields
.field private backBtn:Landroid/widget/TextView;

.field private backListener:Lcom/cai88/tools/view/TopView$OnBackListener;

.field private context:Landroid/content/Context;

.field private inflater:Landroid/view/LayoutInflater;

.field private leftBtn:Landroid/widget/ImageView;

.field private otherBtn:Landroid/widget/Button;

.field private otherListener:Lcom/cai88/tools/view/TopView$OnOtherListener;

.field private topPnl:Landroid/widget/RelativeLayout;

.field private topTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object v0, p0, Lcom/cai88/tools/view/TopView;->context:Landroid/content/Context;

    .line 20
    iput-object v0, p0, Lcom/cai88/tools/view/TopView;->inflater:Landroid/view/LayoutInflater;

    .line 27
    iput-object v0, p0, Lcom/cai88/tools/view/TopView;->backListener:Lcom/cai88/tools/view/TopView$OnBackListener;

    .line 28
    iput-object v0, p0, Lcom/cai88/tools/view/TopView;->otherListener:Lcom/cai88/tools/view/TopView$OnOtherListener;

    .line 33
    iput-object p1, p0, Lcom/cai88/tools/view/TopView;->context:Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Lcom/cai88/tools/view/TopView;->initView()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    iput-object v0, p0, Lcom/cai88/tools/view/TopView;->context:Landroid/content/Context;

    .line 20
    iput-object v0, p0, Lcom/cai88/tools/view/TopView;->inflater:Landroid/view/LayoutInflater;

    .line 27
    iput-object v0, p0, Lcom/cai88/tools/view/TopView;->backListener:Lcom/cai88/tools/view/TopView$OnBackListener;

    .line 28
    iput-object v0, p0, Lcom/cai88/tools/view/TopView;->otherListener:Lcom/cai88/tools/view/TopView$OnOtherListener;

    .line 39
    iput-object p1, p0, Lcom/cai88/tools/view/TopView;->context:Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Lcom/cai88/tools/view/TopView;->initView()V

    .line 41
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 43
    iget-object v1, p0, Lcom/cai88/tools/view/TopView;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/cai88/tools/view/TopView;->inflater:Landroid/view/LayoutInflater;

    .line 44
    iget-object v1, p0, Lcom/cai88/tools/view/TopView;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03001c

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, "layout":Landroid/view/View;
    const v1, 0x7f070004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cai88/tools/view/TopView;->topPnl:Landroid/widget/RelativeLayout;

    .line 46
    const v1, 0x7f0700aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cai88/tools/view/TopView;->topTitle:Landroid/widget/TextView;

    .line 47
    const v1, 0x7f0700a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cai88/tools/view/TopView;->backBtn:Landroid/widget/TextView;

    .line 48
    iget-object v1, p0, Lcom/cai88/tools/view/TopView;->backBtn:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const v1, 0x7f0700ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cai88/tools/view/TopView;->otherBtn:Landroid/widget/Button;

    .line 50
    iget-object v1, p0, Lcom/cai88/tools/view/TopView;->otherBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v1, 0x7f0700a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cai88/tools/view/TopView;->leftBtn:Landroid/widget/ImageView;

    .line 52
    iget-object v1, p0, Lcom/cai88/tools/view/TopView;->leftBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 121
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 101
    :pswitch_1
    iget-object v0, p0, Lcom/cai88/tools/view/TopView;->backListener:Lcom/cai88/tools/view/TopView$OnBackListener;

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/cai88/tools/view/TopView;->backListener:Lcom/cai88/tools/view/TopView$OnBackListener;

    invoke-interface {v0}, Lcom/cai88/tools/view/TopView$OnBackListener;->onBack()V

    goto :goto_0

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/cai88/tools/view/TopView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 108
    :pswitch_2
    iget-object v0, p0, Lcom/cai88/tools/view/TopView;->otherListener:Lcom/cai88/tools/view/TopView$OnOtherListener;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/cai88/tools/view/TopView;->otherListener:Lcom/cai88/tools/view/TopView$OnOtherListener;

    invoke-interface {v0}, Lcom/cai88/tools/view/TopView$OnOtherListener;->onOther()V

    goto :goto_0

    .line 113
    :pswitch_3
    iget-object v0, p0, Lcom/cai88/tools/view/TopView;->backListener:Lcom/cai88/tools/view/TopView$OnBackListener;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/cai88/tools/view/TopView;->backListener:Lcom/cai88/tools/view/TopView$OnBackListener;

    invoke-interface {v0}, Lcom/cai88/tools/view/TopView$OnBackListener;->onBack()V

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x7f0700a8
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setBackBtn()V
    .locals 1

    .prologue
    .line 70
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/cai88/tools/view/TopView;->setBackBtn(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public setBackBtn(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 63
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/cai88/tools/view/TopView;->backBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/cai88/tools/view/TopView;->backBtn:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    return-void
.end method

.method public setOnBackListener(Lcom/cai88/tools/view/TopView$OnBackListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/cai88/tools/view/TopView$OnBackListener;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/cai88/tools/view/TopView;->backListener:Lcom/cai88/tools/view/TopView$OnBackListener;

    .line 75
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/cai88/tools/view/TopView;->topTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Lcom/cai88/tools/view/TopView;->topTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    return-void
.end method

.method public showLeftBtn(ILcom/cai88/tools/view/TopView$OnBackListener;)V
    .locals 2
    .param p1, "resid"    # I
    .param p2, "listener"    # Lcom/cai88/tools/view/TopView$OnBackListener;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/cai88/tools/view/TopView;->backBtn:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/cai88/tools/view/TopView;->leftBtn:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    iput-object p2, p0, Lcom/cai88/tools/view/TopView;->backListener:Lcom/cai88/tools/view/TopView$OnBackListener;

    .line 80
    return-void
.end method

.method public showOtherBtn(ILcom/cai88/tools/view/TopView$OnOtherListener;)V
    .locals 4
    .param p1, "resid"    # I
    .param p2, "listener"    # Lcom/cai88/tools/view/TopView$OnOtherListener;

    .prologue
    const v3, 0x7f060007

    .line 87
    iget-object v1, p0, Lcom/cai88/tools/view/TopView;->otherBtn:Landroid/widget/Button;

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 88
    iget-object v1, p0, Lcom/cai88/tools/view/TopView;->otherBtn:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 89
    iput-object p2, p0, Lcom/cai88/tools/view/TopView;->otherListener:Lcom/cai88/tools/view/TopView$OnOtherListener;

    .line 90
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/cai88/tools/view/TopView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v2, p0, Lcom/cai88/tools/view/TopView;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 91
    .local v0, "lParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 92
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 93
    const/16 v1, 0x14

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 94
    iget-object v1, p0, Lcom/cai88/tools/view/TopView;->otherBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    return-void
.end method

.method public showOtherBtn(Ljava/lang/String;Lcom/cai88/tools/view/TopView$OnOtherListener;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/cai88/tools/view/TopView$OnOtherListener;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/cai88/tools/view/TopView;->otherBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/cai88/tools/view/TopView;->otherBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 84
    iput-object p2, p0, Lcom/cai88/tools/view/TopView;->otherListener:Lcom/cai88/tools/view/TopView$OnOtherListener;

    .line 85
    return-void
.end method
