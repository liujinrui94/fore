.class public Lcom/amap/api/services/core/j;
.super Lcom/amap/api/services/core/r;
.source "GeocodingHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/services/core/r",
        "<",
        "Lcom/amap/api/services/geocoder/GeocodeQuery;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/amap/api/services/geocoder/GeocodeAddress;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/amap/api/services/geocoder/GeocodeQuery;Ljava/net/Proxy;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/amap/api/services/core/r;-><init>(Ljava/lang/Object;Ljava/net/Proxy;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amap/api/services/core/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/geocode/geo?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 46
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 47
    const-string v0, "output=json"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "&address="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v0, p0, Lcom/amap/api/services/core/j;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/geocoder/GeocodeQuery;

    invoke-virtual {v0}, Lcom/amap/api/services/geocoder/GeocodeQuery;->getLocationName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/services/core/j;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    iget-object v0, p0, Lcom/amap/api/services/core/j;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/geocoder/GeocodeQuery;

    invoke-virtual {v0}, Lcom/amap/api/services/geocoder/GeocodeQuery;->getCity()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v0}, Lcom/amap/api/services/core/n;->h(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 51
    invoke-virtual {p0, v0, p1}, Lcom/amap/api/services/core/j;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 52
    const-string v2, "&city="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&key="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/amap/api/services/core/d;->a(Landroid/content/Context;)Lcom/amap/api/services/core/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/services/core/d;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/core/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    return-object v0
.end method

.method protected a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/geocoder/GeocodeAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 24
    const-string v2, "count"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 36
    :cond_0
    :goto_0
    return-object v0

    .line 27
    :cond_1
    const-string v2, "count"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 28
    if-lez v2, :cond_0

    .line 29
    invoke-static {v1}, Lcom/amap/api/services/core/n;->n(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 31
    :catch_0
    move-exception v1

    .line 32
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 33
    :catch_1
    move-exception v1

    .line 34
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected synthetic b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/amap/api/services/core/j;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
