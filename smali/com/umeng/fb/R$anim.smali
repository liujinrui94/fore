.class public final Lcom/umeng/fb/R$anim;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/fb/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "anim"
.end annotation


# static fields
.field public static umeng_fb_slide_in_from_left:I

.field public static umeng_fb_slide_in_from_right:I

.field public static umeng_fb_slide_out_from_left:I

.field public static umeng_fb_slide_out_from_right:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/high16 v0, 0x7f040000

    sput v0, Lcom/umeng/fb/R$anim;->umeng_fb_slide_in_from_left:I

    .line 13
    const v0, 0x7f040001

    sput v0, Lcom/umeng/fb/R$anim;->umeng_fb_slide_in_from_right:I

    .line 14
    const v0, 0x7f040002

    sput v0, Lcom/umeng/fb/R$anim;->umeng_fb_slide_out_from_left:I

    .line 15
    const v0, 0x7f040003

    sput v0, Lcom/umeng/fb/R$anim;->umeng_fb_slide_out_from_right:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
