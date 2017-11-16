.class Lcom/amap/api/services/busline/BusStationSearch$1;
.super Ljava/lang/Object;
.source "BusStationSearch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/services/busline/BusStationSearch;->searchBusStationAsyn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/busline/BusStationSearch;


# direct methods
.method constructor <init>(Lcom/amap/api/services/busline/BusStationSearch;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/amap/api/services/busline/BusStationSearch$1;->a:Lcom/amap/api/services/busline/BusStationSearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 165
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationSearch$1;->a:Lcom/amap/api/services/busline/BusStationSearch;

    invoke-virtual {v0}, Lcom/amap/api/services/busline/BusStationSearch;->searchBusStation()Lcom/amap/api/services/busline/BusStationResult;

    move-result-object v0

    .line 168
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 169
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationSearch$1;->a:Lcom/amap/api/services/busline/BusStationSearch;

    iget-object v0, v0, Lcom/amap/api/services/busline/BusStationSearch;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 175
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    :try_start_1
    invoke-virtual {v0}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v0

    iput v0, v1, Landroid/os/Message;->what:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationSearch$1;->a:Lcom/amap/api/services/busline/BusStationSearch;

    iget-object v0, v0, Lcom/amap/api/services/busline/BusStationSearch;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/amap/api/services/busline/BusStationSearch$1;->a:Lcom/amap/api/services/busline/BusStationSearch;

    iget-object v2, v2, Lcom/amap/api/services/busline/BusStationSearch;->a:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    throw v0
.end method
