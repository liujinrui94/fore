.class Lcom/cai88/tools/shishicai/LotteryOpenActivity$13$2;
.super Ljava/lang/Object;
.source "LotteryOpenActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cai88/tools/shishicai/LotteryOpenActivity$13;->onCallback(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cai88/tools/shishicai/LotteryOpenActivity$13;

.field private final synthetic val$hdmodel:Lcom/cai88/tools/model/HuodongModel;


# direct methods
.method constructor <init>(Lcom/cai88/tools/shishicai/LotteryOpenActivity$13;Lcom/cai88/tools/model/HuodongModel;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$13$2;->this$1:Lcom/cai88/tools/shishicai/LotteryOpenActivity$13;

    iput-object p2, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$13$2;->val$hdmodel:Lcom/cai88/tools/model/HuodongModel;

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 320
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 321
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "url"

    iget-object v2, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$13$2;->val$hdmodel:Lcom/cai88/tools/model/HuodongModel;

    iget-object v2, v2, Lcom/cai88/tools/model/HuodongModel;->url:Ljava/lang/String;

    invoke-static {v2}, Lcom/cai88/tools/uitl/Common;->UrlAddCommonParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v1, "title"

    const-string v2, "\u65f6\u65f6\u5f69\u73a9\u5bb6"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v1, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$13$2;->this$1:Lcom/cai88/tools/shishicai/LotteryOpenActivity$13;

    invoke-static {v1}, Lcom/cai88/tools/shishicai/LotteryOpenActivity$13;->access$1(Lcom/cai88/tools/shishicai/LotteryOpenActivity$13;)Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->context:Landroid/content/Context;

    const-class v2, Lcom/cai88/tools/shishicai/BrowserActivity;

    invoke-static {v1, v2, v0}, Lcom/cai88/tools/uitl/Common;->toActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 324
    return-void
.end method
