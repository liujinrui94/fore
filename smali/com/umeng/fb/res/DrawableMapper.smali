.class public Lcom/umeng/fb/res/DrawableMapper;
.super Ljava/lang/Object;
.source "DrawableMapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static umeng_fb_reply_left_bg(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-static {p0}, Lcom/umeng/fb/util/Res;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/util/Res;

    move-result-object v0

    const-string v1, "umeng_fb_reply_left_bg"

    invoke-virtual {v0, v1}, Lcom/umeng/fb/util/Res;->drawable(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static umeng_fb_reply_right_bg(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 10
    invoke-static {p0}, Lcom/umeng/fb/util/Res;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/util/Res;

    move-result-object v0

    const-string v1, "umeng_fb_reply_right_bg"

    invoke-virtual {v0, v1}, Lcom/umeng/fb/util/Res;->drawable(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static umeng_fb_statusbar_icon(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-static {p0}, Lcom/umeng/fb/util/Res;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/util/Res;

    move-result-object v0

    const-string v1, "umeng_fb_statusbar_icon"

    invoke-virtual {v0, v1}, Lcom/umeng/fb/util/Res;->drawable(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
