.class public Lcom/cai88/tools/uitl/HttpHelper;
.super Ljava/lang/Object;
.source "HttpHelper.java"


# static fields
.field protected static instance:Lcom/cai88/tools/uitl/HttpHelper;


# instance fields
.field protected connectivityManager:Landroid/net/ConnectivityManager;

.field protected mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/cai88/tools/uitl/HttpHelper;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 19
    iput-object v0, p0, Lcom/cai88/tools/uitl/HttpHelper;->mContext:Landroid/content/Context;

    .line 31
    iput-object p1, p0, Lcom/cai88/tools/uitl/HttpHelper;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/cai88/tools/uitl/HttpHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    sget-object v0, Lcom/cai88/tools/uitl/HttpHelper;->instance:Lcom/cai88/tools/uitl/HttpHelper;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/cai88/tools/uitl/HttpHelper;

    invoke-direct {v0, p0}, Lcom/cai88/tools/uitl/HttpHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cai88/tools/uitl/HttpHelper;->instance:Lcom/cai88/tools/uitl/HttpHelper;

    .line 27
    :cond_0
    sget-object v0, Lcom/cai88/tools/uitl/HttpHelper;->instance:Lcom/cai88/tools/uitl/HttpHelper;

    return-object v0
.end method


# virtual methods
.method public Get(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "getURL"    # Ljava/lang/String;

    .prologue
    .line 93
    const/4 v1, 0x0

    .line 94
    .local v1, "connection":Ljava/net/HttpURLConnection;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .local v5, "returnsb":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 100
    .local v2, "getUrl":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    .line 99
    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 102
    const/16 v6, 0x4e20

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 103
    const-string v6, "User-agent"

    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/cai88/tools/shishicai/SscApplication;->userAgent:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    const-string v8, " SscAndroid/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/cai88/tools/shishicai/SscApplication;->version:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 103
    invoke-virtual {v1, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 108
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    .line 109
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 108
    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 111
    .local v4, "reader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "lines":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 114
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 123
    .end local v2    # "getUrl":Ljava/net/URL;
    .end local v3    # "lines":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :cond_0
    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 112
    .restart local v2    # "getUrl":Ljava/net/URL;
    .restart local v3    # "lines":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :try_start_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 115
    .end local v2    # "getUrl":Ljava/net/URL;
    .end local v3    # "lines":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v6

    .line 119
    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 117
    :catchall_0
    move-exception v6

    .line 119
    if-eqz v1, :cond_2

    .line 120
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 122
    :cond_2
    throw v6
.end method

.method public Post(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p1, "requrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, "value":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v0, 0x4e20

    invoke-virtual {p0, p1, p2, v0}, Lcom/cai88/tools/uitl/HttpHelper;->Post(Ljava/lang/String;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Post(Ljava/lang/String;Ljava/util/Map;I)Ljava/lang/String;
    .locals 16
    .param p1, "path"    # Ljava/lang/String;
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 41
    .local v2, "conn":Ljava/net/HttpURLConnection;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v12, ""

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .local v9, "returnsb":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, ""

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .local v10, "sb":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    .line 45
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_3

    .line 51
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 53
    :cond_0
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 54
    .local v3, "data":[B
    new-instance v11, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 55
    .local v11, "url":Ljava/net/URL;
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 56
    const-string v12, "POST"

    invoke-virtual {v2, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 57
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 58
    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 59
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 60
    const-string v12, "Content-Type"

    .line 61
    const-string v13, "application/x-www-form-urlencoded"

    .line 60
    invoke-virtual {v2, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v12, "User-agent"

    new-instance v13, Ljava/lang/StringBuilder;

    sget-object v14, Lcom/cai88/tools/shishicai/SscApplication;->userAgent:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    const-string v14, " SscAndroid/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/cai88/tools/shishicai/SscApplication;->version:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 62
    invoke-virtual {v2, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    .line 65
    .local v8, "outStream":Ljava/io/OutputStream;
    invoke-virtual {v8, v3}, Ljava/io/OutputStream;->write([B)V

    .line 66
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    .line 67
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 68
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    const/16 v13, 0xc8

    if-ne v12, v13, :cond_1

    .line 70
    new-instance v6, Ljava/io/InputStreamReader;

    .line 71
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    .line 70
    invoke-direct {v6, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 73
    .local v6, "in":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 74
    .local v1, "buffer":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 76
    .local v7, "inputLine":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4

    .line 79
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .end local v1    # "buffer":Ljava/io/BufferedReader;
    .end local v6    # "in":Ljava/io/InputStreamReader;
    .end local v7    # "inputLine":Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_2

    .line 86
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 89
    .end local v3    # "data":[B
    .end local v8    # "outStream":Ljava/io/OutputStream;
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    .end local v11    # "url":Ljava/net/URL;
    :cond_2
    :goto_2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 45
    .restart local v10    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    :try_start_1
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 46
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 47
    const/16 v14, 0x3d

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 48
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v15, "UTF-8"

    invoke-static {v12, v15}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 49
    const/16 v14, 0x26

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 82
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v4

    .line 83
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v12, "iws"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "post e:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    if-eqz v2, :cond_2

    .line 86
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    .line 77
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "buffer":Ljava/io/BufferedReader;
    .restart local v3    # "data":[B
    .restart local v6    # "in":Ljava/io/InputStreamReader;
    .restart local v7    # "inputLine":Ljava/lang/String;
    .restart local v8    # "outStream":Ljava/io/OutputStream;
    .restart local v10    # "sb":Ljava/lang/StringBuilder;
    .restart local v11    # "url":Ljava/net/URL;
    :cond_4
    :try_start_3
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 84
    .end local v1    # "buffer":Ljava/io/BufferedReader;
    .end local v3    # "data":[B
    .end local v6    # "in":Ljava/io/InputStreamReader;
    .end local v7    # "inputLine":Ljava/lang/String;
    .end local v8    # "outStream":Ljava/io/OutputStream;
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    .end local v11    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v12

    .line 85
    if-eqz v2, :cond_5

    .line 86
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 88
    :cond_5
    throw v12
.end method
