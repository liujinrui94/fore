.class public Lcom/cai88/tools/uitl/ActivityReflectHelper;
.super Ljava/lang/Object;
.source "ActivityReflectHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cai88/tools/uitl/ActivityReflectHelper$ActivityReflectInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .param p0, "classname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 16
    const/4 v1, 0x0

    .line 18
    .local v1, "mClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 22
    :goto_0
    return-object v1

    .line 19
    :catch_0
    move-exception v0

    .line 20
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ActivityReflectHelper getClass e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cai88/tools/uitl/Common;->Log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static myTest(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    const-string v4, "{\"className\":\"com.cai88.tools.shishicai.MoreActivity\",\"param\":{\"param1\":\"hahaha\",\"param2\":23,\"param3\":5.0,\"param4\":true,\"param5\":{\"token\":\"aaaabbbb\",\"money\":99.0,\"points\":28}}}"

    .line 56
    .local v4, "jsonString":Ljava/lang/String;
    const-string v0, ""

    .line 57
    .local v0, "className":Ljava/lang/String;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 59
    .local v7, "paramMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 60
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v8, "className"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    const-string v8, "param"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 62
    .local v6, "paramJsonObject":Lorg/json/JSONObject;
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 63
    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-nez v8, :cond_0

    .line 70
    .end local v2    # "it":Ljava/util/Iterator;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "paramJsonObject":Lorg/json/JSONObject;
    :goto_1
    invoke-static {p0, v0, v7}, Lcom/cai88/tools/uitl/ActivityReflectHelper;->reflectToActivity(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 71
    return-void

    .line 64
    .restart local v2    # "it":Ljava/util/Iterator;
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v6    # "paramJsonObject":Lorg/json/JSONObject;
    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 65
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 67
    .end local v2    # "it":Ljava/util/Iterator;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "paramJsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 68
    .local v1, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "json e:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/cai88/tools/uitl/Common;->Log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static reflectToActivity(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "classname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "bundleMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 27
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p2, :cond_0

    .line 28
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "bundle":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 29
    .restart local v0    # "bundle":Landroid/os/Bundle;
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 50
    :cond_0
    invoke-static {p1}, Lcom/cai88/tools/uitl/ActivityReflectHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-static {p0, v4, v0}, Lcom/cai88/tools/uitl/Common;->toActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 51
    return-void

    .line 29
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 30
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 31
    .local v2, "mapkey":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 32
    .local v3, "object":Ljava/lang/Object;
    instance-of v5, v3, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 33
    check-cast v3, Ljava/lang/Integer;

    .end local v3    # "object":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 34
    .restart local v3    # "object":Ljava/lang/Object;
    :cond_2
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 35
    check-cast v3, Ljava/lang/String;

    .end local v3    # "object":Ljava/lang/Object;
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 36
    .restart local v3    # "object":Ljava/lang/Object;
    :cond_3
    instance-of v5, v3, Ljava/lang/Double;

    if-eqz v5, :cond_4

    .line 38
    check-cast v3, Ljava/lang/Double;

    .end local v3    # "object":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 39
    .restart local v3    # "object":Ljava/lang/Object;
    :cond_4
    instance-of v5, v3, Ljava/lang/Boolean;

    if-eqz v5, :cond_5

    .line 40
    check-cast v3, Ljava/lang/Boolean;

    .end local v3    # "object":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 41
    .restart local v3    # "object":Ljava/lang/Object;
    :cond_5
    instance-of v5, v3, Ljava/lang/Byte;

    if-eqz v5, :cond_6

    .line 42
    check-cast v3, Ljava/lang/Byte;

    .end local v3    # "object":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    goto :goto_0

    .line 43
    .restart local v3    # "object":Ljava/lang/Object;
    :cond_6
    instance-of v5, v3, Ljava/lang/Long;

    if-eqz v5, :cond_7

    .line 44
    check-cast v3, Ljava/lang/Long;

    .end local v3    # "object":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 46
    .restart local v3    # "object":Ljava/lang/Object;
    :cond_7
    check-cast v3, Ljava/io/Serializable;

    .end local v3    # "object":Ljava/lang/Object;
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_0
.end method
