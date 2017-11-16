.class Lcom/cai88/tools/shishicai/ChanglongActivity$4;
.super Ljava/lang/Object;
.source "ChanglongActivity.java"

# interfaces
.implements Lcom/cai88/tools/asynctask/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cai88/tools/shishicai/ChanglongActivity;->loadData()V
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
.field final synthetic this$0:Lcom/cai88/tools/shishicai/ChanglongActivity;


# direct methods
.method constructor <init>(Lcom/cai88/tools/shishicai/ChanglongActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cai88/tools/shishicai/ChanglongActivity$4;->this$0:Lcom/cai88/tools/shishicai/ChanglongActivity;

    .line 98
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
    invoke-virtual {p0}, Lcom/cai88/tools/shishicai/ChanglongActivity$4;->call()Ljava/lang/String;

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
    .line 101
    iget-object v1, p0, Lcom/cai88/tools/shishicai/ChanglongActivity$4;->this$0:Lcom/cai88/tools/shishicai/ChanglongActivity;

    iget-object v1, v1, Lcom/cai88/tools/shishicai/ChanglongActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/cai88/tools/uitl/HttpHelper;->getInstance(Landroid/content/Context;)Lcom/cai88/tools/uitl/HttpHelper;

    move-result-object v1

    invoke-static {}, Lcom/cai88/tools/uitl/ApiAddressHelper;->historyOpenUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cai88/tools/shishicai/ChanglongActivity$4;->this$0:Lcom/cai88/tools/shishicai/ChanglongActivity;

    iget-object v3, v3, Lcom/cai88/tools/shishicai/ChanglongActivity;->param:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Lcom/cai88/tools/uitl/HttpHelper;->Post(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "responStr":Ljava/lang/String;
    return-object v0
.end method
