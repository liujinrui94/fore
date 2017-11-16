.class public Lcom/cai88/tools/shishicai/WanfaHelpActivity;
.super Lcom/cai88/tools/shishicai/BaseActivity;
.source "WanfaHelpActivity.java"


# instance fields
.field private topView:Lcom/cai88/tools/view/TopView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/cai88/tools/shishicai/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected AppInit()V
    .locals 1

    .prologue
    .line 10
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/cai88/tools/shishicai/WanfaHelpActivity;->setContentView(I)V

    .line 11
    return-void
.end method

.method protected BroadcastReceive(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 37
    return-void
.end method

.method protected DataInit()V
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cai88/tools/shishicai/WanfaHelpActivity;->topView:Lcom/cai88/tools/view/TopView;

    const-string v1, "\u73a9\u6cd5\u4ecb\u7ecd"

    invoke-virtual {v0, v1}, Lcom/cai88/tools/view/TopView;->setTitle(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/cai88/tools/shishicai/WanfaHelpActivity;->topView:Lcom/cai88/tools/view/TopView;

    invoke-virtual {v0}, Lcom/cai88/tools/view/TopView;->setBackBtn()V

    .line 27
    return-void
.end method

.method protected Destroy()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method protected ViewInit()V
    .locals 1

    .prologue
    .line 15
    const v0, 0x7f070005

    invoke-virtual {p0, v0}, Lcom/cai88/tools/shishicai/WanfaHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cai88/tools/view/TopView;

    iput-object v0, p0, Lcom/cai88/tools/shishicai/WanfaHelpActivity;->topView:Lcom/cai88/tools/view/TopView;

    .line 16
    return-void
.end method

.method protected ViewListen()V
    .locals 0

    .prologue
    .line 21
    return-void
.end method
