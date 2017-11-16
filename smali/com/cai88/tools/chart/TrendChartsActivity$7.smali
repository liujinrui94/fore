.class Lcom/cai88/tools/chart/TrendChartsActivity$7;
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
    iput-object p1, p0, Lcom/cai88/tools/chart/TrendChartsActivity$7;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    .line 364
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
    .line 368
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity$7;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v0, v0, Lcom/cai88/tools/chart/TrendChartsActivity;->rightVSv:Lcom/cai88/tools/view/VerticalScrollView;

    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity$7;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v1, v1, Lcom/cai88/tools/chart/TrendChartsActivity;->rightVSv:Lcom/cai88/tools/view/VerticalScrollView;

    invoke-virtual {v1}, Lcom/cai88/tools/view/VerticalScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/cai88/tools/view/VerticalScrollView;->scrollTo(II)V

    .line 369
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity$7;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v0, v0, Lcom/cai88/tools/chart/TrendChartsActivity;->rightVSv:Lcom/cai88/tools/view/VerticalScrollView;

    invoke-virtual {v0}, Lcom/cai88/tools/view/VerticalScrollView;->postInvalidate()V

    .line 370
    return-void
.end method
