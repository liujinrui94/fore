.class public final Lcom/umeng/fb/R$layout;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/fb/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "layout"
.end annotation


# static fields
.field public static umeng_fb_activity_contact:I

.field public static umeng_fb_activity_conversation:I

.field public static umeng_fb_list_header:I

.field public static umeng_fb_list_item:I

.field public static umeng_fb_new_reply_alert_dialog:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const/high16 v0, 0x7f030000

    sput v0, Lcom/umeng/fb/R$layout;->umeng_fb_activity_contact:I

    .line 75
    const v0, 0x7f030001

    sput v0, Lcom/umeng/fb/R$layout;->umeng_fb_activity_conversation:I

    .line 76
    const v0, 0x7f030002

    sput v0, Lcom/umeng/fb/R$layout;->umeng_fb_list_header:I

    .line 77
    const v0, 0x7f030003

    sput v0, Lcom/umeng/fb/R$layout;->umeng_fb_list_item:I

    .line 78
    const v0, 0x7f030004

    sput v0, Lcom/umeng/fb/R$layout;->umeng_fb_new_reply_alert_dialog:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
