.class Lcom/umeng/fb/ConversationActivity$6;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Lcom/umeng/fb/model/Conversation$SyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/fb/ConversationActivity;->sync()V
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
    .line 266
    iput-object p1, p0, Lcom/umeng/fb/ConversationActivity$6;->this$0:Lcom/umeng/fb/ConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveDevReply(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/fb/model/DevReply;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 275
    .local p1, "replyList":Ljava/util/List;, "Ljava/util/List<Lcom/umeng/fb/model/DevReply;>;"
    return-void
.end method

.method public onSendUserReply(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/fb/model/Reply;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 270
    .local p1, "replyList":Ljava/util/List;, "Ljava/util/List<Lcom/umeng/fb/model/Reply;>;"
    iget-object v0, p0, Lcom/umeng/fb/ConversationActivity$6;->this$0:Lcom/umeng/fb/ConversationActivity;

    invoke-static {v0}, Lcom/umeng/fb/ConversationActivity;->access$300(Lcom/umeng/fb/ConversationActivity;)Lcom/umeng/fb/ConversationActivity$ReplyListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/fb/ConversationActivity$ReplyListAdapter;->notifyDataSetChanged()V

    .line 271
    return-void
.end method
