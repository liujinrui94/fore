.class Lcom/cai88/tools/chart/TrendChartsActivity$17;
.super Ljava/lang/Object;
.source "TrendChartsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cai88/tools/chart/TrendChartsActivity;->onClick(Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/cai88/tools/chart/TrendChartsActivity$17;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    .line 871
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 875
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity$17;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity$17;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$13(Lcom/cai88/tools/chart/TrendChartsActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cai88/tools/uitl/Common;->GetCache4TrendChartsPeriod(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/cai88/tools/chart/TrendChartsActivity;->period:I

    .line 876
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity$17;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity$17;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$13(Lcom/cai88/tools/chart/TrendChartsActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cai88/tools/uitl/Common;->GetCache4TrendChartsShowMissNumber(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/cai88/tools/chart/TrendChartsActivity;->showMissNumber:Z

    .line 877
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity$17;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity$17;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$13(Lcom/cai88/tools/chart/TrendChartsActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cai88/tools/uitl/Common;->GetCache4TrendChartsShowLine(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/cai88/tools/chart/TrendChartsActivity;->showLine:Z

    .line 878
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity$17;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity$17;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$13(Lcom/cai88/tools/chart/TrendChartsActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cai88/tools/uitl/Common;->GetCache4TrendChartsShowanalysis(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/cai88/tools/chart/TrendChartsActivity;->showAnalysis:Z

    .line 879
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity$17;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v0}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$39(Lcom/cai88/tools/chart/TrendChartsActivity;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 880
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity$17;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$27(Lcom/cai88/tools/chart/TrendChartsActivity;Z)V

    .line 882
    :cond_0
    return-void
.end method
