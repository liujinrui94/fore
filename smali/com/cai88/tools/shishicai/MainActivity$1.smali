.class Lcom/cai88/tools/shishicai/MainActivity$1;
.super Landroid/os/Handler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cai88/tools/shishicai/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cai88/tools/shishicai/MainActivity;


# direct methods
.method constructor <init>(Lcom/cai88/tools/shishicai/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cai88/tools/shishicai/MainActivity$1;->this$0:Lcom/cai88/tools/shishicai/MainActivity;

    .line 52
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 55
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 62
    :goto_0
    return-void

    .line 57
    :pswitch_0
    iget-object v0, p0, Lcom/cai88/tools/shishicai/MainActivity$1;->this$0:Lcom/cai88/tools/shishicai/MainActivity;

    invoke-static {v0}, Lcom/cai88/tools/shishicai/MainActivity;->access$0(Lcom/cai88/tools/shishicai/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/cai88/tools/shishicai/MainActivity$1;->this$0:Lcom/cai88/tools/shishicai/MainActivity;

    invoke-static {v1}, Lcom/cai88/tools/shishicai/MainActivity;->access$1(Lcom/cai88/tools/shishicai/MainActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
