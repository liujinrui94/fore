.class Lcom/cai88/tools/chart/TrendChartsActivity$4;
.super Ljava/lang/Object;
.source "TrendChartsActivity.java"

# interfaces
.implements Lcom/cai88/tools/listener/OnScrollChangedListener;


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
    iput-object p1, p0, Lcom/cai88/tools/chart/TrendChartsActivity$4;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged(IIII)V
    .locals 2
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 335
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity$4;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v0}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$15(Lcom/cai88/tools/chart/TrendChartsActivity;)Lcom/cai88/tools/view/HorizontalScrollView4Cai88;

    move-result-object v0

    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity$4;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$15(Lcom/cai88/tools/chart/TrendChartsActivity;)Lcom/cai88/tools/view/HorizontalScrollView4Cai88;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cai88/tools/view/HorizontalScrollView4Cai88;->getScrollY()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/cai88/tools/view/HorizontalScrollView4Cai88;->scrollTo(II)V

    .line 336
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity$4;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v0}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$16(Lcom/cai88/tools/chart/TrendChartsActivity;)Lcom/cai88/tools/view/HorizontalScrollView4Cai88;

    move-result-object v0

    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity$4;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$16(Lcom/cai88/tools/chart/TrendChartsActivity;)Lcom/cai88/tools/view/HorizontalScrollView4Cai88;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cai88/tools/view/HorizontalScrollView4Cai88;->getScrollY()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/cai88/tools/view/HorizontalScrollView4Cai88;->scrollTo(II)V

    .line 338
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity$4;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v0}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$15(Lcom/cai88/tools/chart/TrendChartsActivity;)Lcom/cai88/tools/view/HorizontalScrollView4Cai88;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cai88/tools/view/HorizontalScrollView4Cai88;->postInvalidate()V

    .line 339
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity$4;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v0}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$16(Lcom/cai88/tools/chart/TrendChartsActivity;)Lcom/cai88/tools/view/HorizontalScrollView4Cai88;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cai88/tools/view/HorizontalScrollView4Cai88;->postInvalidate()V

    .line 340
    return-void
.end method
