.class public Lcom/cai88/tools/chart/TrendChartsDialog;
.super Landroid/app/Dialog;
.source "TrendChartsDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cai88/tools/chart/TrendChartsDialog$Builder;
    }
.end annotation


# static fields
.field private static builder:Lcom/cai88/tools/chart/TrendChartsDialog$Builder;

.field private static chartsDialog:Lcom/cai88/tools/chart/TrendChartsDialog;

.field private static helpDialogView:Lcom/cai88/tools/chart/TrendChartsDialog;

.field private static tipDialogView:Lcom/cai88/tools/view/DialogView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    sput-object v0, Lcom/cai88/tools/chart/TrendChartsDialog;->tipDialogView:Lcom/cai88/tools/view/DialogView;

    .line 22
    sput-object v0, Lcom/cai88/tools/chart/TrendChartsDialog;->helpDialogView:Lcom/cai88/tools/chart/TrendChartsDialog;

    .line 23
    sput-object v0, Lcom/cai88/tools/chart/TrendChartsDialog;->builder:Lcom/cai88/tools/chart/TrendChartsDialog$Builder;

    .line 24
    sput-object v0, Lcom/cai88/tools/chart/TrendChartsDialog;->chartsDialog:Lcom/cai88/tools/chart/TrendChartsDialog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 32
    return-void
.end method

.method public static createDialog(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/cai88/tools/chart/TrendChartsDialog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gameCode"    # Ljava/lang/String;
    .param p2, "positiveListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "negativeListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 388
    new-instance v0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;

    invoke-direct {v0, p0}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cai88/tools/chart/TrendChartsDialog;->builder:Lcom/cai88/tools/chart/TrendChartsDialog$Builder;

    .line 389
    sget-object v0, Lcom/cai88/tools/chart/TrendChartsDialog;->builder:Lcom/cai88/tools/chart/TrendChartsDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->setGameCode(Ljava/lang/String;)Lcom/cai88/tools/chart/TrendChartsDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->setPositiveButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)Lcom/cai88/tools/chart/TrendChartsDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->setNegativeButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)Lcom/cai88/tools/chart/TrendChartsDialog$Builder;

    .line 390
    sget-object v0, Lcom/cai88/tools/chart/TrendChartsDialog;->builder:Lcom/cai88/tools/chart/TrendChartsDialog$Builder;

    invoke-virtual {v0}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->create()Lcom/cai88/tools/chart/TrendChartsDialog;

    move-result-object v0

    sput-object v0, Lcom/cai88/tools/chart/TrendChartsDialog;->chartsDialog:Lcom/cai88/tools/chart/TrendChartsDialog;

    .line 391
    sget-object v0, Lcom/cai88/tools/chart/TrendChartsDialog;->chartsDialog:Lcom/cai88/tools/chart/TrendChartsDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cai88/tools/chart/TrendChartsDialog;->setCancelable(Z)V

    .line 392
    sget-object v0, Lcom/cai88/tools/chart/TrendChartsDialog;->chartsDialog:Lcom/cai88/tools/chart/TrendChartsDialog;

    return-object v0
.end method

.method public static showHelpDlg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gameCode"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 375
    sget-object v1, Lcom/cai88/tools/chart/TrendChartsDialog;->helpDialogView:Lcom/cai88/tools/chart/TrendChartsDialog;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/cai88/tools/chart/TrendChartsDialog;->helpDialogView:Lcom/cai88/tools/chart/TrendChartsDialog;

    invoke-virtual {v1}, Lcom/cai88/tools/chart/TrendChartsDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    sget-object v1, Lcom/cai88/tools/chart/TrendChartsDialog;->helpDialogView:Lcom/cai88/tools/chart/TrendChartsDialog;

    invoke-virtual {v1}, Lcom/cai88/tools/chart/TrendChartsDialog;->dismiss()V

    .line 379
    :cond_0
    new-instance v0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;

    invoke-direct {v0, p0}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 380
    .local v0, "builder":Lcom/cai88/tools/chart/TrendChartsDialog$Builder;
    invoke-virtual {v0, p1}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->setGameCode(Ljava/lang/String;)Lcom/cai88/tools/chart/TrendChartsDialog$Builder;

    .line 381
    invoke-virtual {v0, p2}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/cai88/tools/chart/TrendChartsDialog$Builder;

    .line 382
    invoke-virtual {v0}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->createHelp()Lcom/cai88/tools/chart/TrendChartsDialog;

    move-result-object v1

    sput-object v1, Lcom/cai88/tools/chart/TrendChartsDialog;->helpDialogView:Lcom/cai88/tools/chart/TrendChartsDialog;

    .line 383
    sget-object v1, Lcom/cai88/tools/chart/TrendChartsDialog;->helpDialogView:Lcom/cai88/tools/chart/TrendChartsDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/cai88/tools/chart/TrendChartsDialog;->setCancelable(Z)V

    .line 384
    sget-object v1, Lcom/cai88/tools/chart/TrendChartsDialog;->helpDialogView:Lcom/cai88/tools/chart/TrendChartsDialog;

    invoke-virtual {v1}, Lcom/cai88/tools/chart/TrendChartsDialog;->show()V

    .line 385
    return-void
