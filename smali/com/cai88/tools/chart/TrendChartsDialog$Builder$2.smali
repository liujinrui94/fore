.class Lcom/cai88/tools/chart/TrendChartsDialog$Builder$2;
.super Ljava/lang/Object;
.source "TrendChartsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->create()Lcom/cai88/tools/chart/TrendChartsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cai88/tools/chart/TrendChartsDialog$Builder;

.field private final synthetic val$dialog:Lcom/cai88/tools/chart/TrendChartsDialog;


# direct methods
.method constructor <init>(Lcom/cai88/tools/chart/TrendChartsDialog$Builder;Lcom/cai88/tools/chart/TrendChartsDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder$2;->this$1:Lcom/cai88/tools/chart/TrendChartsDialog$Builder;

    iput-object p2, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder$2;->val$dialog:Lcom/cai88/tools/chart/TrendChartsDialog;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder$2;->this$1:Lcom/cai88/tools/chart/TrendChartsDialog$Builder;

    invoke-static {v0}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->access$14(Lcom/cai88/tools/chart/TrendChartsDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder$2;->this$1:Lcom/cai88/tools/chart/TrendChartsDialog$Builder;

    invoke-static {v0}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->access$14(Lcom/cai88/tools/chart/TrendChartsDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder$2;->val$dialog:Lcom/cai88/tools/chart/TrendChartsDialog;

    const/4 v2, -0x2

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder$2;->val$dialog:Lcom/cai88/tools/chart/TrendChartsDialog;

    invoke-virtual {v0}, Lcom/cai88/tools/chart/TrendChartsDialog;->dismiss()V

    .line 166
    return-void
.end method
