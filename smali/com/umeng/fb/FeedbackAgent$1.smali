.class Lcom/umeng/fb/FeedbackAgent$1;
.super Ljava/lang/Object;
.source "FeedbackAgent.java"

# interfaces
.implements Lcom/umeng/fb/model/Conversation$SyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/fb/FeedbackAgent;->sync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/fb/FeedbackAgent;


# direct methods
.method constructor <init>(Lcom/umeng/fb/FeedbackAgent;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/umeng/fb/FeedbackAgent$1;->this$0:Lcom/umeng/fb/FeedbackAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveDevReply(Ljava/util/List;)V
    .locals 7
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
    .local p1, "replyList":Ljava/util/List;, "Ljava/util/List<Lcom/umeng/fb/model/DevReply;>;"
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 68
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v5, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    const-string v0, ""

    .line 72
    .local v0, "content":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 73
    iget-object v3, p0, Lcom/umeng/fb/FeedbackAgent$1;->this$0:Lcom/umeng/fb/FeedbackAgent;

    invoke-static {v3}, Lcom/umeng/fb/FeedbackAgent;->access$000(Lcom/umeng/fb/FeedbackAgent;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/umeng/fb/FeedbackAgent$1;->this$0:Lcom/umeng/fb/FeedbackAgent;

    invoke-static {v4}, Lcom/umeng/fb/FeedbackAgent;->access$000(Lcom/umeng/fb/FeedbackAgent;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/fb/res/StringMapper;->umeng_fb_notification_content_formatter_single_msg(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "formatter":Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/umeng/fb/model/DevReply;

    invoke-virtual {v3}, Lcom/umeng/fb/model/DevReply;->getContent()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-static {v4, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 91
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/umeng/fb/FeedbackAgent$1;->this$0:Lcom/umeng/fb/FeedbackAgent;

    invoke-static {v3, v0}, Lcom/umeng/fb/FeedbackAgent;->access$100(Lcom/umeng/fb/FeedbackAgent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 81
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "formatter":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/umeng/fb/FeedbackAgent$1;->this$0:Lcom/umeng/fb/FeedbackAgent;

    invoke-static {v3}, Lcom/umeng/fb/FeedbackAgent;->access$000(Lcom/umeng/fb/FeedbackAgent;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/umeng/fb/FeedbackAgent$1;->this$0:Lcom/umeng/fb/FeedbackAgent;

    invoke-static {v4}, Lcom/umeng/fb/FeedbackAgent;->access$000(Lcom/umeng/fb/FeedbackAgent;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/fb/res/StringMapper;->umeng_fb_notification_content_formatter_multiple_msg(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 86
    .restart local v2    # "formatter":Ljava/lang/String;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public onSendUserReply(Ljava/util/List;)V
    .locals 0
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
    .line 64
    .local p1, "replyList":Ljava/util/List;, "Ljava/util/List<Lcom/umeng/fb/model/Reply;>;"
    return-void
.end method
