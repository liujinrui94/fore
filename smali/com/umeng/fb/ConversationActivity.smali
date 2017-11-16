.class public Lcom/umeng/fb/ConversationActivity;
.super Landroid/app/Activity;
.source "ConversationActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/fb/ConversationActivity$ReplyListAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private adapter:Lcom/umeng/fb/ConversationActivity$ReplyListAdapter;

.field private agent:Lcom/umeng/fb/FeedbackAgent;

.field private defaultConversation:Lcom/umeng/fb/model/Conversation;

.field header:Landroid/widget/RelativeLayout;

.field headerHeight:I

.field headerPaddingOriginal:I

.field private mLastMotionY:I

.field private replyListView:Landroid/widget/ListView;

.field userReplyContentEdit:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/umeng/fb/ConversationActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/fb/ConversationActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 280
    return-void
.end method

.method static synthetic access$000(Lcom/umeng/fb/ConversationActivity;)Lcom/umeng/fb/model/Conversation;
    .locals 1
    .param p0, "x0"    # Lcom/umeng/fb/ConversationActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/umeng/fb/ConversationActivity;->defaultConversation:Lcom/umeng/fb/model/Conversation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/umeng/fb/ConversationActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/umeng/fb/ConversationActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/umeng/fb/ConversationActivity;->replyListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/umeng/fb/ConversationActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/umeng/fb/ConversationActivity;

    .prologue
    .line 32
    iget v0, p0, Lcom/umeng/fb/ConversationActivity;->mLastMotionY:I

    return v0
.end method

