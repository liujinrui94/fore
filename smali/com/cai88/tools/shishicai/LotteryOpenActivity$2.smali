.class Lcom/cai88/tools/shishicai/LotteryOpenActivity$2;
.super Ljava/lang/Object;
.source "LotteryOpenActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cai88/tools/shishicai/LotteryOpenActivity;->ViewListen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;


# direct methods
.method constructor <init>(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$2;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$2;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    invoke-static {v0}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->access$1(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)Lcom/cai88/tools/view/LoadMoreView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cai88/tools/view/LoadMoreView;->setBtnState(Z)V

    .line 103
    iget-object v0, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$2;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    iget-object v1, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$2;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    invoke-static {v1}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->access$2(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->access$3(Lcom/cai88/tools/shishicai/LotteryOpenActivity;I)V

    .line 104
    return-void
.end method
