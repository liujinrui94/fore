.class public Lcom/cai88/tools/view/GameChooseDialog;
.super Landroid/app/Dialog;
.source "GameChooseDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cai88/tools/view/GameChooseDialog$Builder;
    }
.end annotation


# static fields
.field private static builder:Lcom/cai88/tools/view/GameChooseDialog$Builder;

.field private static chartsDialog:Lcom/cai88/tools/view/GameChooseDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    sput-object v0, Lcom/cai88/tools/view/GameChooseDialog;->builder:Lcom/cai88/tools/view/GameChooseDialog$Builder;

    .line 23
    sput-object v0, Lcom/cai88/tools/view/GameChooseDialog;->chartsDialog:Lcom/cai88/tools/view/GameChooseDialog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 31
    return-void
.end method

.method public static createDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/cai88/tools/view/GameChooseDialog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "positiveListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p2, "negativeListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 174
    new-instance v0, Lcom/cai88/tools/view/GameChooseDialog$Builder;

    invoke-direct {v0, p0}, Lcom/cai88/tools/view/GameChooseDialog$Builder;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cai88/tools/view/GameChooseDialog;->builder:Lcom/cai88/tools/view/GameChooseDialog$Builder;

    .line 175
    sget-object v0, Lcom/cai88/tools/view/GameChooseDialog;->builder:Lcom/cai88/tools/view/GameChooseDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/cai88/tools/view/GameChooseDialog$Builder;->setPositiveButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)Lcom/cai88/tools/view/GameChooseDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/cai88/tools/view/GameChooseDialog$Builder;->setNegativeButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)Lcom/cai88/tools/view/GameChooseDialog$Builder;

    .line 176
    sget-object v0, Lcom/cai88/tools/view/GameChooseDialog;->builder:Lcom/cai88/tools/view/GameChooseDialog$Builder;

    invoke-virtual {v0}, Lcom/cai88/tools/view/GameChooseDialog$Builder;->create()Lcom/cai88/tools/view/GameChooseDialog;

    move-result-object v0

    sput-object v0, Lcom/cai88/tools/view/GameChooseDialog;->chartsDialog:Lcom/cai88/tools/view/GameChooseDialog;

    .line 177
    sget-object v0, Lcom/cai88/tools/view/GameChooseDialog;->chartsDialog:Lcom/cai88/tools/view/GameChooseDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cai88/tools/view/GameChooseDialog;->setCancelable(Z)V

    .line 178
    sget-object v0, Lcom/cai88/tools/view/GameChooseDialog;->chartsDialog:Lcom/cai88/tools/view/GameChooseDialog;

    return-object v0
.end method

.method public static showTrendChartsSettingDialog()V
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/cai88/tools/view/GameChooseDialog;->builder:Lcom/cai88/tools/view/GameChooseDialog$Builder;

    invoke-static {v0}, Lcom/cai88/tools/view/GameChooseDialog$Builder;->access$6(Lcom/cai88/tools/view/GameChooseDialog$Builder;)V

    .line 183
    sget-object v0, Lcom/cai88/tools/view/GameChooseDialog;->chartsDialog:Lcom/cai88/tools/view/GameChooseDialog;

    invoke-virtual {v0}, Lcom/cai88/tools/view/GameChooseDialog;->show()V

    .line 184
    return-void
.end method
