.class public Lcom/cai88/tools/shishicai/SscApplication;
.super Landroid/app/Application;
.source "SscApplication.java"


# static fields
.field public static GameCode:Ljava/lang/String;

.field public static channelId:Ljava/lang/String;

.field public static context:Landroid/content/Context;

.field public static imei:Ljava/lang/String;

.field public static final isDebug:Z

.field public static startContext:Landroid/content/Context;

.field public static userAgent:Ljava/lang/String;

.field public static version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/cai88/tools/shishicai/SscApplication;->startContext:Landroid/content/Context;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 25
    sput-object p0, Lcom/cai88/tools/shishicai/SscApplication;->context:Landroid/content/Context;

    .line 26
    return-void
.end method

.method private initJPush()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    invoke-static {v0}, Lcn/jpush/android/api/JPushInterface;->setDebugMode(Z)V

    .line 23
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->init(Landroid/content/Context;)V

    .line 24
    return-void
.end method

# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/cai88/tools/shishicai/SscApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/cai88/tools/uitl/Common;->getVesionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cai88/tools/shishicai/SscApplication;->version:Ljava/lang/String;

    .line 30
    sget-object v0, Lcom/cai88/tools/shishicai/SscApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/cai88/tools/uitl/Common;->ReadChannelNumUmeng(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cai88/tools/shishicai/SscApplication;->channelId:Ljava/lang/String;

    .line 31
    sget-object v0, Lcom/cai88/tools/shishicai/SscApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/cai88/tools/uitl/Common;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cai88/tools/shishicai/SscApplication;->imei:Ljava/lang/String;

    .line 32
    sget-object v0, Lcom/cai88/tools/shishicai/SscApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/cai88/tools/uitl/Common;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cai88/tools/shishicai/SscApplication;->userAgent:Ljava/lang/String;

    .line 33
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->updateOnlineConfig(Landroid/content/Context;)V

    .line 34
	
	invoke-direct {p0}, Lcom/cai88/tools/shishicai/SscApplication;->initJPush()V

    .line 35
    return-void
.end method
