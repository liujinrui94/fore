.class public Lcom/cai88/tools/shishicai/BrowserActivity;
.super Lcom/cai88/tools/shishicai/BaseActivity;
.source "BrowserActivity.java"


# static fields
.field public static final TYPE_NOTOPVIEW:Ljava/lang/String; = "type_notopview"


# instance fields
.field private closeBtn:Landroid/widget/ImageView;

.field private needAnimation:Z

.field private needGoBack:Z

.field private title:Ljava/lang/String;

.field private topPnl:Landroid/widget/RelativeLayout;

.field private topView:Lcom/cai88/tools/view/TopView;

.field private type:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Lcom/cai88/tools/shishicai/BaseActivity;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/cai88/tools/shishicai/BrowserActivity;->url:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/cai88/tools/shishicai/BrowserActivity;->title:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/cai88/tools/shishicai/BrowserActivity;->type:Ljava/lang/String;

    .line 35
    iput-boolean v1, p0, Lcom/cai88/tools/shishicai/BrowserActivity;->needGoBack:Z

    .line 36
    iput-boolean v1, p0, Lcom/cai88/tools/shishicai/BrowserActivity;->needAnimation:Z

    .line 26
    return-void
.end method

.method static synthetic access$0(Lcom/cai88/tools/shishicai/BrowserActivity;)V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/cai88/tools/shishicai/BrowserActivity;->finishThis()V

    return-void
.end method

