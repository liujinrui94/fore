.class Lcom/cai88/tools/chart/TrendChartsActivity$13;
.super Ljava/lang/Object;
.source "TrendChartsActivity.java"

# interfaces
.implements Lcom/cai88/tools/asynctask/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cai88/tools/chart/TrendChartsActivity;->requestOmissionData()V
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
.field final synthetic this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

.field private final synthetic val$paramMap:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/cai88/tools/chart/TrendChartsActivity;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cai88/tools/chart/TrendChartsActivity$13;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iput-object p2, p0, Lcom/cai88/tools/chart/TrendChartsActivity$13;->val$paramMap:Ljava/util/HashMap;

    .line 514
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
    invoke-virtual {p0}, Lcom/cai88/tools/chart/TrendChartsActivity$13;->call()Ljava/lang/String;

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
    .line 518
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity$13;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$13(Lcom/cai88/tools/chart/TrendChartsActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cai88/tools/uitl/HttpHelper;->getInstance(Landroid/content/Context;)Lcom/cai88/tools/uitl/HttpHelper;

    move-result-object v1

    invoke-static {}, Lcom/cai88/tools/uitl/ApiAddressHelper;->proxy()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cai88/tools/chart/TrendChartsActivity$13;->val$paramMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Lcom/cai88/tools/uitl/HttpHelper;->Post(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 519
    .local v0, "responStr":Ljava/lang/String;
    return-object v0
.end method
