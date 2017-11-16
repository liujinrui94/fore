.class public Lcom/amap/api/services/core/n;
.super Ljava/lang/Object;
.source "JSONHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/amap/api/services/poisearch/PoiItemDetail;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/amap/api/services/poisearch/Scenic;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 336
    new-instance v0, Lcom/amap/api/services/poisearch/Scenic;

    invoke-direct {v0}, Lcom/amap/api/services/poisearch/Scenic;-><init>()V

    .line 337
    const-string v1, "intro"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Scenic;->setIntro(Ljava/lang/String;)V

    .line 338
    const-string v1, "rating"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Scenic;->setRating(Ljava/lang/String;)V

    .line 339
    const-string v1, "deepsrc"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Scenic;->setDeepsrc(Ljava/lang/String;)V

    .line 340
    const-string v1, "level"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Scenic;->setLevel(Ljava/lang/String;)V

    .line 341
    const-string v1, "price"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Scenic;->setPrice(Ljava/lang/String;)V

    .line 342
    const-string v1, "season"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Scenic;->setSeason(Ljava/lang/String;)V

    .line 343
    const-string v1, "recommend"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Scenic;->setRecommend(Ljava/lang/String;)V

    .line 344
    const-string v1, "theme"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Scenic;->setTheme(Ljava/lang/String;)V

    .line 345
    const-string v1, "ordering_wap_url"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Scenic;->setOrderWapUrl(Ljava/lang/String;)V

    .line 346
    const-string v1, "ordering_web_url"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Scenic;->setOrderWebUrl(Ljava/lang/String;)V

    .line 347
    const-string v1, "opentime_GDF"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Scenic;->setOpentimeGDF(Ljava/lang/String;)V

    .line 348
    const-string v1, "opentime"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Scenic;->setOpentime(Ljava/lang/String;)V

    .line 349
    invoke-static {p1}, Lcom/amap/api/services/core/n;->l(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Scenic;->setPhotos(Ljava/util/List;)V

    .line 354
    sget-object v1, Lcom/amap/api/services/poisearch/PoiItemDetail$DeepType;->SCENIC:Lcom/amap/api/services/poisearch/PoiItemDetail$DeepType;

    invoke-virtual {p0, v1}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setDeepType(Lcom/amap/api/services/poisearch/PoiItemDetail$DeepType;)V

    .line 355
    invoke-virtual {p0, v0}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setScenic(Lcom/amap/api/services/poisearch/Scenic;)V

    .line 356
    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/core/SuggestionCity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 67
    const-string v0, "cities"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 81
    :goto_0
    return-object v0

    .line 70
    :cond_0
    const-string v0, "cities"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 71
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 72
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 73
    const-string v4, "name"

    invoke-static {v3, v4}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 74
    const-string v5, "citycode"

    invoke-static {v3, v5}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 75
    const-string v6, "adcode"

    invoke-static {v3, v6}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 76
    const-string v7, "num"

    invoke-static {v3, v7}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/services/core/n;->i(Ljava/lang/String;)I

    move-result v3

    .line 77
    new-instance v7, Lcom/amap/api/services/core/SuggestionCity;

    invoke-direct {v7, v4, v5, v6, v3}, Lcom/amap/api/services/core/SuggestionCity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 81
    goto :goto_0
.end method

.method public static a(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/route/BusPath;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 909
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 910
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 913
    new-instance v7, Lcom/amap/api/services/route/BusPath;

    invoke-direct {v7}, Lcom/amap/api/services/route/BusPath;-><init>()V

    .line 914
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 915
    const-string v3, "cost"

    invoke-static {v2, v3}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/services/core/n;->j(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v7, v3}, Lcom/amap/api/services/route/BusPath;->setCost(F)V

    .line 916
    const-string v3, "duration"

    invoke-static {v2, v3}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/services/core/n;->k(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/amap/api/services/route/BusPath;->setDuration(J)V

    .line 917
    const-string v3, "nightflag"

    invoke-static {v2, v3}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/services/core/n;->l(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v7, v3}, Lcom/amap/api/services/route/BusPath;->setNightBus(Z)V

    .line 918
    const-string v3, "walking_distance"

    invoke-static {v2, v3}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/services/core/n;->j(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v7, v3}, Lcom/amap/api/services/route/BusPath;->setWalkDistance(F)V

    .line 920
    const-string v3, "segments"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 921
    const-string v3, "segments"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 922
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    move v3, v4

    move v5, v4

    .line 923
    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v2, v10, :cond_2

    .line 924
    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 925
    invoke-static {v10}, Lcom/amap/api/services/core/n;->q(Lorg/json/JSONObject;)Lcom/amap/api/services/route/BusStep;

    move-result-object v10

    .line 926
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 927
    invoke-virtual {v10}, Lcom/amap/api/services/route/BusStep;->getWalk()Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 928
    invoke-virtual {v10}, Lcom/amap/api/services/route/BusStep;->getWalk()Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object v11

    invoke-virtual {v11}, Lcom/amap/api/services/route/RouteBusWalkItem;->getDistance()F

    move-result v11

    add-float/2addr v3, v11

    .line 929
    :cond_0
    invoke-virtual {v10}, Lcom/amap/api/services/route/BusStep;->getBusLine()Lcom/amap/api/services/route/RouteBusLineItem;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 930
    invoke-virtual {v10}, Lcom/amap/api/services/route/BusStep;->getBusLine()Lcom/amap/api/services/route/RouteBusLineItem;

    move-result-object v10

    invoke-virtual {v10}, Lcom/amap/api/services/route/RouteBusLineItem;->getDistance()F

    move-result v10

    add-float/2addr v5, v10

    .line 923
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 932
    :cond_2
    invoke-virtual {v7, v9}, Lcom/amap/api/services/route/BusPath;->setSteps(Ljava/util/List;)V

    .line 933
    invoke-virtual {v7, v5}, Lcom/amap/api/services/route/BusPath;->setBusDistance(F)V

    .line 934
    invoke-virtual {v7, v3}, Lcom/amap/api/services/route/BusPath;->setWalkDistance(F)V

    .line 937
    :cond_3
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 910
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 939
    :cond_4
    return-object v6
.end method

.method public static a(Lcom/amap/api/services/poisearch/Discount;Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 572
    invoke-static {p1}, Lcom/amap/api/services/core/n;->l(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    .line 573
    invoke-virtual {p0, v0}, Lcom/amap/api/services/poisearch/Discount;->initPhotos(Ljava/util/List;)V

    .line 574
    return-void
.end method

.method public static a(Lcom/amap/api/services/poisearch/Groupbuy;Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 541
    invoke-static {p1}, Lcom/amap/api/services/core/n;->l(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    .line 542
    invoke-virtual {p0, v0}, Lcom/amap/api/services/poisearch/Groupbuy;->initPhotos(Ljava/util/List;)V

    .line 543
    return-void
.end method

.method public static a(Lcom/amap/api/services/poisearch/PoiItemDetail;Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 489
    if-nez p1, :cond_1

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 492
    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/services/poisearch/PoiItemDetail;->isGroupbuyInfo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 493
    invoke-static {p0, p1}, Lcom/amap/api/services/core/n;->b(Lcom/amap/api/services/poisearch/PoiItemDetail;Lorg/json/JSONObject;)V

    .line 495
    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/services/poisearch/PoiItemDetail;->isDiscountInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    invoke-static {p0, p1}, Lcom/amap/api/services/core/n;->c(Lcom/amap/api/services/poisearch/PoiItemDetail;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public static a(Lcom/amap/api/services/route/DriveStep;Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    .line 1161
    const-string v0, "cities"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1181
    :goto_0
    return-void

    .line 1165
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1166
    const-string v0, "cities"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1167
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1168
    new-instance v3, Lcom/amap/api/services/route/RouteSearchCity;

    invoke-direct {v3}, Lcom/amap/api/services/route/RouteSearchCity;-><init>()V

    .line 1169
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 1170
    const-string v5, "name"

    invoke-static {v4, v5}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/amap/api/services/route/RouteSearchCity;->setSearchCityName(Ljava/lang/String;)V

    .line 1171
    const-string v5, "citycode"

    invoke-static {v4, v5}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/amap/api/services/route/RouteSearchCity;->setSearchCitycode(Ljava/lang/String;)V

    .line 1173
    const-string v5, "adcode"

    invoke-static {v4, v5}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/amap/api/services/route/RouteSearchCity;->setSearchCityhAdCode(Ljava/lang/String;)V

    .line 1175
    invoke-static {v3, v4}, Lcom/amap/api/services/core/n;->a(Lcom/amap/api/services/route/RouteSearchCity;Lorg/json/JSONObject;)V

    .line 1176
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1167
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1178
    :cond_1
    invoke-virtual {p0, v1}, Lcom/amap/api/services/route/DriveStep;->setRouteSearchCityList(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1179
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Lcom/amap/api/services/route/RouteSearchCity;Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    .line 1185
    const-string v0, "districts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1201
    :goto_0
    return-void

    .line 1189
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1190
    const-string v0, "districts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1191
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1192
    new-instance v3, Lcom/amap/api/services/route/District;

    invoke-direct {v3}, Lcom/amap/api/services/route/District;-><init>()V

    .line 1193
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 1194
    const-string v5, "name"

    invoke-static {v4, v5}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/amap/api/services/route/District;->setDistrictName(Ljava/lang/String;)V

    .line 1195
    const-string v5, "adcode"

    invoke-static {v4, v5}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/route/District;->setDistrictAdcode(Ljava/lang/String;)V

    .line 1196
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1191
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1198
    :cond_1
    invoke-virtual {p0, v1}, Lcom/amap/api/services/route/RouteSearchCity;->setDistricts(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1199
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONArray;Lcom/amap/api/services/geocoder/RegeocodeAddress;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 741
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 742
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 743
    new-instance v2, Lcom/amap/api/services/road/Crossroad;

    invoke-direct {v2}, Lcom/amap/api/services/road/Crossroad;-><init>()V

    .line 744
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 745
    const-string v4, "id"

    invoke-static {v3, v4}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/road/Crossroad;->setId(Ljava/lang/String;)V

    .line 746
    const-string v4, "direction"

    invoke-static {v3, v4}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/road/Crossroad;->setDirection(Ljava/lang/String;)V

    .line 747
    const-string v4, "distance"

    invoke-static {v3, v4}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/services/core/n;->j(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/road/Crossroad;->setDistance(F)V

    .line 749
    const-string v4, "location"

    invoke-static {v3, v4}, Lcom/amap/api/services/core/n;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/road/Crossroad;->setCenterPoint(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 750
    const-string v4, "first_id"

    invoke-static {v3, v4}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/road/Crossroad;->setFirstRoadId(Ljava/lang/String;)V

    .line 751
    const-string v4, "first_name"

    invoke-static {v3, v4}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/road/Crossroad;->setFirstRoadName(Ljava/lang/String;)V

    .line 753
    const-string v4, "second_id"

    invoke-static {v3, v4}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/road/Crossroad;->setSecondRoadId(Ljava/lang/String;)V

    .line 754
    const-string v4, "second_name"

    invoke-static {v3, v4}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/api/services/road/Crossroad;->setSecondRoadName(Ljava/lang/String;)V

    .line 756
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 742
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 758
    :cond_0
    invoke-virtual {p1, v1}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setCrossroads(Ljava/util/List;)V

    .line 759
    return-void
.end method

.method public static a(Lorg/json/JSONArray;Ljava/util/ArrayList;Lcom/amap/api/services/district/DistrictItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/district/DistrictItem;",
            ">;",
            "Lcom/amap/api/services/district/DistrictItem;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 632
    if-nez p0, :cond_1

    .line 643
    :cond_0
    :goto_0
    return-void

    .line 635
    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 636
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 637
    invoke-static {v1}, Lcom/amap/api/services/core/n;->m(Lorg/json/JSONObject;)Lcom/amap/api/services/district/DistrictItem;

    move-result-object v1

    .line 638
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 640
    :cond_2
    if-eqz p2, :cond_0

    .line 641
    invoke-virtual {p2, p1}, Lcom/amap/api/services/district/DistrictItem;->setSubDistrict(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONObject;Lcom/amap/api/services/geocoder/RegeocodeAddress;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 799
    const-string v0, "province"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setProvince(Ljava/lang/String;)V

    .line 800
    const-string v0, "city"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setCity(Ljava/lang/String;)V

    .line 801
    const-string v0, "citycode"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setCityCode(Ljava/lang/String;)V

    .line 802
    const-string v0, "adcode"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setAdCode(Ljava/lang/String;)V

    .line 803
    const-string v0, "district"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setDistrict(Ljava/lang/String;)V

    .line 804
    const-string v0, "township"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setTownship(Ljava/lang/String;)V

    .line 806
    const-string v0, "neighborhood"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 808
    const-string v1, "name"

    invoke-static {v0, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setNeighborhood(Ljava/lang/String;)V

    .line 810
    const-string v0, "building"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 811
    const-string v1, "name"

    invoke-static {v0, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setBuilding(Ljava/lang/String;)V

    .line 813
    new-instance v0, Lcom/amap/api/services/geocoder/StreetNumber;

    invoke-direct {v0}, Lcom/amap/api/services/geocoder/StreetNumber;-><init>()V

    .line 814
    const-string v1, "streetNumber"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 816
    const-string v2, "street"

    invoke-static {v1, v2}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/geocoder/StreetNumber;->setStreet(Ljava/lang/String;)V

    .line 817
    const-string v2, "number"

    invoke-static {v1, v2}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/geocoder/StreetNumber;->setNumber(Ljava/lang/String;)V

    .line 818
    const-string v2, "location"

    invoke-static {v1, v2}, Lcom/amap/api/services/core/n;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/geocoder/StreetNumber;->setLatLonPoint(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 820
    const-string v2, "direction"

    invoke-static {v1, v2}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/geocoder/StreetNumber;->setDirection(Ljava/lang/String;)V

    .line 821
    const-string v2, "distance"

    invoke-static {v1, v2}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/core/n;->j(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/geocoder/StreetNumber;->setDistance(F)V

    .line 823
    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setStreetNumber(Lcom/amap/api/services/geocoder/StreetNumber;)V

    .line 824
    invoke-static {p0}, Lcom/amap/api/services/core/n;->p(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setBusinessAreas(Ljava/util/List;)V

    .line 825
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 458
    .line 460
    :try_start_0
    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 461
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 462
    if-nez v2, :cond_1

    .line 473
    :cond_0
    :goto_0
    return v0

    .line 464
    :cond_1
    if-ne v2, v1, :cond_0

    move v0, v1

    .line 465
    goto :goto_0

    .line 468
    :catch_0
    move-exception v1

    .line 469
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 470
    :catch_1
    move-exception v1

    .line 471
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 452
    const-string v0, "biz_ext"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 453
    invoke-static {v0, p1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 454
    invoke-static {v0}, Lcom/amap/api/services/core/n;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;)Lcom/amap/api/services/route/BusRouteResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 877
    const/4 v0, 0x0

    .line 879
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 880
    const-string v2, "route"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 898
    :cond_0
    :goto_0
    return-object v0

    .line 883
    :cond_1
    new-instance v0, Lcom/amap/api/services/route/BusRouteResult;

    invoke-direct {v0}, Lcom/amap/api/services/route/BusRouteResult;-><init>()V

    .line 884
    const-string v2, "route"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 885
    const-string v2, "origin"

    invoke-static {v1, v2}, Lcom/amap/api/services/core/n;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/route/BusRouteResult;->setStartPos(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 886
    const-string v2, "destination"

    invoke-static {v1, v2}, Lcom/amap/api/services/core/n;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/route/BusRouteResult;->setTargetPos(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 888
    const-string v2, "taxi_cost"

    invoke-static {v1, v2}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/services/core/n;->j(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/route/BusRouteResult;->setTaxiCost(F)V

    .line 889
    const-string v2, "transits"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 892
    const-string v2, "transits"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 893
    invoke-static {v1}, Lcom/amap/api/services/core/n;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    .line 894
    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/BusRouteResult;->setPaths(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 895
    :catch_0
    move-exception v0

    .line 896
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1258
    if-nez p0, :cond_1

    .line 1259
    const-string v0, ""

    .line 1265
    :cond_0
    :goto_0
    return-object v0

    .line 1261
    :cond_1
    const-string v0, ""

    .line 1262
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1263
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 93
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 94
    const-string v0, "keywords"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 101
    :goto_0
    return-object v0

    .line 97
    :cond_0
    const-string v0, "keywords"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 98
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 99
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 101
    goto :goto_0
.end method

.method public static b(Lcom/amap/api/services/poisearch/PoiItemDetail;Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 502
    if-nez p1, :cond_1

    .line 537
    :cond_0
    return-void

    .line 505
    :cond_1
    const-string v0, "groupbuys"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    const-string v0, "groupbuys"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 509
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 510
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 511
    new-instance v3, Lcom/amap/api/services/poisearch/Groupbuy;

    invoke-direct {v3}, Lcom/amap/api/services/poisearch/Groupbuy;-><init>()V

    .line 512
    const-string v4, "typecode"

    invoke-static {v2, v4}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/poisearch/Groupbuy;->setTypeCode(Ljava/lang/String;)V

    .line 513
    const-string v4, "type"

    invoke-static {v2, v4}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/poisearch/Groupbuy;->setTypeDes(Ljava/lang/String;)V

    .line 514
    const-string v4, "detail"

    invoke-static {v2, v4}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/poisearch/Groupbuy;->setDetail(Ljava/lang/String;)V

    .line 515
    const-string v4, "start_time"

    invoke-static {v2, v4}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/services/core/f;->c(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 517
    invoke-virtual {v3, v4}, Lcom/amap/api/services/poisearch/Groupbuy;->setStartTime(Ljava/util/Date;)V

    .line 518
    const-string v4, "end_time"

    invoke-static {v2, v4}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/services/core/f;->c(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 520
    invoke-virtual {v3, v4}, Lcom/amap/api/services/poisearch/Groupbuy;->setEndTime(Ljava/util/Date;)V

    .line 522
    const-string v4, "num"

    invoke-static {v2, v4}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/services/core/n;->i(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/poisearch/Groupbuy;->setCount(I)V

    .line 523
    const-string v4, "sold_num"

    invoke-static {v2, v4}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/services/core/n;->i(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/poisearch/Groupbuy;->setSoldCount(I)V

    .line 524
    const-string v4, "original_price"

    invoke-static {v2, v4}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/services/core/n;->j(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/poisearch/Groupbuy;->setOriginalPrice(F)V

    .line 526
    const-string v4, "groupbuy_price"

    invoke-static {v2, v4}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/services/core/n;->j(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/poisearch/Groupbuy;->setGroupbuyPrice(F)V

    .line 528
    const-string v4, "discount"

    invoke-static {v2, v4}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/services/core/n;->j(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/poisearch/Groupbuy;->setDiscount(F)V

    .line 529
    const-string v4, "ticket_address"

    invoke-static {v2, v4}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/poisearch/Groupbuy;->setTicketAddress(Ljava/lang/String;)V

    .line 530
    const-string v4, "ticket_tel"

    invoke-static {v2, v4}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/poisearch/Groupbuy;->setTicketTel(Ljava/lang/String;)V

    .line 531
    const-string v4, "url"

    invoke-static {v2, v4}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/poisearch/Groupbuy;->setUrl(Ljava/lang/String;)V

    .line 532
    const-string v4, "provider"

    invoke-static {v2, v4}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/poisearch/Groupbuy;->setProvider(Ljava/lang/String;)V

    .line 533
    invoke-static {v3, v2}, Lcom/amap/api/services/core/n;->a(Lcom/amap/api/services/poisearch/Groupbuy;Lorg/json/JSONObject;)V

    .line 534
    invoke-virtual {p0, v3}, Lcom/amap/api/services/poisearch/PoiItemDetail;->addGroupbuy(Lcom/amap/api/services/poisearch/Groupbuy;)V

    .line 509
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public static b(Lcom/amap/api/services/poisearch/PoiItemDetail;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 361
    new-instance v0, Lcom/amap/api/services/poisearch/Cinema;

    invoke-direct {v0}, Lcom/amap/api/services/poisearch/Cinema;-><init>()V

    .line 362
    const-string v1, "intro"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Cinema;->setIntro(Ljava/lang/String;)V

    .line 363
    const-string v1, "rating"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Cinema;->setRating(Ljava/lang/String;)V

    .line 364
    const-string v1, "deepsrc"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Cinema;->setDeepsrc(Ljava/lang/String;)V

    .line 365
    const-string v1, "parking"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Cinema;->setParking(Ljava/lang/String;)V

    .line 366
    const-string v1, "opentime_GDF"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Cinema;->setOpentimeGDF(Ljava/lang/String;)V

    .line 367
    const-string v1, "opentime"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Cinema;->setOpentime(Ljava/lang/String;)V

    .line 368
    invoke-static {p1}, Lcom/amap/api/services/core/n;->l(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Cinema;->setPhotos(Ljava/util/List;)V

    .line 369
    invoke-static {p2}, Lcom/amap/api/services/core/n;->k(Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    const-string v1, "seat_ordering"

    invoke-static {p2, v1}, Lcom/amap/api/services/core/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    .line 371
    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Cinema;->setSeatOrdering(Z)V

    .line 373
    :cond_0
    sget-object v1, Lcom/amap/api/services/poisearch/PoiItemDetail$DeepType;->CINEMA:Lcom/amap/api/services/poisearch/PoiItemDetail$DeepType;

    invoke-virtual {p0, v1}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setDeepType(Lcom/amap/api/services/poisearch/PoiItemDetail$DeepType;)V

    .line 375
    invoke-virtual {p0, v0}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setCinema(Lcom/amap/api/services/poisearch/Cinema;)V

    .line 376
    return-void
.end method

.method public static b(Lorg/json/JSONArray;Lcom/amap/api/services/geocoder/RegeocodeAddress;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 763
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 764
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 765
    new-instance v2, Lcom/amap/api/services/geocoder/RegeocodeRoad;

    invoke-direct {v2}, Lcom/amap/api/services/geocoder/RegeocodeRoad;-><init>()V

    .line 766
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 767
    const-string v4, "id"

    invoke-static {v3, v4}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/geocoder/RegeocodeRoad;->setId(Ljava/lang/String;)V

    .line 768
    const-string v4, "name"

    invoke-static {v3, v4}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/geocoder/RegeocodeRoad;->setName(Ljava/lang/String;)V

    .line 769
    const-string v4, "location"

    invoke-static {v3, v4}, Lcom/amap/api/services/core/n;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/geocoder/RegeocodeRoad;->setLatLngPoint(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 771
    const-string v4, "direction"

    invoke-static {v3, v4}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/geocoder/RegeocodeRoad;->setDirection(Ljava/lang/String;)V

    .line 773
    const-string v4, "distance"

    invoke-static {v3, v4}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/services/core/n;->j(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/amap/api/services/geocoder/RegeocodeRoad;->setDistance(F)V

    .line 775
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 764
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 777
    :cond_0
    invoke-virtual {p1, v1}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setRoads(Ljava/util/List;)V

    .line 778
    return-void
.end method

.method public static c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1270
    if-nez p0, :cond_1

    .line 1277
    :cond_0
    :goto_0
    return-object v0

    .line 1273
    :cond_1
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1274
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1275
    invoke-static {v0}, Lcom/amap/api/services/core/n;->f(Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Lcom/amap/api/services/route/DriveRouteResult;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1094
    const/4 v0, 0x0

    .line 1096
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1097
    const-string v3, "route"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1157
    :cond_0
    :goto_0
    return-object v0

    .line 1100
    :cond_1
    new-instance v0, Lcom/amap/api/services/route/DriveRouteResult;

    invoke-direct {v0}, Lcom/amap/api/services/route/DriveRouteResult;-><init>()V

    .line 1101
    const-string v3, "route"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1102
    const-string v3, "origin"

    invoke-static {v1, v3}, Lcom/amap/api/services/core/n;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/services/route/DriveRouteResult;->setStartPos(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 1103
    const-string v3, "destination"

    invoke-static {v1, v3}, Lcom/amap/api/services/core/n;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/services/route/DriveRouteResult;->setTargetPos(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 1104
    const-string v3, "paths"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1107
    const-string v3, "paths"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 1108
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    .line 1109
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v3, v1, :cond_4

    .line 1110
    new-instance v6, Lcom/amap/api/services/route/DrivePath;

    invoke-direct {v6}, Lcom/amap/api/services/route/DrivePath;-><init>()V

    .line 1111
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 1112
    const-string v7, "distance"

    invoke-static {v1, v7}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amap/api/services/core/n;->j(Ljava/lang/String;)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/amap/api/services/route/DrivePath;->setDistance(F)V

    .line 1114
    const-string v7, "duration"

    invoke-static {v1, v7}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amap/api/services/core/n;->k(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/amap/api/services/route/DrivePath;->setDuration(J)V

    .line 1116
    const-string v7, "strategy"

    invoke-static {v1, v7}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/amap/api/services/route/DrivePath;->setStrategy(Ljava/lang/String;)V

    .line 1117
    const-string v7, "tolls"

    invoke-static {v1, v7}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amap/api/services/core/n;->j(Ljava/lang/String;)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/amap/api/services/route/DrivePath;->setTolls(F)V

    .line 1118
    const-string v7, "toll_distance"

    invoke-static {v1, v7}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amap/api/services/core/n;->j(Ljava/lang/String;)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/amap/api/services/route/DrivePath;->setTollDistance(F)V

    .line 1120
    const-string v7, "steps"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1121
    const-string v7, "steps"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 1122
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 1123
    :goto_2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v1, v9, :cond_2

    .line 1124
    new-instance v9, Lcom/amap/api/services/route/DriveStep;

    invoke-direct {v9}, Lcom/amap/api/services/route/DriveStep;-><init>()V

    .line 1125
    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 1126
    const-string v11, "instruction"

    invoke-static {v10, v11}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/DriveStep;->setInstruction(Ljava/lang/String;)V

    .line 1128
    const-string v11, "orientation"

    invoke-static {v10, v11}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/DriveStep;->setOrientation(Ljava/lang/String;)V

    .line 1130
    const-string v11, "road"

    invoke-static {v10, v11}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/DriveStep;->setRoad(Ljava/lang/String;)V

    .line 1131
    const-string v11, "distance"

    invoke-static {v10, v11}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/amap/api/services/core/n;->j(Ljava/lang/String;)F

    move-result v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/DriveStep;->setDistance(F)V

    .line 1133
    const-string v11, "tolls"

    invoke-static {v10, v11}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/amap/api/services/core/n;->j(Ljava/lang/String;)F

    move-result v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/DriveStep;->setTolls(F)V

    .line 1135
    const-string v11, "toll_distance"

    invoke-static {v10, v11}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/amap/api/services/core/n;->j(Ljava/lang/String;)F

    move-result v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/DriveStep;->setTollDistance(F)V

    .line 1137
    const-string v11, "toll_road"

    invoke-static {v10, v11}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/DriveStep;->setTollRoad(Ljava/lang/String;)V

    .line 1138
    const-string v11, "duration"

    invoke-static {v10, v11}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/amap/api/services/core/n;->j(Ljava/lang/String;)F

    move-result v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/DriveStep;->setDuration(F)V

    .line 1141
    const-string v11, "polyline"

    invoke-static {v10, v11}, Lcom/amap/api/services/core/n;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/DriveStep;->setPolyline(Ljava/util/List;)V

    .line 1143
    const-string v11, "action"

    invoke-static {v10, v11}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/DriveStep;->setAction(Ljava/lang/String;)V

    .line 1144
    const-string v11, "assistant_action"

    invoke-static {v10, v11}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/DriveStep;->setAssistantAction(Ljava/lang/String;)V

    .line 1146
    invoke-static {v9, v10}, Lcom/amap/api/services/core/n;->a(Lcom/amap/api/services/route/DriveStep;Lorg/json/JSONObject;)V

    .line 1147
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1123
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 1149
    :cond_2
    invoke-virtual {v6, v8}, Lcom/amap/api/services/route/DrivePath;->setSteps(Ljava/util/List;)V

    .line 1151
    :cond_3
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1109
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_1

    .line 1153
    :cond_4
    invoke-virtual {v0, v5}, Lcom/amap/api/services/route/DriveRouteResult;->setPaths(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1154
    :catch_0
    move-exception v0

    .line 1155
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/core/PoiItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 113
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 114
    if-nez p0, :cond_0

    move-object v0, v1

    .line 126
    :goto_0
    return-object v0

    .line 117
    :cond_0
    const-string v0, "pois"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 118
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v1

    .line 119
    goto :goto_0

    .line 121
    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 122
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 123
    invoke-static {v3}, Lcom/amap/api/services/core/n;->d(Lorg/json/JSONObject;)Lcom/amap/api/services/poisearch/PoiItemDetail;

    move-result-object v3

    .line 124
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 126
    goto :goto_0
.end method

.method public static c(Lcom/amap/api/services/poisearch/PoiItemDetail;Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 547
    const-string v0, "discounts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 569
    :cond_0
    return-void

    .line 550
    :cond_1
    const-string v0, "discounts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 551
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 552
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 553
    new-instance v3, Lcom/amap/api/services/poisearch/Discount;

    invoke-direct {v3}, Lcom/amap/api/services/poisearch/Discount;-><init>()V

    .line 554
    const-string v4, "title"

    invoke-static {v2, v4}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/poisearch/Discount;->setTitle(Ljava/lang/String;)V

    .line 555
    const-string v4, "detail"

    invoke-static {v2, v4}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/poisearch/Discount;->setDetail(Ljava/lang/String;)V

    .line 556
    const-string v4, "start_time"

    invoke-static {v2, v4}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/services/core/f;->c(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 558
    invoke-virtual {v3, v4}, Lcom/amap/api/services/poisearch/Discount;->setStartTime(Ljava/util/Date;)V

    .line 559
    const-string v4, "end_time"

    invoke-static {v2, v4}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/services/core/f;->c(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 561
    invoke-virtual {v3, v4}, Lcom/amap/api/services/poisearch/Discount;->setEndTime(Ljava/util/Date;)V

    .line 562
    const-string v4, "sold_num"

    invoke-static {v2, v4}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/services/core/n;->i(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/poisearch/Discount;->setSoldCount(I)V

    .line 563
    const-string v4, "url"

    invoke-static {v2, v4}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/poisearch/Discount;->setUrl(Ljava/lang/String;)V

    .line 564
    const-string v4, "provider"

    invoke-static {v2, v4}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/poisearch/Discount;->setProvider(Ljava/lang/String;)V

    .line 565
    invoke-static {v3, v2}, Lcom/amap/api/services/core/n;->a(Lcom/amap/api/services/poisearch/Discount;Lorg/json/JSONObject;)V

    .line 566
    invoke-virtual {p0, v3}, Lcom/amap/api/services/poisearch/PoiItemDetail;->addDiscount(Lcom/amap/api/services/poisearch/Discount;)V

    .line 551
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static c(Lcom/amap/api/services/poisearch/PoiItemDetail;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 380
    new-instance v0, Lcom/amap/api/services/poisearch/Hotel;

    invoke-direct {v0}, Lcom/amap/api/services/poisearch/Hotel;-><init>()V

    .line 381
    const-string v1, "star"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Hotel;->setStar(Ljava/lang/String;)V

    .line 382
    const-string v1, "intro"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Hotel;->setIntro(Ljava/lang/String;)V

    .line 383
    const-string v1, "rating"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Hotel;->setRating(Ljava/lang/String;)V

    .line 384
    const-string v1, "lowest_price"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Hotel;->setLowestPrice(Ljava/lang/String;)V

    .line 385
    const-string v1, "deepsrc"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Hotel;->setDeepsrc(Ljava/lang/String;)V

    .line 386
    const-string v1, "faci_rating"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Hotel;->setFaciRating(Ljava/lang/String;)V

    .line 387
    const-string v1, "health_rating"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Hotel;->setHealthRating(Ljava/lang/String;)V

    .line 388
    const-string v1, "environment_rating"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Hotel;->setEnvironmentRating(Ljava/lang/String;)V

    .line 389
    const-string v1, "service_rating"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Hotel;->setServiceRating(Ljava/lang/String;)V

    .line 390
    const-string v1, "traffic"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Hotel;->setTraffic(Ljava/lang/String;)V

    .line 391
    const-string v1, "addition"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Hotel;->setAddition(Ljava/lang/String;)V

    .line 392
    invoke-static {p1}, Lcom/amap/api/services/core/n;->l(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Hotel;->setPhotos(Ljava/util/List;)V

    .line 393
    sget-object v1, Lcom/amap/api/services/poisearch/PoiItemDetail$DeepType;->HOTEL:Lcom/amap/api/services/poisearch/PoiItemDetail$DeepType;

    invoke-virtual {p0, v1}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setDeepType(Lcom/amap/api/services/poisearch/PoiItemDetail$DeepType;)V

    .line 394
    invoke-virtual {p0, v0}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setHotel(Lcom/amap/api/services/poisearch/Hotel;)V

    .line 395
    return-void
.end method

.method public static c(Lorg/json/JSONArray;Lcom/amap/api/services/geocoder/RegeocodeAddress;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 782
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 783
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 784
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 785
    new-instance v3, Lcom/amap/api/services/core/PoiItem;

    const-string v4, "id"

    invoke-static {v2, v4}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "location"

    invoke-static {v2, v5}, Lcom/amap/api/services/core/n;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v5

    const-string v6, "name"

    invoke-static {v2, v6}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/services/core/PoiItem;-><init>(Ljava/lang/String;Lcom/amap/api/services/core/LatLonPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    const-string v4, "direction"

    invoke-static {v2, v4}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/core/PoiItem;->setDirection(Ljava/lang/String;)V

    .line 789
    const-string v4, "distance"

    invoke-static {v2, v4}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/services/core/n;->i(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/core/PoiItem;->setDistance(I)V

    .line 790
    const-string v4, "tel"

    invoke-static {v2, v4}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/core/PoiItem;->setTel(Ljava/lang/String;)V

    .line 791
    const-string v4, "type"

    invoke-static {v2, v4}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/amap/api/services/core/PoiItem;->setTypeDes(Ljava/lang/String;)V

    .line 792
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 783
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 794
    :cond_0
    invoke-virtual {p1, v1}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setPois(Ljava/util/List;)V

    .line 795
    return-void
.end method

.method public static d(Lorg/json/JSONObject;)Lcom/amap/api/services/poisearch/PoiItemDetail;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 137
    const-string v0, "id"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    const-string v1, "location"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/n;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    .line 139
    const-string v2, "name"

    invoke-static {p0, v2}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 140
    const-string v3, "address"

    invoke-static {p0, v3}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 141
    new-instance v4, Lcom/amap/api/services/poisearch/PoiItemDetail;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/amap/api/services/poisearch/PoiItemDetail;-><init>(Ljava/lang/String;Lcom/amap/api/services/core/LatLonPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v0, "adcode"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setAdCode(Ljava/lang/String;)V

    .line 143
    const-string v0, "pname"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setProvinceName(Ljava/lang/String;)V

    .line 144
    const-string v0, "cityname"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setCityName(Ljava/lang/String;)V

    .line 145
    const-string v0, "adname"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setAdName(Ljava/lang/String;)V

    .line 146
    const-string v0, "citycode"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setCityCode(Ljava/lang/String;)V

    .line 147
    const-string v0, "pcode"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setProvinceCode(Ljava/lang/String;)V

    .line 148
    const-string v0, "distance"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    const-string v0, "distance"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-static {v0}, Lcom/amap/api/services/core/n;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setDistance(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    invoke-virtual {v4}, Lcom/amap/api/services/poisearch/PoiItemDetail;->getDistance()I

    move-result v0

    if-nez v0, :cond_0

    .line 158
    const/4 v0, -0x1

    invoke-virtual {v4, v0}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setDistance(I)V

    .line 162
    :cond_0
    const-string v0, "tel"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setTel(Ljava/lang/String;)V

    .line 172
    const-string v0, "type"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setTypeDes(Ljava/lang/String;)V

    .line 173
    const-string v0, "entr_location"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/n;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setEnter(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 174
    const-string v0, "exit_location"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/n;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setExit(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 175
    const-string v0, "website"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setWebsite(Ljava/lang/String;)V

    .line 176
    const-string v0, "citycode"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setPostcode(Ljava/lang/String;)V

    .line 177
    const-string v0, "email"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setEmail(Ljava/lang/String;)V

    .line 178
    const-string v0, "groupbuy_num"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-static {v0}, Lcom/amap/api/services/core/n;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {v4, v5}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setGroupbuyInfo(Z)V

    .line 184
    :goto_1
    const-string v0, "discount_num"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-static {v0}, Lcom/amap/api/services/core/n;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    invoke-virtual {v4, v5}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setDiscountInfo(Z)V

    .line 190
    :goto_2
    const-string v0, "indoor_map"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-static {v0}, Lcom/amap/api/services/core/n;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 192
    invoke-virtual {v4, v5}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setIndoorMap(Z)V

    .line 196
    :goto_3
    return-object v4

    .line 154
    :catch_0
    move-exception v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 182
    :cond_1
    invoke-virtual {v4, v6}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setGroupbuyInfo(Z)V

    goto :goto_1

    .line 188
    :cond_2
    invoke-virtual {v4, v6}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setDiscountInfo(Z)V

    goto :goto_2

    .line 194
    :cond_3
    invoke-virtual {v4, v6}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setIndoorMap(Z)V

    goto :goto_3

    .line 153
    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method public static d(Ljava/lang/String;)Lcom/amap/api/services/route/WalkRouteResult;
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 1204
    const/4 v1, 0x0

    .line 1206
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1207
    const-string v0, "route"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    .line 1253
    :cond_0
    :goto_0
    return-object v0

    .line 1210
    :cond_1
    new-instance v0, Lcom/amap/api/services/route/WalkRouteResult;

    invoke-direct {v0}, Lcom/amap/api/services/route/WalkRouteResult;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1211
    :try_start_1
    const-string v1, "route"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1212
    const-string v3, "origin"

    invoke-static {v1, v3}, Lcom/amap/api/services/core/n;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/services/route/WalkRouteResult;->setStartPos(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 1213
    const-string v3, "destination"

    invoke-static {v1, v3}, Lcom/amap/api/services/core/n;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/services/route/WalkRouteResult;->setTargetPos(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 1214
    const-string v3, "paths"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1217
    const-string v3, "paths"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 1218
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    .line 1219
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v3, v1, :cond_4

    .line 1220
    new-instance v6, Lcom/amap/api/services/route/WalkPath;

    invoke-direct {v6}, Lcom/amap/api/services/route/WalkPath;-><init>()V

    .line 1221
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 1222
    const-string v7, "distance"

    invoke-static {v1, v7}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amap/api/services/core/n;->j(Ljava/lang/String;)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/amap/api/services/route/WalkPath;->setDistance(F)V

    .line 1223
    const-string v7, "duration"

    invoke-static {v1, v7}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amap/api/services/core/n;->k(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/amap/api/services/route/WalkPath;->setDuration(J)V

    .line 1224
    const-string v7, "steps"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1225
    const-string v7, "steps"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 1226
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 1227
    :goto_2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v1, v9, :cond_2

    .line 1228
    new-instance v9, Lcom/amap/api/services/route/WalkStep;

    invoke-direct {v9}, Lcom/amap/api/services/route/WalkStep;-><init>()V

    .line 1229
    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 1230
    const-string v11, "instruction"

    invoke-static {v10, v11}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/WalkStep;->setInstruction(Ljava/lang/String;)V

    .line 1232
    const-string v11, "orientation"

    invoke-static {v10, v11}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/WalkStep;->setOrientation(Ljava/lang/String;)V

    .line 1234
    const-string v11, "road"

    invoke-static {v10, v11}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/WalkStep;->setRoad(Ljava/lang/String;)V

    .line 1235
    const-string v11, "distance"

    invoke-static {v10, v11}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/amap/api/services/core/n;->j(Ljava/lang/String;)F

    move-result v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/WalkStep;->setDistance(F)V

    .line 1237
    const-string v11, "duration"

    invoke-static {v10, v11}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/amap/api/services/core/n;->j(Ljava/lang/String;)F

    move-result v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/WalkStep;->setDuration(F)V

    .line 1239
    const-string v11, "polyline"

    invoke-static {v10, v11}, Lcom/amap/api/services/core/n;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/WalkStep;->setPolyline(Ljava/util/List;)V

    .line 1240
    const-string v11, "action"

    invoke-static {v10, v11}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/WalkStep;->setAction(Ljava/lang/String;)V

    .line 1241
    const-string v11, "assistant_action"

    invoke-static {v10, v11}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/amap/api/services/route/WalkStep;->setAssistantAction(Ljava/lang/String;)V

    .line 1243
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1227
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1245
    :cond_2
    invoke-virtual {v6, v8}, Lcom/amap/api/services/route/WalkPath;->setSteps(Ljava/util/List;)V

    .line 1247
    :cond_3
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1219
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_1

    .line 1249
    :cond_4
    invoke-virtual {v0, v5}, Lcom/amap/api/services/route/WalkRouteResult;->setPaths(Ljava/util/List;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1251
    :catch_0
    move-exception v1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto/16 :goto_0
.end method

.method public static d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1282
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1283
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/core/n;->e(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1285
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Lcom/amap/api/services/poisearch/PoiItemDetail;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 399
    new-instance v0, Lcom/amap/api/services/poisearch/Dining;

    invoke-direct {v0}, Lcom/amap/api/services/poisearch/Dining;-><init>()V

    .line 400
    const-string v1, "cuisines"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Dining;->setCuisines(Ljava/lang/String;)V

    .line 401
    const-string v1, "tag"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Dining;->setTag(Ljava/lang/String;)V

    .line 402
    const-string v1, "intro"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Dining;->setIntro(Ljava/lang/String;)V

    .line 403
    const-string v1, "rating"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Dining;->setRating(Ljava/lang/String;)V

    .line 404
    const-string v1, "cp_rating"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Dining;->setCpRating(Ljava/lang/String;)V

    .line 405
    const-string v1, "deepsrc"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Dining;->setDeepsrc(Ljava/lang/String;)V

    .line 406
    const-string v1, "taste_rating"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Dining;->setTasteRating(Ljava/lang/String;)V

    .line 407
    const-string v1, "environment_rating"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Dining;->setEnvironmentRating(Ljava/lang/String;)V

    .line 408
    const-string v1, "service_rating"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Dining;->setServiceRating(Ljava/lang/String;)V

    .line 409
    const-string v1, "cost"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Dining;->setCost(Ljava/lang/String;)V

    .line 410
    const-string v1, "recommend"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Dining;->setRecommend(Ljava/lang/String;)V

    .line 411
    const-string v1, "atmosphere"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Dining;->setAtmosphere(Ljava/lang/String;)V

    .line 412
    const-string v1, "ordering_wap_url"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Dining;->setOrderingWapUrl(Ljava/lang/String;)V

    .line 413
    const-string v1, "ordering_web_url"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Dining;->setOrderingWebUrl(Ljava/lang/String;)V

    .line 414
    const-string v1, "ordering_app_url"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Dining;->setOrderinAppUrl(Ljava/lang/String;)V

    .line 415
    const-string v1, "opentime_GDF"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Dining;->setOpentimeGDF(Ljava/lang/String;)V

    .line 416
    const-string v1, "opentime"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Dining;->setOpentime(Ljava/lang/String;)V

    .line 417
    const-string v1, "addition"

    invoke-static {p1, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Dining;->setAddition(Ljava/lang/String;)V

    .line 418
    invoke-static {p1}, Lcom/amap/api/services/core/n;->l(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Dining;->setPhotos(Ljava/util/List;)V

    .line 419
    invoke-static {p2}, Lcom/amap/api/services/core/n;->k(Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    const-string v1, "meal_ordering"

    invoke-static {p2, v1}, Lcom/amap/api/services/core/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    .line 421
    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Dining;->setMealOrdering(Z)V

    .line 423
    :cond_0
    sget-object v1, Lcom/amap/api/services/poisearch/PoiItemDetail$DeepType;->DINING:Lcom/amap/api/services/poisearch/PoiItemDetail$DeepType;

    invoke-virtual {p0, v1}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setDeepType(Lcom/amap/api/services/poisearch/PoiItemDetail$DeepType;)V

    .line 424
    invoke-virtual {p0, v0}, Lcom/amap/api/services/poisearch/PoiItemDetail;->setDining(Lcom/amap/api/services/poisearch/Dining;)V

    .line 426
    return-void
.end method

.method public static e(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1289
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1290
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1291
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 1292
    aget-object v3, v2, v0

    invoke-static {v3}, Lcom/amap/api/services/core/n;->f(Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1291
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1294
    :cond_0
    return-object v1
.end method

.method public static e(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/busline/BusStationItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 208
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 209
    if-nez p0, :cond_0

    move-object v0, v1

    .line 220
    :goto_0
    return-object v0

    .line 212
    :cond_0
    const-string v0, "busstops"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 213
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v1

    .line 214
    goto :goto_0

    .line 216
    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 217
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 218
    invoke-static {v3}, Lcom/amap/api/services/core/n;->f(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusStationItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 220
    goto :goto_0
.end method

.method public static e(Lcom/amap/api/services/poisearch/PoiItemDetail;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 430
    if-nez p1, :cond_1

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    const-string v0, "type"

    invoke-static {p1, v0}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 434
    const-string v1, "hotel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 435
    invoke-static {p0, p1, p2}, Lcom/amap/api/services/core/n;->c(Lcom/amap/api/services/poisearch/PoiItemDetail;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 437
    :cond_2
    const-string v1, "dining"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 438
    invoke-static {p0, p1, p2}, Lcom/amap/api/services/core/n;->d(Lcom/amap/api/services/poisearch/PoiItemDetail;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 440
    :cond_3
    const-string v1, "cinema"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 441
    invoke-static {p0, p1, p2}, Lcom/amap/api/services/core/n;->b(Lcom/amap/api/services/poisearch/PoiItemDetail;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 444
    :cond_4
    const-string v1, "scenic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    invoke-static {p0, p1, p2}, Lcom/amap/api/services/core/n;->a(Lcom/amap/api/services/poisearch/PoiItemDetail;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/amap/api/services/poisearch/Scenic;

    goto :goto_0
.end method

.method public static f(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusStationItem;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 232
    invoke-static {p0}, Lcom/amap/api/services/core/n;->g(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusStationItem;

    move-result-object v1

    .line 233
    const-string v0, "adcode"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/busline/BusStationItem;->setAdCode(Ljava/lang/String;)V

    .line 234
    const-string v0, "citycode"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/busline/BusStationItem;->setCityCode(Ljava/lang/String;)V

    .line 235
    const-string v0, "buslines"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 236
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 237
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 238
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/services/core/n;->h(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusLineItem;

    move-result-object v4

    .line 240
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {v1, v3}, Lcom/amap/api/services/busline/BusStationItem;->setBusLineItems(Ljava/util/List;)V

    .line 243
    return-object v1
.end method

.method public static f(Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1298
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "[]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1309
    :cond_0
    :goto_0
    return-object v0

    .line 1303
    :cond_1
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1304
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1307
    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 1308
    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 1309
    new-instance v0, Lcom/amap/api/services/core/LatLonPoint;

    invoke-direct {v0, v4, v5, v2, v3}, Lcom/amap/api/services/core/LatLonPoint;-><init>(DD)V

    goto :goto_0
.end method

.method public static g(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusStationItem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 255
    new-instance v0, Lcom/amap/api/services/busline/BusStationItem;

    invoke-direct {v0}, Lcom/amap/api/services/busline/BusStationItem;-><init>()V

    .line 256
    const-string v1, "id"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusStationItem;->setBusStationId(Ljava/lang/String;)V

    .line 257
    const-string v1, "location"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/n;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusStationItem;->setLatLonPoint(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 258
    const-string v1, "name"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusStationItem;->setBusStationName(Ljava/lang/String;)V

    .line 259
    return-object v0
.end method

.method public static g(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1313
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1314
    :cond_0
    const/4 v0, 0x1

    .line 1316
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static h(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusLineItem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 271
    new-instance v0, Lcom/amap/api/services/busline/BusLineItem;

    invoke-direct {v0}, Lcom/amap/api/services/busline/BusLineItem;-><init>()V

    .line 272
    const-string v1, "id"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusLineItem;->setBusLineId(Ljava/lang/String;)V

    .line 273
    const-string v1, "type"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusLineItem;->setBusLineType(Ljava/lang/String;)V

    .line 274
    const-string v1, "name"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusLineItem;->setBusLineName(Ljava/lang/String;)V

    .line 275
    const-string v1, "polyline"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/n;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusLineItem;->setDirectionsCoordinates(Ljava/util/List;)V

    .line 276
    const-string v1, "citycode"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusLineItem;->setCityCode(Ljava/lang/String;)V

    .line 277
    const-string v1, "start_stop"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusLineItem;->setOriginatingStation(Ljava/lang/String;)V

    .line 278
    const-string v1, "end_stop"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusLineItem;->setTerminalStation(Ljava/lang/String;)V

    .line 279
    return-object v0
.end method

.method public static h(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1320
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1321
    :cond_0
    const/4 v0, 0x1

    .line 1323
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 1328
    const/4 v0, 0x0

    .line 1329
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "[]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1336
    :cond_0
    :goto_0
    return v0

    .line 1333
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1334
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static i(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/busline/BusLineItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 291
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 292
    const-string v0, "buslines"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 293
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 294
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 299
    invoke-static {v3}, Lcom/amap/api/services/core/n;->j(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusLineItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 301
    :cond_0
    return-object v1
.end method

.method public static j(Ljava/lang/String;)F
    .locals 2

    .prologue
    .line 1340
    const/4 v0, 0x0

    .line 1341
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "[]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1349
    :cond_0
    :goto_0
    return v0

    .line 1345
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1346
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static j(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusLineItem;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 313
    invoke-static {p0}, Lcom/amap/api/services/core/n;->h(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusLineItem;

    move-result-object v1

    .line 314
    const-string v0, "start_time"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/core/f;->d(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/busline/BusLineItem;->setFirstBusTime(Ljava/util/Date;)V

    .line 316
    const-string v0, "end_time"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/core/f;->d(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/busline/BusLineItem;->setLastBusTime(Ljava/util/Date;)V

    .line 318
    const-string v0, "company"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/busline/BusLineItem;->setBusCompany(Ljava/lang/String;)V

    .line 319
    const-string v0, "distance"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/core/n;->j(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/busline/BusLineItem;->setDistance(F)V

    .line 320
    const-string v0, "basic_price"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/core/n;->j(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/busline/BusLineItem;->setBasicPrice(F)V

    .line 321
    const-string v0, "total_price"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/core/n;->j(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/busline/BusLineItem;->setTotalPrice(F)V

    .line 322
    const-string v0, "bounds"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/n;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/busline/BusLineItem;->setBounds(Ljava/util/List;)V

    .line 323
    const-string v0, "busstops"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 324
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 325
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 326
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/services/core/n;->g(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusStationItem;

    move-result-object v4

    .line 328
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 330
    :cond_0
    invoke-virtual {v1, v3}, Lcom/amap/api/services/busline/BusLineItem;->setBusStations(Ljava/util/List;)V

    .line 331
    return-object v1
.end method

.method public static k(Ljava/lang/String;)J
    .locals 3

    .prologue
    .line 1353
    const-wide/16 v0, 0x0

    .line 1354
    if-eqz p0, :cond_0

    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "[]"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1362
    :cond_0
    :goto_0
    return-wide v0

    .line 1358
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 1359
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static k(Lorg/json/JSONObject;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 477
    if-nez p0, :cond_1

    .line 483
    :cond_0
    :goto_0
    return v0

    .line 480
    :cond_1
    const-string v1, "biz_ext"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 481
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static l(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/poisearch/Photo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 577
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 578
    if-nez p0, :cond_1

    .line 596
    :cond_0
    :goto_0
    return-object v0

    .line 581
    :cond_1
    const-string v1, "photos"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 585
    :try_start_0
    const-string v1, "photos"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 586
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 587
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 588
    new-instance v4, Lcom/amap/api/services/poisearch/Photo;

    invoke-direct {v4}, Lcom/amap/api/services/poisearch/Photo;-><init>()V

    .line 589
    const-string v5, "title"

    invoke-static {v3, v5}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/poisearch/Photo;->setTitle(Ljava/lang/String;)V

    .line 590
    const-string v5, "url"

    invoke-static {v3, v5}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/amap/api/services/poisearch/Photo;->setUrl(Ljava/lang/String;)V

    .line 591
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 593
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static l(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1366
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "[]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1373
    :cond_0
    :goto_0
    return v0

    .line 1370
    :cond_1
    const-string v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1371
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static m(Lorg/json/JSONObject;)Lcom/amap/api/services/district/DistrictItem;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 608
    new-instance v0, Lcom/amap/api/services/district/DistrictItem;

    invoke-direct {v0}, Lcom/amap/api/services/district/DistrictItem;-><init>()V

    .line 609
    const-string v1, "citycode"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/district/DistrictItem;->setCitycode(Ljava/lang/String;)V

    .line 610
    const-string v1, "adcode"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/district/DistrictItem;->setAdcode(Ljava/lang/String;)V

    .line 611
    const-string v1, "name"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/district/DistrictItem;->setName(Ljava/lang/String;)V

    .line 612
    const-string v1, "level"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/district/DistrictItem;->setLevel(Ljava/lang/String;)V

    .line 613
    const-string v1, "center"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/n;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/district/DistrictItem;->setCenter(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 615
    const-string v1, "districts"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 616
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 617
    invoke-static {v1, v2, v0}, Lcom/amap/api/services/core/n;->a(Lorg/json/JSONArray;Ljava/util/ArrayList;Lcom/amap/api/services/district/DistrictItem;)V

    .line 618
    return-object v0
.end method

.method public static n(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/geocoder/GeocodeAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 654
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 655
    if-nez p0, :cond_0

    move-object v0, v1

    .line 683
    :goto_0
    return-object v0

    .line 658
    :cond_0
    const-string v0, "geocodes"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 659
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v1

    .line 660
    goto :goto_0

    .line 662
    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 663
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 665
    new-instance v4, Lcom/amap/api/services/geocoder/GeocodeAddress;

    invoke-direct {v4}, Lcom/amap/api/services/geocoder/GeocodeAddress;-><init>()V

    .line 666
    const-string v5, "formatted_address"

    invoke-static {v3, v5}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/geocoder/GeocodeAddress;->setFormatAddress(Ljava/lang/String;)V

    .line 667
    const-string v5, "province"

    invoke-static {v3, v5}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/geocoder/GeocodeAddress;->setProvince(Ljava/lang/String;)V

    .line 668
    const-string v5, "city"

    invoke-static {v3, v5}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/geocoder/GeocodeAddress;->setCity(Ljava/lang/String;)V

    .line 669
    const-string v5, "district"

    invoke-static {v3, v5}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/geocoder/GeocodeAddress;->setDistrict(Ljava/lang/String;)V

    .line 670
    const-string v5, "township"

    invoke-static {v3, v5}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/geocoder/GeocodeAddress;->setTownship(Ljava/lang/String;)V

    .line 672
    const-string v5, "neighborhood"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 673
    const-string v6, "name"

    invoke-static {v5, v6}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/geocoder/GeocodeAddress;->setNeighborhood(Ljava/lang/String;)V

    .line 675
    const-string v5, "building"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 676
    const-string v6, "name"

    invoke-static {v5, v6}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/geocoder/GeocodeAddress;->setBuilding(Ljava/lang/String;)V

    .line 678
    const-string v5, "adcode"

    invoke-static {v3, v5}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/geocoder/GeocodeAddress;->setAdcode(Ljava/lang/String;)V

    .line 679
    const-string v5, "location"

    invoke-static {v3, v5}, Lcom/amap/api/services/core/n;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/geocoder/GeocodeAddress;->setLatLonPoint(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 680
    const-string v5, "level"

    invoke-static {v3, v5}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/amap/api/services/geocoder/GeocodeAddress;->setLevel(Ljava/lang/String;)V

    .line 681
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 662
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 683
    goto/16 :goto_0
.end method

.method public static o(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/help/Tip;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 726
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 727
    const-string v0, "tips"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 728
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 729
    new-instance v3, Lcom/amap/api/services/help/Tip;

    invoke-direct {v3}, Lcom/amap/api/services/help/Tip;-><init>()V

    .line 730
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 731
    const-string v5, "name"

    invoke-static {v4, v5}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/amap/api/services/help/Tip;->setName(Ljava/lang/String;)V

    .line 732
    const-string v5, "district"

    invoke-static {v4, v5}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/amap/api/services/help/Tip;->setDistrict(Ljava/lang/String;)V

    .line 733
    const-string v5, "adcode"

    invoke-static {v4, v5}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/help/Tip;->setAdcode(Ljava/lang/String;)V

    .line 734
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 728
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 736
    :cond_0
    return-object v1
.end method

.method public static p(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/geocoder/BusinessArea;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 829
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 830
    const-string v0, "businessAreas"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 831
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 844
    :goto_0
    return-object v0

    .line 834
    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 835
    new-instance v3, Lcom/amap/api/services/geocoder/BusinessArea;

    invoke-direct {v3}, Lcom/amap/api/services/geocoder/BusinessArea;-><init>()V

    .line 836
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 837
    if-nez v4, :cond_2

    .line 834
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 840
    :cond_2
    const-string v5, "location"

    invoke-static {v4, v5}, Lcom/amap/api/services/core/n;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/amap/api/services/geocoder/BusinessArea;->setCenterPoint(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 841
    const-string v5, "name"

    invoke-static {v4, v5}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/geocoder/BusinessArea;->setName(Ljava/lang/String;)V

    .line 842
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 844
    goto :goto_0
.end method

.method public static q(Lorg/json/JSONObject;)Lcom/amap/api/services/route/BusStep;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 947
    new-instance v0, Lcom/amap/api/services/route/BusStep;

    invoke-direct {v0}, Lcom/amap/api/services/route/BusStep;-><init>()V

    .line 948
    const-string v1, "walking"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 950
    :try_start_0
    const-string v1, "walking"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 951
    invoke-static {v1}, Lcom/amap/api/services/core/n;->r(Lorg/json/JSONObject;)Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/BusStep;->setWalk(Lcom/amap/api/services/route/RouteBusWalkItem;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 955
    :cond_0
    :goto_0
    const-string v1, "bus"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 956
    const-string v1, "bus"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 957
    invoke-static {v1}, Lcom/amap/api/services/core/n;->s(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/BusStep;->setBusLines(Ljava/util/List;)V

    .line 959
    :cond_1
    const-string v1, "entrance"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 961
    :try_start_1
    const-string v1, "entrance"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 962
    invoke-static {v1}, Lcom/amap/api/services/core/n;->t(Lorg/json/JSONObject;)Lcom/amap/api/services/route/Doorway;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/BusStep;->setEntrance(Lcom/amap/api/services/route/Doorway;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 967
    :cond_2
    :goto_1
    const-string v1, "exit"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 969
    :try_start_2
    const-string v1, "exit"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 970
    invoke-static {v1}, Lcom/amap/api/services/core/n;->t(Lorg/json/JSONObject;)Lcom/amap/api/services/route/Doorway;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/BusStep;->setExit(Lcom/amap/api/services/route/Doorway;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 974
    :cond_3
    :goto_2
    return-object v0

    .line 971
    :catch_0
    move-exception v1

    goto :goto_2

    .line 963
    :catch_1
    move-exception v1

    goto :goto_1

    .line 952
    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public static r(Lorg/json/JSONObject;)Lcom/amap/api/services/route/RouteBusWalkItem;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 979
    new-instance v1, Lcom/amap/api/services/route/RouteBusWalkItem;

    invoke-direct {v1}, Lcom/amap/api/services/route/RouteBusWalkItem;-><init>()V

    .line 980
    const-string v0, "origin"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/n;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/route/RouteBusWalkItem;->setOrigin(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 981
    const-string v0, "destination"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/n;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/route/RouteBusWalkItem;->setDestination(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 982
    const-string v0, "distance"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/core/n;->j(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/route/RouteBusWalkItem;->setDistance(F)V

    .line 983
    const-string v0, "duration"

    invoke-static {p0, v0}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/core/n;->k(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/amap/api/services/route/RouteBusWalkItem;->setDuration(J)V

    .line 984
    const-string v0, "steps"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 995
    :goto_0
    return-object v0

    .line 987
    :cond_0
    const-string v0, "steps"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 988
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 989
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 990
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 991
    invoke-static {v4}, Lcom/amap/api/services/core/n;->u(Lorg/json/JSONObject;)Lcom/amap/api/services/route/WalkStep;

    move-result-object v4

    .line 992
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 989
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 994
    :cond_1
    invoke-virtual {v1, v3}, Lcom/amap/api/services/route/RouteBusWalkItem;->setSteps(Ljava/util/List;)V

    move-object v0, v1

    .line 995
    goto :goto_0
.end method

.method public static s(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/route/RouteBusLineItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1000
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1001
    const-string v0, "buslines"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 1010
    :goto_0
    return-object v0

    .line 1004
    :cond_0
    const-string v0, "buslines"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1005
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1006
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1007
    invoke-static {v3}, Lcom/amap/api/services/core/n;->v(Lorg/json/JSONObject;)Lcom/amap/api/services/route/RouteBusLineItem;

    move-result-object v3

    .line 1008
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1005
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 1010
    goto :goto_0
.end method

.method public static t(Lorg/json/JSONObject;)Lcom/amap/api/services/route/Doorway;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1014
    new-instance v0, Lcom/amap/api/services/route/Doorway;

    invoke-direct {v0}, Lcom/amap/api/services/route/Doorway;-><init>()V

    .line 1015
    const-string v1, "name"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/Doorway;->setName(Ljava/lang/String;)V

    .line 1016
    const-string v1, "location"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/n;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/Doorway;->setLatLonPoint(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 1017
    return-object v0
.end method

.method public static u(Lorg/json/JSONObject;)Lcom/amap/api/services/route/WalkStep;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1021
    new-instance v0, Lcom/amap/api/services/route/WalkStep;

    invoke-direct {v0}, Lcom/amap/api/services/route/WalkStep;-><init>()V

    .line 1022
    const-string v1, "instruction"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/WalkStep;->setInstruction(Ljava/lang/String;)V

    .line 1023
    const-string v1, "orientation"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/WalkStep;->setOrientation(Ljava/lang/String;)V

    .line 1024
    const-string v1, "road"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/WalkStep;->setRoad(Ljava/lang/String;)V

    .line 1025
    const-string v1, "distance"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/core/n;->j(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/WalkStep;->setDistance(F)V

    .line 1026
    const-string v1, "duration"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/core/n;->j(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/WalkStep;->setDuration(F)V

    .line 1027
    const-string v1, "polyline"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/n;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/WalkStep;->setPolyline(Ljava/util/List;)V

    .line 1028
    const-string v1, "action"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/WalkStep;->setAction(Ljava/lang/String;)V

    .line 1029
    const-string v1, "assistant_action"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/WalkStep;->setAssistantAction(Ljava/lang/String;)V

    .line 1030
    return-object v0
.end method

.method public static v(Lorg/json/JSONObject;)Lcom/amap/api/services/route/RouteBusLineItem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1035
    new-instance v0, Lcom/amap/api/services/route/RouteBusLineItem;

    invoke-direct {v0}, Lcom/amap/api/services/route/RouteBusLineItem;-><init>()V

    .line 1036
    const-string v1, "departure_stop"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1037
    const-string v1, "departure_stop"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/core/n;->x(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusStationItem;

    move-result-object v1

    .line 1039
    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteBusLineItem;->setDepartureBusStation(Lcom/amap/api/services/busline/BusStationItem;)V

    .line 1041
    :cond_0
    const-string v1, "arrival_stop"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1042
    const-string v1, "arrival_stop"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/core/n;->x(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusStationItem;

    move-result-object v1

    .line 1044
    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteBusLineItem;->setArrivalBusStation(Lcom/amap/api/services/busline/BusStationItem;)V

    .line 1046
    :cond_1
    const-string v1, "name"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteBusLineItem;->setBusLineName(Ljava/lang/String;)V

    .line 1047
    const-string v1, "id"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteBusLineItem;->setBusLineId(Ljava/lang/String;)V

    .line 1048
    const-string v1, "type"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteBusLineItem;->setBusLineType(Ljava/lang/String;)V

    .line 1049
    const-string v1, "distance"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/core/n;->j(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteBusLineItem;->setDistance(F)V

    .line 1050
    const-string v1, "duration"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/core/n;->j(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteBusLineItem;->setDuration(F)V

    .line 1051
    const-string v1, "polyline"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/n;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteBusLineItem;->setPolyline(Ljava/util/List;)V

    .line 1052
    const-string v1, "start_time"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/core/f;->d(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteBusLineItem;->setFirstBusTime(Ljava/util/Date;)V

    .line 1054
    const-string v1, "end_time"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/core/f;->d(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteBusLineItem;->setLastBusTime(Ljava/util/Date;)V

    .line 1056
    const-string v1, "via_num"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/core/n;->i(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteBusLineItem;->setPassStationNum(I)V

    .line 1057
    invoke-static {p0}, Lcom/amap/api/services/core/n;->w(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteBusLineItem;->setPassStations(Ljava/util/List;)V

    .line 1058
    return-object v0
.end method

.method public static w(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/busline/BusStationItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1063
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1064
    const-string v0, "via_stops"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 1073
    :goto_0
    return-object v0

    .line 1067
    :cond_0
    const-string v0, "via_stops"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1068
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1069
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1070
    invoke-static {v3}, Lcom/amap/api/services/core/n;->x(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusStationItem;

    move-result-object v3

    .line 1071
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1068
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 1073
    goto :goto_0
.end method

.method public static x(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusStationItem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1078
    new-instance v0, Lcom/amap/api/services/busline/BusStationItem;

    invoke-direct {v0}, Lcom/amap/api/services/busline/BusStationItem;-><init>()V

    .line 1079
    const-string v1, "name"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusStationItem;->setBusStationName(Ljava/lang/String;)V

    .line 1080
    const-string v1, "id"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusStationItem;->setBusStationId(Ljava/lang/String;)V

    .line 1081
    const-string v1, "location"

    invoke-static {p0, v1}, Lcom/amap/api/services/core/n;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusStationItem;->setLatLonPoint(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 1082
    return-object v0
.end method
