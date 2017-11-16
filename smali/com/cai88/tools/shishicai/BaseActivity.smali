.class public abstract Lcom/cai88/tools/shishicai/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cai88/tools/shishicai/BaseActivity$UpdateReceiver;
    }
.end annotation


# instance fields
.field protected baseBundle:Landroid/os/Bundle;

.field protected context:Landroid/content/Context;

.field protected gson:Lcom/google/gson/Gson;

.field protected localActivityManager:Landroid/app/LocalActivityManager;

.field protected param:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected pgView:Landroid/app/ProgressDialog;

.field private receiver:Lcom/cai88/tools/shishicai/BaseActivity$UpdateReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cai88/tools/shishicai/BaseActivity;->receiver:Lcom/cai88/tools/shishicai/BaseActivity$UpdateReceiver;

    .line 20
    return-void
.end method

.method private startreceiver()V
    .locals 2

    .prologue
    .line 111
    iget-object v1, p0, Lcom/cai88/tools/shishicai/BaseActivity;->receiver:Lcom/cai88/tools/shishicai/BaseActivity$UpdateReceiver;

    if-nez v1, :cond_0

    .line 115
    :try_start_0
    new-instance v1, Lcom/cai88/tools/shishicai/BaseActivity$UpdateReceiver;

    invoke-direct {v1, p0}, Lcom/cai88/tools/shishicai/BaseActivity$UpdateReceiver;-><init>(Lcom/cai88/tools/shishicai/BaseActivity;)V

    iput-object v1, p0, Lcom/cai88/tools/shishicai/BaseActivity;->receiver:Lcom/cai88/tools/shishicai/BaseActivity$UpdateReceiver;

    .line 116
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 117
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.cai88.tools.shishicai.msg"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/cai88/tools/shishicai/BaseActivity;->receiver:Lcom/cai88/tools/shishicai/BaseActivity$UpdateReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/cai88/tools/shishicai/BaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private stopreceiver()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/cai88/tools/shishicai/BaseActivity;->receiver:Lcom/cai88/tools/shishicai/BaseActivity$UpdateReceiver;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/cai88/tools/shishicai/BaseActivity;->receiver:Lcom/cai88/tools/shishicai/BaseActivity$UpdateReceiver;

    invoke-virtual {p0, v0}, Lcom/cai88/tools/shishicai/BaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 131
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract AppInit()V
.end method

.method protected abstract BroadcastReceive(Ljava/lang/String;)V
.end method

.method protected abstract DataInit()V
.end method

.method protected abstract Destroy()V
.end method

.method protected abstract ViewInit()V
.end method

.method protected abstract ViewListen()V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "paramBundle"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    iput-object p0, p0, Lcom/cai88/tools/shishicai/BaseActivity;->context:Landroid/content/Context;

    .line 47
    iput-object p1, p0, Lcom/cai88/tools/shishicai/BaseActivity;->baseBundle:Landroid/os/Bundle;

    .line 48
    new-instance v0, Landroid/app/LocalActivityManager;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/app/LocalActivityManager;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/cai88/tools/shishicai/BaseActivity;->localActivityManager:Landroid/app/LocalActivityManager;

    .line 49
    iget-object v0, p0, Lcom/cai88/tools/shishicai/BaseActivity;->localActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/LocalActivityManager;->dispatchCreate(Landroid/os/Bundle;)V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cai88/tools/shishicai/BaseActivity;->param:Ljava/util/HashMap;

    .line 51
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Lcom/cai88/tools/shishicai/BaseActivity;->gson:Lcom/google/gson/Gson;

    .line 52
    invoke-direct {p0}, Lcom/cai88/tools/shishicai/BaseActivity;->startreceiver()V

    .line 53
    invoke-virtual {p0}, Lcom/cai88/tools/shishicai/BaseActivity;->AppInit()V

    .line 54
    invoke-virtual {p0}, Lcom/cai88/tools/shishicai/BaseActivity;->ViewInit()V

    .line 55
    invoke-virtual {p0}, Lcom/cai88/tools/shishicai/BaseActivity;->ViewListen()V

    .line 56
    invoke-virtual {p0}, Lcom/cai88/tools/shishicai/BaseActivity;->DataInit()V

    .line 57
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 84
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 85
    invoke-direct {p0}, Lcom/cai88/tools/shishicai/BaseActivity;->stopreceiver()V

    .line 86
    invoke-virtual {p0}, Lcom/cai88/tools/shishicai/BaseActivity;->Destroy()V

    .line 87
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 75
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 76
    iget-object v0, p0, Lcom/cai88/tools/shishicai/BaseActivity;->localActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {p0}, Lcom/cai88/tools/shishicai/BaseActivity;->isFinishing()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->dispatchPause(Z)V

    .line 77
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 65
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 69
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 70
    iget-object v0, p0, Lcom/cai88/tools/shishicai/BaseActivity;->localActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->dispatchResume()V

    .line 71
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 61
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 81
    return-void
.end method
