.class public Lcom/umeng/fb/net/FbResponse;
.super Lcom/umeng/fb/net/UResponse;
.source "FbResponse.java"


# instance fields
.field private jsonObj:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/umeng/fb/net/UResponse;-><init>(Lorg/json/JSONObject;)V

    .line 10
    iput-object p1, p0, Lcom/umeng/fb/net/FbResponse;->jsonObj:Lorg/json/JSONObject;

    .line 11
    return-void
.end method


# virtual methods
.method public getJson()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/umeng/fb/net/FbResponse;->jsonObj:Lorg/json/JSONObject;

    return-object v0
.end method
