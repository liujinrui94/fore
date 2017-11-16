.class public Lcom/umeng/fb/net/DevReplyRequest;
.super Lcom/umeng/fb/net/URequest;
.source "DevReplyRequest.java"


# instance fields
.field public mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/umeng/fb/net/URequest;-><init>(Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/umeng/fb/net/DevReplyRequest;->mUrl:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getHttpMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/umeng/fb/net/DevReplyRequest;->GET:Ljava/lang/String;

    return-object v0
.end method

.method public toGetUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/umeng/fb/net/DevReplyRequest;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method
