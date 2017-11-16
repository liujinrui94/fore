.class public Lcom/cai88/tools/view/DialogView;
.super Landroid/app/Dialog;
.source "DialogView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cai88/tools/view/DialogView$Builder;
    }
.end annotation


# static fields
.field static mHandler:Landroid/os/Handler;

.field private static positiveButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/cai88/tools/view/DialogView$1;

    invoke-direct {v0}, Lcom/cai88/tools/view/DialogView$1;-><init>()V

    sput-object v0, Lcom/cai88/tools/view/DialogView;->mHandler:Landroid/os/Handler;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 25
    return-void
.end method

.method public static createDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/cai88/tools/view/DialogView;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "positiveListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    const/4 v3, 0x0

    .line 295
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-static/range {v0 .. v7}, Lcom/cai88/tools/view/DialogView;->createDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/cai88/tools/view/DialogView;

    move-result-object v0

    return-object v0
.end method

.method public static createDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/cai88/tools/view/DialogView;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "positiveListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "headline"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 287
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, v3

    move-object v6, v3

    move-object v7, p4

    invoke-static/range {v0 .. v7}, Lcom/cai88/tools/view/DialogView;->createDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/cai88/tools/view/DialogView;

    move-result-object v0

    return-object v0
.end method

.method public static createDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/view/View;)Lcom/cai88/tools/view/DialogView;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "positiveText"    # Ljava/lang/String;
    .param p3, "positiveListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "negativeText"    # Ljava/lang/String;
    .param p5, "negativeListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p6, "headline"    # Ljava/lang/String;
    .param p7, "contextView"    # Landroid/view/View;

    .prologue
    .line 277
    new-instance v0, Lcom/cai88/tools/view/DialogView$Builder;

    invoke-direct {v0, p0}, Lcom/cai88/tools/view/DialogView$Builder;-><init>(Landroid/content/Context;)V

    .line 278
    .local v0, "bd":Lcom/cai88/tools/view/DialogView$Builder;
    invoke-virtual {v0, p1}, Lcom/cai88/tools/view/DialogView$Builder;->setTitle(Ljava/lang/String;)Lcom/cai88/tools/view/DialogView$Builder;

    move-result-object v2

    .line 279
    invoke-virtual {v2, p2, p3}, Lcom/cai88/tools/view/DialogView$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/cai88/tools/view/DialogView$Builder;

    move-result-object v2

    .line 280
    invoke-virtual {v2, p4, p5}, Lcom/cai88/tools/view/DialogView$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/cai88/tools/view/DialogView$Builder;

    move-result-object v2

    invoke-virtual {v2, p6}, Lcom/cai88/tools/view/DialogView$Builder;->setHeadLine(Ljava/lang/String;)Lcom/cai88/tools/view/DialogView$Builder;

    move-result-object v2

    .line 281
    invoke-virtual {v2, p7}, Lcom/cai88/tools/view/DialogView$Builder;->setContentView(Landroid/view/View;)Lcom/cai88/tools/view/DialogView$Builder;

    .line 282
    invoke-virtual {v0}, Lcom/cai88/tools/view/DialogView$Builder;->create()Lcom/cai88/tools/view/DialogView;

    move-result-object v1

    .line 283
    .local v1, "dlg":Lcom/cai88/tools/view/DialogView;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/cai88/tools/view/DialogView;->setCancelable(Z)V

    .line 284
    return-object v1
.end method

.method public static createDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/cai88/tools/view/DialogView;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "positiveText"    # Ljava/lang/String;
    .param p4, "positiveListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p5, "negativeText"    # Ljava/lang/String;
    .param p6, "negativeListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 292
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lcom/cai88/tools/view/DialogView;->createDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/cai88/tools/view/DialogView;

    move-result-object v0

    return-object v0
.end method

.method public static createDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/cai88/tools/view/DialogView;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "positiveText"    # Ljava/lang/String;
    .param p4, "positiveListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p5, "negativeText"    # Ljava/lang/String;
    .param p6, "negativeListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p7, "headline"    # Ljava/lang/String;

    .prologue
    .line 266
    new-instance v0, Lcom/cai88/tools/view/DialogView$Builder;

    invoke-direct {v0, p0}, Lcom/cai88/tools/view/DialogView$Builder;-><init>(Landroid/content/Context;)V

    .line 267
    .local v0, "bd":Lcom/cai88/tools/view/DialogView$Builder;
    invoke-virtual {v0, p1}, Lcom/cai88/tools/view/DialogView$Builder;->setTitle(Ljava/lang/String;)Lcom/cai88/tools/view/DialogView$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/cai88/tools/view/DialogView$Builder;->setMessage(Ljava/lang/String;)Lcom/cai88/tools/view/DialogView$Builder;

    move-result-object v2

    .line 268
    invoke-virtual {v2, p3, p4}, Lcom/cai88/tools/view/DialogView$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/cai88/tools/view/DialogView$Builder;

    move-result-object v2

    .line 269
    invoke-virtual {v2, p5, p6}, Lcom/cai88/tools/view/DialogView$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/cai88/tools/view/DialogView$Builder;

    move-result-object v2

    invoke-virtual {v2, p7}, Lcom/cai88/tools/view/DialogView$Builder;->setHeadLine(Ljava/lang/String;)Lcom/cai88/tools/view/DialogView$Builder;

    .line 270
    invoke-virtual {v0}, Lcom/cai88/tools/view/DialogView$Builder;->create()Lcom/cai88/tools/view/DialogView;

    move-result-object v1

    .line 271
    .local v1, "dlg":Lcom/cai88/tools/view/DialogView;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/cai88/tools/view/DialogView;->setCancelable(Z)V

    .line 272
    return-object v1
.end method
