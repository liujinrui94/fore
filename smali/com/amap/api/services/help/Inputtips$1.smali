.class Lcom/amap/api/services/help/Inputtips$1;
.super Ljava/lang/Thread;
.source "Inputtips.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/services/help/Inputtips;->requestInputtips(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/amap/api/services/help/Inputtips;


# direct methods
.method constructor <init>(Lcom/amap/api/services/help/Inputtips;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/amap/api/services/help/Inputtips$1;->c:Lcom/amap/api/services/help/Inputtips;

    iput-object p2, p0, Lcom/amap/api/services/help/Inputtips$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/amap/api/services/help/Inputtips$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 49
    new-instance v0, Lcom/amap/api/services/core/l;

    new-instance v1, Lcom/amap/api/services/core/m;

    iget-object v2, p0, Lcom/amap/api/services/help/Inputtips$1;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/services/help/Inputtips$1;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/amap/api/services/core/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amap/api/services/help/Inputtips$1;->c:Lcom/amap/api/services/help/Inputtips;

    invoke-static {v2}, Lcom/amap/api/services/help/Inputtips;->a(Lcom/amap/api/services/help/Inputtips;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/services/core/f;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amap/api/services/core/l;-><init>(Lcom/amap/api/services/core/m;Ljava/net/Proxy;)V

    .line 52
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 54
    :try_start_0
    invoke-virtual {v0}, Lcom/amap/api/services/core/l;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 55
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 56
    const/4 v0, 0x0

    iput v0, v1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    iget-object v0, p0, Lcom/amap/api/services/help/Inputtips$1;->c:Lcom/amap/api/services/help/Inputtips;

    iget-object v0, v0, Lcom/amap/api/services/help/Inputtips;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 62
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    :try_start_1
    invoke-virtual {v0}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v0

    iput v0, v1, Landroid/os/Message;->what:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    iget-object v0, p0, Lcom/amap/api/services/help/Inputtips$1;->c:Lcom/amap/api/services/help/Inputtips;

    iget-object v0, v0, Lcom/amap/api/services/help/Inputtips;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/amap/api/services/help/Inputtips$1;->c:Lcom/amap/api/services/help/Inputtips;

    iget-object v2, v2, Lcom/amap/api/services/help/Inputtips;->a:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    throw v0
.end method
