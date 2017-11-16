.class public Lcom/cai88/tools/shishicai/MoreActivity;
.super Lcom/cai88/tools/shishicai/BaseActivity;
.source "MoreActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private buyLayout:Landroid/widget/LinearLayout;

.field private feedbackLayout:Landroid/widget/LinearLayout;

.field private helpLayout:Landroid/widget/LinearLayout;

.field private topView:Lcom/cai88/tools/view/TopView;

.field private updateLayout:Landroid/widget/LinearLayout;

.field private versionTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/cai88/tools/shishicai/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected AppInit()V
    .locals 2

    .prologue
    .line 27
    const v1, 0x7f030004

    invoke-virtual {p0, v1}, Lcom/cai88/tools/shishicai/MoreActivity;->setContentView(I)V

    .line 28
    invoke-virtual {p0}, Lcom/cai88/tools/shishicai/MoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 39
    .local v0, "intent":Landroid/content/Intent;
    return-void
.end method

.method protected BroadcastReceive(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 98
    return-void
.end method

.method protected DataInit()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method protected Destroy()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method protected ViewInit()V
    .locals 3

    .prologue
    .line 43
    const v0, 0x7f070005

    invoke-virtual {p0, v0}, Lcom/cai88/tools/shishicai/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cai88/tools/view/TopView;

    iput-object v0, p0, Lcom/cai88/tools/shishicai/MoreActivity;->topView:Lcom/cai88/tools/view/TopView;

    .line 44
    iget-object v0, p0, Lcom/cai88/tools/shishicai/MoreActivity;->topView:Lcom/cai88/tools/view/TopView;

    const-string v1, "\u66f4\u591a"

    invoke-virtual {v0, v1}, Lcom/cai88/tools/view/TopView;->setTitle(Ljava/lang/String;)V

    .line 45
    const v0, 0x7f070011

    invoke-virtual {p0, v0}, Lcom/cai88/tools/shishicai/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cai88/tools/shishicai/MoreActivity;->versionTv:Landroid/widget/TextView;

    .line 46
    iget-object v0, p0, Lcom/cai88/tools/shishicai/MoreActivity;->versionTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "V"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/cai88/tools/shishicai/SscApplication;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    const v0, 0x7f070012

    invoke-virtual {p0, v0}, Lcom/cai88/tools/shishicai/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cai88/tools/shishicai/MoreActivity;->feedbackLayout:Landroid/widget/LinearLayout;

    .line 48
    const v0, 0x7f070013

    invoke-virtual {p0, v0}, Lcom/cai88/tools/shishicai/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cai88/tools/shishicai/MoreActivity;->helpLayout:Landroid/widget/LinearLayout;

    .line 49
    const v0, 0x7f070014

    invoke-virtual {p0, v0}, Lcom/cai88/tools/shishicai/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cai88/tools/shishicai/MoreActivity;->updateLayout:Landroid/widget/LinearLayout;

    .line 50
    const v0, 0x7f070015

    invoke-virtual {p0, v0}, Lcom/cai88/tools/shishicai/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cai88/tools/shishicai/MoreActivity;->buyLayout:Landroid/widget/LinearLayout;

    .line 52
    return-void
.end method

.method protected ViewListen()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cai88/tools/shishicai/MoreActivity;->feedbackLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p0, Lcom/cai88/tools/shishicai/MoreActivity;->helpLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/cai88/tools/shishicai/MoreActivity;->updateLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/cai88/tools/shishicai/MoreActivity;->buyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 93
    :goto_0
    return-void

    .line 77
    :pswitch_0
    new-instance v0, Lcom/umeng/fb/FeedbackAgent;

    iget-object v1, p0, Lcom/cai88/tools/shishicai/MoreActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/umeng/fb/FeedbackAgent;-><init>(Landroid/content/Context;)V

    .line 78
    .local v0, "fb":Lcom/umeng/fb/FeedbackAgent;
    invoke-virtual {v0}, Lcom/umeng/fb/FeedbackAgent;->startFeedbackActivity()V

    goto :goto_0

    .line 81
    .end local v0    # "fb":Lcom/umeng/fb/FeedbackAgent;
    :pswitch_1
    iget-object v1, p0, Lcom/cai88/tools/shishicai/MoreActivity;->context:Landroid/content/Context;

    const-class v2, Lcom/cai88/tools/shishicai/WanfaHelpActivity;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/cai88/tools/uitl/Common;->toActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 84
    :pswitch_2
    iget-object v1, p0, Lcom/cai88/tools/shishicai/MoreActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/update/UmengUpdateAgent;->forceUpdate(Landroid/content/Context;)V

    goto :goto_0

    .line 87
    :pswitch_3
    iget-object v1, p0, Lcom/cai88/tools/shishicai/MoreActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/cai88/tools/uitl/Common;->onlineBuy(Landroid/content/Context;)V

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x7f070012
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
