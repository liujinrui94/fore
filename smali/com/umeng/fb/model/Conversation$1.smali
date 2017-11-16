.class Lcom/umeng/fb/model/Conversation$1;
.super Ljava/lang/Object;
.source "Conversation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/fb/model/Conversation;->sync(Lcom/umeng/fb/model/Conversation$SyncListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/fb/model/Conversation;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/umeng/fb/model/Conversation;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/umeng/fb/model/Conversation$1;->this$0:Lcom/umeng/fb/model/Conversation;

    iput-object p2, p0, Lcom/umeng/fb/model/Conversation$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v12, 0x1

    .line 172
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v10, "userReplyListToSend":Ljava/util/List;, "Ljava/util/List<Lcom/umeng/fb/model/Reply;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v3, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 175
    .local v4, "lastupdate":Ljava/util/Date;
    const-string v9, ""

    .line 182
    .local v9, "startKey":Ljava/lang/String;
    iget-object v11, p0, Lcom/umeng/fb/model/Conversation$1;->this$0:Lcom/umeng/fb/model/Conversation;

    invoke-static {v11}, Lcom/umeng/fb/model/Conversation;->access$000(Lcom/umeng/fb/model/Conversation;)Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 183
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/umeng/fb/model/Reply;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/umeng/fb/model/Reply;

    .line 184
    .local v7, "reply":Lcom/umeng/fb/model/Reply;
    instance-of v11, v7, Lcom/umeng/fb/model/UserReply;

    if-nez v11, :cond_1

    instance-of v11, v7, Lcom/umeng/fb/model/UserTitleReply;

    if-eqz v11, :cond_2

    .line 186
    :cond_1
    iget-object v11, v7, Lcom/umeng/fb/model/Reply;->status:Lcom/umeng/fb/model/Reply$STATUS;

    sget-object v13, Lcom/umeng/fb/model/Reply$STATUS;->NOT_SENT:Lcom/umeng/fb/model/Reply$STATUS;

    if-ne v11, v13, :cond_0

    .line 187
    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 189
    :cond_2
    instance-of v11, v7, Lcom/umeng/fb/model/DevReply;

    if-eqz v11, :cond_0

    .line 190
    if-eqz v4, :cond_3

    invoke-virtual {v7}, Lcom/umeng/fb/model/Reply;->getDatetime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v11

    if-gez v11, :cond_0

    .line 192
    :cond_3
    invoke-virtual {v7}, Lcom/umeng/fb/model/Reply;->getDatetime()Ljava/util/Date;

    move-result-object v4

    .line 193
    iget-object v9, v7, Lcom/umeng/fb/model/Reply;->reply_id:Ljava/lang/String;

    goto :goto_0

    .line 200
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/umeng/fb/model/Reply;>;"
    .end local v7    # "reply":Lcom/umeng/fb/model/Reply;
    :cond_4
    iget-object v11, p0, Lcom/umeng/fb/model/Conversation$1;->this$0:Lcom/umeng/fb/model/Conversation;

    invoke-static {v11}, Lcom/umeng/fb/model/Conversation;->access$100(Lcom/umeng/fb/model/Conversation;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/umeng/fb/model/Reply;

    .line 203
    .restart local v7    # "reply":Lcom/umeng/fb/model/Reply;
    new-instance v11, Lcom/umeng/fb/net/FbClient;

    iget-object v13, p0, Lcom/umeng/fb/model/Conversation$1;->this$0:Lcom/umeng/fb/model/Conversation;

    invoke-static {v13}, Lcom/umeng/fb/model/Conversation;->access$200(Lcom/umeng/fb/model/Conversation;)Landroid/content/Context;

    move-result-object v13

    invoke-direct {v11, v13}, Lcom/umeng/fb/net/FbClient;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11, v7}, Lcom/umeng/fb/net/FbClient;->sendReply(Lcom/umeng/fb/model/Reply;)Z

    move-result v8

    .line 204
    .local v8, "result":Z
    if-ne v8, v12, :cond_5

    .line 210
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 211
    .local v5, "msg":Landroid/os/Message;
    const/4 v11, 0x2

    iput v11, v5, Landroid/os/Message;->what:I

    .line 212
    iput-object v7, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 213
    if-eqz v8, :cond_6

    move v11, v12

    :goto_2
    iput v11, v5, Landroid/os/Message;->arg1:I

    .line 214
    iget-object v11, p0, Lcom/umeng/fb/model/Conversation$1;->val$handler:Landroid/os/Handler;

    invoke-virtual {v11, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 213
    :cond_6
    const/4 v11, 0x0

    goto :goto_2

    .line 218
    .end local v5    # "msg":Landroid/os/Message;
    .end local v7    # "reply":Lcom/umeng/fb/model/Reply;
    .end local v8    # "result":Z
    :cond_7
    new-instance v11, Lcom/umeng/fb/net/FbClient;

    iget-object v13, p0, Lcom/umeng/fb/model/Conversation$1;->this$0:Lcom/umeng/fb/model/Conversation;

    invoke-static {v13}, Lcom/umeng/fb/model/Conversation;->access$200(Lcom/umeng/fb/model/Conversation;)Landroid/content/Context;

    move-result-object v13

    invoke-direct {v11, v13}, Lcom/umeng/fb/net/FbClient;-><init>(Landroid/content/Context;)V

    iget-object v13, p0, Lcom/umeng/fb/model/Conversation$1;->this$0:Lcom/umeng/fb/model/Conversation;

    invoke-static {v13}, Lcom/umeng/fb/model/Conversation;->access$300(Lcom/umeng/fb/model/Conversation;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v3, v9, v13}, Lcom/umeng/fb/net/FbClient;->getDevReply(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 221
    .local v0, "devReplyListRetrieved":Ljava/util/List;, "Ljava/util/List<Lcom/umeng/fb/model/DevReply;>;"
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 222
    .restart local v5    # "msg":Landroid/os/Message;
    iput v12, v5, Landroid/os/Message;->what:I

    .line 223
    new-instance v6, Lcom/umeng/fb/model/Conversation$MessageWrapper;

    invoke-direct {v6}, Lcom/umeng/fb/model/Conversation$MessageWrapper;-><init>()V

    .line 224
    .local v6, "pair":Lcom/umeng/fb/model/Conversation$MessageWrapper;
    iput-object v0, v6, Lcom/umeng/fb/model/Conversation$MessageWrapper;->devReplyListRetrieved:Ljava/util/List;

    .line 225
    iput-object v10, v6, Lcom/umeng/fb/model/Conversation$MessageWrapper;->userReplyListToSend:Ljava/util/List;

    .line 226
    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 228
    iget-object v11, p0, Lcom/umeng/fb/model/Conversation$1;->val$handler:Landroid/os/Handler;

    invoke-virtual {v11, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 229
    return-void
.end method
