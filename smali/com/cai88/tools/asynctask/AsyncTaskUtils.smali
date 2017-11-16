.class public Lcom/cai88/tools/asynctask/AsyncTaskUtils;
.super Ljava/lang/Object;
.source "AsyncTaskUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doAsync(Lcom/cai88/tools/asynctask/CallEarliest;Lcom/cai88/tools/asynctask/Callable;Lcom/cai88/tools/asynctask/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/cai88/tools/asynctask/CallEarliest",
            "<TT;>;",
            "Lcom/cai88/tools/asynctask/Callable",
            "<TT;>;",
            "Lcom/cai88/tools/asynctask/Callback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "pCallEarliest":Lcom/cai88/tools/asynctask/CallEarliest;, "Lcom/cai88/tools/asynctask/CallEarliest<TT;>;"
    .local p1, "pCallable":Lcom/cai88/tools/asynctask/Callable;, "Lcom/cai88/tools/asynctask/Callable<TT;>;"
    .local p2, "pCallback":Lcom/cai88/tools/asynctask/Callback;, "Lcom/cai88/tools/asynctask/Callback<TT;>;"
    new-instance v0, Lcom/cai88/tools/asynctask/AsyncTaskUtils$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/cai88/tools/asynctask/AsyncTaskUtils$1;-><init>(Lcom/cai88/tools/asynctask/CallEarliest;Lcom/cai88/tools/asynctask/Callable;Lcom/cai88/tools/asynctask/Callback;)V

    .line 63
    .local v0, "aTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;TT;>;"
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 64
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static doProgressAsync(Landroid/content/Context;IIILcom/cai88/tools/asynctask/CallEarliest;Lcom/cai88/tools/asynctask/ProgressCallable;Lcom/cai88/tools/asynctask/Callback;)V
    .locals 7
    .param p0, "pContext"    # Landroid/content/Context;
    .param p1, "styleID"    # I
    .param p2, "pTitleResId"    # I
    .param p3, "pMessageResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "III",
            "Lcom/cai88/tools/asynctask/CallEarliest",
            "<TT;>;",
            "Lcom/cai88/tools/asynctask/ProgressCallable",
            "<TT;>;",
            "Lcom/cai88/tools/asynctask/Callback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 189
    .line 190
    .local p4, "pCallEarliest":Lcom/cai88/tools/asynctask/CallEarliest;, "Lcom/cai88/tools/asynctask/CallEarliest<TT;>;"
    .local p5, "progressCallable":Lcom/cai88/tools/asynctask/ProgressCallable;, "Lcom/cai88/tools/asynctask/ProgressCallable<TT;>;"
    .local p6, "pCallback":Lcom/cai88/tools/asynctask/Callback;, "Lcom/cai88/tools/asynctask/Callback<TT;>;"
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 191
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move v1, p1

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 189
    invoke-static/range {v0 .. v6}, Lcom/cai88/tools/asynctask/AsyncTaskUtils;->doProgressAsync(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/cai88/tools/asynctask/CallEarliest;Lcom/cai88/tools/asynctask/ProgressCallable;Lcom/cai88/tools/asynctask/Callback;)V

    .line 193
    return-void
.end method

.method public static doProgressAsync(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/cai88/tools/asynctask/CallEarliest;Lcom/cai88/tools/asynctask/ProgressCallable;Lcom/cai88/tools/asynctask/Callback;)V
    .locals 8
    .param p0, "pContext"    # Landroid/content/Context;
    .param p1, "styleID"    # I
    .param p2, "pTitle"    # Ljava/lang/String;
    .param p3, "pMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/cai88/tools/asynctask/CallEarliest",
            "<TT;>;",
            "Lcom/cai88/tools/asynctask/ProgressCallable",
            "<TT;>;",
            "Lcom/cai88/tools/asynctask/Callback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p4, "pCallEarliest":Lcom/cai88/tools/asynctask/CallEarliest;, "Lcom/cai88/tools/asynctask/CallEarliest<TT;>;"
    .local p5, "progressCallable":Lcom/cai88/tools/asynctask/ProgressCallable;, "Lcom/cai88/tools/asynctask/ProgressCallable<TT;>;"
    .local p6, "pCallback":Lcom/cai88/tools/asynctask/Callback;, "Lcom/cai88/tools/asynctask/Callback<TT;>;"
    new-instance v0, Lcom/cai88/tools/asynctask/AsyncTaskUtils$2;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/cai88/tools/asynctask/AsyncTaskUtils$2;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/cai88/tools/asynctask/CallEarliest;Lcom/cai88/tools/asynctask/ProgressCallable;Lcom/cai88/tools/asynctask/Callback;)V

    .line 157
    .local v0, "aTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;TT;>;"
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 158
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 163
    :goto_0
    return-void

    .line 160
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
