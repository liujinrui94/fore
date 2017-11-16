.class public Lcom/umeng/fb/model/Conversation;
.super Ljava/lang/Object;
.source "Conversation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/fb/model/Conversation$SyncListener;,
        Lcom/umeng/fb/model/Conversation$MessageWrapper;,
        Lcom/umeng/fb/model/Conversation$SyncHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static executor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private appkey:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private replyIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/umeng/fb/model/Reply;",
            ">;"
        }
    .end annotation
.end field

.field replyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/fb/model/Reply;",
            ">;"
        }
    .end annotation
.end field

.field private user_id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/umeng/fb/model/Conversation;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/fb/model/Conversation;->TAG:Ljava/lang/String;

    .line 29
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/umeng/fb/model/Conversation;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/fb/model/Conversation;->replyList:Ljava/util/List;

    .line 57
    iput-object p1, p0, Lcom/umeng/fb/model/Conversation;->mContext:Landroid/content/Context;

    .line 58
    iget-object v0, p0, Lcom/umeng/fb/model/Conversation;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/fb/util/DeviceConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/fb/model/Conversation;->appkey:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/umeng/fb/model/Conversation;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/fb/util/Helper;->generateFeedbackId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/fb/model/Conversation;->id:Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/umeng/fb/model/Conversation;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/fb/util/DeviceConfig;->getDeviceIdUmengMD5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/fb/model/Conversation;->user_id:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/umeng/fb/model/Conversation;->replyIdMap:Ljava/util/Map;

    .line 64
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/json/JSONArray;Landroid/content/Context;)V
    .locals 7
    .param p1, "conId"    # Ljava/lang/String;
    .param p2, "json"    # Lorg/json/JSONArray;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/umeng/fb/model/Conversation;->replyList:Ljava/util/List;

    .line 75
    iput-object p3, p0, Lcom/umeng/fb/model/Conversation;->mContext:Landroid/content/Context;

    .line 76
    iget-object v4, p0, Lcom/umeng/fb/model/Conversation;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/fb/util/DeviceConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/umeng/fb/model/Conversation;->appkey:Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lcom/umeng/fb/model/Conversation;->id:Ljava/lang/String;

    .line 78
    iget-object v4, p0, Lcom/umeng/fb/model/Conversation;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/fb/util/DeviceConfig;->getDeviceIdUmengMD5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/umeng/fb/model/Conversation;->user_id:Ljava/lang/String;

    .line 81
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/umeng/fb/model/Conversation;->replyIdMap:Ljava/util/Map;

    .line 86
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_7

    .line 93
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 94
    .local v1, "j":Lorg/json/JSONObject;
    const-string v4, "type"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, "type":Ljava/lang/String;
    const/4 v2, 0x0

    .line 96
    .local v2, "reply":Lcom/umeng/fb/model/Reply;
    sget-object v4, Lcom/umeng/fb/model/Reply$TYPE;->NEW_FEEDBACK:Lcom/umeng/fb/model/Reply$TYPE;

    invoke-virtual {v4}, Lcom/umeng/fb/model/Reply$TYPE;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 97
    new-instance v2, Lcom/umeng/fb/model/UserTitleReply;

    .end local v2    # "reply":Lcom/umeng/fb/model/Reply;
    invoke-direct {v2, v1}, Lcom/umeng/fb/model/UserTitleReply;-><init>(Lorg/json/JSONObject;)V

    .line 103
    .restart local v2    # "reply":Lcom/umeng/fb/model/Reply;
    :cond_2
    :goto_2
    if-nez v2, :cond_5

    .line 104
    new-instance v4, Lorg/json/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to create Conversation using given JSONArray: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at element "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 98
    :cond_3
    sget-object v4, Lcom/umeng/fb/model/Reply$TYPE;->USER_REPLY:Lcom/umeng/fb/model/Reply$TYPE;

    invoke-virtual {v4}, Lcom/umeng/fb/model/Reply$TYPE;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 99
    new-instance v2, Lcom/umeng/fb/model/UserReply;

    .end local v2    # "reply":Lcom/umeng/fb/model/Reply;
    invoke-direct {v2, v1}, Lcom/umeng/fb/model/UserReply;-><init>(Lorg/json/JSONObject;)V

    .restart local v2    # "reply":Lcom/umeng/fb/model/Reply;
    goto :goto_2

    .line 100
    :cond_4
    sget-object v4, Lcom/umeng/fb/model/Reply$TYPE;->DEV_REPLY:Lcom/umeng/fb/model/Reply$TYPE;

    invoke-virtual {v4}, Lcom/umeng/fb/model/Reply$TYPE;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 101
    new-instance v2, Lcom/umeng/fb/model/DevReply;

    .end local v2    # "reply":Lcom/umeng/fb/model/Reply;
    invoke-direct {v2, v1}, Lcom/umeng/fb/model/DevReply;-><init>(Lorg/json/JSONObject;)V

    .restart local v2    # "reply":Lcom/umeng/fb/model/Reply;
    goto :goto_2

    .line 108
    :cond_5
    iget-object v4, p0, Lcom/umeng/fb/model/Conversation;->replyIdMap:Ljava/util/Map;

    iget-object v5, v2, Lcom/umeng/fb/model/Reply;->reply_id:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 109
    iget-object v4, p0, Lcom/umeng/fb/model/Conversation;->replyIdMap:Ljava/util/Map;

    iget-object v5, v2, Lcom/umeng/fb/model/Reply;->reply_id:Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 112
    .end local v1    # "j":Lorg/json/JSONObject;
    .end local v2    # "reply":Lcom/umeng/fb/model/Reply;
    .end local v3    # "type":Ljava/lang/String;
    :cond_7
    invoke-direct {p0}, Lcom/umeng/fb/model/Conversation;->commitChange()V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/umeng/fb/model/Conversation;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/umeng/fb/model/Conversation;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/umeng/fb/model/Conversation;->replyIdMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/umeng/fb/model/Conversation;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/umeng/fb/model/Conversation;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/umeng/fb/model/Conversation;->id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/umeng/fb/model/Conversation;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/umeng/fb/model/Conversation;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/umeng/fb/model/Conversation;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/umeng/fb/model/Conversation;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/umeng/fb/model/Conversation;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/umeng/fb/model/Conversation;->appkey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/umeng/fb/model/Conversation;)V
    .locals 0
    .param p0, "x0"    # Lcom/umeng/fb/model/Conversation;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/umeng/fb/model/Conversation;->commitChange()V

    return-void