.method static synthetic access$202(Lcom/umeng/fb/ConversationActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/umeng/fb/ConversationActivity;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/umeng/fb/ConversationActivity;->mLastMotionY:I

    return p1
.end method

.method static synthetic access$300(Lcom/umeng/fb/ConversationActivity;)Lcom/umeng/fb/ConversationActivity$ReplyListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/umeng/fb/ConversationActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/umeng/fb/ConversationActivity;->adapter:Lcom/umeng/fb/ConversationActivity$ReplyListAdapter;

    return-object v0
.end method

.method private measureView(Landroid/view/View;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 246
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 247
    .local v3, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 248
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 252
    .restart local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v6, v6, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 253
    .local v1, "childWidthSpec":I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 255
    .local v2, "lpHeight":I
    if-lez v2, :cond_1

    .line 256
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 262
    .local v0, "childHeightSpec":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 263
    return-void

    .line 259
    .end local v0    # "childHeightSpec":I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "childHeightSpec":I
    goto :goto_0
.end method

.method private setListViewHeader()V
    .locals 6

    .prologue
    .line 147
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/umeng/fb/ConversationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 148
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-static {p0}, Lcom/umeng/fb/res/LayoutMapper;->umeng_fb_list_header(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/umeng/fb/ConversationActivity;->replyListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/umeng/fb/ConversationActivity;->header:Landroid/widget/RelativeLayout;

    .line 152
    iget-object v1, p0, Lcom/umeng/fb/ConversationActivity;->replyListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/umeng/fb/ConversationActivity;->header:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 153
    iget-object v1, p0, Lcom/umeng/fb/ConversationActivity;->header:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1}, Lcom/umeng/fb/ConversationActivity;->measureView(Landroid/view/View;)V

    .line 154
    iget-object v1, p0, Lcom/umeng/fb/ConversationActivity;->header:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/umeng/fb/ConversationActivity;->headerHeight:I

    .line 155
    iget-object v1, p0, Lcom/umeng/fb/ConversationActivity;->header:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    move-result v1

    iput v1, p0, Lcom/umeng/fb/ConversationActivity;->headerPaddingOriginal:I

    .line 157
    iget-object v1, p0, Lcom/umeng/fb/ConversationActivity;->header:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/umeng/fb/ConversationActivity;->header:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v2

    iget v3, p0, Lcom/umeng/fb/ConversationActivity;->headerHeight:I

    neg-int v3, v3

    iget-object v4, p0, Lcom/umeng/fb/ConversationActivity;->header:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lcom/umeng/fb/ConversationActivity;->header:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 159
    iget-object v1, p0, Lcom/umeng/fb/ConversationActivity;->header:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 161
    iget-object v1, p0, Lcom/umeng/fb/ConversationActivity;->replyListView:Landroid/widget/ListView;

    new-instance v2, Lcom/umeng/fb/ConversationActivity$4;

    invoke-direct {v2, p0}, Lcom/umeng/fb/ConversationActivity$4;-><init>(Lcom/umeng/fb/ConversationActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 224
    iget-object v1, p0, Lcom/umeng/fb/ConversationActivity;->replyListView:Landroid/widget/ListView;

    new-instance v2, Lcom/umeng/fb/ConversationActivity$5;

    invoke-direct {v2, p0}, Lcom/umeng/fb/ConversationActivity$5;-><init>(Lcom/umeng/fb/ConversationActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 243
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-static {p0}, Lcom/umeng/fb/res/LayoutMapper;->umeng_fb_activity_conversation(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/umeng/fb/ConversationActivity;->setContentView(I)V

    .line 50
    :try_start_0
    new-instance v2, Lcom/umeng/fb/FeedbackAgent;

    invoke-direct {v2, p0}, Lcom/umeng/fb/FeedbackAgent;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/umeng/fb/ConversationActivity;->agent:Lcom/umeng/fb/FeedbackAgent;

    .line 51
    iget-object v2, p0, Lcom/umeng/fb/ConversationActivity;->agent:Lcom/umeng/fb/FeedbackAgent;

    invoke-virtual {v2}, Lcom/umeng/fb/FeedbackAgent;->getDefaultConversation()Lcom/umeng/fb/model/Conversation;

    move-result-object v2

    iput-object v2, p0, Lcom/umeng/fb/ConversationActivity;->defaultConversation:Lcom/umeng/fb/model/Conversation;

    .line 53
    invoke-static {p0}, Lcom/umeng/fb/res/IdMapper;->umeng_fb_reply_list(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/umeng/fb/ConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/umeng/fb/ConversationActivity;->replyListView:Landroid/widget/ListView;

    .line 56
    invoke-direct {p0}, Lcom/umeng/fb/ConversationActivity;->setListViewHeader()V

    .line 58
    new-instance v2, Lcom/umeng/fb/ConversationActivity$ReplyListAdapter;

    invoke-direct {v2, p0, p0}, Lcom/umeng/fb/ConversationActivity$ReplyListAdapter;-><init>(Lcom/umeng/fb/ConversationActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/umeng/fb/ConversationActivity;->adapter:Lcom/umeng/fb/ConversationActivity$ReplyListAdapter;

    .line 59
    iget-object v2, p0, Lcom/umeng/fb/ConversationActivity;->replyListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/umeng/fb/ConversationActivity;->adapter:Lcom/umeng/fb/ConversationActivity$ReplyListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 62
    invoke-virtual {p0}, Lcom/umeng/fb/ConversationActivity;->sync()V

    .line 65
    invoke-static {p0}, Lcom/umeng/fb/res/IdMapper;->umeng_fb_conversation_contact_entry(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/umeng/fb/ConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 68
    .local v0, "contact_entry":Landroid/view/View;
    new-instance v2, Lcom/umeng/fb/ConversationActivity$1;

    invoke-direct {v2, p0}, Lcom/umeng/fb/ConversationActivity$1;-><init>(Lcom/umeng/fb/ConversationActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v2, p0, Lcom/umeng/fb/ConversationActivity;->agent:Lcom/umeng/fb/FeedbackAgent;

    invoke-virtual {v2}, Lcom/umeng/fb/FeedbackAgent;->getUserInfoLastUpdateAt()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 96
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 98
    :cond_0
    invoke-static {p0}, Lcom/umeng/fb/res/IdMapper;->umeng_fb_back(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/umeng/fb/ConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/umeng/fb/ConversationActivity$2;

    invoke-direct {v3, p0}, Lcom/umeng/fb/ConversationActivity$2;-><init>(Lcom/umeng/fb/ConversationActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    invoke-static {p0}, Lcom/umeng/fb/res/IdMapper;->umeng_fb_reply_content(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/umeng/fb/ConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/umeng/fb/ConversationActivity;->userReplyContentEdit:Landroid/widget/EditText;

    .line 110
    invoke-static {p0}, Lcom/umeng/fb/res/IdMapper;->umeng_fb_send(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/umeng/fb/ConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/umeng/fb/ConversationActivity$3;

    invoke-direct {v3, p0}, Lcom/umeng/fb/ConversationActivity$3;-><init>(Lcom/umeng/fb/ConversationActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v0    # "contact_entry":Landroid/view/View;
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v1

    .line 140
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    invoke-virtual {p0}, Lcom/umeng/fb/ConversationActivity;->finish()V

    goto :goto_0
.end method

.method sync()V
    .locals 2

    .prologue
    .line 266
    new-instance v0, Lcom/umeng/fb/ConversationActivity$6;

    invoke-direct {v0, p0}, Lcom/umeng/fb/ConversationActivity$6;-><init>(Lcom/umeng/fb/ConversationActivity;)V

    .line 277
    .local v0, "listener":Lcom/umeng/fb/model/Conversation$SyncListener;
    iget-object v1, p0, Lcom/umeng/fb/ConversationActivity;->defaultConversation:Lcom/umeng/fb/model/Conversation;

    invoke-virtual {v1, v0}, Lcom/umeng/fb/model/Conversation;->sync(Lcom/umeng/fb/model/Conversation$SyncListener;)V

    .line 278
    return-void
.end method
