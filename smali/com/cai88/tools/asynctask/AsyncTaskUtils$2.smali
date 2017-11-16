.class Lcom/cai88/tools/asynctask/AsyncTaskUtils$2;
.super Landroid/os/AsyncTask;
.source "AsyncTaskUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cai88/tools/asynctask/AsyncTaskUtils;->doProgressAsync(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/cai88/tools/asynctask/CallEarliest;Lcom/cai88/tools/asynctask/ProgressCallable;Lcom/cai88/tools/asynctask/Callback;)V
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
.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private final synthetic val$pCallEarliest:Lcom/cai88/tools/asynctask/CallEarliest;

.field private final synthetic val$pCallback:Lcom/cai88/tools/asynctask/Callback;

.field private final synthetic val$pContext:Landroid/content/Context;

.field private final synthetic val$pMessage:Ljava/lang/String;

.field private final synthetic val$pTitle:Ljava/lang/String;

.field private final synthetic val$progressCallable:Lcom/cai88/tools/asynctask/ProgressCallable;

.field private final synthetic val$styleID:I


# direct methods
.method constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/cai88/tools/asynctask/CallEarliest;Lcom/cai88/tools/asynctask/ProgressCallable;Lcom/cai88/tools/asynctask/Callback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cai88/tools/asynctask/AsyncTaskUtils$2;->val$pContext:Landroid/content/Context;

    iput p2, p0, Lcom/cai88/tools/asynctask/AsyncTaskUtils$2;->val$styleID:I

    iput-object p3, p0, Lcom/cai88/tools/asynctask/AsyncTaskUtils$2;->val$pTitle:Ljava/lang/String;

    iput-object p4, p0, Lcom/cai88/tools/asynctask/AsyncTaskUtils$2;->val$pMessage:Ljava/lang/String;

    iput-object p5, p0, Lcom/cai88/tools/asynctask/AsyncTaskUtils$2;->val$pCallEarliest:Lcom/cai88/tools/asynctask/CallEarliest;

    iput-object p6, p0, Lcom/cai88/tools/asynctask/AsyncTaskUtils$2;->val$progressCallable:Lcom/cai88/tools/asynctask/ProgressCallable;

    iput-object p7, p0, Lcom/cai88/tools/asynctask/AsyncTaskUtils$2;->val$pCallback:Lcom/cai88/tools/asynctask/Callback;

    .line 95
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cai88/tools/asynctask/AsyncTaskUtils$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

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
    .line 125
    :try_start_0
    iget-object v1, p0, Lcom/cai88/tools/asynctask/AsyncTaskUtils$2;->val$progressCallable:Lcom/cai88/tools/asynctask/ProgressCallable;

    new-instance v2, Lcom/cai88/tools/asynctask/AsyncTaskUtils$2$1;

    invoke-direct {v2, p0}, Lcom/cai88/tools/asynctask/AsyncTaskUtils$2$1;-><init>(Lcom/cai88/tools/asynctask/AsyncTaskUtils$2;)V

    invoke-interface {v1, v2}, Lcom/cai88/tools/asynctask/ProgressCallable;->call(Lcom/cai88/tools/asynctask/IProgressListener;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 137
    :goto_0
    return-object v1

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
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
    .line 151
    .local p1, "result":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/cai88/tools/asynctask/AsyncTaskUtils$2;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/cai88/tools/asynctask/AsyncTaskUtils$2;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/cai88/tools/asynctask/AsyncTaskUtils$2;->val$pCallback:Lcom/cai88/tools/asynctask/Callback;

    invoke-interface {v0, p1}, Lcom/cai88/tools/asynctask/Callback;->onCallback(Ljava/lang/Object;)V

    .line 155
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 104
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 106
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/cai88/tools/asynctask/AsyncTaskUtils$2;->val$pContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cai88/tools/asynctask/AsyncTaskUtils$2;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 107
    iget-object v1, p0, Lcom/cai88/tools/asynctask/AsyncTaskUtils$2;->mProgressDialog:Landroid/app/ProgressDialog;

    iget v2, p0, Lcom/cai88/tools/asynctask/AsyncTaskUtils$2;->val$styleID:I

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 108
    iget-object v1, p0, Lcom/cai88/tools/asynctask/AsyncTaskUtils$2;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/cai88/tools/asynctask/AsyncTaskUtils$2;->val$pTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v1, p0, Lcom/cai88/tools/asynctask/AsyncTaskUtils$2;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/cai88/tools/asynctask/AsyncTaskUtils$2;->val$pMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v1, p0, Lcom/cai88/tools/asynctask/AsyncTaskUtils$2;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 111
    iget-object v1, p0, Lcom/cai88/tools/asynctask/AsyncTaskUtils$2;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/cai88/tools/asynctask/AsyncTaskUtils$2;->val$pCallEarliest:Lcom/cai88/tools/asynctask/CallEarliest;

    invoke-interface {v1}, Lcom/cai88/tools/asynctask/CallEarliest;->onCallEarliest()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .param p1, "values"    # [Ljava/lang/Integer;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/cai88/tools/asynctask/AsyncTaskUtils$2;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 145
    return-void
.end method
