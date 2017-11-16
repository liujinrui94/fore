.class public Lcom/cai88/tools/uitl/CustomInterpolator;
.super Ljava/lang/Object;
.source "CustomInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3
    .param p1, "input"    # F

    .prologue
    .line 29
    const v1, 0x3fc66666    # 1.55f

    mul-float/2addr v1, p1

    const v2, 0x3f8ccccd    # 1.1f

    sub-float v0, v1, v2

    .line 31
    .local v0, "inner":F
    const v1, 0x3f99999a    # 1.2f

    mul-float v2, v0, v0

    sub-float/2addr v1, v2

    return v1
.end method
