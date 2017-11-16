.class Lcom/umeng/fb/ConversationActivity$ReplyListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ConversationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/fb/ConversationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReplyListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/fb/ConversationActivity$ReplyListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/umeng/fb/ConversationActivity;


# direct methods
.method public constructor <init>(Lcom/umeng/fb/ConversationActivity;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/umeng/fb/ConversationActivity$ReplyListAdapter;->this$0:Lcom/umeng/fb/ConversationActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 285
    iput-object p2, p0, Lcom/umeng/fb/ConversationActivity$ReplyListAdapter;->mContext:Landroid/content/Context;

    .line 286
    iget-object v0, p0, Lcom/umeng/fb/ConversationActivity$ReplyListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/fb/ConversationActivity$ReplyListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 287
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 291
    iget-object v1, p0, Lcom/umeng/fb/ConversationActivity$ReplyListAdapter;->this$0:Lcom/umeng/fb/ConversationActivity;

    invoke-static {v1}, Lcom/umeng/fb/ConversationActivity;->access$000(Lcom/umeng/fb/ConversationActivity;)Lcom/umeng/fb/model/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/fb/model/Conversation;->getReplyList()Ljava/util/List;

    move-result-object v0

    .line 292
    .local v0, "replyList":Ljava/util/List;, "Ljava/util/List<Lcom/umeng/fb/model/Reply;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 360
    iget-object v0, p0, Lcom/umeng/fb/ConversationActivity$ReplyListAdapter;->this$0:Lcom/umeng/fb/ConversationActivity;

    invoke-static {v0}, Lcom/umeng/fb/ConversationActivity;->access$000(Lcom/umeng/fb/ConversationActivity;)Lcom/umeng/fb/model/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/fb/model/Conversation;->getReplyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 370
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, -0x2

    .line 305
    if-nez p2, :cond_0

    .line 306
    iget-object v3, p0, Lcom/umeng/fb/ConversationActivity$ReplyListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v4, p0, Lcom/umeng/fb/ConversationActivity$ReplyListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/fb/res/LayoutMapper;->umeng_fb_list_item(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 309
    new-instance v0, Lcom/umeng/fb/ConversationActivity$ReplyListAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/umeng/fb/ConversationActivity$ReplyListAdapter$ViewHolder;-><init>(Lcom/umeng/fb/ConversationActivity$ReplyListAdapter;)V

    .line 311
    .local v0, "holder":Lcom/umeng/fb/ConversationActivity$ReplyListAdapter$ViewHolder;
    iget-object v3, p0, Lcom/umeng/fb/ConversationActivity$ReplyListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/fb/res/IdMapper;->umeng_fb_reply_date(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/umeng/fb/ConversationActivity$ReplyListAdapter$ViewHolder;->replyDate:Landroid/widget/TextView;

    .line 315
    iget-object v3, p0, Lcom/umeng/fb/ConversationActivity$ReplyListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/fb/res/IdMapper;->umeng_fb_reply_content(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/umeng/fb/ConversationActivity$ReplyListAdapter$ViewHolder;->replyContent:Landroid/widget/TextView;

    .line 319
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 324
    :goto_0
    iget-object v3, p0, Lcom/umeng/fb/ConversationActivity$ReplyListAdapter;->this$0:Lcom/umeng/fb/ConversationActivity;

    invoke-static {v3}, Lcom/umeng/fb/ConversationActivity;->access$000(Lcom/umeng/fb/ConversationActivity;)Lcom/umeng/fb/model/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/fb/model/Conversation;->getReplyList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/fb/model/Reply;

    .line 326
    .local v2, "reply":Lcom/umeng/fb/model/Reply;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 330
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    instance-of v3, v2, Lcom/umeng/fb/model/DevReply;

    if-eqz v3, :cond_1

    .line 331
    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 332
    iget-object v3, v0, Lcom/umeng/fb/ConversationActivity$ReplyListAdapter$ViewHolder;->replyContent:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
    iget-object v3, v0, Lcom/umeng/fb/ConversationActivity$ReplyListAdapter$ViewHolder;->replyContent:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/umeng/fb/ConversationActivity$ReplyListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/fb/res/DrawableMapper;->umeng_fb_reply_left_bg(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 347
    :goto_1
    iget-object v3, v0, Lcom/umeng/fb/ConversationActivity$ReplyListAdapter$ViewHolder;->replyDate:Landroid/widget/TextView;

    invoke-static {}, Ljava/text/SimpleDateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v2}, Lcom/umeng/fb/model/Reply;->getDatetime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v3, v0, Lcom/umeng/fb/ConversationActivity$ReplyListAdapter$ViewHolder;->replyContent:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/umeng/fb/model/Reply;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    return-object p2

    .line 321
    .end local v0    # "holder":Lcom/umeng/fb/ConversationActivity$ReplyListAdapter$ViewHolder;
    .end local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "reply":Lcom/umeng/fb/model/Reply;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/fb/ConversationActivity$ReplyListAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/umeng/fb/ConversationActivity$ReplyListAdapter$ViewHolder;
    goto :goto_0

    .line 339
    .restart local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v2    # "reply":Lcom/umeng/fb/model/Reply;
    :cond_1
    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 341
    iget-object v3, v0, Lcom/umeng/fb/ConversationActivity$ReplyListAdapter$ViewHolder;->replyContent:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 342
    iget-object v3, v0, Lcom/umeng/fb/ConversationActivity$ReplyListAdapter$ViewHolder;->replyContent:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/umeng/fb/ConversationActivity$ReplyListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/fb/res/DrawableMapper;->umeng_fb_reply_right_bg(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1
.end method
