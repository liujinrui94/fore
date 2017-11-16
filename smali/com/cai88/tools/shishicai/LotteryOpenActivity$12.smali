.class Lcom/cai88/tools/shishicai/LotteryOpenActivity$12;
.super Ljava/lang/Object;
.source "LotteryOpenActivity.java"

# interfaces
.implements Lcom/cai88/tools/asynctask/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cai88/tools/shishicai/LotteryOpenActivity;->getHeadImg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/cai88/tools/asynctask/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

.field private final synthetic val$hiParam:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/cai88/tools/shishicai/LotteryOpenActivity;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$12;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    iput-object p2, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$12;->val$hiParam:Ljava/util/HashMap;

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/cai88/tools/shishicai/LotteryOpenActivity$12;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 288
    iget-object v1, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$12;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    iget-object v1, v1, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/cai88/tools/uitl/HttpHelper;->getInstance(Landroid/content/Context;)Lcom/cai88/tools/uitl/HttpHelper;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cai88/tools/uitl/ApiAddressHelper;->getactives()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&ty="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$12;->val$hiParam:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Lcom/cai88/tools/uitl/HttpHelper;->Post(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "responStr":Ljava/lang/String;
    return-object v0
.end method
