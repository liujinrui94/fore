.class Lcom/cai88/tools/shishicai/ChanglongActivity$1;
.super Ljava/lang/Object;
.source "ChanglongActivity.java"

# interfaces
.implements Lcom/cai88/tools/view/MyListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cai88/tools/shishicai/ChanglongActivity;->ViewListen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cai88/tools/shishicai/ChanglongActivity;


# direct methods
.method constructor <init>(Lcom/cai88/tools/shishicai/ChanglongActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cai88/tools/shishicai/ChanglongActivity$1;->this$0:Lcom/cai88/tools/shishicai/ChanglongActivity;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cai88/tools/shishicai/ChanglongActivity$1;->this$0:Lcom/cai88/tools/shishicai/ChanglongActivity;

    invoke-static {v0}, Lcom/cai88/tools/shishicai/ChanglongActivity;->access$0(Lcom/cai88/tools/shishicai/ChanglongActivity;)V

    .line 63
    return-void
.end method
