.class Lcom/cai88/tools/chart/TrendChartsDialog$Builder$3;
.super Ljava/lang/Object;
.source "TrendChartsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->createHelp()Lcom/cai88/tools/chart/TrendChartsDialog;
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
    iput-object p1, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder$3;->this$1:Lcom/cai88/tools/chart/TrendChartsDialog$Builder;

    iput-object p2, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder$3;->val$dialog:Lcom/cai88/tools/chart/TrendChartsDialog;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder$3;->val$dialog:Lcom/cai88/tools/chart/TrendChartsDialog;

    invoke-virtual {v0}, Lcom/cai88/tools/chart/TrendChartsDialog;->dismiss()V

    .line 199
    return-void
.end method
