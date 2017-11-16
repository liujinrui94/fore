.class Lcom/umeng/fb/ContactActivity$2;
.super Ljava/lang/Object;
.source "ContactActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/fb/ContactActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/fb/ContactActivity;


# direct methods
.method constructor <init>(Lcom/umeng/fb/ContactActivity;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/umeng/fb/ContactActivity$2;->this$0:Lcom/umeng/fb/ContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 111
    :try_start_0
    iget-object v4, p0, Lcom/umeng/fb/ContactActivity$2;->this$0:Lcom/umeng/fb/ContactActivity;

    invoke-static {v4}, Lcom/umeng/fb/ContactActivity;->access$000(Lcom/umeng/fb/ContactActivity;)Lcom/umeng/fb/FeedbackAgent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/umeng/fb/FeedbackAgent;->getUserInfo()Lcom/umeng/fb/model/UserInfo;

    move-result-object v3

    .line 112
    .local v3, "info":Lcom/umeng/fb/model/UserInfo;
    if-nez v3, :cond_0

    .line 113
    new-instance v3, Lcom/umeng/fb/model/UserInfo;

    .end local v3    # "info":Lcom/umeng/fb/model/UserInfo;
    invoke-direct {v3}, Lcom/umeng/fb/model/UserInfo;-><init>()V

    .line 114
    .restart local v3    # "info":Lcom/umeng/fb/model/UserInfo;
    :cond_0
    invoke-virtual {v3}, Lcom/umeng/fb/model/UserInfo;->getContact()Ljava/util/Map;

    move-result-object v0

    .line 115
    .local v0, "contact":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 116
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "contact":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 117
    .restart local v0    # "contact":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    iget-object v4, p0, Lcom/umeng/fb/ContactActivity$2;->this$0:Lcom/umeng/fb/ContactActivity;

    invoke-static {v4}, Lcom/umeng/fb/ContactActivity;->access$100(Lcom/umeng/fb/ContactActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "contact_info":Ljava/lang/String;
    const-string v4, "plain"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-virtual {v3, v0}, Lcom/umeng/fb/model/UserInfo;->setContact(Ljava/util/Map;)V

    .line 129
    iget-object v4, p0, Lcom/umeng/fb/ContactActivity$2;->this$0:Lcom/umeng/fb/ContactActivity;

    invoke-static {v4}, Lcom/umeng/fb/ContactActivity;->access$000(Lcom/umeng/fb/ContactActivity;)Lcom/umeng/fb/FeedbackAgent;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/umeng/fb/FeedbackAgent;->setUserInfo(Lcom/umeng/fb/model/UserInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v0    # "contact":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "contact_info":Ljava/lang/String;
    .end local v3    # "info":Lcom/umeng/fb/model/UserInfo;
    :goto_0
    iget-object v4, p0, Lcom/umeng/fb/ContactActivity$2;->this$0:Lcom/umeng/fb/ContactActivity;

    invoke-virtual {v4}, Lcom/umeng/fb/ContactActivity;->back()V

    .line 135
    return-void

    .line 131
    :catch_0
    move-exception v2

    .line 132
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
