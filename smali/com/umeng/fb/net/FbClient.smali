.class public Lcom/umeng/fb/net/FbClient;
.super Ljava/lang/Object;
.source "FbClient.java"


# static fields
.field public static final FEEDBACK_BASE_URL:Ljava/lang/String; = "http://feedback.umeng.com/feedback"

.field public static final FEEDBACK_Dev_Reply_URL:Ljava/lang/String; = "http://feedback.umeng.com/feedback/reply"

.field public static final FEEDBACK_NewFeedback_URL:Ljava/lang/String; = "http://feedback.umeng.com/feedback/feedbacks"

.field public static final FEEDBACK_UER_REPLY_URL:Ljava/lang/String; = "http://feedback.umeng.com/feedback/reply"

.field private static final REGISTRATION_TIMEOUT_MS:I = 0x7530

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/umeng/fb/net/FbClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/fb/net/FbClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/umeng/fb/net/FbClient;->mContext:Landroid/content/Context;

    .line 58
    return-void
.end method

.method private addRequestHeader(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "reply"    # Lorg/json/JSONObject;

    .prologue
    .line 281
    :try_start_0
    iget-object v4, p0, Lcom/umeng/fb/net/FbClient;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/fb/util/Helper;->getMessageHeader(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    .line 283
    .local v1, "header":Lorg/json/JSONObject;
    sget-object v4, Lcom/umeng/fb/net/FbClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addRequestHeader: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/umeng/fb/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 285
    .local v2, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 286
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 288
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 292
    .end local v1    # "header":Lorg/json/JSONObject;
    .end local v2    # "iter":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 295
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    return-void
.end method

.method private addUserInfoIfNotSynced(Lorg/json/JSONObject;)V
    .locals 9
    .param p1, "reply"    # Lorg/json/JSONObject;

    .prologue
    .line 299
    :try_start_0
    iget-object v6, p0, Lcom/umeng/fb/net/FbClient;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/umeng/fb/model/Store;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/model/Store;

    move-result-object v6

    invoke-virtual {v6}, Lcom/umeng/fb/model/Store;->getUserInfoLastSyncAt()J

    move-result-wide v2

    .line 301
    .local v2, "last_sync_at":J
    iget-object v6, p0, Lcom/umeng/fb/net/FbClient;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/umeng/fb/model/Store;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/model/Store;

    move-result-object v6

    invoke-virtual {v6}, Lcom/umeng/fb/model/Store;->getUserInfoLastUpdateAt()J

    move-result-wide v4

    .line 303
    .local v4, "last_update_at":J
    sget-object v6, Lcom/umeng/fb/net/FbClient;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addUserInfoIfNotSynced: last_sync_at="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " last_update_at="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/umeng/fb/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    .line 308
    iget-object v6, p0, Lcom/umeng/fb/net/FbClient;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/umeng/fb/model/Store;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/model/Store;

    move-result-object v6

    invoke-virtual {v6}, Lcom/umeng/fb/model/Store;->getUserInfo()Lcom/umeng/fb/model/UserInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/umeng/fb/model/UserInfo;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    .line 310
    .local v1, "info":Lorg/json/JSONObject;
    const-string v6, "userinfo"

    invoke-virtual {p1, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    .end local v1    # "info":Lorg/json/JSONObject;
    .end local v2    # "last_sync_at":J
    .end local v4    # "last_update_at":J
    :cond_0
    :goto_0
    return-void

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private sendUserReply(Lcom/umeng/fb/model/UserReply;)Z
    .locals 7
    .param p1, "reply"    # Lcom/umeng/fb/model/UserReply;

    .prologue
    .line 240
    :try_start_0
    invoke-virtual {p1}, Lcom/umeng/fb/model/UserReply;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    .line 241
    .local v1, "json":Lorg/json/JSONObject;
    invoke-direct {p0, v1}, Lcom/umeng/fb/net/FbClient;->addRequestHeader(Lorg/json/JSONObject;)V

    .line 243
    invoke-direct {p0, v1}, Lcom/umeng/fb/net/FbClient;->addUserInfoIfNotSynced(Lorg/json/JSONObject;)V

    .line 245
    new-instance v2, Lcom/umeng/fb/net/FbRequest;

    const-string v4, "reply"

    const-string v5, "http://feedback.umeng.com/feedback/reply"

    invoke-direct {v2, v4, v1, v5}, Lcom/umeng/fb/net/FbRequest;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 247
    .local v2, "request":Lcom/umeng/fb/net/FbRequest;
    invoke-virtual {p0, v2}, Lcom/umeng/fb/net/FbClient;->execute(Lcom/umeng/fb/net/FbRequest;)Lcom/umeng/fb/net/FbResponse;

    move-result-object v3

    .line 248
    .local v3, "response":Lcom/umeng/fb/net/FbResponse;
    if-eqz v3, :cond_0

    const-string v4, "ok"

    invoke-virtual {v3}, Lcom/umeng/fb/net/FbResponse;->getJson()Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "state"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 251
    const/4 v4, 0x1

    .line 255
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "request":Lcom/umeng/fb/net/FbRequest;
    .end local v3    # "response":Lcom/umeng/fb/net/FbResponse;
    :goto_0
    return v4

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 255
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private sendUserTitleReply(Lcom/umeng/fb/model/UserTitleReply;)Z
    .locals 7
    .param p1, "reply"    # Lcom/umeng/fb/model/UserTitleReply;

    .prologue
    .line 261
    :try_start_0
    invoke-virtual {p1}, Lcom/umeng/fb/model/UserTitleReply;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    .line 262
    .local v1, "json":Lorg/json/JSONObject;
    invoke-direct {p0, v1}, Lcom/umeng/fb/net/FbClient;->addRequestHeader(Lorg/json/JSONObject;)V

    .line 263
    invoke-direct {p0, v1}, Lcom/umeng/fb/net/FbClient;->addUserInfoIfNotSynced(Lorg/json/JSONObject;)V

    .line 265
    new-instance v2, Lcom/umeng/fb/net/FbRequest;

    const-string v4, "feedback"

    const-string v5, "http://feedback.umeng.com/feedback/feedbacks"

    invoke-direct {v2, v4, v1, v5}, Lcom/umeng/fb/net/FbRequest;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 267
    .local v2, "request":Lcom/umeng/fb/net/FbRequest;
    invoke-virtual {p0, v2}, Lcom/umeng/fb/net/FbClient;->execute(Lcom/umeng/fb/net/FbRequest;)Lcom/umeng/fb/net/FbResponse;

    move-result-object v3

    .line 269
    .local v3, "response":Lcom/umeng/fb/net/FbResponse;
    if-eqz v3, :cond_0

    const-string v4, "ok"

    invoke-virtual {v3}, Lcom/umeng/fb/net/FbResponse;->getJson()Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "state"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 272
    const/4 v4, 0x1

    .line 276
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "request":Lcom/umeng/fb/net/FbRequest;
    .end local v3    # "response":Lcom/umeng/fb/net/FbResponse;
    :goto_0
    return v4

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 276
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public execute(Lcom/umeng/fb/net/FbRequest;)Lcom/umeng/fb/net/FbResponse;
    .locals 17
    .param p1, "request"    # Lcom/umeng/fb/net/FbRequest;

    .prologue
    .line 68
    new-instance v14, Ljava/util/Random;

    invoke-direct {v14}, Ljava/util/Random;-><init>()V

    const/16 v15, 0x3e8

    invoke-virtual {v14, v15}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 69
    .local v1, "LOG_ID":I
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/umeng/fb/net/FbRequest;->mReportContent:Ljava/lang/String;

    .line 70
    .local v13, "url":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/umeng/fb/net/FbRequest;->mKey:Ljava/lang/String;

    .line 71
    .local v5, "key":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/umeng/fb/net/FbRequest;->mValue:Lorg/json/JSONObject;

    .line 73
    .local v7, "message":Lorg/json/JSONObject;
    move-object/from16 v0, p1

    instance-of v14, v0, Lcom/umeng/fb/net/FbRequest;

    if-nez v14, :cond_0

    .line 74
    sget-object v14, Lcom/umeng/fb/net/FbClient;->TAG:Ljava/lang/String;

    const-string v15, "request type error, request must be type of FbReportRequest"

    invoke-static {v14, v15}, Lcom/umeng/fb/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const/4 v14, 0x0

    .line 136
    :goto_0
    return-object v14

    .line 79
    :cond_0
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x1

    if-gt v14, v15, :cond_1

    .line 80
    sget-object v14, Lcom/umeng/fb/net/FbClient;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ":\tInvalid baseUrl."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/umeng/fb/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const/4 v14, 0x0

    goto :goto_0

    .line 85
    :cond_1
    const/4 v4, 0x0

    .line 86
    .local v4, "httpRequest":Lorg/apache/http/HttpRequest;
    if-eqz v5, :cond_2

    .line 87
    sget-object v14, Lcom/umeng/fb/net/FbClient;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": post: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/umeng/fb/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    new-instance v8, Ljava/util/ArrayList;

    const/4 v14, 0x1

    invoke-direct {v8, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 90
    .local v8, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v14, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v5, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    const/4 v3, 0x0

    .line 94
    .local v3, "entity":Lorg/apache/http/HttpEntity;
    :try_start_0
    new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    .end local v3    # "entity":Lorg/apache/http/HttpEntity;
    const-string v14, "UTF-8"

    invoke-direct {v3, v8, v14}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 99
    .restart local v3    # "entity":Lorg/apache/http/HttpEntity;
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    .end local v4    # "httpRequest":Lorg/apache/http/HttpRequest;
    invoke-direct {v4, v13}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 100
    .restart local v4    # "httpRequest":Lorg/apache/http/HttpRequest;
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v14

    invoke-interface {v4, v14}, Lorg/apache/http/HttpRequest;->addHeader(Lorg/apache/http/Header;)V

    move-object v14, v4

    .line 101
    check-cast v14, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v14, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 107
    .end local v3    # "entity":Lorg/apache/http/HttpEntity;
    .end local v8    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :goto_1
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 108
    .local v6, "mHttpClient":Lorg/apache/http/client/HttpClient;
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v9

    .line 109
    .local v9, "params":Lorg/apache/http/params/HttpParams;
    const/16 v14, 0x7530

    invoke-static {v9, v14}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 111
    const/16 v14, 0x7530

    invoke-static {v9, v14}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 112
    const-wide/16 v14, 0x7530

    invoke-static {v9, v14, v15}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 116
    :try_start_1
    check-cast v4, Lorg/apache/http/client/methods/HttpUriRequest;

    .end local v4    # "httpRequest":Lorg/apache/http/HttpRequest;
    invoke-interface {v6, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v12

    .line 118
    .local v12, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    const/16 v15, 0xc8

    if-ne v14, v15, :cond_3

    .line 119
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    .line 120
    .local v11, "respEntity":Lorg/apache/http/HttpEntity;
    invoke-static {v11}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v10

    .line 122
    .local v10, "resp":Ljava/lang/String;
    sget-object v14, Lcom/umeng/fb/net/FbClient;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "res :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/umeng/fb/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v14, Lcom/umeng/fb/net/FbResponse;

    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v14, v15}, Lcom/umeng/fb/net/FbResponse;-><init>(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 125
    .end local v10    # "resp":Ljava/lang/String;
    .end local v11    # "respEntity":Lorg/apache/http/HttpEntity;
    .end local v12    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v2

    .line 126
    .local v2, "e":Lorg/apache/http/client/ClientProtocolException;
    sget-object v14, Lcom/umeng/fb/net/FbClient;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ":\tClientProtocolException,Failed to send message."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v2}, Lcom/umeng/fb/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 130
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 95
    .end local v2    # "e":Lorg/apache/http/client/ClientProtocolException;
    .end local v6    # "mHttpClient":Lorg/apache/http/client/HttpClient;
    .end local v9    # "params":Lorg/apache/http/params/HttpParams;
    .restart local v4    # "httpRequest":Lorg/apache/http/HttpRequest;
    .restart local v8    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :catch_1
    move-exception v2

    .line 96
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v14

    .line 103
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v8    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_2
    sget-object v14, Lcom/umeng/fb/net/FbClient;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ":\tget: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/umeng/fb/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    .end local v4    # "httpRequest":Lorg/apache/http/HttpRequest;
    invoke-direct {v4, v13}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .restart local v4    # "httpRequest":Lorg/apache/http/HttpRequest;
    goto/16 :goto_1

    .line 131
    .end local v4    # "httpRequest":Lorg/apache/http/HttpRequest;
    .restart local v6    # "mHttpClient":Lorg/apache/http/client/HttpClient;
    .restart local v9    # "params":Lorg/apache/http/params/HttpParams;
    :catch_2
    move-exception v2

    .line 132
    .local v2, "e":Ljava/lang/Exception;
    sget-object v14, Lcom/umeng/fb/net/FbClient;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ":\tIOException,Failed to send message."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v2}, Lcom/umeng/fb/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 134
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 136
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v12    # "response":Lorg/apache/http/HttpResponse;
    :cond_3
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method public getDevReply(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 23
    .param p2, "startFrom"    # Ljava/lang/String;
    .param p3, "appkey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/fb/model/DevReply;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v20

    if-eqz v20, :cond_0

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 157
    :cond_0
    const/4 v15, 0x0

    .line 219
    :cond_1
    :goto_0
    return-object v15

    .line 160
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .local v3, "concatIds":Ljava/lang/StringBuilder;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 163
    .local v10, "id":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 165
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const-string v20, ","

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 168
    .end local v10    # "id":Ljava/lang/String;
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_5

    .line 169
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    const-string v22, ""

    move/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v3, v0, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :cond_5
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "http://feedback.umeng.com/feedback/reply"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    .local v19, "url":Ljava/lang/StringBuilder;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "?appkey="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "&feedback_id="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_6

    .line 176
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "&startkey="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    :cond_6
    sget-object v20, Lcom/umeng/fb/net/FbClient;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getDevReply url: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/umeng/fb/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance v12, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v12}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 180
    .local v12, "mHttpClient":Lorg/apache/http/client/HttpClient;
    invoke-interface {v12}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v13

    .line 181
    .local v13, "params":Lorg/apache/http/params/HttpParams;
    const/16 v20, 0x7530

    move/from16 v0, v20

    invoke-static {v13, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 183
    const/16 v20, 0x7530

    move/from16 v0, v20

    invoke-static {v13, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 184
    const-wide/16 v20, 0x7530

    move-wide/from16 v0, v20

    invoke-static {v13, v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 185
    new-instance v7, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v7, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 189
    .local v7, "httpRequest":Lorg/apache/http/HttpRequest;
    :try_start_0
    check-cast v7, Lorg/apache/http/client/methods/HttpUriRequest;

    .end local v7    # "httpRequest":Lorg/apache/http/HttpRequest;
    invoke-interface {v12, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v18

    .line 191
    .local v18, "response":Lorg/apache/http/HttpResponse;
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v20

    const/16 v21, 0xc8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 192
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v17

    .line 193
    .local v17, "respEntity":Lorg/apache/http/HttpEntity;
    invoke-static/range {v17 .. v17}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v16

    .line 194
    .local v16, "resp":Ljava/lang/String;
    sget-object v20, Lcom/umeng/fb/net/FbClient;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getDevReply resp: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/umeng/fb/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    new-instance v14, Lorg/json/JSONArray;

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 197
    .local v14, "replies":Lorg/json/JSONArray;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v15, "replyList":Ljava/util/List;, "Ljava/util/List<Lcom/umeng/fb/model/DevReply;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v20

    move/from16 v0, v20

    if-ge v8, v0, :cond_1

    .line 200
    :try_start_1
    invoke-virtual {v14, v8}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    .line 201
    .local v4, "conversation":Lorg/json/JSONArray;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v20

    move/from16 v0, v20

    if-ge v11, v0, :cond_7

    .line 203
    :try_start_2
    new-instance v5, Lcom/umeng/fb/model/DevReply;

    invoke-virtual {v4, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Lcom/umeng/fb/model/DevReply;-><init>(Lorg/json/JSONObject;)V

    .line 205
    .local v5, "dev":Lcom/umeng/fb/model/DevReply;
    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 201
    .end local v5    # "dev":Lcom/umeng/fb/model/DevReply;
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 206
    :catch_0
    move-exception v6

    .line 207
    .local v6, "e":Lorg/json/JSONException;
    :try_start_3
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    .line 210
    .end local v4    # "conversation":Lorg/json/JSONArray;
    .end local v6    # "e":Lorg/json/JSONException;
    .end local v11    # "j":I
    :catch_1
    move-exception v6

    .line 211
    .restart local v6    # "e":Lorg/json/JSONException;
    :try_start_4
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 198
    .end local v6    # "e":Lorg/json/JSONException;
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 216
    .end local v8    # "i":I
    .end local v14    # "replies":Lorg/json/JSONArray;
    .end local v15    # "replyList":Ljava/util/List;, "Ljava/util/List<Lcom/umeng/fb/model/DevReply;>;"
    .end local v16    # "resp":Ljava/lang/String;
    .end local v17    # "respEntity":Lorg/apache/http/HttpEntity;
    .end local v18    # "response":Lorg/apache/http/HttpResponse;
    :catch_2
    move-exception v6

    .line 217
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 219
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_8
    const/4 v15, 0x0

    goto/16 :goto_0
.end method

.method public sendReply(Lcom/umeng/fb/model/Reply;)Z
    .locals 3
    .param p1, "reply"    # Lcom/umeng/fb/model/Reply;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 224
    if-nez p1, :cond_0

    .line 225
    const/4 v0, 0x1

    .line 229
    .end local p1    # "reply":Lcom/umeng/fb/model/Reply;
    :goto_0
    return v0

    .line 226
    .restart local p1    # "reply":Lcom/umeng/fb/model/Reply;
    :cond_0
    instance-of v0, p1, Lcom/umeng/fb/model/UserReply;

    if-eqz v0, :cond_1

    .line 227
    check-cast p1, Lcom/umeng/fb/model/UserReply;

    .end local p1    # "reply":Lcom/umeng/fb/model/Reply;
    invoke-direct {p0, p1}, Lcom/umeng/fb/net/FbClient;->sendUserReply(Lcom/umeng/fb/model/UserReply;)Z

    move-result v0

    goto :goto_0

    .line 228
    .restart local p1    # "reply":Lcom/umeng/fb/model/Reply;
    :cond_1
    instance-of v0, p1, Lcom/umeng/fb/model/UserTitleReply;

    if-eqz v0, :cond_2

    .line 229
    check-cast p1, Lcom/umeng/fb/model/UserTitleReply;

    .end local p1    # "reply":Lcom/umeng/fb/model/Reply;
    invoke-direct {p0, p1}, Lcom/umeng/fb/net/FbClient;->sendUserTitleReply(Lcom/umeng/fb/model/UserTitleReply;)Z

    move-result v0

    goto :goto_0

    .line 231
    .restart local p1    # "reply":Lcom/umeng/fb/model/Reply;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". reply must be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/umeng/fb/model/UserReply;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/umeng/fb/model/UserTitleReply;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
