.class Lcom/amap/api/services/busline/BusLineSearch$1;
.super Ljava/lang/Object;
.source "BusLineSearch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/services/busline/BusLineSearch;->searchBusLineAsyn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/busline/BusLineSearch;


# direct methods
.method constructor <init>(Lcom/amap/api/services/busline/BusLineSearch;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/amap/api/services/busline/BusLineSearch$1;->a:Lcom/amap/api/services/busline/BusLineSearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 112
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/busline/BusLineSearch$1;->a:Lcom/amap/api/services/busline/BusLineSearch;

    invoke-virtual {v0}, Lcom/amap/api/services/busline/BusLineSearch;->searchBusLine()Lcom/amap/api/services/busline/BusLineResult;

    move-result-object v0

    .line 115
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 116
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    iget-object v0, p0, Lcom/amap/api/services/busline/BusLineSearch$1;->a:Lcom/amap/api/services/busline/BusLineSearch;

    iget-object v0, v0, Lcom/amap/api/services/busline/BusLineSearch;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 123
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    :try_start_1
    invoke-virtual {v0}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v0

    iput v0, v1, Landroid/os/Message;->what:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    iget-object v0, p0, Lcom/amap/api/services/busline/BusLineSearch$1;->a:Lcom/amap/api/services/busline/BusLineSearch;

    iget-object v0, v0, Lcom/amap/api/services/busline/BusLineSearch;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/amap/api/services/busline/BusLineSearch$1;->a:Lcom/amap/api/services/busline/BusLineSearch;

    iget-object v2, v2, Lcom/amap/api/services/busline/BusLineSearch;->a:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    throw v0
.end method
