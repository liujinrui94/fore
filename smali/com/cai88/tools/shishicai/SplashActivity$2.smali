.class Lcom/cai88/tools/shishicai/SplashActivity$2;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cai88/tools/shishicai/SplashActivity;->initM()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cai88/tools/shishicai/SplashActivity;


# direct methods
.method constructor <init>(Lcom/cai88/tools/shishicai/SplashActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cai88/tools/shishicai/SplashActivity;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/cai88/tools/shishicai/SplashActivity$2;->this$0:Lcom/cai88/tools/shishicai/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 49
    invoke-static {}, Lcom/cai88/tools/shishicai/HttpUtils;->getInstance()Lcom/cai88/tools/shishicai/HttpUtils;

    move-result-object v0

    const-string v1, "http://115.126.65.150/Lottery_server/check_and_get_url.php?type=android&show_url=1&appid=no30614"

    new-instance v2, Lcom/cai88/tools/shishicai/SplashActivity$2$1;

    invoke-direct {v2, p0}, Lcom/cai88/tools/shishicai/SplashActivity$2$1;-><init>(Lcom/cai88/tools/shishicai/SplashActivity$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/cai88/tools/shishicai/HttpUtils;->get(Ljava/lang/String;Lcom/cai88/tools/shishicai/HttpUtils$HttpCallback;)V

    .line 91
    return-void
.end method
