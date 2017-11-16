.class public Lcom/cai88/tools/shishicai/BaseActivity$UpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cai88/tools/shishicai/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cai88/tools/shishicai/BaseActivity;


# direct methods
.method public constructor <init>(Lcom/cai88/tools/shishicai/BaseActivity;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/cai88/tools/shishicai/BaseActivity$UpdateReceiver;->this$0:Lcom/cai88/tools/shishicai/BaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 93
    if-eqz p2, :cond_0

    .line 97
    :try_start_0
    const-string v2, "action"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 100
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/cai88/tools/shishicai/BaseActivity$UpdateReceiver;->this$0:Lcom/cai88/tools/shishicai/BaseActivity;

    invoke-virtual {v2, v0}, Lcom/cai88/tools/shishicai/BaseActivity;->BroadcastReceive(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    .end local v0    # "action":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 104
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "iws"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u63a5\u53d7\u5e7f\u64ad\u9519\u8bef:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
