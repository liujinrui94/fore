.class public Lcom/umeng/fb/res/IdMapper;
.super Ljava/lang/Object;
.source "IdMapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static umeng_fb_back(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-static {p0}, Lcom/umeng/fb/util/Res;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/util/Res;

    move-result-object v0

    const-string v1, "umeng_fb_back"

    invoke-virtual {v0, v1}, Lcom/umeng/fb/util/Res;->id(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static umeng_fb_contact_info(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-static {p0}, Lcom/umeng/fb/util/Res;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/util/Res;

    move-result-object v0

    const-string v1, "umeng_fb_contact_info"

    invoke-virtual {v0, v1}, Lcom/umeng/fb/util/Res;->id(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static umeng_fb_contact_update_at(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-static {p0}, Lcom/umeng/fb/util/Res;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/util/Res;

    move-result-object v0

    const-string v1, "umeng_fb_contact_update_at"

    invoke-virtual {v0, v1}, Lcom/umeng/fb/util/Res;->id(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static umeng_fb_conversation_contact_entry(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-static {p0}, Lcom/umeng/fb/util/Res;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/util/Res;

    move-result-object v0

    const-string v1, "umeng_fb_conversation_contact_entry"

    invoke-virtual {v0, v1}, Lcom/umeng/fb/util/Res;->id(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static umeng_fb_conversation_umeng_logo(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-static {p0}, Lcom/umeng/fb/util/Res;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/util/Res;

    move-result-object v0

    const-string v1, "umeng_fb_conversation_umeng_logo"

    invoke-virtual {v0, v1}, Lcom/umeng/fb/util/Res;->id(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static umeng_fb_reply_content(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-static {p0}, Lcom/umeng/fb/util/Res;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/util/Res;

    move-result-object v0

    const-string v1, "umeng_fb_reply_content"

    invoke-virtual {v0, v1}, Lcom/umeng/fb/util/Res;->id(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static umeng_fb_reply_content_left(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-static {p0}, Lcom/umeng/fb/util/Res;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/util/Res;

    move-result-object v0

    const-string v1, "umeng_fb_reply_content_left"

    invoke-virtual {v0, v1}, Lcom/umeng/fb/util/Res;->id(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static umeng_fb_reply_content_right(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-static {p0}, Lcom/umeng/fb/util/Res;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/util/Res;

    move-result-object v0

    const-string v1, "umeng_fb_reply_content_right"

    invoke-virtual {v0, v1}, Lcom/umeng/fb/util/Res;->id(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static umeng_fb_reply_date(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-static {p0}, Lcom/umeng/fb/util/Res;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/util/Res;

    move-result-object v0

    const-string v1, "umeng_fb_reply_date"

    invoke-virtual {v0, v1}, Lcom/umeng/fb/util/Res;->id(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static umeng_fb_reply_list(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 9
    invoke-static {p0}, Lcom/umeng/fb/util/Res;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/util/Res;

    move-result-object v0

    const-string v1, "umeng_fb_reply_list"

    invoke-virtual {v0, v1}, Lcom/umeng/fb/util/Res;->id(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static umeng_fb_save(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-static {p0}, Lcom/umeng/fb/util/Res;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/util/Res;

    move-result-object v0

    const-string v1, "umeng_fb_save"

    invoke-virtual {v0, v1}, Lcom/umeng/fb/util/Res;->id(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static umeng_fb_send(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-static {p0}, Lcom/umeng/fb/util/Res;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/util/Res;

    move-result-object v0

    const-string v1, "umeng_fb_send"

    invoke-virtual {v0, v1}, Lcom/umeng/fb/util/Res;->id(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
