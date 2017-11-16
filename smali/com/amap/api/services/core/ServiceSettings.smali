.class public Lcom/amap/api/services/core/ServiceSettings;
.super Ljava/lang/Object;
.source "ServiceSettings.java"


# static fields
.field public static final HTTP:I = 0x1

.field public static final HTTPS:I = 0x2

.field private static b:Lcom/amap/api/services/core/ServiceSettings;


# instance fields
.field private a:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/services/core/ServiceSettings;->a:I

    .line 11
    return-void
.end method

.method public static getInstance()Lcom/amap/api/services/core/ServiceSettings;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/amap/api/services/core/ServiceSettings;->b:Lcom/amap/api/services/core/ServiceSettings;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/amap/api/services/core/ServiceSettings;

    invoke-direct {v0}, Lcom/amap/api/services/core/ServiceSettings;-><init>()V

    sput-object v0, Lcom/amap/api/services/core/ServiceSettings;->b:Lcom/amap/api/services/core/ServiceSettings;

    .line 17
    :cond_0
    sget-object v0, Lcom/amap/api/services/core/ServiceSettings;->b:Lcom/amap/api/services/core/ServiceSettings;

    return-object v0
.end method


# virtual methods
.method public getProtocol()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/amap/api/services/core/ServiceSettings;->a:I

    return v0
.end method

.method public setProtocol(I)V
    .locals 0

    .prologue
    .line 21
    iput p1, p0, Lcom/amap/api/services/core/ServiceSettings;->a:I

    .line 22
    return-void
.end method
