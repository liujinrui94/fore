.class Lcom/umeng/fb/ConversationActivity$1;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/fb/ConversationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/fb/ConversationActivity;


# direct methods
.method constructor <init>(Lcom/umeng/fb/ConversationActivity;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/umeng/fb/ConversationActivity$1;->this$0:Lcom/umeng/fb/ConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 74
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/umeng/fb/ConversationActivity$1;->this$0:Lcom/umeng/fb/ConversationActivity;

    const-class v2, Lcom/umeng/fb/ContactActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 76
    iget-object v1, p0, Lcom/umeng/fb/ConversationActivity$1;->this$0:Lcom/umeng/fb/ConversationActivity;

    invoke-virtual {v1, v0}, Lcom/umeng/fb/ConversationActivity;->startActivity(Landroid/content/Intent;)V

    .line 80
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    .line 81
    new-instance v1, Lcom/umeng/fb/ConversationActivity$1$1;

    invoke-direct {v1, p0}, Lcom/umeng/fb/ConversationActivity$1$1;-><init>(Lcom/umeng/fb/ConversationActivity$1;)V

    iget-object v2, p0, Lcom/umeng/fb/ConversationActivity$1;->this$0:Lcom/umeng/fb/ConversationActivity;

    invoke-virtual {v1, v2}, Lcom/umeng/fb/ConversationActivity$1$1;->overridePendingTransition(Landroid/app/Activity;)V

    .line 91
    :cond_0
    return-void
.end method
