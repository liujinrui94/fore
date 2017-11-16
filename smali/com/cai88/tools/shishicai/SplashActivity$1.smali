.class Lcom/cai88/tools/shishicai/SplashActivity$1;
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
    .line 34
    iput-object p1, p0, Lcom/cai88/tools/shishicai/SplashActivity$1;->this$0:Lcom/cai88/tools/shishicai/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 37
    iget-object v1, p0, Lcom/cai88/tools/shishicai/SplashActivity$1;->this$0:Lcom/cai88/tools/shishicai/SplashActivity;

    const-string v2, "\u7f51\u7edc\u8fde\u63a5\u65ad\u5f00"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 38
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 39
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/cai88/tools/shishicai/SplashActivity$1;->this$0:Lcom/cai88/tools/shishicai/SplashActivity;

    const-class v2, Lcom/cai88/tools/shishicai/MainActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 40
    iget-object v1, p0, Lcom/cai88/tools/shishicai/SplashActivity$1;->this$0:Lcom/cai88/tools/shishicai/SplashActivity;

    invoke-virtual {v1, v0}, Lcom/cai88/tools/shishicai/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 41
    iget-object v1, p0, Lcom/cai88/tools/shishicai/SplashActivity$1;->this$0:Lcom/cai88/tools/shishicai/SplashActivity;

    invoke-virtual {v1}, Lcom/cai88/tools/shishicai/SplashActivity;->finish()V

    .line 42
    return-void
.end method
