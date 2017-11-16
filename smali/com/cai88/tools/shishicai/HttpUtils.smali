.class public Lcom/cai88/tools/shishicai/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cai88/tools/shishicai/HttpUtils$HttpCallback;
    }
.end annotation


# static fields
.field public static final JSON:Lokhttp3/MediaType;

.field public static TAG:Ljava/lang/String; = null

.field public static final TIMEOUT:I = 0xea60

.field private static httpUtils:Lcom/cai88/tools/shishicai/HttpUtils;

.field public static isDebug:Z


# instance fields
.field private call:Lokhttp3/Call;

.field private client:Lokhttp3/OkHttpClient;

.field private handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/cai88/tools/shishicai/HttpUtils;->JSON:Lokhttp3/MediaType;

    .line 26
    const-string v0, "debug-okhttp"

    sput-object v0, Lcom/cai88/tools/shishicai/HttpUtils;->TAG:Ljava/lang/String;

    .line 27
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cai88/tools/shishicai/HttpUtils;->isDebug:Z

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/cai88/tools/shishicai/HttpUtils;->httpUtils:Lcom/cai88/tools/shishicai/HttpUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cai88/tools/shishicai/HttpUtils;->handler:Landroid/os/Handler;

    .line 35
    invoke-direct {p0}, Lcom/cai88/tools/shishicai/HttpUtils;->init()V

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/cai88/tools/shishicai/HttpUtils;Lcom/cai88/tools/shishicai/HttpUtils$HttpCallback;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/cai88/tools/shishicai/HttpUtils;
    .param p1, "x1"    # Lcom/cai88/tools/shishicai/HttpUtils$HttpCallback;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/cai88/tools/shishicai/HttpUtils;->onError(Lcom/cai88/tools/shishicai/HttpUtils$HttpCallback;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/cai88/tools/shishicai/HttpUtils;Lcom/cai88/tools/shishicai/HttpUtils$HttpCallback;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/cai88/tools/shishicai/HttpUtils;
    .param p1, "x1"    # Lcom/cai88/tools/shishicai/HttpUtils$HttpCallback;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/cai88/tools/shishicai/HttpUtils;->onSuccess(Lcom/cai88/tools/shishicai/HttpUtils$HttpCallback;Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/cai88/tools/shishicai/HttpUtils;
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/cai88/tools/shishicai/HttpUtils;->httpUtils:Lcom/cai88/tools/shishicai/HttpUtils;

    if-nez v0, :cond_1

    .line 41
    const-class v1, Lcom/cai88/tools/shishicai/HttpUtils;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Lcom/cai88/tools/shishicai/HttpUtils;->httpUtils:Lcom/cai88/tools/shishicai/HttpUtils;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/cai88/tools/shishicai/HttpUtils;

    invoke-direct {v0}, Lcom/cai88/tools/shishicai/HttpUtils;-><init>()V

    sput-object v0, Lcom/cai88/tools/shishicai/HttpUtils;->httpUtils:Lcom/cai88/tools/shishicai/HttpUtils;

    .line 45
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_1
    sget-object v0, Lcom/cai88/tools/shishicai/HttpUtils;->httpUtils:Lcom/cai88/tools/shishicai/HttpUtils;

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private init()V
    .locals 4

    .prologue
    const-wide/32 v2, 0xea60

    .line 52
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 53
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 54
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 55
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/cai88/tools/shishicai/HttpUtils;->client:Lokhttp3/OkHttpClient;

    .line 56
    return-void
.end method

