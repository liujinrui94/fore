.class Lcom/cai88/tools/shishicai/OfficalNetActivity$3;
.super Landroid/webkit/WebViewClient;
.source "OfficalNetActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cai88/tools/shishicai/OfficalNetActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cai88/tools/shishicai/OfficalNetActivity;


# direct methods
.method constructor <init>(Lcom/cai88/tools/shishicai/OfficalNetActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cai88/tools/shishicai/OfficalNetActivity;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/cai88/tools/shishicai/OfficalNetActivity$3;->this$0:Lcom/cai88/tools/shishicai/OfficalNetActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 94
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 86
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u5f00\u59cb\u52a0\u8f7d\u4e86"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 88
    return-void
.end method
