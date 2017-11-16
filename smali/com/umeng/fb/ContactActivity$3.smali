.class Lcom/umeng/fb/ContactActivity$3;
.super Ljava/lang/Object;
.source "ContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/fb/ContactActivity;->back()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/fb/ContactActivity;


# direct methods
.method constructor <init>(Lcom/umeng/fb/ContactActivity;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/umeng/fb/ContactActivity$3;->this$0:Lcom/umeng/fb/ContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public overridePendingTransition(Landroid/app/Activity;)V
    .locals 2
    .param p1, "c"    # Landroid/app/Activity;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/umeng/fb/ContactActivity$3;->this$0:Lcom/umeng/fb/ContactActivity;

    invoke-static {v0}, Lcom/umeng/fb/res/AnimMapper;->umeng_fb_slide_in_from_left(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/umeng/fb/ContactActivity$3;->this$0:Lcom/umeng/fb/ContactActivity;

    invoke-static {v1}, Lcom/umeng/fb/res/AnimMapper;->umeng_fb_slide_out_from_right(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 154
    return-void
.end method
