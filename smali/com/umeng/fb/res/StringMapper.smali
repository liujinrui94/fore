.class public Lcom/umeng/fb/res/StringMapper;
.super Ljava/lang/Object;
.source "StringMapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static umeng_fb_contact_update_at(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 9
    invoke-static {p0}, Lcom/umeng/fb/util/Res;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/util/Res;

    move-result-object v0

    const-string v1, "umeng_fb_contact_update_at"

    invoke-virtual {v0, v1}, Lcom/umeng/fb/util/Res;->string(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static umeng_fb_notification_content_formatter_multiple_msg(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-static {p0}, Lcom/umeng/fb/util/Res;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/util/Res;

    move-result-object v0

    const-string v1, "umeng_fb_notification_content_formatter_multiple_msg"

    invoke-virtual {v0, v1}, Lcom/umeng/fb/util/Res;->string(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static umeng_fb_notification_content_formatter_single_msg(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-static {p0}, Lcom/umeng/fb/util/Res;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/util/Res;

    move-result-object v0

    const-string v1, "umeng_fb_notification_content_formatter_single_msg"

    invoke-virtual {v0, v1}, Lcom/umeng/fb/util/Res;->string(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static umeng_fb_notification_ticker_text(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-static {p0}, Lcom/umeng/fb/util/Res;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/util/Res;

    move-result-object v0

    const-string v1, "umeng_fb_notification_ticker_text"

    invoke-virtual {v0, v1}, Lcom/umeng/fb/util/Res;->string(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
