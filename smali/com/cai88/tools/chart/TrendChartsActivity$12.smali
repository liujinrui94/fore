.class Lcom/cai88/tools/chart/TrendChartsActivity$12;
.super Ljava/lang/Object;
.source "TrendChartsActivity.java"

# interfaces
.implements Lcom/cai88/tools/asynctask/CallEarliest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cai88/tools/chart/TrendChartsActivity;->requestOmissionData()V
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
    iput-object p1, p0, Lcom/cai88/tools/chart/TrendChartsActivity$12;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    .line 507
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
    .line 511
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity$12;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$28(Lcom/cai88/tools/chart/TrendChartsActivity;Z)V

    .line 512
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity$12;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity$12;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$13(Lcom/cai88/tools/chart/TrendChartsActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cai88/tools/view/ProgressView;->createProgress(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$29(Lcom/cai88/tools/chart/TrendChartsActivity;Landroid/app/ProgressDialog;)V

    .line 513
    return-void
.end method
