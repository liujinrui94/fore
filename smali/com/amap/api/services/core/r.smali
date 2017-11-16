.class public abstract Lcom/amap/api/services/core/r;
.super Ljava/lang/Object;
.source "ProtocalHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Ljava/net/Proxy;

.field protected b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected c:I

.field protected d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/net/Proxy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/net/Proxy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/services/core/r;->c:I

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/services/core/r;->d:Ljava/lang/String;

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/amap/api/services/core/r;->a(Ljava/lang/Object;Ljava/net/Proxy;)V

    .line 36
    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/net/Proxy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/net/Proxy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    iput-object p1, p0, Lcom/amap/api/services/core/r;->b:Ljava/lang/Object;

    .line 44
    iput-object p2, p0, Lcom/amap/api/services/core/r;->a:Ljava/net/Proxy;

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/services/core/r;->c:I

    .line 46
    return-void
.end method

.method private b()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 99
    .line 103
    const/4 v0, 0x0

    move-object v1, v4

    move-object v2, v4

    move-object v3, v4

    .line 104
    :cond_0
    :goto_0
    iget v5, p0, Lcom/amap/api/services/core/r;->c:I

    if-ge v0, v5, :cond_7

    .line 106
    :try_start_0
    invoke-static {}, Lcom/amap/api/services/core/ServiceSettings;->getInstance()Lcom/amap/api/services/core/ServiceSettings;

    move-result-object v5

    .line 107
    invoke-virtual {v5}, Lcom/amap/api/services/core/ServiceSettings;->getProtocol()I

    move-result v5

    .line 108
    invoke-virtual {p0}, Lcom/amap/api/services/core/r;->a()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/amap/api/services/core/r;->d:Ljava/lang/String;

    .line 113
    invoke-virtual {p0}, Lcom/amap/api/services/core/r;->g()[B

    move-result-object v6

    .line 114
    if-nez v6, :cond_2

    .line 115
    iget-object v5, p0, Lcom/amap/api/services/core/r;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/amap/api/services/core/r;->a:Ljava/net/Proxy;

    invoke-static {v5, v6}, Lcom/amap/api/services/core/k;->a(Ljava/lang/String;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 126
    :cond_1
    :goto_1
    invoke-virtual {p0, v3}, Lcom/amap/api/services/core/r;->a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v5

    .line 127
    :try_start_1
    invoke-direct {p0, v5}, Lcom/amap/api/services/core/r;->b(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    .line 128
    iget v0, p0, Lcom/amap/api/services/core/r;->c:I
    :try_end_1
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    if-eqz v5, :cond_9

    .line 139
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v4

    .line 145
    :goto_2
    if-eqz v3, :cond_0

    .line 146
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v3, v4

    .line 147
    goto :goto_0

    .line 117
    :cond_2
    const/4 v7, 0x1

    if-ne v5, v7, :cond_3

    .line 118
    :try_start_3
    iget-object v5, p0, Lcom/amap/api/services/core/r;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/amap/api/services/core/r;->a:Ljava/net/Proxy;

    invoke-static {v5, v6, v7}, Lcom/amap/api/services/core/k;->a(Ljava/lang/String;[BLjava/net/Proxy;)Ljava/net/HttpURLConnection;

    move-result-object v3

    goto :goto_1

    .line 120
    :cond_3
    const/4 v7, 0x2

    if-ne v5, v7, :cond_1

    .line 121
    iget-object v5, p0, Lcom/amap/api/services/core/r;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/amap/api/services/core/r;->a:Ljava/net/Proxy;

    invoke-static {v5, v6, v7}, Lcom/amap/api/services/core/k;->b(Ljava/lang/String;[BLjava/net/Proxy;)Ljava/net/HttpURLConnection;
    :try_end_3
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v3

    goto :goto_1

    .line 140
    :catch_0
    move-exception v0

    .line 141
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :catch_1
    move-exception v5

    move-object v8, v5

    move-object v5, v2

    move-object v2, v8

    .line 131
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 132
    :try_start_4
    iget v6, p0, Lcom/amap/api/services/core/r;->c:I

    if-lt v0, v6, :cond_6

    .line 134
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    invoke-virtual {v2}, Lcom/amap/api/services/core/AMapException;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 137
    :catchall_0
    move-exception v0

    move-object v2, v5

    :goto_4
    if-eqz v2, :cond_4

    .line 139
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 145
    :cond_4
    if-eqz v3, :cond_5

    .line 146
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 147
    :cond_5
    throw v0

    .line 137
    :cond_6
    if-eqz v5, :cond_8

    .line 139
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    move-object v2, v4

    .line 145
    :goto_5
    if-eqz v3, :cond_0

    .line 146
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v3, v4

    .line 147
    goto/16 :goto_0

    .line 140
    :catch_2
    move-exception v0

    .line 141
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :catch_3
    move-exception v0

    .line 141
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_7
    return-object v1

    .line 137
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 129
    :catch_4
    move-exception v2

    goto :goto_3

    :cond_8
    move-object v2, v5

    goto :goto_5

    :cond_9
    move-object v2, v5

    goto :goto_2
.end method

.method private b(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Lcom/amap/api/services/core/r;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 164
    .line 166
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 168
    new-instance v0, Ljava/io/PushbackInputStream;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 169
    const/4 v1, 0x2

    new-array v1, v1, [B

    .line 170
    invoke-virtual {v0, v1}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v2

    if-eq v2, v3, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-object v0

    .line 173
    :cond_1
    invoke-virtual {v0, v1}, Ljava/io/PushbackInputStream;->unread([B)V

    .line 174
    const/4 v2, 0x0

    aget-byte v2, v1, v2

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    const/16 v2, -0x75

    if-ne v1, v2, :cond_0

    .line 175
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/UnknownServiceException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-object v0, v1

    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :catch_1
    move-exception v0

    .line 182
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u672a\u77e5\u4e3b\u673a - UnKnowHostException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :catch_2
    move-exception v0

    .line 184
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u670d\u52a1\u5668\u8fde\u63a5\u5931\u8d25 - UnknownServiceException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :catch_3
    move-exception v0

    .line 186
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 69
    .line 71
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {p1}, Lcom/amap/api/services/core/f;->a(Ljava/io/InputStream;)[B

    move-result-object v2

    const-string v3, "utf-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    :cond_0
    :goto_1
    return-object v0

    .line 72
    :catch_0
    move-exception v1

    .line 73
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v0

    goto :goto_0

    .line 78
    :cond_1
    invoke-static {v1}, Lcom/amap/api/services/core/f;->b(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0, v1}, Lcom/amap/api/services/core/r;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method protected abstract a()Ljava/lang/String;
.end method

.method protected a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 199
    if-nez p1, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-object p1

    .line 202
    :cond_1
    const-string v0, ""

    .line 204
    if-eqz p2, :cond_0

    .line 205
    :try_start_0
    const-string v1, "utf-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p1

    goto :goto_0

    .line 209
    :catch_0
    move-exception v1

    .line 210
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object p1, v0

    .line 213
    goto :goto_0

    .line 211
    :catch_1
    move-exception v1

    move-object p1, v0

    goto :goto_0
.end method

.method protected abstract a(Z)Ljava/lang/String;
.end method

.method protected abstract b(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation
.end method

.method protected f()[B
    .locals 2

    .prologue
    .line 59
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/services/core/r;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 63
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected g()[B
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/amap/api/services/core/r;->f()[B

    move-result-object v0

    .line 88
    return-object v0
.end method

.method public h()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/amap/api/services/core/r;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/amap/api/services/core/r;->b()Ljava/lang/Object;

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/services/core/r;->a(Z)Ljava/lang/String;

    move-result-object v0

    .line 158
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/amap/api/services/core/r;->a(Z)Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-static {v0, v1}, Lcom/amap/api/services/core/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
