.class Lcom/cai88/tools/shishicai/BrowserActivity$2;
.super Landroid/webkit/WebViewClient;
.source "BrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cai88/tools/shishicai/BrowserActivity;->ViewListen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cai88/tools/shishicai/BrowserActivity;


# direct methods
.method constructor <init>(Lcom/cai88/tools/shishicai/BrowserActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cai88/tools/shishicai/BrowserActivity$2;->this$0:Lcom/cai88/tools/shishicai/BrowserActivity;

    .line 83
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/cai88/tools/shishicai/BrowserActivity$2;->this$0:Lcom/cai88/tools/shishicai/BrowserActivity;

    iget-object v0, v0, Lcom/cai88/tools/shishicai/BrowserActivity;->pgView:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/cai88/tools/view/ProgressView;->dismissProgress(Landroid/app/ProgressDialog;)V

    .line 99
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 86
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 87
    iget-object v1, p0, Lcom/cai88/tools/shishicai/BrowserActivity$2;->this$0:Lcom/cai88/tools/shishicai/BrowserActivity;

    iget-object v1, v1, Lcom/cai88/tools/shishicai/BrowserActivity;->pgView:Landroid/app/ProgressDialog;

    invoke-static {v1}, Lcom/cai88/tools/view/ProgressView;->dismissProgress(Landroid/app/ProgressDialog;)V

    .line 88
    iget-object v1, p0, Lcom/cai88/tools/shishicai/BrowserActivity$2;->this$0:Lcom/cai88/tools/shishicai/BrowserActivity;

    iget-object v2, p0, Lcom/cai88/tools/shishicai/BrowserActivity$2;->this$0:Lcom/cai88/tools/shishicai/BrowserActivity;

    iget-object v2, v2, Lcom/cai88/tools/shishicai/BrowserActivity;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/cai88/tools/view/ProgressView;->createProgress(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, v1, Lcom/cai88/tools/shishicai/BrowserActivity;->pgView:Landroid/app/ProgressDialog;

    .line 90
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p2, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 94
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "paramWebView"    # Landroid/webkit/WebView;
    .param p2, "paramInt"    # I
    .param p3, "paramString1"    # Ljava/lang/String;
    .param p4, "paramString2"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-static {p2}, Lcom/cai88/tools/uitl/Common;->UrlAddCommonParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 107
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 108
    const/4 v0, 0x1

    return v0
.end method
