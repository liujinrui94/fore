.class public final Lcom/umeng/fb/R$color;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/fb/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "color"
.end annotation


# static fields
.field public static umeng_fb_color_btn_normal:I

.field public static umeng_fb_color_btn_pressed:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/high16 v0, 0x7f050000

    sput v0, Lcom/umeng/fb/R$color;->umeng_fb_color_btn_normal:I

    .line 21
    const v0, 0x7f050001

    sput v0, Lcom/umeng/fb/R$color;->umeng_fb_color_btn_pressed:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
