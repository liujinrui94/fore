.class Lcom/cai88/tools/chart/TrendChartsActivity$19;
.super Ljava/lang/Object;
.source "TrendChartsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cai88/tools/chart/TrendChartsActivity;->initDataView(I)V
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
    iput-object p1, p0, Lcom/cai88/tools/chart/TrendChartsActivity$19;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    .line 956
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 960
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity$19;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v1, v1, Lcom/cai88/tools/chart/TrendChartsActivity;->issueList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity$19;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v2, v2, Lcom/cai88/tools/chart/TrendChartsActivity;->calDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity$19;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget v2, v2, Lcom/cai88/tools/chart/TrendChartsActivity;->height:I

    mul-int v0, v1, v2

    .line 961
    .local v0, "tmpScrollHeight":I
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity$19;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v1, v1, Lcom/cai88/tools/chart/TrendChartsActivity;->leftSv:Lcom/cai88/tools/view/VerticalScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/cai88/tools/view/VerticalScrollView;->smoothScrollTo(II)V

    .line 962
    return-void
.end method
