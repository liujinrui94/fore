.class Lcom/cai88/tools/chart/TrendChartsActivity$9;
.super Ljava/lang/Object;
.source "TrendChartsActivity.java"

# interfaces
.implements Lcom/cai88/tools/asynctask/CallEarliest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cai88/tools/chart/TrendChartsActivity;->requestCurrentGameData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/cai88/tools/asynctask/CallEarliest",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cai88/tools/chart/TrendChartsActivity;


# direct methods
.method constructor <init>(Lcom/cai88/tools/chart/TrendChartsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cai88/tools/chart/TrendChartsActivity$9;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallEarliest()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 406
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity$9;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$17(Lcom/cai88/tools/chart/TrendChartsActivity;Z)V

    .line 407
    return-void
.end method