.end method

.method public static showTipDlg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "paramString1"    # Ljava/lang/String;
    .param p2, "paramString2"    # Ljava/lang/String;

    .prologue
    .line 354
    const-string v1, "\u5f53\u524d\u671f\u6b21\u5df2\u622a\u6b62"

    .line 355
    .local v1, "str1":Ljava/lang/String;
    invoke-static {p2}, Lcom/cai88/tools/uitl/Common;->strIsBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\u671f\u5df2\u622a\u6b62"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 358
    :cond_0
    const-string v2, "\u6295\u6ce8\u65f6\u8bf7\u786e\u8ba4\u671f\u6b21"

    .line 359
    .local v2, "str2":Ljava/lang/String;
    invoke-static {p1}, Lcom/cai88/tools/uitl/Common;->strIsBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "\u5f53\u524d\u662f"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\u671f,\u6295\u6ce8\u65f6\u8bf7\u786e\u8ba4\u671f\u6b21"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 362
    :cond_1
    sget-object v0, Lcom/cai88/tools/chart/TrendChartsDialog;->tipDialogView:Lcom/cai88/tools/view/DialogView;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/cai88/tools/chart/TrendChartsDialog;->tipDialogView:Lcom/cai88/tools/view/DialogView;

    invoke-virtual {v0}, Lcom/cai88/tools/view/DialogView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 363
    sget-object v0, Lcom/cai88/tools/chart/TrendChartsDialog;->tipDialogView:Lcom/cai88/tools/view/DialogView;

    invoke-virtual {v0}, Lcom/cai88/tools/view/DialogView;->dismiss()V

    .line 365
    :cond_2
    const-string v3, "\u786e\u5b9a"

    .line 366
    new-instance v4, Lcom/cai88/tools/chart/TrendChartsDialog$1;

    invoke-direct {v4}, Lcom/cai88/tools/chart/TrendChartsDialog$1;-><init>()V

    .line 370
    const-string v5, ""

    const/4 v6, 0x0

    move-object v0, p0

    move-object v7, v1

    .line 365
    invoke-static/range {v0 .. v7}, Lcom/cai88/tools/view/DialogView;->createDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/cai88/tools/view/DialogView;

    move-result-object v0

    sput-object v0, Lcom/cai88/tools/chart/TrendChartsDialog;->tipDialogView:Lcom/cai88/tools/view/DialogView;

    .line 371
    sget-object v0, Lcom/cai88/tools/chart/TrendChartsDialog;->tipDialogView:Lcom/cai88/tools/view/DialogView;

    invoke-virtual {v0}, Lcom/cai88/tools/view/DialogView;->show()V

    .line 372
    return-void
.end method

.method public static showTrendChartsSettingDialog()V
    .locals 1

    .prologue
    .line 396
    sget-object v0, Lcom/cai88/tools/chart/TrendChartsDialog;->builder:Lcom/cai88/tools/chart/TrendChartsDialog$Builder;

    invoke-static {v0}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->access$15(Lcom/cai88/tools/chart/TrendChartsDialog$Builder;)V

    .line 397
    sget-object v0, Lcom/cai88/tools/chart/TrendChartsDialog;->chartsDialog:Lcom/cai88/tools/chart/TrendChartsDialog;

    invoke-virtual {v0}, Lcom/cai88/tools/chart/TrendChartsDialog;->show()V

    .line 398
    return-void
.end method


# virtual methods
.method public getPeriod()I
    .locals 1

    .prologue
    .line 401
    sget-object v0, Lcom/cai88/tools/chart/TrendChartsDialog;->builder:Lcom/cai88/tools/chart/TrendChartsDialog$Builder;

    invoke-static {v0}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->access$9(Lcom/cai88/tools/chart/TrendChartsDialog$Builder;)I

    move-result v0

    return v0
.end method

.method public isShowAnalysis()Z
    .locals 1

    .prologue
    .line 413
    sget-object v0, Lcom/cai88/tools/chart/TrendChartsDialog;->builder:Lcom/cai88/tools/chart/TrendChartsDialog$Builder;

    invoke-static {v0}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->access$12(Lcom/cai88/tools/chart/TrendChartsDialog$Builder;)Z

    move-result v0

    return v0
.end method

.method public isShowLine()Z
    .locals 1

    .prologue
    .line 405
    sget-object v0, Lcom/cai88/tools/chart/TrendChartsDialog;->builder:Lcom/cai88/tools/chart/TrendChartsDialog$Builder;

    invoke-static {v0}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->access$10(Lcom/cai88/tools/chart/TrendChartsDialog$Builder;)Z

    move-result v0

    return v0
.end method

.method public isShowMissNumber()Z
    .locals 1

    .prologue
    .line 409
    sget-object v0, Lcom/cai88/tools/chart/TrendChartsDialog;->builder:Lcom/cai88/tools/chart/TrendChartsDialog$Builder;

    invoke-static {v0}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->access$11(Lcom/cai88/tools/chart/TrendChartsDialog$Builder;)Z

    move-result v0

    return v0
.end method
