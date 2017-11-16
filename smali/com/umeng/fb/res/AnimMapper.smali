.class public Lcom/umeng/fb/res/AnimMapper;
.super Ljava/lang/Object;
.source "AnimMapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static umeng_fb_slide_in_from_left(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 9
    invoke-static {p0}, Lcom/umeng/fb/util/Res;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/util/Res;

    move-result-object v0

    const-string v1, "umeng_fb_slide_in_from_left"

    invoke-virtual {v0, v1}, Lcom/umeng/fb/util/Res;->anim(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static umeng_fb_slide_in_from_right(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-static {p0}, Lcom/umeng/fb/util/Res;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/util/Res;

    move-result-object v0

    const-string v1, "umeng_fb_slide_in_from_right"

    invoke-virtual {v0, v1}, Lcom/umeng/fb/util/Res;->anim(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static umeng_fb_slide_out_from_left(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-static {p0}, Lcom/umeng/fb/util/Res;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/util/Res;

    move-result-object v0

    const-string v1, "umeng_fb_slide_out_from_left"

    invoke-virtual {v0, v1}, Lcom/umeng/fb/util/Res;->anim(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static umeng_fb_slide_out_from_right(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-static {p0}, Lcom/umeng/fb/util/Res;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/util/Res;

    move-result-object v0

    const-string v1, "umeng_fb_slide_out_from_right"

    invoke-virtual {v0, v1}, Lcom/umeng/fb/util/Res;->anim(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
