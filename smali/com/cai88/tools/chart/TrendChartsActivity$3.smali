.class Lcom/cai88/tools/chart/TrendChartsActivity$3;
.super Ljava/lang/Object;
.source "TrendChartsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cai88/tools/chart/TrendChartsActivity;->ViewListen()V
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
    iput-object p1, p0, Lcom/cai88/tools/chart/TrendChartsActivity$3;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 320
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 321
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 322
    .local v0, "tag":I
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity$3;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$10(Lcom/cai88/tools/chart/TrendChartsActivity;)I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 328
    .end local v0    # "tag":I
    :cond_0
    :goto_0
    return-void

    .line 325
    .restart local v0    # "tag":I
    :cond_1
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity$3;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v1, v0}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$14(Lcom/cai88/tools/chart/TrendChartsActivity;I)V

    .line 326
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity$3;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity$3;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v2}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$10(Lcom/cai88/tools/chart/TrendChartsActivity;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$11(Lcom/cai88/tools/chart/TrendChartsActivity;I)V

    goto :goto_0
.end method
