.class public Lcom/umeng/fb/model/Store;
.super Ljava/lang/Object;
.source "Store.java"


# static fields
.field private static INSTANCE:Lcom/umeng/fb/model/Store; = null

.field private static final PREFS_CONVERSATIONS:Ljava/lang/String; = "umeng_feedback_conversations"

.field private static final PREFS_USER_INFO:Ljava/lang/String; = "umeng_feedback_user_info"

.field private static final PREFS_USER_INFO_KEY:Ljava/lang/String; = "user"

.field private static final PREFS_USER_INFO_LAST_SYNC_KEY:Ljava/lang/String; = "last_sync_at"

.field private static final PREFS_USER_INFO_LAST_UPDATE_KEY:Ljava/lang/String; = "last_update_at"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/umeng/fb/model/Store;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/fb/model/Store;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/fb/model/Store;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/umeng/fb/model/Store;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    sget-object v0, Lcom/umeng/fb/model/Store;->INSTANCE:Lcom/umeng/fb/model/Store;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/umeng/fb/model/Store;

    invoke-direct {v0, p0}, Lcom/umeng/fb/model/Store;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/umeng/fb/model/Store;->INSTANCE:Lcom/umeng/fb/model/Store;

    .line 55
    :cond_0
    sget-object v0, Lcom/umeng/fb/model/Store;->INSTANCE:Lcom/umeng/fb/model/Store;

    return-object v0
.end method


# virtual methods
.method clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 175
    iget-object v0, p0, Lcom/umeng/fb/model/Store;->mContext:Landroid/content/Context;

    const-string v1, "umeng_feedback_conversations"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 177
    iget-object v0, p0, Lcom/umeng/fb/model/Store;->mContext:Landroid/content/Context;

    const-string v1, "umeng_feedback_user_info"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 179
    return-void
.end method

.method public getAllConversationIds()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v5, p0, Lcom/umeng/fb/model/Store;->mContext:Landroid/content/Context;

    const-string v6, "umeng_feedback_conversations"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 161
    .local v4, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 162
    .local v0, "cons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v1, "conversationIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 164
    .local v3, "id":Ljava/lang/String;
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 168
    .end local v3    # "id":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getConversationById(Ljava/lang/String;)Lcom/umeng/fb/model/Conversation;
    .locals 7
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 140
    :try_start_0
    iget-object v4, p0, Lcom/umeng/fb/model/Store;->mContext:Landroid/content/Context;

    const-string v5, "umeng_feedback_conversations"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 142
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v4, ""

    invoke-interface {v1, p1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "s":Ljava/lang/String;
    new-instance v3, Lcom/umeng/fb/model/Conversation;

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/umeng/fb/model/Store;->mContext:Landroid/content/Context;

    invoke-direct {v3, p1, v4, v5}, Lcom/umeng/fb/model/Conversation;-><init>(Ljava/lang/String;Lorg/json/JSONArray;Landroid/content/Context;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    .end local v2    # "s":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 150
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getUserInfo()Lcom/umeng/fb/model/UserInfo;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 84
    iget-object v3, p0, Lcom/umeng/fb/model/Store;->mContext:Landroid/content/Context;

    const-string v4, "umeng_feedback_user_info"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "user"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "info":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    :goto_0
    return-object v2

    .line 91
    :cond_0
    :try_start_0
    new-instance v3, Lcom/umeng/fb/model/UserInfo;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/umeng/fb/model/UserInfo;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getUserInfoLastSyncAt()J
    .locals 6

    .prologue
    .line 120
    iget-object v2, p0, Lcom/umeng/fb/model/Store;->mContext:Landroid/content/Context;

    const-string v3, "umeng_feedback_user_info"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "last_sync_at"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 123
    .local v0, "time":J
    return-wide v0
.end method

.method public getUserInfoLastUpdateAt()J
    .locals 6

    .prologue
    .line 106
    iget-object v2, p0, Lcom/umeng/fb/model/Store;->mContext:Landroid/content/Context;

    const-string v3, "umeng_feedback_user_info"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "last_update_at"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 110
    .local v0, "time":J
    return-wide v0
.end method

.method public saveCoversation(Lcom/umeng/fb/model/Conversation;)V
    .locals 3
    .param p1, "con"    # Lcom/umeng/fb/model/Conversation;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/umeng/fb/model/Store;->mContext:Landroid/content/Context;

    const-string v1, "umeng_feedback_conversations"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/umeng/fb/model/Conversation;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/umeng/fb/model/Conversation;->toJson()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 63
    return-void
.end method

.method public saveUserInfo(Lcom/umeng/fb/model/UserInfo;)V
    .locals 4
    .param p1, "user"    # Lcom/umeng/fb/model/UserInfo;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/umeng/fb/model/Store;->mContext:Landroid/content/Context;

    const-string v1, "umeng_feedback_user_info"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {p1}, Lcom/umeng/fb/model/UserInfo;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_update_at"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 72
    return-void
.end method

.method public setUserInfoLastSyncAt(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 134
    iget-object v0, p0, Lcom/umeng/fb/model/Store;->mContext:Landroid/content/Context;

    const-string v1, "umeng_feedback_user_info"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_sync_at"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 136
    return-void
.end method