.end method

.method private commitChange()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/umeng/fb/model/Conversation;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/fb/model/Store;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/model/Store;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/umeng/fb/model/Store;->saveCoversation(Lcom/umeng/fb/model/Conversation;)V

    .line 141
    return-void
.end method


# virtual methods
.method public addUserReply(Ljava/lang/String;)V
    .locals 4
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v1, p0, Lcom/umeng/fb/model/Conversation;->replyIdMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 125
    new-instance v0, Lcom/umeng/fb/model/UserTitleReply;

    iget-object v1, p0, Lcom/umeng/fb/model/Conversation;->appkey:Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/fb/model/Conversation;->user_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/umeng/fb/model/Conversation;->id:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/umeng/fb/model/UserTitleReply;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .local v0, "reply":Lcom/umeng/fb/model/Reply;
    :goto_0
    iget-object v1, p0, Lcom/umeng/fb/model/Conversation;->replyIdMap:Ljava/util/Map;

    iget-object v2, v0, Lcom/umeng/fb/model/Reply;->reply_id:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/umeng/fb/model/Conversation;->replyIdMap:Ljava/util/Map;

    iget-object v2, v0, Lcom/umeng/fb/model/Reply;->reply_id:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/umeng/fb/model/Conversation;->commitChange()V

    .line 134
    return-void

    .line 127
    .end local v0    # "reply":Lcom/umeng/fb/model/Reply;
    :cond_1
    new-instance v0, Lcom/umeng/fb/model/UserReply;

    iget-object v1, p0, Lcom/umeng/fb/model/Conversation;->appkey:Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/fb/model/Conversation;->user_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/umeng/fb/model/Conversation;->id:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/umeng/fb/model/UserReply;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "reply":Lcom/umeng/fb/model/Reply;
    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/umeng/fb/model/Conversation;->id:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getReplyList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/fb/model/Reply;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/umeng/fb/model/Conversation;->replyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 48
    iget-object v0, p0, Lcom/umeng/fb/model/Conversation;->replyList:Ljava/util/List;

    iget-object v1, p0, Lcom/umeng/fb/model/Conversation;->replyIdMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 49
    iget-object v0, p0, Lcom/umeng/fb/model/Conversation;->replyList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 50
    iget-object v0, p0, Lcom/umeng/fb/model/Conversation;->replyList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sync(Lcom/umeng/fb/model/Conversation$SyncListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/umeng/fb/model/Conversation$SyncListener;

    .prologue
    .line 168
    new-instance v0, Lcom/umeng/fb/model/Conversation$SyncHandler;

    invoke-direct {v0, p0, p1}, Lcom/umeng/fb/model/Conversation$SyncHandler;-><init>(Lcom/umeng/fb/model/Conversation;Lcom/umeng/fb/model/Conversation$SyncListener;)V

    .line 169
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/umeng/fb/model/Conversation$1;

    invoke-direct {v1, p0, v0}, Lcom/umeng/fb/model/Conversation$1;-><init>(Lcom/umeng/fb/model/Conversation;Landroid/os/Handler;)V

    .line 232
    .local v1, "syncThread":Ljava/lang/Runnable;
    sget-object v2, Lcom/umeng/fb/model/Conversation;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 233
    return-void
.end method

.method toJson()Lorg/json/JSONArray;
    .locals 5

    .prologue
    .line 144
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 145
    .local v2, "json":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/umeng/fb/model/Conversation;->replyIdMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 147
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/umeng/fb/model/Reply;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/umeng/fb/model/Reply;

    .line 148
    .local v3, "reply":Lcom/umeng/fb/model/Reply;
    invoke-virtual {v3}, Lcom/umeng/fb/model/Reply;->toJson()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 150
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/umeng/fb/model/Reply;>;"
    .end local v3    # "reply":Lcom/umeng/fb/model/Reply;
    :cond_0
    return-object v2
.end method
