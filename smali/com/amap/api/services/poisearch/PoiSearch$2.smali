.class Lcom/amap/api/services/poisearch/PoiSearch$2;
.super Ljava/lang/Thread;
.source "PoiSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/services/poisearch/PoiSearch;->searchPOIDetailAsyn(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/amap/api/services/poisearch/PoiSearch;


# direct methods
.method constructor <init>(Lcom/amap/api/services/poisearch/PoiSearch;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/amap/api/services/poisearch/PoiSearch$2;->b:Lcom/amap/api/services/poisearch/PoiSearch;

    iput-object p2, p0, Lcom/amap/api/services/poisearch/PoiSearch$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 179
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 180
    const/16 v0, 0x65

    iput v0, v2, Landroid/os/Message;->what:I

    .line 181
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 182
    const/4 v1, 0x0

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$2;->b:Lcom/amap/api/services/poisearch/PoiSearch;

    iget-object v4, p0, Lcom/amap/api/services/poisearch/PoiSearch$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/amap/api/services/poisearch/PoiSearch;->searchPOIDetail(Ljava/lang/String;)Lcom/amap/api/services/poisearch/PoiItemDetail;

    move-result-object v1

    .line 185
    const-string v0, "errorCode"

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 190
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 191
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$2;->b:Lcom/amap/api/services/poisearch/PoiSearch;

    iget-object v0, v0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 193
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    :try_start_1
    const-string v4, "errorCode"

    invoke-virtual {v0}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 190
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 191
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$2;->b:Lcom/amap/api/services/poisearch/PoiSearch;

    iget-object v0, v0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 189
    :catchall_0
    move-exception v0

    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 190
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 191
    iget-object v1, p0, Lcom/amap/api/services/poisearch/PoiSearch$2;->b:Lcom/amap/api/services/poisearch/PoiSearch;

    iget-object v1, v1, Lcom/amap/api/services/poisearch/PoiSearch;->a:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    throw v0
.end method
