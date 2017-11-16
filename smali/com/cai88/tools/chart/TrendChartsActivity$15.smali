.class Lcom/cai88/tools/chart/TrendChartsActivity$15;
.super Ljava/util/TimerTask;
.source "TrendChartsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cai88/tools/chart/TrendChartsActivity;->dealRemainTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cai88/tools/chart/TrendChartsActivity;


# direct methods
.method constructor <init>(Lcom/cai88/tools/chart/TrendChartsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cai88/tools/chart/TrendChartsActivity$15;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    .line 669
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 673
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity$15;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v0}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$6(Lcom/cai88/tools/chart/TrendChartsActivity;)I

    move-result v0

    const v1, 0xee48

    if-gt v0, v1, :cond_0

    .line 674
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity$15;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v0, v0, Lcom/cai88/tools/chart/TrendChartsActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 676
    :cond_0
    return-void
.end method
