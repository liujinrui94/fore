.class public Lcom/cai88/tools/view/ProgressView;
.super Ljava/lang/Object;
.source "ProgressView.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createProgress(Landroid/content/Context;)Landroid/app/ProgressDialog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/cai88/tools/view/ProgressView;->createProgress(Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static createProgress(Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;)Landroid/app/ProgressDialog;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cancelable"    # Ljava/lang/Boolean;
    .param p2, "msgText"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 27
    :try_start_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 28
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f020029

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 29
    .local v6, "v":Landroid/view/View;
    const v8, 0x7f0700ae

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 30
    .local v3, "loadingIv":Landroid/widget/ImageView;
    const v8, 0x7f0700af

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 32
    .local v4, "msgTv":Landroid/widget/TextView;
    const v8, 0x7f02002a

    .line 31
    invoke-static {p0, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 33
    .local v2, "loadingAnimation":Landroid/view/animation/Animation;
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 34
    if-eqz p2, :cond_0

    const-string v8, ""

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 35
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    :cond_0
    new-instance v5, Landroid/app/ProgressDialog;

    const v8, 0x7f090001

    invoke-direct {v5, p0, v8}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 38
    .local v5, "pg":Landroid/app/ProgressDialog;
    invoke-virtual {v5}, Landroid/app/ProgressDialog;->show()V

    .line 39
    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setContentView(Landroid/view/View;)V

    .line 40
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v5, v8}, Landroid/app/ProgressDialog;->setCancelable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "loadingAnimation":Landroid/view/animation/Animation;
    .end local v3    # "loadingIv":Landroid/widget/ImageView;
    .end local v4    # "msgTv":Landroid/widget/TextView;
    .end local v5    # "pg":Landroid/app/ProgressDialog;
    .end local v6    # "v":Landroid/view/View;
    :goto_0
    return-object v5

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "iws"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "ProgressDialog createProgress e:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v7

    .line 45
    goto :goto_0
.end method

.method public static createProgress(Landroid/content/Context;Z)Landroid/app/ProgressDialog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cancelable"    # Z

    .prologue
    .line 22
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/cai88/tools/view/ProgressView;->createProgress(Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static dismissProgress(Landroid/app/ProgressDialog;)V
    .locals 4
    .param p0, "pg"    # Landroid/app/ProgressDialog;

    .prologue
    .line 50
    if-eqz p0, :cond_0

    .line 51
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "iws"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ProgressDialog dismissProgress e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
