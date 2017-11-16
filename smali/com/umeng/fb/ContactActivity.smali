.class public Lcom/umeng/fb/ContactActivity;
.super Landroid/app/Activity;
.source "ContactActivity.java"


# static fields
.field private static final KEY_UMENG_CONTACT_INFO_PLAIN_TEXT:Ljava/lang/String; = "plain"


# instance fields
.field private agent:Lcom/umeng/fb/FeedbackAgent;

.field private backBtn:Landroid/widget/ImageView;

.field private contactInfoEdit:Landroid/widget/EditText;

.field private lastUpdateAtText:Landroid/widget/TextView;

.field private saveBtn:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/umeng/fb/ContactActivity;)Lcom/umeng/fb/FeedbackAgent;
    .locals 1
    .param p0, "x0"    # Lcom/umeng/fb/ContactActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/umeng/fb/ContactActivity;->agent:Lcom/umeng/fb/FeedbackAgent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/umeng/fb/ContactActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/umeng/fb/ContactActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/umeng/fb/ContactActivity;->contactInfoEdit:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method back()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/umeng/fb/ContactActivity;->finish()V

    .line 146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 147
    new-instance v0, Lcom/umeng/fb/ContactActivity$3;

    invoke-direct {v0, p0}, Lcom/umeng/fb/ContactActivity$3;-><init>(Lcom/umeng/fb/ContactActivity;)V

    invoke-virtual {v0, p0}, Lcom/umeng/fb/ContactActivity$3;->overridePendingTransition(Landroid/app/Activity;)V

    .line 157
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-static {p0}, Lcom/umeng/fb/res/LayoutMapper;->umeng_fb_activity_contact(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/umeng/fb/ContactActivity;->setContentView(I)V

    .line 55
    new-instance v7, Lcom/umeng/fb/FeedbackAgent;

    invoke-direct {v7, p0}, Lcom/umeng/fb/FeedbackAgent;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/umeng/fb/ContactActivity;->agent:Lcom/umeng/fb/FeedbackAgent;

    .line 57
    invoke-static {p0}, Lcom/umeng/fb/res/IdMapper;->umeng_fb_back(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/umeng/fb/ContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/umeng/fb/ContactActivity;->backBtn:Landroid/widget/ImageView;

    .line 59
    invoke-static {p0}, Lcom/umeng/fb/res/IdMapper;->umeng_fb_save(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/umeng/fb/ContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/umeng/fb/ContactActivity;->saveBtn:Landroid/widget/ImageView;

    .line 61
    invoke-static {p0}, Lcom/umeng/fb/res/IdMapper;->umeng_fb_contact_info(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/umeng/fb/ContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/umeng/fb/ContactActivity;->contactInfoEdit:Landroid/widget/EditText;

    .line 64
    invoke-static {p0}, Lcom/umeng/fb/res/IdMapper;->umeng_fb_contact_update_at(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/umeng/fb/ContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/umeng/fb/ContactActivity;->lastUpdateAtText:Landroid/widget/TextView;

    .line 69
    :try_start_0
    iget-object v7, p0, Lcom/umeng/fb/ContactActivity;->agent:Lcom/umeng/fb/FeedbackAgent;

    invoke-virtual {v7}, Lcom/umeng/fb/FeedbackAgent;->getUserInfo()Lcom/umeng/fb/model/UserInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/umeng/fb/model/UserInfo;->getContact()Ljava/util/Map;

    move-result-object v7

    const-string v8, "plain"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 71
    .local v0, "contact_info":Ljava/lang/String;
    iget-object v7, p0, Lcom/umeng/fb/ContactActivity;->contactInfoEdit:Landroid/widget/EditText;

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v7, p0, Lcom/umeng/fb/ContactActivity;->agent:Lcom/umeng/fb/FeedbackAgent;

    invoke-virtual {v7}, Lcom/umeng/fb/FeedbackAgent;->getUserInfoLastUpdateAt()J

    move-result-wide v5

    .line 75
    .local v5, "time":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_1

    .line 76
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 77
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {p0}, Lcom/umeng/fb/ContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {p0}, Lcom/umeng/fb/res/StringMapper;->umeng_fb_contact_update_at(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 80
    .local v4, "prefix":Ljava/lang/String;
    iget-object v7, p0, Lcom/umeng/fb/ContactActivity;->lastUpdateAtText:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/text/SimpleDateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v7, p0, Lcom/umeng/fb/ContactActivity;->lastUpdateAtText:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    .end local v1    # "date":Ljava/util/Date;
    .end local v4    # "prefix":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 90
    iget-object v7, p0, Lcom/umeng/fb/ContactActivity;->contactInfoEdit:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->requestFocus()Z

    .line 91
    const-string v7, "input_method"

    invoke-virtual {p0, v7}, Lcom/umeng/fb/ContactActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 92
    .local v3, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v3, :cond_0

    .line 93
    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v0    # "contact_info":Ljava/lang/String;
    .end local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v5    # "time":J
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/umeng/fb/ContactActivity;->backBtn:Landroid/widget/ImageView;

    new-instance v8, Lcom/umeng/fb/ContactActivity$1;

    invoke-direct {v8, p0}, Lcom/umeng/fb/ContactActivity$1;-><init>(Lcom/umeng/fb/ContactActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v7, p0, Lcom/umeng/fb/ContactActivity;->saveBtn:Landroid/widget/ImageView;

    new-instance v8, Lcom/umeng/fb/ContactActivity$2;

    invoke-direct {v8, p0}, Lcom/umeng/fb/ContactActivity$2;-><init>(Lcom/umeng/fb/ContactActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    return-void

    .line 84
    .restart local v0    # "contact_info":Ljava/lang/String;
    .restart local v5    # "time":J
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/umeng/fb/ContactActivity;->lastUpdateAtText:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 96
    .end local v0    # "contact_info":Ljava/lang/String;
    .end local v5    # "time":J
    :catch_0
    move-exception v2

    .line 97
    .local v2, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method
