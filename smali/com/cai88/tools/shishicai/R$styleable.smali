.class public final Lcom/cai88/tools/shishicai/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cai88/tools/shishicai/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final SlidingLayer:[I

.field public static final SlidingLayer_closeOnTapEnabled:I = 0x2

.field public static final SlidingLayer_shadowDrawable:I = 0x0

.field public static final SlidingLayer_shadowWidth:I = 0x1

.field public static final SlidingLayer_stickTo:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 516
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/cai88/tools/shishicai/R$styleable;->SlidingLayer:[I

    .line 581
    return-void

    .line 516
    nop

    :array_0
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
        0x7f010003
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
