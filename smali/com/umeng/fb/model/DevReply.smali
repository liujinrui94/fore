.class public Lcom/umeng/fb/model/DevReply;
.super Lcom/umeng/fb/model/Reply;
.source "DevReply.java"


# instance fields
.field protected user_name:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "appkey"    # Ljava/lang/String;
    .param p3, "user_id"    # Ljava/lang/String;
    .param p4, "feedback_id"    # Ljava/lang/String;
    .param p5, "userName"    # Ljava/lang/String;

    .prologue
    .line 19
    sget-object v5, Lcom/umeng/fb/model/Reply$TYPE;->DEV_REPLY:Lcom/umeng/fb/model/Reply$TYPE;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/umeng/fb/model/Reply;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/fb/model/Reply$TYPE;)V

    .line 20
    iput-object p5, p0, Lcom/umeng/fb/model/DevReply;->user_name:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/umeng/fb/model/Reply;-><init>(Lorg/json/JSONObject;)V

    .line 26
    iget-object v0, p0, Lcom/umeng/fb/model/DevReply;->type:Lcom/umeng/fb/model/Reply$TYPE;

    sget-object v1, Lcom/umeng/fb/model/Reply$TYPE;->DEV_REPLY:Lcom/umeng/fb/model/Reply$TYPE;

    if-eq v0, v1, :cond_0

    .line 27
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/umeng/fb/model/DevReply;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".type must be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/umeng/fb/model/Reply$TYPE;->DEV_REPLY:Lcom/umeng/fb/model/Reply$TYPE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    const-string v0, "user_name"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/fb/model/DevReply;->user_name:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 34
    invoke-super {p0}, Lcom/umeng/fb/model/Reply;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    .line 35
    .local v1, "json":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 37
    :try_start_0
    const-string v2, "user_name"

    iget-object v3, p0, Lcom/umeng/fb/model/DevReply;->user_name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 39
    .restart local v1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 43
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
