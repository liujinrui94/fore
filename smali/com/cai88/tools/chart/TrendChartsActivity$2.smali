.class Lcom/cai88/tools/chart/TrendChartsActivity$2;
.super Ljava/lang/Object;
.source "TrendChartsActivity.java"

# interfaces
.implements Lcom/cai88/tools/view/TopView$OnOtherListener;


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
    iput-object p1, p0, Lcom/cai88/tools/chart/TrendChartsActivity$2;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOther()V
    .locals 3

    .prologue
    .line 306
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity$2;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$13(Lcom/cai88/tools/chart/TrendChartsActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "tmpTipStr":Ljava/lang/String;
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity$2;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$13(Lcom/cai88/tools/chart/TrendChartsActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity$2;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v2, v2, Lcom/cai88/tools/chart/TrendChartsActivity;->gameCode:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/cai88/tools/chart/TrendChartsDialog;->showHelpDlg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    return-void
.end method
