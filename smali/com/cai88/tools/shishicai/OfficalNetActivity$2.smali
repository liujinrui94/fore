.class Lcom/cai88/tools/shishicai/OfficalNetActivity$2;
.super Landroid/webkit/WebChromeClient;
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
    .line 55
    iput-object p1, p0, Lcom/cai88/tools/shishicai/OfficalNetActivity$2;->this$0:Lcom/cai88/tools/shishicai/OfficalNetActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    const/16 v0, 0x64

    .line 67
    if-ge p2, v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/cai88/tools/shishicai/OfficalNetActivity$2;->this$0:Lcom/cai88/tools/shishicai/OfficalNetActivity;

    invoke-static {v0}, Lcom/cai88/tools/shishicai/OfficalNetActivity;->access$000(Lcom/cai88/tools/shishicai/OfficalNetActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/cai88/tools/shishicai/OfficalNetActivity$2;->this$0:Lcom/cai88/tools/shishicai/OfficalNetActivity;

    invoke-static {v0}, Lcom/cai88/tools/shishicai/OfficalNetActivity;->access$000(Lcom/cai88/tools/shishicai/OfficalNetActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    :cond_1
    :goto_0
    return-void

    .line 72
    :cond_2
    if-ne p2, v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/cai88/tools/shishicai/OfficalNetActivity$2;->this$0:Lcom/cai88/tools/shishicai/OfficalNetActivity;

    invoke-static {v0}, Lcom/cai88/tools/shishicai/OfficalNetActivity;->access$000(Lcom/cai88/tools/shishicai/OfficalNetActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 74
    iget-object v0, p0, Lcom/cai88/tools/shishicai/OfficalNetActivity$2;->this$0:Lcom/cai88/tools/shishicai/OfficalNetActivity;

    invoke-static {v0}, Lcom/cai88/tools/shishicai/OfficalNetActivity;->access$000(Lcom/cai88/tools/shishicai/OfficalNetActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 61
    return-void
.end method
