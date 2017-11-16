.class public abstract Lcom/umeng/fb/model/Reply;
.super Ljava/lang/Object;
.source "Reply.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/fb/model/Reply$STATUS;,
        Lcom/umeng/fb/model/Reply$TYPE;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/umeng/fb/model/Reply;",
        ">;"
    }
.end annotation


# static fields
.field private static final JSON_KEY_APPKEY:Ljava/lang/String; = "appkey"

.field private static final JSON_KEY_CONTENT:Ljava/lang/String; = "content"

.field private static final JSON_KEY_DATE_TIME:Ljava/lang/String; = "datetime"

.field private static final JSON_KEY_FEEDBACK_ID:Ljava/lang/String; = "feedback_id"

.field private static final JSON_KEY_REPLY_ID:Ljava/lang/String; = "reply_id"

.field private static final JSON_KEY_STATUS:Ljava/lang/String; = "status"

.field private static final JSON_KEY_TYPE:Ljava/lang/String; = "type"

.field private static final JSON_KEY_USER_ID:Ljava/lang/String; = "user_id"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected appkey:Ljava/lang/String;

.field protected content:Ljava/lang/String;

.field protected datetime:Ljava/util/Date;

.field protected feedback_id:Ljava/lang/String;

.field protected reply_id:Ljava/lang/String;

.field protected status:Lcom/umeng/fb/model/Reply$STATUS;

.field protected type:Lcom/umeng/fb/model/Reply$TYPE;

.field protected user_id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/umeng/fb/model/Reply;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/fb/model/Reply;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/fb/model/Reply$TYPE;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "appkey"    # Ljava/lang/String;
    .param p3, "user_id"    # Ljava/lang/String;
    .param p4, "feedback_id"    # Ljava/lang/String;
    .param p5, "type"    # Lcom/umeng/fb/model/Reply$TYPE;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/umeng/fb/model/Reply;->content:Ljava/lang/String;

    .line 40
    invoke-static {}, Lcom/umeng/fb/util/Helper;->generateReplyID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/fb/model/Reply;->reply_id:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/umeng/fb/model/Reply;->appkey:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/umeng/fb/model/Reply;->user_id:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/umeng/fb/model/Reply;->feedback_id:Ljava/lang/String;

    .line 44
    iput-object p5, p0, Lcom/umeng/fb/model/Reply;->type:Lcom/umeng/fb/model/Reply$TYPE;

    .line 45
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/umeng/fb/model/Reply;->datetime:Ljava/util/Date;

    .line 46
    sget-object v0, Lcom/umeng/fb/model/Reply$STATUS;->NOT_SENT:Lcom/umeng/fb/model/Reply$STATUS;

    iput-object v0, p0, Lcom/umeng/fb/model/Reply;->status:Lcom/umeng/fb/model/Reply$STATUS;

    .line 47
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v3, "content"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/umeng/fb/model/Reply;->content:Ljava/lang/String;

    .line 53
    const-string v3, "reply_id"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/umeng/fb/model/Reply;->reply_id:Ljava/lang/String;

    .line 54
    const-string v3, "appkey"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/umeng/fb/model/Reply;->appkey:Ljava/lang/String;

    .line 55
    const-string v3, "user_id"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/umeng/fb/model/Reply;->user_id:Ljava/lang/String;

    .line 56
    const-string v3, "feedback_id"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/umeng/fb/model/Reply;->feedback_id:Ljava/lang/String;

    .line 58
    :try_start_0
    const-string v3, "type"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/fb/model/Reply$TYPE;->get(Ljava/lang/String;)Lcom/umeng/fb/model/Reply$TYPE;

    move-result-object v3

    iput-object v3, p0, Lcom/umeng/fb/model/Reply;->type:Lcom/umeng/fb/model/Reply$TYPE;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :try_start_1
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v4, "datetime"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lcom/umeng/fb/model/Reply;->datetime:Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 80
    :goto_0
    const-string v3, "status"

    sget-object v4, Lcom/umeng/fb/model/Reply$STATUS;->NOT_SENT:Lcom/umeng/fb/model/Reply$STATUS;

    invoke-virtual {v4}, Lcom/umeng/fb/model/Reply$STATUS;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "s":Ljava/lang/String;
    invoke-static {v2}, Lcom/umeng/fb/model/Reply$STATUS;->get(Ljava/lang/String;)Lcom/umeng/fb/model/Reply$STATUS;

    move-result-object v3

    iput-object v3, p0, Lcom/umeng/fb/model/Reply;->status:Lcom/umeng/fb/model/Reply$STATUS;

    .line 82
    return-void

    .line 60
    .end local v2    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/json/JSONException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 66
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 68
    .local v0, "e":Ljava/text/ParseException;
    :try_start_2
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3}, Ljava/text/SimpleDateFormat;-><init>()V

    const-string v4, "datetime"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lcom/umeng/fb/model/Reply;->datetime:Ljava/util/Date;
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 70
    :catch_2
    move-exception v1

    .line 71
    .local v1, "e1":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 73
    sget-object v3, Lcom/umeng/fb/model/Reply;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reply(JSONObject json): error parsing datetime from json "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "datetime"

    const-string v6, ""

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", using current Date instead."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/umeng/fb/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    iput-object v3, p0, Lcom/umeng/fb/model/Reply;->datetime:Ljava/util/Date;

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/umeng/fb/model/Reply;)I
    .locals 2
    .param p1, "another"    # Lcom/umeng/fb/model/Reply;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/umeng/fb/model/Reply;->datetime:Ljava/util/Date;

    iget-object v1, p1, Lcom/umeng/fb/model/Reply;->datetime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 15
    check-cast p1, Lcom/umeng/fb/model/Reply;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/umeng/fb/model/Reply;->compareTo(Lcom/umeng/fb/model/Reply;)I

    move-result v0

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/umeng/fb/model/Reply;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getDatetime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/umeng/fb/model/Reply;->datetime:Ljava/util/Date;

    return-object v0
.end method

.method public getStatus()Lcom/umeng/fb/model/Reply$STATUS;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/umeng/fb/model/Reply;->status:Lcom/umeng/fb/model/Reply$STATUS;

    return-object v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 86
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 87
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "content"

    iget-object v3, p0, Lcom/umeng/fb/model/Reply;->content:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string v2, "reply_id"

    iget-object v3, p0, Lcom/umeng/fb/model/Reply;->reply_id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    const-string v2, "appkey"

    iget-object v3, p0, Lcom/umeng/fb/model/Reply;->appkey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    const-string v2, "user_id"

    iget-object v3, p0, Lcom/umeng/fb/model/Reply;->user_id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string v2, "feedback_id"

    iget-object v3, p0, Lcom/umeng/fb/model/Reply;->feedback_id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    const-string v2, "type"

    iget-object v3, p0, Lcom/umeng/fb/model/Reply;->type:Lcom/umeng/fb/model/Reply$TYPE;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    const-string v2, "datetime"

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v4, p0, Lcom/umeng/fb/model/Reply;->datetime:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    const-string v2, "status"

    iget-object v3, p0, Lcom/umeng/fb/model/Reply;->status:Lcom/umeng/fb/model/Reply$STATUS;

    invoke-virtual {v3}, Lcom/umeng/fb/model/Reply$STATUS;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 100
    const/4 v1, 0x0

    goto :goto_0
.end method
