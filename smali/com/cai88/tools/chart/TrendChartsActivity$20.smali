.class Lcom/cai88/tools/chart/TrendChartsActivity$20;
.super Ljava/lang/Object;
.source "TrendChartsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cai88/tools/chart/TrendChartsActivity;->generateChoosePnl(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

.field private final synthetic val$chooseIndex:I

.field private final synthetic val$chooseType:I

.field private final synthetic val$item:Lcom/cai88/tools/chart/ChartOptView;

.field private final synthetic val$uniqueChoose:Z


# direct methods
.method constructor <init>(Lcom/cai88/tools/chart/TrendChartsActivity;IILcom/cai88/tools/chart/ChartOptView;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cai88/tools/chart/TrendChartsActivity$20;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iput p2, p0, Lcom/cai88/tools/chart/TrendChartsActivity$20;->val$chooseType:I

    iput p3, p0, Lcom/cai88/tools/chart/TrendChartsActivity$20;->val$chooseIndex:I

    iput-object p4, p0, Lcom/cai88/tools/chart/TrendChartsActivity$20;->val$item:Lcom/cai88/tools/chart/ChartOptView;

    iput-boolean p5, p0, Lcom/cai88/tools/chart/TrendChartsActivity$20;->val$uniqueChoose:Z

    .line 1039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 1043
    const-string v2, "-1"

    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity$20;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v1, v1, Lcom/cai88/tools/chart/TrendChartsActivity;->dataChooseList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/cai88/tools/chart/TrendChartsActivity$20;->val$chooseType:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iget v3, p0, Lcom/cai88/tools/chart/TrendChartsActivity$20;->val$chooseIndex:I

    aget-object v1, v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1069
    :goto_0
    return-void

    .line 1046
    :cond_0
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity$20;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v1, v1, Lcom/cai88/tools/chart/TrendChartsActivity;->dataChooseList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity$20;->val$chooseType:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iget v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity$20;->val$chooseIndex:I

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/cai88/tools/uitl/Common;->strIsBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1047
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity$20;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v1, v1, Lcom/cai88/tools/chart/TrendChartsActivity;->dataChooseList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity$20;->val$chooseType:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iget v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity$20;->val$chooseIndex:I

    const-string v3, ""

    aput-object v3, v1, v2

    .line 1048
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity$20;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity$20;->val$item:Lcom/cai88/tools/chart/ChartOptView;

    invoke-virtual {v1, v2, v5}, Lcom/cai88/tools/chart/TrendChartsActivity;->toogleChooseCoin(Lcom/cai88/tools/chart/ChartOptView;Z)V

    .line 1068
    :cond_1
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity$20;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$40(Lcom/cai88/tools/chart/TrendChartsActivity;)V

    goto :goto_0

    .line 1050
    :cond_2
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity$20;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v1, v1, Lcom/cai88/tools/chart/TrendChartsActivity;->dataChooseList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity$20;->val$chooseType:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iget v3, p0, Lcom/cai88/tools/chart/TrendChartsActivity$20;->val$chooseIndex:I

    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity$20;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v2, v2, Lcom/cai88/tools/chart/TrendChartsActivity;->dataChooseDisplayList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/cai88/tools/chart/TrendChartsActivity$20;->val$chooseType:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iget v4, p0, Lcom/cai88/tools/chart/TrendChartsActivity$20;->val$chooseIndex:I

    aget-object v2, v2, v4

    aput-object v2, v1, v3

    .line 1051
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity$20;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity$20;->val$item:Lcom/cai88/tools/chart/ChartOptView;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/cai88/tools/chart/TrendChartsActivity;->toogleChooseCoin(Lcom/cai88/tools/chart/ChartOptView;Z)V

    .line 1052
    iget-boolean v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity$20;->val$uniqueChoose:Z

    if-eqz v1, :cond_1

    .line 1053
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity$20;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v1, v1, Lcom/cai88/tools/chart/TrendChartsActivity;->dataChooseList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1054
    iget v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity$20;->val$chooseType:I

    if-eq v0, v1, :cond_3

    .line 1055
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity$20;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v1, v1, Lcom/cai88/tools/chart/TrendChartsActivity;->dataChooseList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iget v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity$20;->val$chooseIndex:I

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/cai88/tools/uitl/Common;->strIsBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1056
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity$20;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v1, v1, Lcom/cai88/tools/chart/TrendChartsActivity;->dataChooseList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity$20;->val$chooseType:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iget v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity$20;->val$chooseIndex:I

    aget-object v2, v1, v2

    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity$20;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v1, v1, Lcom/cai88/tools/chart/TrendChartsActivity;->dataChooseList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iget v3, p0, Lcom/cai88/tools/chart/TrendChartsActivity$20;->val$chooseIndex:I

    aget-object v1, v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1057
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity$20;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v1, v1, Lcom/cai88/tools/chart/TrendChartsActivity;->dataChooseList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iget v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity$20;->val$chooseIndex:I

    const-string v3, ""

    aput-object v3, v1, v2

    .line 1058
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity$20;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v1, v1, Lcom/cai88/tools/chart/TrendChartsActivity;->chartOptViewList:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity$20;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v1, v1, Lcom/cai88/tools/chart/TrendChartsActivity;->chartOptViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 1059
    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity$20;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity$20;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v1, v1, Lcom/cai88/tools/chart/TrendChartsActivity;->chartOptViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/cai88/tools/chart/ChartOptView;

    iget v3, p0, Lcom/cai88/tools/chart/TrendChartsActivity$20;->val$chooseIndex:I

    aget-object v1, v1, v3

    invoke-virtual {v2, v1, v5}, Lcom/cai88/tools/chart/TrendChartsActivity;->toogleChooseCoin(Lcom/cai88/tools/chart/ChartOptView;Z)V

    .line 1053
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
