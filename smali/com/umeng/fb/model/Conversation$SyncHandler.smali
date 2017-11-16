.class Lcom/umeng/fb/model/Conversation$SyncHandler;
.super Landroid/os/Handler;
.source "Conversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/fb/model/Conversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncHandler"
.end annotation


# static fields
.field static final CALLBACK:I = 0x1

.field static final UPDATE_SEND_USER_REPLY_RESULT:I = 0x2


# instance fields
.field mListener:Lcom/umeng/fb/model/Conversation$SyncListener;

.field final synthetic this$0:Lcom/umeng/fb/model/Conversation;


# direct methods
.method public constructor <init>(Lcom/umeng/fb/model/Conversation;Lcom/umeng/fb/model/Conversation$SyncListener;)V
    .locals 0
    .param p2, "listener"    # Lcom/umeng/fb/model/Conversation$SyncListener;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/umeng/fb/model/Conversation$SyncHandler;->this$0:Lcom/umeng/fb/model/Conversation;

    .line 242
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 243
    iput-object p2, p0, Lcom/umeng/fb/model/Conversation$SyncHandler;->mListener:Lcom/umeng/fb/model/Conversation$SyncListener;

    .line 244
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 254
    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 255
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/umeng/fb/model/Reply;

    .line 256
    .local v3, "reply":Lcom/umeng/fb/model/Reply;
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v4, :cond_1

    .line 257
    .local v4, "result":Z
    :goto_0
    if-eqz v4, :cond_0

    .line 258
    sget-object v6, Lcom/umeng/fb/model/Reply$STATUS;->SENT:Lcom/umeng/fb/model/Reply$STATUS;

    iput-object v6, v3, Lcom/umeng/fb/model/Reply;->status:Lcom/umeng/fb/model/Reply$STATUS;

    .line 288
    .end local v3    # "reply":Lcom/umeng/fb/model/Reply;
    .end local v4    # "result":Z
    :cond_0
    :goto_1
    return-void

    .line 256
    .restart local v3    # "reply":Lcom/umeng/fb/model/Reply;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 260
    .end local v3    # "reply":Lcom/umeng/fb/model/Reply;
    :cond_2
    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v6, v4, :cond_0

    .line 261
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/umeng/fb/model/Conversation$MessageWrapper;

    .line 262
    .local v2, "obj":Lcom/umeng/fb/model/Conversation$MessageWrapper;
    iget-object v0, v2, Lcom/umeng/fb/model/Conversation$MessageWrapper;->devReplyListRetrieved:Ljava/util/List;

    .line 263
    .local v0, "devReplyListRetrieved":Ljava/util/List;, "Ljava/util/List<Lcom/umeng/fb/model/DevReply;>;"
    iget-object v5, v2, Lcom/umeng/fb/model/Conversation$MessageWrapper;->userReplyListToSend:Ljava/util/List;

    .line 265
    .local v5, "userReplyListToSend":Ljava/util/List;, "Ljava/util/List<Lcom/umeng/fb/model/Reply;>;"
    if-eqz v0, :cond_4

    .line 268
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 269
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/umeng/fb/model/DevReply;>;"
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 270
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/umeng/fb/model/Reply;

    .line 271
    .restart local v3    # "reply":Lcom/umeng/fb/model/Reply;
    iget-object v6, p0, Lcom/umeng/fb/model/Conversation$SyncHandler;->this$0:Lcom/umeng/fb/model/Conversation;

    invoke-static {v6}, Lcom/umeng/fb/model/Conversation;->access$000(Lcom/umeng/fb/model/Conversation;)Ljava/util/Map;

    move-result-object v6

    iget-object v7, v3, Lcom/umeng/fb/model/Reply;->reply_id:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 272
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 276
    :cond_3
    iget-object v6, p0, Lcom/umeng/fb/model/Conversation$SyncHandler;->this$0:Lcom/umeng/fb/model/Conversation;

    invoke-static {v6}, Lcom/umeng/fb/model/Conversation;->access$000(Lcom/umeng/fb/model/Conversation;)Ljava/util/Map;

    move-result-object v6

    iget-object v7, v3, Lcom/umeng/fb/model/Reply;->reply_id:Ljava/lang/String;

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 281
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/umeng/fb/model/DevReply;>;"
    .end local v3    # "reply":Lcom/umeng/fb/model/Reply;
    :cond_4
    iget-object v6, p0, Lcom/umeng/fb/model/Conversation$SyncHandler;->this$0:Lcom/umeng/fb/model/Conversation;

    invoke-static {v6}, Lcom/umeng/fb/model/Conversation;->access$400(Lcom/umeng/fb/model/Conversation;)V

    .line 282
    iget-object v6, p0, Lcom/umeng/fb/model/Conversation$SyncHandler;->mListener:Lcom/umeng/fb/model/Conversation$SyncListener;

    if-eqz v6, :cond_0

    .line 283
    iget-object v6, p0, Lcom/umeng/fb/model/Conversation$SyncHandler;->mListener:Lcom/umeng/fb/model/Conversation$SyncListener;

    invoke-interface {v6, v0}, Lcom/umeng/fb/model/Conversation$SyncListener;->onReceiveDevReply(Ljava/util/List;)V

    .line 284
    iget-object v6, p0, Lcom/umeng/fb/model/Conversation$SyncHandler;->mListener:Lcom/umeng/fb/model/Conversation$SyncListener;

    invoke-interface {v6, v5}, Lcom/umeng/fb/model/Conversation$SyncListener;->onSendUserReply(Ljava/util/List;)V

    goto :goto_1
.end method
