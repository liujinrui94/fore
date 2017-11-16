.class Lcom/cai88/tools/shishicai/BrowserActivity$3;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Lcom/cai88/tools/view/TopView$OnBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cai88/tools/shishicai/BrowserActivity;->DataInit()V
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
    iput-object p1, p0, Lcom/cai88/tools/shishicai/BrowserActivity$3;->this$0:Lcom/cai88/tools/shishicai/BrowserActivity;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBack()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/cai88/tools/shishicai/BrowserActivity$3;->this$0:Lcom/cai88/tools/shishicai/BrowserActivity;

    invoke-static {v0}, Lcom/cai88/tools/shishicai/BrowserActivity;->access$1(Lcom/cai88/tools/shishicai/BrowserActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/cai88/tools/shishicai/BrowserActivity$3;->this$0:Lcom/cai88/tools/shishicai/BrowserActivity;

    invoke-static {v0}, Lcom/cai88/tools/shishicai/BrowserActivity;->access$1(Lcom/cai88/tools/shishicai/BrowserActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/cai88/tools/shishicai/BrowserActivity$3;->this$0:Lcom/cai88/tools/shishicai/BrowserActivity;

    invoke-static {v0}, Lcom/cai88/tools/shishicai/BrowserActivity;->access$0(Lcom/cai88/tools/shishicai/BrowserActivity;)V

    goto :goto_0
.end method
