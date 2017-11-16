.class public Lcom/umeng/fb/FeedbackAgent;
.super Ljava/lang/Object;
.source "FeedbackAgent.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private store:Lcom/umeng/fb/model/Store;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/umeng/fb/FeedbackAgent;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/fb/FeedbackAgent;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/umeng/fb/FeedbackAgent;->mContext:Landroid/content/Context;

    .line 30
    iget-object v0, p0, Lcom/umeng/fb/FeedbackAgent;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/fb/model/Store;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/model/Store;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/fb/FeedbackAgent;->store:Lcom/umeng/fb/model/Store;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/umeng/fb/FeedbackAgent;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/umeng/fb/FeedbackAgent;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/umeng/fb/FeedbackAgent;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/umeng/fb/FeedbackAgent;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/umeng/fb/FeedbackAgent;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/umeng/fb/FeedbackAgent;->showReplyNotification(Ljava/lang/String;)V

    return-void
.end method

.method private showReplyNotification(Ljava/lang/String;)V
    .locals 8
    .param p1, "replyContent"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 108
    iget-object v5, p0, Lcom/umeng/fb/FeedbackAgent;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 111
    .local v3, "notificationManager":Landroid/app/NotificationManager;
    iget-object v5, p0, Lcom/umeng/fb/FeedbackAgent;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/umeng/fb/FeedbackAgent;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/umeng/fb/res/StringMapper;->umeng_fb_notification_ticker_text(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, "tickerText":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/umeng/fb/FeedbackAgent;->mContext:Landroid/content/Context;

    const-class v6, Lcom/umeng/fb/ConversationActivity;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    .local v1, "intentToLaunch":Landroid/content/Intent;
    const/high16 v5, 0x20000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 116
    iget-object v5, p0, Lcom/umeng/fb/FeedbackAgent;->mContext:Landroid/content/Context;

    invoke-static {v5, v7, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 119
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v6, p0, Lcom/umeng/fb/FeedbackAgent;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/umeng/fb/FeedbackAgent;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/umeng/fb/res/DrawableMapper;->umeng_fb_statusbar_icon(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 126
    .local v2, "mBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v3, v7, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 127
    return-void
.end method


# virtual methods
.method public getAllConversationIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/umeng/fb/FeedbackAgent;->store:Lcom/umeng/fb/model/Store;

    invoke-virtual {v0}, Lcom/umeng/fb/model/Store;->getAllConversationIds()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConversationById(Ljava/lang/String;)Lcom/umeng/fb/model/Conversation;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/umeng/fb/FeedbackAgent;->store:Lcom/umeng/fb/model/Store;

    invoke-virtual {v0, p1}, Lcom/umeng/fb/model/Store;->getConversationById(Ljava/lang/String;)Lcom/umeng/fb/model/Conversation;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultConversation()Lcom/umeng/fb/model/Conversation;
    .locals 5

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/umeng/fb/FeedbackAgent;->getAllConversationIds()Ljava/util/List;

    move-result-object v1

    .line 47
    .local v1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 48
    :cond_0
    sget-object v2, Lcom/umeng/fb/FeedbackAgent;->TAG:Ljava/lang/String;

    const-string v3, "getDefaultConversation: No conversation saved locally. Create a new one."

    invoke-static {v2, v3}, Lcom/umeng/fb/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance v0, Lcom/umeng/fb/model/Conversation;

    iget-object v2, p0, Lcom/umeng/fb/FeedbackAgent;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/umeng/fb/model/Conversation;-><init>(Landroid/content/Context;)V

    .line 55
    :goto_0
    return-object v0

    .line 53
    :cond_1
    sget-object v2, Lcom/umeng/fb/FeedbackAgent;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultConversation: There are "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " saved locally, use the first one by default."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/fb/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/umeng/fb/FeedbackAgent;->getConversationById(Ljava/lang/String;)Lcom/umeng/fb/model/Conversation;

    move-result-object v0

    goto :goto_0
.end method

.method public getUserInfo()Lcom/umeng/fb/model/UserInfo;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/umeng/fb/FeedbackAgent;->store:Lcom/umeng/fb/model/Store;

    invoke-virtual {v0}, Lcom/umeng/fb/model/Store;->getUserInfo()Lcom/umeng/fb/model/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfoLastUpdateAt()J
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/umeng/fb/FeedbackAgent;->store:Lcom/umeng/fb/model/Store;

    invoke-virtual {v0}, Lcom/umeng/fb/model/Store;->getUserInfoLastUpdateAt()J

    move-result-wide v0

    return-wide v0
.end method

.method public setDebug(Z)V
    .locals 0
    .param p1, "d"    # Z

    .prologue
    .line 34
    sput-boolean p1, Lcom/umeng/fb/util/Log;->LOG:Z

    .line 35
    return-void
.end method

.method public setUserInfo(Lcom/umeng/fb/model/UserInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/umeng/fb/model/UserInfo;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/umeng/fb/FeedbackAgent;->store:Lcom/umeng/fb/model/Store;

    invoke-virtual {v0, p1}, Lcom/umeng/fb/model/Store;->saveUserInfo(Lcom/umeng/fb/model/UserInfo;)V

    .line 135
    return-void
.end method

.method public startFeedbackActivity()V
    .locals 4

    .prologue
    .line 143
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 144
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/umeng/fb/FeedbackAgent;->mContext:Landroid/content/Context;

    const-class v3, Lcom/umeng/fb/ConversationActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 145
    iget-object v2, p0, Lcom/umeng/fb/FeedbackAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public sync()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lcom/umeng/fb/FeedbackAgent$1;

    invoke-direct {v0, p0}, Lcom/umeng/fb/FeedbackAgent$1;-><init>(Lcom/umeng/fb/FeedbackAgent;)V

    .line 98
    .local v0, "listener":Lcom/umeng/fb/model/Conversation$SyncListener;
    invoke-virtual {p0}, Lcom/umeng/fb/FeedbackAgent;->getDefaultConversation()Lcom/umeng/fb/model/Conversation;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/umeng/fb/model/Conversation;->sync(Lcom/umeng/fb/model/Conversation$SyncListener;)V

    .line 99
    return-void
.end method
