.class Lcom/umeng/fb/ConversationActivity$ReplyListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ConversationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/fb/ConversationActivity$ReplyListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field replyContent:Landroid/widget/TextView;

.field replyDate:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/umeng/fb/ConversationActivity$ReplyListAdapter;


# direct methods
.method constructor <init>(Lcom/umeng/fb/ConversationActivity$ReplyListAdapter;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/umeng/fb/ConversationActivity$ReplyListAdapter$ViewHolder;->this$1:Lcom/umeng/fb/ConversationActivity$ReplyListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
