.class public Lcom/umeng/fb/net/UClient;
.super Ljava/lang/Object;
.source "UClient.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/umeng/fb/net/UClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/fb/net/UClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private HttpRequestGet(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 20
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 216
    new-instance v17, Ljava/util/Random;

    invoke-direct/range {v17 .. v17}, Ljava/util/Random;-><init>()V

    const/16 v18, 0x3e8

    invoke-virtual/range {v17 .. v18}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 218
    .local v2, "LOG_ID":I
    :try_start_0
    const-string v17, "line.separator"

    invoke-static/range {v17 .. v17}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, "LineSeperator":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_0

    .line 220
    sget-object v17, Lcom/umeng/fb/net/UClient;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":\tInvalid baseUrl."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/umeng/fb/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const/16 v17, 0x0

    .line 282
    .end local v3    # "LineSeperator":Ljava/lang/String;
    :goto_0
    return-object v17

    .line 224
    .restart local v3    # "LineSeperator":Ljava/lang/String;
    :cond_0
    sget-object v17, Lcom/umeng/fb/net/UClient;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":\tget: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/umeng/fb/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 227
    .local v8, "httpget":Lorg/apache/http/client/methods/HttpGet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/umeng/fb/net/UClient;->headers:Ljava/util/Map;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/umeng/fb/net/UClient;->headers:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->size()I

    move-result v17

    if-lez v17, :cond_1

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/umeng/fb/net/UClient;->headers:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v15

    .line 229
    .local v15, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 230
    .local v14, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/umeng/fb/net/UClient;->headers:Ljava/util/Map;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v8, v14, v0}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 273
    .end local v3    # "LineSeperator":Ljava/lang/String;
    .end local v8    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v4

    .line 274
    .local v4, "e":Lorg/apache/http/client/ClientProtocolException;
    sget-object v17, Lcom/umeng/fb/net/UClient;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":\tClientProtocolException,Failed to send message."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Lcom/umeng/fb/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 278
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 233
    .end local v4    # "e":Lorg/apache/http/client/ClientProtocolException;
    .restart local v3    # "LineSeperator":Ljava/lang/String;
    .restart local v8    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    :cond_1
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/umeng/fb/net/UClient;->getHttpParams()Lorg/apache/http/params/HttpParams;

    move-result-object v9

    .line 235
    .local v9, "httpparams":Lorg/apache/http/params/HttpParams;
    new-instance v7, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v7, v9}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 236
    .local v7, "httpclient":Lorg/apache/http/client/HttpClient;
    invoke-interface {v7, v8}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v16

    .line 238
    .local v16, "response":Lorg/apache/http/HttpResponse;
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v17

    const/16 v18, 0xc8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 240
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 242
    .local v5, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v5, :cond_6

    .line 243
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    .line 244
    .local v11, "inputStream":Ljava/io/InputStream;
    const-string v17, "Content-Encoding"

    invoke-interface/range {v16 .. v17}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v6

    .line 246
    .local v6, "header":Lorg/apache/http/Header;
    if-eqz v6, :cond_3

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v17

    const-string v18, "gzip"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 248
    sget-object v17, Lcom/umeng/fb/net/UClient;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "  Use GZIPInputStream get data...."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/umeng/fb/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    new-instance v12, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v12, v11}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v11    # "inputStream":Ljava/io/InputStream;
    .local v12, "inputStream":Ljava/io/InputStream;
    move-object v11, v12

    .line 258
    .end local v12    # "inputStream":Ljava/io/InputStream;
    .restart local v11    # "inputStream":Ljava/io/InputStream;
    :cond_2
    :goto_2
    invoke-static {v11}, Lcom/umeng/fb/net/UClient;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v13

    .line 259
    .local v13, "jsonString":Ljava/lang/String;
    sget-object v17, Lcom/umeng/fb/net/UClient;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":\tresponse: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/umeng/fb/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    if-nez v13, :cond_4

    .line 263
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 251
    .end local v13    # "jsonString":Ljava/lang/String;
    :cond_3
    if-eqz v6, :cond_2

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v17

    const-string v18, "deflate"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 253
    sget-object v17, Lcom/umeng/fb/net/UClient;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "  Use InflaterInputStream get data...."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/umeng/fb/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    new-instance v12, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v12, v11}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v11    # "inputStream":Ljava/io/InputStream;
    .restart local v12    # "inputStream":Ljava/io/InputStream;
    move-object v11, v12

    .end local v12    # "inputStream":Ljava/io/InputStream;
    .restart local v11    # "inputStream":Ljava/io/InputStream;
    goto :goto_2

    .line 265
    .restart local v13    # "jsonString":Ljava/lang/String;
    :cond_4
    new-instance v17, Lorg/json/JSONObject;

    move-object/from16 v0, v17

    invoke-direct {v0, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 279
    .end local v3    # "LineSeperator":Ljava/lang/String;
    .end local v5    # "entity":Lorg/apache/http/HttpEntity;
    .end local v6    # "header":Lorg/apache/http/Header;
    .end local v7    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v8    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .end local v9    # "httpparams":Lorg/apache/http/params/HttpParams;
    .end local v11    # "inputStream":Ljava/io/InputStream;
    .end local v13    # "jsonString":Ljava/lang/String;
    .end local v16    # "response":Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v4

    .line 280
    .local v4, "e":Ljava/lang/Exception;
    sget-object v17, Lcom/umeng/fb/net/UClient;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":\tIOException,Failed to send message."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Lcom/umeng/fb/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 282
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 268
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v3    # "LineSeperator":Ljava/lang/String;
    .restart local v7    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v8    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .restart local v9    # "httpparams":Lorg/apache/http/params/HttpParams;
    .restart local v16    # "response":Lorg/apache/http/HttpResponse;
    :cond_5
    :try_start_2
    sget-object v17, Lcom/umeng/fb/net/UClient;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":\tFailed to send message. StatusCode = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/umeng/fb/util/Helper;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/umeng/fb/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 272
    :cond_6
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method private HttpRequestPost(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 22
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "contentJson"    # Lorg/json/JSONObject;

    .prologue
    .line 109
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    .line 110
    .local v15, "message":Ljava/lang/String;
    new-instance v19, Ljava/util/Random;

    invoke-direct/range {v19 .. v19}, Ljava/util/Random;-><init>()V

    const/16 v20, 0x3e8

    invoke-virtual/range {v19 .. v20}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 111
    .local v3, "LOG_ID":I
    sget-object v19, Lcom/umeng/fb/net/UClient;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ":\trequest: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Lcom/umeng/fb/util/Helper;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/umeng/fb/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    new-instance v10, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 116
    .local v10, "httppost":Lorg/apache/http/client/methods/HttpPost;
    invoke-direct/range {p0 .. p0}, Lcom/umeng/fb/net/UClient;->getHttpParams()Lorg/apache/http/params/HttpParams;

    move-result-object v17

    .line 117
    .local v17, "params":Lorg/apache/http/params/HttpParams;
    new-instance v9, Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 123
    .local v9, "httpclient":Lorg/apache/http/client/HttpClient;
    move-object v5, v15

    .line 124
    .local v5, "content":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/umeng/fb/net/UClient;->shouldCompressData()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 125
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "content="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 126
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/nio/charset/Charset;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v5, v0}, Lcom/umeng/fb/util/DeflaterHelper;->deflaterCompress(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    .line 128
    .local v4, "bs":[B
    const-string v19, "Content-Encoding"

    const-string v20, "deflate"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    new-instance v13, Lorg/apache/http/entity/InputStreamEntity;

    new-instance v19, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v0, v4

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-direct {v13, v0, v1, v2}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 131
    .local v13, "inputStreamEntity":Lorg/apache/http/entity/InputStreamEntity;
    invoke-virtual {v10, v13}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 140
    .end local v4    # "bs":[B
    .end local v13    # "inputStreamEntity":Lorg/apache/http/entity/InputStreamEntity;
    :goto_0
    invoke-interface {v9, v10}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v18

    .line 141
    .local v18, "response":Lorg/apache/http/HttpResponse;
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v19

    const/16 v20, 0xc8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 143
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    .line 145
    .local v7, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v7, :cond_3

    .line 146
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    .line 147
    .local v11, "inputStream":Ljava/io/InputStream;
    const-string v19, "Content-Encoding"

    invoke-interface/range {v18 .. v19}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v8

    .line 149
    .local v8, "header":Lorg/apache/http/Header;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v19

    const-string v20, "deflate"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 151
    new-instance v12, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v12, v11}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v11    # "inputStream":Ljava/io/InputStream;
    .local v12, "inputStream":Ljava/io/InputStream;
    move-object v11, v12

    .line 154
    .end local v12    # "inputStream":Ljava/io/InputStream;
    .restart local v11    # "inputStream":Ljava/io/InputStream;
    :cond_0
    invoke-static {v11}, Lcom/umeng/fb/net/UClient;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v14

    .line 155
    .local v14, "jsonString":Ljava/lang/String;
    sget-object v19, Lcom/umeng/fb/net/UClient;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ":\tresponse: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Lcom/umeng/fb/util/Helper;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/umeng/fb/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    if-nez v14, :cond_2

    .line 159
    const/16 v19, 0x0

    .line 183
    .end local v7    # "entity":Lorg/apache/http/HttpEntity;
    .end local v8    # "header":Lorg/apache/http/Header;
    .end local v11    # "inputStream":Ljava/io/InputStream;
    .end local v14    # "jsonString":Ljava/lang/String;
    .end local v18    # "response":Lorg/apache/http/HttpResponse;
    :goto_1
    return-object v19

    .line 133
    :cond_1
    new-instance v16, Ljava/util/ArrayList;

    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 135
    .local v16, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v19, Lorg/apache/http/message/BasicNameValuePair;

    const-string v20, "content"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v19, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v20, "UTF-8"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 170
    .end local v16    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :catch_0
    move-exception v6

    .line 171
    .local v6, "e":Lorg/apache/http/client/ClientProtocolException;
    sget-object v19, Lcom/umeng/fb/net/UClient;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ":\tClientProtocolException,Failed to send message."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Lcom/umeng/fb/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 175
    const/16 v19, 0x0

    goto :goto_1

    .line 161
    .end local v6    # "e":Lorg/apache/http/client/ClientProtocolException;
    .restart local v7    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v8    # "header":Lorg/apache/http/Header;
    .restart local v11    # "inputStream":Ljava/io/InputStream;
    .restart local v14    # "jsonString":Ljava/lang/String;
    .restart local v18    # "response":Lorg/apache/http/HttpResponse;
    :cond_2
    :try_start_1
    new-instance v19, Lorg/json/JSONObject;

    move-object/from16 v0, v19

    invoke-direct {v0, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 176
    .end local v7    # "entity":Lorg/apache/http/HttpEntity;
    .end local v8    # "header":Lorg/apache/http/Header;
    .end local v11    # "inputStream":Ljava/io/InputStream;
    .end local v14    # "jsonString":Ljava/lang/String;
    .end local v18    # "response":Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v6

    .line 177
    .local v6, "e":Ljava/io/IOException;
    sget-object v19, Lcom/umeng/fb/net/UClient;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ":\tIOException,Failed to send message."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Lcom/umeng/fb/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 179
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 163
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v7    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v18    # "response":Lorg/apache/http/HttpResponse;
    :cond_3
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 165
    .end local v7    # "entity":Lorg/apache/http/HttpEntity;
    :cond_4
    :try_start_2
    sget-object v19, Lcom/umeng/fb/net/UClient;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ":\tFailed to send message. StatusCode = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Lcom/umeng/fb/util/Helper;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/umeng/fb/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 168
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 180
    .end local v18    # "response":Lorg/apache/http/HttpResponse;
    :catch_2
    move-exception v6

    .line 181
    .local v6, "e":Lorg/json/JSONException;
    sget-object v19, Lcom/umeng/fb/net/UClient;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ":\tIOException,Failed to send message."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Lcom/umeng/fb/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 183
    const/16 v19, 0x0

    goto/16 :goto_1
.end method

.method private static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v4, 0x0

    .line 192
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v6, 0x2000

    invoke-direct {v2, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 194
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 198
    .local v1, "line":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 199
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    sget-object v5, Lcom/umeng/fb/net/UClient;->TAG:Ljava/lang/String;

    const-string v6, "Caught IOException in convertStreamToString()"

    invoke-static {v5, v6, v0}, Lcom/umeng/fb/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 212
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-object v4

    .line 206
    :cond_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 212
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 207
    :catch_1
    move-exception v0

    .line 208
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v5, Lcom/umeng/fb/net/UClient;->TAG:Ljava/lang/String;

    const-string v6, "Caught IOException in convertStreamToString()"

    invoke-static {v5, v6, v0}, Lcom/umeng/fb/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 207
    :catch_2
    move-exception v0

    .line 208
    sget-object v5, Lcom/umeng/fb/net/UClient;->TAG:Ljava/lang/String;

    const-string v6, "Caught IOException in convertStreamToString()"

    invoke-static {v5, v6, v0}, Lcom/umeng/fb/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 205
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 206
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 209
    throw v5

    .line 207
    :catch_3
    move-exception v0

    .line 208
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v5, Lcom/umeng/fb/net/UClient;->TAG:Ljava/lang/String;

    const-string v6, "Caught IOException in convertStreamToString()"

    invoke-static {v5, v6, v0}, Lcom/umeng/fb/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private getHttpParams()Lorg/apache/http/params/HttpParams;
    .locals 2

    .prologue
    .line 287
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 288
    .local v0, "httpparams":Lorg/apache/http/params/HttpParams;
    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 289
    const/16 v1, 0x4e20

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 290
    const-string v1, "http.agent"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 291
    return-object v0
.end method

.method private verifyMethod(Ljava/lang/String;)V
    .locals 4
    .param p1, "httpMethod"    # Ljava/lang/String;

    .prologue
    .line 307
    move-object v0, p1

    .line 308
    .local v0, "reqMethod":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/umeng/fb/net/URequest;->GET:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sget-object v2, Lcom/umeng/fb/net/URequest;->POST:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v1, v2

    if-nez v1, :cond_1

    .line 311
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u9a8c\u8bc1\u8bf7\u6c42\u65b9\u5f0f\u5931\u8d25["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 312
    :cond_1
    return-void
.end method


# virtual methods
.method public execute(Lcom/umeng/fb/net/URequest;Ljava/lang/Class;)Lcom/umeng/fb/net/UResponse;
    .locals 8
    .param p1, "request"    # Lcom/umeng/fb/net/URequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/umeng/fb/net/UResponse;",
            ">(",
            "Lcom/umeng/fb/net/URequest;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v5, 0x0

    .line 74
    invoke-virtual {p1}, Lcom/umeng/fb/net/URequest;->getHttpMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "reqMethod":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/umeng/fb/net/UClient;->verifyMethod(Ljava/lang/String;)V

    .line 77
    const/4 v3, 0x0

    .line 78
    .local v3, "resJson":Lorg/json/JSONObject;
    sget-object v4, Lcom/umeng/fb/net/URequest;->GET:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 79
    invoke-virtual {p1}, Lcom/umeng/fb/net/URequest;->toGetUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/umeng/fb/net/UClient;->HttpRequestGet(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 84
    :cond_0
    :goto_0
    if-nez v3, :cond_2

    move-object v4, v5

    .line 105
    :goto_1
    return-object v4

    .line 80
    :cond_1
    sget-object v4, Lcom/umeng/fb/net/URequest;->POST:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 81
    iget-object v4, p1, Lcom/umeng/fb/net/URequest;->baseUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/umeng/fb/net/URequest;->toJson()Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lcom/umeng/fb/net/UClient;->HttpRequestPost(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    goto :goto_0

    .line 90
    :cond_2
    const/4 v4, 0x1

    :try_start_0
    new-array v4, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Lorg/json/JSONObject;

    aput-object v7, v4, v6

    invoke-virtual {p2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 91
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v4, v6

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/umeng/fb/net/UResponse;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_1

    .line 92
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/SecurityException;
    sget-object v4, Lcom/umeng/fb/net/UClient;->TAG:Ljava/lang/String;

    const-string v6, "SecurityException"

    invoke-static {v4, v6, v1}, Lcom/umeng/fb/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_2
    move-object v4, v5

    .line 105
    goto :goto_1

    .line 94
    :catch_1
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    sget-object v4, Lcom/umeng/fb/net/UClient;->TAG:Ljava/lang/String;

    const-string v6, "NoSuchMethodException"

    invoke-static {v4, v6, v1}, Lcom/umeng/fb/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    .line 96
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v4, Lcom/umeng/fb/net/UClient;->TAG:Ljava/lang/String;

    const-string v6, "IllegalArgumentException"

    invoke-static {v4, v6, v1}, Lcom/umeng/fb/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    .line 98
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/InstantiationException;
    sget-object v4, Lcom/umeng/fb/net/UClient;->TAG:Ljava/lang/String;

    const-string v6, "InstantiationException"

    invoke-static {v4, v6, v1}, Lcom/umeng/fb/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    .line 100
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_4
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/IllegalAccessException;
    sget-object v4, Lcom/umeng/fb/net/UClient;->TAG:Ljava/lang/String;

    const-string v6, "IllegalAccessException"

    invoke-static {v4, v6, v1}, Lcom/umeng/fb/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    .line 102
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v4, Lcom/umeng/fb/net/UClient;->TAG:Ljava/lang/String;

    const-string v6, "InvocationTargetException"

    invoke-static {v4, v6, v1}, Lcom/umeng/fb/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method public setHeader(Ljava/util/Map;)Lcom/umeng/fb/net/UClient;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/umeng/fb/net/UClient;"
        }
    .end annotation

    .prologue
    .line 302
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/umeng/fb/net/UClient;->headers:Ljava/util/Map;

    .line 303
    return-object p0
.end method

.method public shouldCompressData()Z
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method
