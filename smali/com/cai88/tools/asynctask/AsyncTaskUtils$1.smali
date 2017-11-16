.class Lcom/cai88/tools/asynctask/AsyncTaskUtils$1;
.super Landroid/os/AsyncTask;
.source "AsyncTaskUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cai88/tools/asynctask/AsyncTaskUtils;->doAsync(Lcom/cai88/tools/asynctask/CallEarliest;Lcom/cai88/tools/asynctask/Callable;Lcom/cai88/tools/asynctask/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final synthetic val$pCallEarliest:Lcom/cai88/tools/asynctask/CallEarliest;

.field private final synthetic val$pCallable:Lcom/cai88/tools/asynctask/Callable;

.field private final synthetic val$pCallback:Lcom/cai88/tools/asynctask/Callback;


# direct methods
.method constructor <init>(Lcom/cai88/tools/asynctask/CallEarliest;Lcom/cai88/tools/asynctask/Callable;Lcom/cai88/tools/asynctask/Callback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cai88/tools/asynctask/AsyncTaskUtils$1;->val$pCallEarliest:Lcom/cai88/tools/asynctask/CallEarliest;

    iput-object p2, p0, Lcom/cai88/tools/asynctask/AsyncTaskUtils$1;->val$pCallable:Lcom/cai88/tools/asynctask/Callable;

    iput-object p3, p0, Lcom/cai88/tools/asynctask/AsyncTaskUtils$1;->val$pCallback:Lcom/cai88/tools/asynctask/Callback;

    .line 27
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cai88/tools/asynctask/AsyncTaskUtils$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/cai88/tools/asynctask/AsyncTaskUtils$1;->val$pCallable:Lcom/cai88/tools/asynctask/Callable;

    invoke-interface {v1}, Lcom/cai88/tools/asynctask/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 53
    :goto_0
    return-object v1

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "result":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/cai88/tools/asynctask/AsyncTaskUtils$1;->val$pCallback:Lcom/cai88/tools/asynctask/Callback;

    invoke-interface {v0, p1}, Lcom/cai88/tools/asynctask/Callback;->onCallback(Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 34
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/cai88/tools/asynctask/AsyncTaskUtils$1;->val$pCallEarliest:Lcom/cai88/tools/asynctask/CallEarliest;

    invoke-interface {v1}, Lcom/cai88/tools/asynctask/CallEarliest;->onCallEarliest()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
