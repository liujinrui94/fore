.class Lcom/cai88/tools/chart/TrendChartsActivity$16;
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
    iput-object p1, p0, Lcom/cai88/tools/chart/TrendChartsActivity$16;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    .line 680
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 684
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity$16;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v0}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$36(Lcom/cai88/tools/chart/TrendChartsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity$16;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v0}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$37(Lcom/cai88/tools/chart/TrendChartsActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity$16;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v0, v4}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$35(Lcom/cai88/tools/chart/TrendChartsActivity;Z)V

    .line 686
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity$16;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v0, v0, Lcom/cai88/tools/chart/TrendChartsActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity$16;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v0}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$38(Lcom/cai88/tools/chart/TrendChartsActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity$16;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v0}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$3(Lcom/cai88/tools/chart/TrendChartsActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity$16;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v0}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$39(Lcom/cai88/tools/chart/TrendChartsActivity;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 689
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity$16;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v0, v4}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$27(Lcom/cai88/tools/chart/TrendChartsActivity;Z)V

    .line 690
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity$16;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v0, v0, Lcom/cai88/tools/chart/TrendChartsActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 692
    :cond_1
    return-void
.end method
