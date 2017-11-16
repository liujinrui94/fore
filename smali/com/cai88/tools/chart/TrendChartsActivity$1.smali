.class Lcom/cai88/tools/chart/TrendChartsActivity$1;
.super Landroid/os/Handler;
.source "TrendChartsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cai88/tools/chart/TrendChartsActivity;
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
    iput-object p1, p0, Lcom/cai88/tools/chart/TrendChartsActivity$1;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    .line 698
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 700
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 725
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 726
    :cond_1
    return-void

    .line 702
    :pswitch_0
    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity$1;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v3, p0, Lcom/cai88/tools/chart/TrendChartsActivity$1;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v3}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$0(Lcom/cai88/tools/chart/TrendChartsActivity;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$1(Lcom/cai88/tools/chart/TrendChartsActivity;Z)V

    .line 703
    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity$1;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v2}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$2(Lcom/cai88/tools/chart/TrendChartsActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity$1;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v2}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$3(Lcom/cai88/tools/chart/TrendChartsActivity;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity$1;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v2}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$4(Lcom/cai88/tools/chart/TrendChartsActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 704
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/cai88/tools/chart/TrendChartsActivity$1;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v4}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$5(Lcom/cai88/tools/chart/TrendChartsActivity;)J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 705
    .local v0, "diffTime":J
    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity$1;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v2}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$6(Lcom/cai88/tools/chart/TrendChartsActivity;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity$1;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v2}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$4(Lcom/cai88/tools/chart/TrendChartsActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 708
    :cond_4
    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity$1;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$7(Lcom/cai88/tools/chart/TrendChartsActivity;J)V

    .line 709
    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity$1;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v2, v6}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$1(Lcom/cai88/tools/chart/TrendChartsActivity;Z)V

    .line 710
    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity$1;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v2, v6}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$8(Lcom/cai88/tools/chart/TrendChartsActivity;Z)V

    .line 712
    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity$1;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v2}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$9(Lcom/cai88/tools/chart/TrendChartsActivity;)V

    goto :goto_0

    .line 716
    .end local v0    # "diffTime":J
    :pswitch_1
    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity$1;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v3, p0, Lcom/cai88/tools/chart/TrendChartsActivity$1;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v3}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$10(Lcom/cai88/tools/chart/TrendChartsActivity;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$11(Lcom/cai88/tools/chart/TrendChartsActivity;I)V

    goto :goto_0

    .line 720
    :pswitch_2
    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity$1;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v2}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$12(Lcom/cai88/tools/chart/TrendChartsActivity;)V

    goto :goto_0

    .line 700
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