.method private onError(Lcom/cai88/tools/shishicai/HttpUtils$HttpCallback;Ljava/lang/String;)V
    .locals 2
    .param p1, "callback"    # Lcom/cai88/tools/shishicai/HttpUtils$HttpCallback;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 233
    if-eqz p1, :cond_0

    .line 234
    iget-object v0, p0, Lcom/cai88/tools/shishicai/HttpUtils;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/cai88/tools/shishicai/HttpUtils$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/cai88/tools/shishicai/HttpUtils$5;-><init>(Lcom/cai88/tools/shishicai/HttpUtils;Lcom/cai88/tools/shishicai/HttpUtils$HttpCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 241
    :cond_0
    return-void
.end method

.method private onStart(Lcom/cai88/tools/shishicai/HttpUtils$HttpCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/cai88/tools/shishicai/HttpUtils$HttpCallback;

    .prologue
    .line 213
    if-eqz p1, :cond_0

    .line 214
    invoke-virtual {p1}, Lcom/cai88/tools/shishicai/HttpUtils$HttpCallback;->onStart()V

    .line 216
    :cond_0
    return-void
.end method

.method private onSuccess(Lcom/cai88/tools/shishicai/HttpUtils$HttpCallback;Ljava/lang/String;)V
    .locals 2
    .param p1, "callback"    # Lcom/cai88/tools/shishicai/HttpUtils$HttpCallback;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 220
    invoke-virtual {p0, p2}, Lcom/cai88/tools/shishicai/HttpUtils;->debug(Ljava/lang/String;)V

    .line 222
    if-eqz p1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/cai88/tools/shishicai/HttpUtils;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/cai88/tools/shishicai/HttpUtils$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/cai88/tools/shishicai/HttpUtils$4;-><init>(Lcom/cai88/tools/shishicai/HttpUtils;Lcom/cai88/tools/shishicai/HttpUtils$HttpCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 230
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/cai88/tools/shishicai/HttpUtils;->call:Lokhttp3/Call;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/cai88/tools/shishicai/HttpUtils;->call:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 97
    :cond_0
    return-void
.end method

.method public debug(Ljava/lang/String;)V
    .locals 2
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 201
    sget-boolean v0, Lcom/cai88/tools/shishicai/HttpUtils;->isDebug:Z

    if-nez v0, :cond_0

    .line 210
    :goto_0
    return-void

    .line 205
    :cond_0
    if-nez p1, :cond_1

    .line 206
    sget-object v0, Lcom/cai88/tools/shishicai/HttpUtils;->TAG:Ljava/lang/String;

    const-string v1, "params is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 208
    :cond_1
    sget-object v0, Lcom/cai88/tools/shishicai/HttpUtils;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public get(Ljava/lang/String;Lcom/cai88/tools/shishicai/HttpUtils$HttpCallback;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/cai88/tools/shishicai/HttpUtils$HttpCallback;

    .prologue
    .line 167
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 169
    .local v0, "request":Lokhttp3/Request;
    invoke-direct {p0, p2}, Lcom/cai88/tools/shishicai/HttpUtils;->onStart(Lcom/cai88/tools/shishicai/HttpUtils$HttpCallback;)V

    .line 171
    iget-object v1, p0, Lcom/cai88/tools/shishicai/HttpUtils;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    new-instance v2, Lcom/cai88/tools/shishicai/HttpUtils$3;

    invoke-direct {v2, p0, p2}, Lcom/cai88/tools/shishicai/HttpUtils$3;-><init>(Lcom/cai88/tools/shishicai/HttpUtils;Lcom/cai88/tools/shishicai/HttpUtils$HttpCallback;)V

    invoke-interface {v1, v2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 193
    return-void
.end method

.method public post(Ljava/lang/String;Ljava/util/Map;Lcom/cai88/tools/shishicai/HttpUtils$HttpCallback;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/cai88/tools/shishicai/HttpUtils$HttpCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/cai88/tools/shishicai/HttpUtils$HttpCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 114
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Lokhttp3/FormBody$Builder;

    invoke-direct {v1}, Lokhttp3/FormBody$Builder;-><init>()V

    .line 119
    .local v1, "builder":Lokhttp3/FormBody$Builder;
    if-eqz p2, :cond_0

    .line 120
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 122
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Key = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", Value = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 123
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 122
    invoke-virtual {v6, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 124
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    goto :goto_0

    .line 129
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    invoke-virtual {v1}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v0

    .line 131
    .local v0, "body":Lokhttp3/RequestBody;
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v4, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v3

    .line 133
    .local v3, "request":Lokhttp3/Request;
    invoke-direct {p0, p3}, Lcom/cai88/tools/shishicai/HttpUtils;->onStart(Lcom/cai88/tools/shishicai/HttpUtils$HttpCallback;)V

    .line 135
    iget-object v4, p0, Lcom/cai88/tools/shishicai/HttpUtils;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4, v3}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v4

    new-instance v5, Lcom/cai88/tools/shishicai/HttpUtils$2;

    invoke-direct {v5, p0, p3}, Lcom/cai88/tools/shishicai/HttpUtils$2;-><init>(Lcom/cai88/tools/shishicai/HttpUtils;Lcom/cai88/tools/shishicai/HttpUtils$HttpCallback;)V

    invoke-interface {v4, v5}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 157
    return-void
.end method

.method public postJson(Ljava/lang/String;Ljava/lang/String;Lcom/cai88/tools/shishicai/HttpUtils$HttpCallback;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/cai88/tools/shishicai/HttpUtils$HttpCallback;

    .prologue
    .line 68
    sget-object v2, Lcom/cai88/tools/shishicai/HttpUtils;->JSON:Lokhttp3/MediaType;

    invoke-static {v2, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 69
    .local v0, "body":Lokhttp3/RequestBody;
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 71
    .local v1, "request":Lokhttp3/Request;
    invoke-direct {p0, p3}, Lcom/cai88/tools/shishicai/HttpUtils;->onStart(Lcom/cai88/tools/shishicai/HttpUtils$HttpCallback;)V

    .line 72
    iget-object v2, p0, Lcom/cai88/tools/shishicai/HttpUtils;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v2, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    iput-object v2, p0, Lcom/cai88/tools/shishicai/HttpUtils;->call:Lokhttp3/Call;

    .line 73
    iget-object v2, p0, Lcom/cai88/tools/shishicai/HttpUtils;->call:Lokhttp3/Call;

    new-instance v3, Lcom/cai88/tools/shishicai/HttpUtils$1;

    invoke-direct {v3, p0, p3}, Lcom/cai88/tools/shishicai/HttpUtils$1;-><init>(Lcom/cai88/tools/shishicai/HttpUtils;Lcom/cai88/tools/shishicai/HttpUtils$HttpCallback;)V

    invoke-interface {v2, v3}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 92
    return-void
.end method
