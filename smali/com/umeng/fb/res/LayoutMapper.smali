.class public Lcom/umeng/fb/res/LayoutMapper;
.super Ljava/lang/Object;
.source "LayoutMapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static umeng_fb_activity_contact(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 10
    invoke-static {p0}, Lcom/umeng/fb/util/Res;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/util/Res;

    move-result-object v0

    const-string v1, "umeng_fb_activity_contact"

    invoke-virtual {v0, v1}, Lcom/umeng/fb/util/Res;->layout(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static umeng_fb_activity_conversation(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-static {p0}, Lcom/umeng/fb/util/Res;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/util/Res;

    move-result-object v0

    const-string v1, "umeng_fb_activity_conversation"

    invoke-virtual {v0, v1}, Lcom/umeng/fb/util/Res;->layout(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static umeng_fb_list_header(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-static {p0}, Lcom/umeng/fb/util/Res;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/util/Res;

    move-result-object v0

    const-string v1, "umeng_fb_list_header"

    invoke-virtual {v0, v1}, Lcom/umeng/fb/util/Res;->layout(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static umeng_fb_list_item(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-static {p0}, Lcom/umeng/fb/util/Res;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/util/Res;

    move-result-object v0

    const-string v1, "umeng_fb_list_item"

    invoke-virtual {v0, v1}, Lcom/umeng/fb/util/Res;->layout(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static umeng_fb_new_reply_alert_dialog(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-static {p0}, Lcom/umeng/fb/util/Res;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/util/Res;

    move-result-object v0

    const-string v1, "umeng_fb_new_reply_alert_dialog"

    invoke-virtual {v0, v1}, Lcom/umeng/fb/util/Res;->layout(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