.method static synthetic access$1(Lcom/cai88/tools/shishicai/BrowserActivity;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/cai88/tools/shishicai/BrowserActivity;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private finishThis()V
    .locals 0

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/cai88/tools/shishicai/BrowserActivity;->finish()V

    .line 158
    return-void
.end method


# virtual methods
.method protected AppInit()V
    .locals 5

    .prologue
    .line 41
    const/high16 v2, 0x7f030000

    invoke-virtual {p0, v2}, Lcom/cai88/tools/shishicai/BrowserActivity;->setContentView(I)V

    .line 42
    invoke-virtual {p0}, Lcom/cai88/tools/shishicai/BrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 43
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 45
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 46
    const-string v2, "url"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cai88/tools/shishicai/BrowserActivity;->url:Ljava/lang/String;

    .line 47
    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cai88/tools/shishicai/BrowserActivity;->title:Ljava/lang/String;

    .line 48
    const-string v2, "type"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cai88/tools/shishicai/BrowserActivity;->type:Ljava/lang/String;

    .line 49
    const-string v2, "ngb"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/cai88/tools/shishicai/BrowserActivity;->needGoBack:Z

    .line 50
    const-string v2, "nanim"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/cai88/tools/shishicai/BrowserActivity;->needAnimation:Z

    .line 53
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    const-string v2, "iws"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "url:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/cai88/tools/shishicai/BrowserActivity;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void
.end method

.method protected BroadcastReceive(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 164
    return-void
.end method

.method protected DataInit()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/cai88/tools/shishicai/BrowserActivity;->topView:Lcom/cai88/tools/view/TopView;

    iget-object v1, p0, Lcom/cai88/tools/shishicai/BrowserActivity;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cai88/tools/view/TopView;->setTitle(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/cai88/tools/shishicai/BrowserActivity;->topView:Lcom/cai88/tools/view/TopView;

    invoke-virtual {v0}, Lcom/cai88/tools/view/TopView;->setBackBtn()V

    .line 117
    iget-object v0, p0, Lcom/cai88/tools/shishicai/BrowserActivity;->topView:Lcom/cai88/tools/view/TopView;

    new-instance v1, Lcom/cai88/tools/shishicai/BrowserActivity$3;

    invoke-direct {v1, p0}, Lcom/cai88/tools/shishicai/BrowserActivity$3;-><init>(Lcom/cai88/tools/shishicai/BrowserActivity;)V

    invoke-virtual {v0, v1}, Lcom/cai88/tools/view/TopView;->setOnBackListener(Lcom/cai88/tools/view/TopView$OnBackListener;)V

    .line 127
    iget-object v0, p0, Lcom/cai88/tools/shishicai/BrowserActivity;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cai88/tools/shishicai/BrowserActivity;->url:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/cai88/tools/shishicai/BrowserActivity;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/cai88/tools/shishicai/BrowserActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/cai88/tools/shishicai/BrowserActivity;->context:Landroid/content/Context;

    const-string v1, "\u94fe\u63a5\u5730\u5740\u6709\u8bef"

    invoke-static {v0, v1}, Lcom/cai88/tools/uitl/Common;->ShowInfo(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected Destroy()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method protected ViewInit()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 58
    const v1, 0x7f070004

    invoke-virtual {p0, v1}, Lcom/cai88/tools/shishicai/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cai88/tools/shishicai/BrowserActivity;->topPnl:Landroid/widget/RelativeLayout;

    .line 59
    const v1, 0x7f070005

    invoke-virtual {p0, v1}, Lcom/cai88/tools/shishicai/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cai88/tools/view/TopView;

    iput-object v1, p0, Lcom/cai88/tools/shishicai/BrowserActivity;->topView:Lcom/cai88/tools/view/TopView;

    .line 60
    const v1, 0x7f070006

    invoke-virtual {p0, v1}, Lcom/cai88/tools/shishicai/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cai88/tools/shishicai/BrowserActivity;->closeBtn:Landroid/widget/ImageView;

    .line 61
    const v1, 0x7f070007

    invoke-virtual {p0, v1}, Lcom/cai88/tools/shishicai/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/cai88/tools/shishicai/BrowserActivity;->webView:Landroid/webkit/WebView;

    .line 62
    iget-object v1, p0, Lcom/cai88/tools/shishicai/BrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 63
    new-instance v0, Lcom/cai88/tools/uitl/WebApi;

    iget-object v1, p0, Lcom/cai88/tools/shishicai/BrowserActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cai88/tools/uitl/WebApi;-><init>(Landroid/content/Context;)V

    .line 64
    .local v0, "webApi":Lcom/cai88/tools/uitl/WebApi;
    iget-object v1, p0, Lcom/cai88/tools/shishicai/BrowserActivity;->webView:Landroid/webkit/WebView;

    const-string v2, "android"

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/cai88/tools/shishicai/BrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 66
    iget-object v1, p0, Lcom/cai88/tools/shishicai/BrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 67
    iget-object v1, p0, Lcom/cai88/tools/shishicai/BrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 68
    iget-object v1, p0, Lcom/cai88/tools/shishicai/BrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 69
    iget-object v1, p0, Lcom/cai88/tools/shishicai/BrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 70
    iget-object v1, p0, Lcom/cai88/tools/shishicai/BrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 71
    iget-object v1, p0, Lcom/cai88/tools/shishicai/BrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/cai88/tools/shishicai/SscApplication;->userAgent:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " Cai88SscAndroid/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/cai88/tools/shishicai/SscApplication;->version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/cai88/tools/shishicai/BrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->requestFocusFromTouch()Z

    .line 73
    return-void
.end method

.method protected ViewListen()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/cai88/tools/shishicai/BrowserActivity;->closeBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/cai88/tools/shishicai/BrowserActivity$1;

    invoke-direct {v1, p0}, Lcom/cai88/tools/shishicai/BrowserActivity$1;-><init>(Lcom/cai88/tools/shishicai/BrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/cai88/tools/shishicai/BrowserActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/cai88/tools/shishicai/BrowserActivity$2;

    invoke-direct {v1, p0}, Lcom/cai88/tools/shishicai/BrowserActivity$2;-><init>(Lcom/cai88/tools/shishicai/BrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 111
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 146
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/cai88/tools/shishicai/BrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/cai88/tools/shishicai/BrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 152
    :goto_0
    const/4 v0, 0x1

    .line 154
    :goto_1
    return v0

    .line 150
    :cond_0
    invoke-direct {p0}, Lcom/cai88/tools/shishicai/BrowserActivity;->finishThis()V

    goto :goto_0

    .line 154
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
