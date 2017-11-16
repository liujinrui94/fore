.class Lcom/cai88/tools/shishicai/HttpUtils$5;
.super Ljava/lang/Object;
.source "HttpUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cai88/tools/shishicai/HttpUtils;->onError(Lcom/cai88/tools/shishicai/HttpUtils$HttpCallback;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cai88/tools/shishicai/HttpUtils;

.field final synthetic val$callback:Lcom/cai88/tools/shishicai/HttpUtils$HttpCallback;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cai88/tools/shishicai/HttpUtils;Lcom/cai88/tools/shishicai/HttpUtils$HttpCallback;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cai88/tools/shishicai/HttpUtils;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/cai88/tools/shishicai/HttpUtils$5;->this$0:Lcom/cai88/tools/shishicai/HttpUtils;

    iput-object p2, p0, Lcom/cai88/tools/shishicai/HttpUtils$5;->val$callback:Lcom/cai88/tools/shishicai/HttpUtils$HttpCallback;

    iput-object p3, p0, Lcom/cai88/tools/shishicai/HttpUtils$5;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/cai88/tools/shishicai/HttpUtils$5;->val$callback:Lcom/cai88/tools/shishicai/HttpUtils$HttpCallback;

    iget-object v1, p0, Lcom/cai88/tools/shishicai/HttpUtils$5;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cai88/tools/shishicai/HttpUtils$HttpCallback;->onError(Ljava/lang/String;)V

    .line 238
    return-void
.end method
