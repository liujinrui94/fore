.class Lcom/cai88/tools/shishicai/BrowserActivity$1;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/cai88/tools/shishicai/BrowserActivity$1;->this$0:Lcom/cai88/tools/shishicai/BrowserActivity;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/cai88/tools/shishicai/BrowserActivity$1;->this$0:Lcom/cai88/tools/shishicai/BrowserActivity;

    invoke-static {v0}, Lcom/cai88/tools/shishicai/BrowserActivity;->access$0(Lcom/cai88/tools/shishicai/BrowserActivity;)V

    .line 81
    return-void
.end method
