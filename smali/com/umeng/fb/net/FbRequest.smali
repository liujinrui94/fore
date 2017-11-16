.class public Lcom/umeng/fb/net/FbRequest;
.super Lcom/umeng/fb/net/URequest;
.source "FbRequest.java"


# instance fields
.field public mKey:Ljava/lang/String;

.field public mReportContent:Ljava/lang/String;

.field public mValue:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/umeng/fb/net/URequest;-><init>(Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/umeng/fb/net/FbRequest;->mReportContent:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/json/JSONObject;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p3}, Lcom/umeng/fb/net/URequest;-><init>(Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/umeng/fb/net/FbRequest;->mKey:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/umeng/fb/net/FbRequest;->mValue:Lorg/json/JSONObject;

    .line 35
    iput-object p3, p0, Lcom/umeng/fb/net/FbRequest;->mReportContent:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public getHttpMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/umeng/fb/net/FbRequest;->POST:Ljava/lang/String;

    return-object v0
.end method

.method public toGetUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/umeng/fb/net/FbRequest;->mReportContent:Ljava/lang/String;

    return-object v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/umeng/fb/net/FbRequest;->mValue:Lorg/json/JSONObject;

    return-object v0
.end method
