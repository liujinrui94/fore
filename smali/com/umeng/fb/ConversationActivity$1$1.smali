.class Lcom/umeng/fb/ConversationActivity$1$1;
.super Ljava/lang/Object;
.source "ConversationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/fb/ConversationActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/umeng/fb/ConversationActivity$1;


# direct methods
.method constructor <init>(Lcom/umeng/fb/ConversationActivity$1;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/umeng/fb/ConversationActivity$1$1;->this$1:Lcom/umeng/fb/ConversationActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public overridePendingTransition(Landroid/app/Activity;)V
    .locals 2
    .param p1, "c"    # Landroid/app/Activity;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/umeng/fb/ConversationActivity$1$1;->this$1:Lcom/umeng/fb/ConversationActivity$1;

    iget-object v0, v0, Lcom/umeng/fb/ConversationActivity$1;->this$0:Lcom/umeng/fb/ConversationActivity;

    invoke-static {v0}, Lcom/umeng/fb/res/AnimMapper;->umeng_fb_slide_in_from_right(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/umeng/fb/ConversationActivity$1$1;->this$1:Lcom/umeng/fb/ConversationActivity$1;

    iget-object v1, v1, Lcom/umeng/fb/ConversationActivity$1;->this$0:Lcom/umeng/fb/ConversationActivity;

    invoke-static {v1}, Lcom/umeng/fb/res/AnimMapper;->umeng_fb_slide_out_from_left(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 88
    return-void
.end method
