.class public Lcom/cai88/tools/uitl/ApiAddressHelper;
.super Ljava/lang/Object;
.source "ApiAddressHelper.java"


# static fields
.field public static MURL_CAI88:Ljava/lang/String;

.field public static MURL_HELPNEWSDETAIL:Ljava/lang/String;

.field public static MURL_NEWSDETAIL:Ljava/lang/String;

.field public static SERVERHOST:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "http://cai88.com/api/"

    sput-object v0, Lcom/cai88/tools/uitl/ApiAddressHelper;->SERVERHOST:Ljava/lang/String;

    .line 13
    const-string v0, "http://m.cai88.com/"

    sput-object v0, Lcom/cai88/tools/uitl/ApiAddressHelper;->MURL_CAI88:Ljava/lang/String;

    .line 14
    const-string v0, "http://m.cai88.com/news/detail.html"

    sput-object v0, Lcom/cai88/tools/uitl/ApiAddressHelper;->MURL_NEWSDETAIL:Ljava/lang/String;

    .line 15
    const-string v0, "http://m.cai88.com/help/detail.html"

    sput-object v0, Lcom/cai88/tools/uitl/ApiAddressHelper;->MURL_HELPNEWSDETAIL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Omission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const-string v0, "Omission"

    invoke-static {v0}, Lcom/cai88/tools/uitl/ApiAddressHelper;->urlWhitParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static addressWhitParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "?r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 37
    const-string v1, "&version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "1.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 38
    const-string v1, "&tid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cai88/tools/shishicai/SscApplication;->channelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 39
    const-string v1, "&tyid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 40
    const-string v1, "&clientver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cai88/tools/shishicai/SscApplication;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 41
    const-string v1, "&imei="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cai88/tools/shishicai/SscApplication;->imei:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static details()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "details"

    invoke-static {v0}, Lcom/cai88/tools/uitl/ApiAddressHelper;->urlWhitParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentGameData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "getgame"

    invoke-static {v0}, Lcom/cai88/tools/uitl/ApiAddressHelper;->urlWhitParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getactives()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string v0, "getactives"

    invoke-static {v0}, Lcom/cai88/tools/uitl/ApiAddressHelper;->urlWhitParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static historyOpenUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string v0, "list"

    invoke-static {v0}, Lcom/cai88/tools/uitl/ApiAddressHelper;->urlWhitParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newsList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "NewsList"

    invoke-static {v0}, Lcom/cai88/tools/uitl/ApiAddressHelper;->urlWhitParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static numberHot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-string v0, "NumberHot"

    invoke-static {v0}, Lcom/cai88/tools/uitl/ApiAddressHelper;->urlWhitParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static prizecenterUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "prizecenter"

    invoke-static {v0}, Lcom/cai88/tools/uitl/ApiAddressHelper;->urlWhitParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static proxy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string v0, "proxy"

    invoke-static {v0}, Lcom/cai88/tools/uitl/ApiAddressHelper;->urlWhitParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static urlWhitParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cai88/tools/uitl/ApiAddressHelper;->SERVERHOST:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".action?r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 24
    const-string v1, "&version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "1.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 25
    const-string v1, "&tid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cai88/tools/shishicai/SscApplication;->channelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 26
    const-string v1, "&tyid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 27
    const-string v1, "&clientver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cai88/tools/shishicai/SscApplication;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 28
    const-string v1, "&imei="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cai88/tools/shishicai/SscApplication;->imei:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
