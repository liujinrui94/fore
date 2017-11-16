.class Lcom/umeng/fb/ConversationActivity$3;
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
    .line 111
    iput-object p1, p0, Lcom/umeng/fb/ConversationActivity$3;->this$0:Lcom/umeng/fb/ConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 115
    iget-object v2, p0, Lcom/umeng/fb/ConversationActivity$3;->this$0:Lcom/umeng/fb/ConversationActivity;

    iget-object v2, v2, Lcom/umeng/fb/ConversationActivity;->userReplyContentEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "content":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v2, p0, Lcom/umeng/fb/ConversationActivity$3;->this$0:Lcom/umeng/fb/ConversationActivity;

    iget-object v2, v2, Lcom/umeng/fb/ConversationActivity;->userReplyContentEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->clear()V

    .line 122
    iget-object v2, p0, Lcom/umeng/fb/ConversationActivity$3;->this$0:Lcom/umeng/fb/ConversationActivity;

    invoke-static {v2}, Lcom/umeng/fb/ConversationActivity;->access$000(Lcom/umeng/fb/ConversationActivity;)Lcom/umeng/fb/model/Conversation;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/umeng/fb/model/Conversation;->addUserReply(Ljava/lang/String;)V

    .line 129
    iget-object v2, p0, Lcom/umeng/fb/ConversationActivity$3;->this$0:Lcom/umeng/fb/ConversationActivity;

    invoke-virtual {v2}, Lcom/umeng/fb/ConversationActivity;->sync()V

    .line 132
    iget-object v2, p0, Lcom/umeng/fb/ConversationActivity$3;->this$0:Lcom/umeng/fb/ConversationActivity;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Lcom/umeng/fb/ConversationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 133
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    .line 134
    iget-object v2, p0, Lcom/umeng/fb/ConversationActivity$3;->this$0:Lcom/umeng/fb/ConversationActivity;

    iget-object v2, v2, Lcom/umeng/fb/ConversationActivity;->userReplyContentEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method
