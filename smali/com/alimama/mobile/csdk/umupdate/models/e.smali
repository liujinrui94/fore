.class public enum Lcom/alimama/mobile/csdk/umupdate/models/e;
.super Ljava/lang/Enum;
.source "UFPResType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alimama/mobile/csdk/umupdate/models/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/alimama/mobile/csdk/umupdate/models/e;

.field public static final enum b:Lcom/alimama/mobile/csdk/umupdate/models/e;

.field public static final enum c:Lcom/alimama/mobile/csdk/umupdate/models/e;

.field public static final enum d:Lcom/alimama/mobile/csdk/umupdate/models/e;

.field private static final synthetic e:[Lcom/alimama/mobile/csdk/umupdate/models/e;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/alimama/mobile/csdk/umupdate/models/e$1;

    const-string v1, "APP"

    invoke-direct {v0, v1, v2}, Lcom/alimama/mobile/csdk/umupdate/models/e$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alimama/mobile/csdk/umupdate/models/e;->a:Lcom/alimama/mobile/csdk/umupdate/models/e;

    .line 11
    new-instance v0, Lcom/alimama/mobile/csdk/umupdate/models/e$2;

    const-string v1, "TB_ITEM"

    invoke-direct {v0, v1, v3}, Lcom/alimama/mobile/csdk/umupdate/models/e$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alimama/mobile/csdk/umupdate/models/e;->b:Lcom/alimama/mobile/csdk/umupdate/models/e;

    .line 17
    new-instance v0, Lcom/alimama/mobile/csdk/umupdate/models/e$3;

    const-string v1, "TUAN"

    invoke-direct {v0, v1, v4}, Lcom/alimama/mobile/csdk/umupdate/models/e$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alimama/mobile/csdk/umupdate/models/e;->c:Lcom/alimama/mobile/csdk/umupdate/models/e;

    .line 23
    new-instance v0, Lcom/alimama/mobile/csdk/umupdate/models/e$4;

    const-string v1, "LOTTERY"

    invoke-direct {v0, v1, v5}, Lcom/alimama/mobile/csdk/umupdate/models/e$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alimama/mobile/csdk/umupdate/models/e;->d:Lcom/alimama/mobile/csdk/umupdate/models/e;

    .line 4
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alimama/mobile/csdk/umupdate/models/e;

    sget-object v1, Lcom/alimama/mobile/csdk/umupdate/models/e;->a:Lcom/alimama/mobile/csdk/umupdate/models/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alimama/mobile/csdk/umupdate/models/e;->b:Lcom/alimama/mobile/csdk/umupdate/models/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alimama/mobile/csdk/umupdate/models/e;->c:Lcom/alimama/mobile/csdk/umupdate/models/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alimama/mobile/csdk/umupdate/models/e;->d:Lcom/alimama/mobile/csdk/umupdate/models/e;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alimama/mobile/csdk/umupdate/models/e;->e:[Lcom/alimama/mobile/csdk/umupdate/models/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/alimama/mobile/csdk/umupdate/models/e$1;)V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0, p1, p2}, Lcom/alimama/mobile/csdk/umupdate/models/e;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/alimama/mobile/csdk/umupdate/models/e;
    .locals 5

    .prologue
    .line 31
    invoke-static {}, Lcom/alimama/mobile/csdk/umupdate/models/e;->values()[Lcom/alimama/mobile/csdk/umupdate/models/e;

    move-result-object v2

    .line 32
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 33
    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/models/e;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 35
    :goto_1
    return-object v0

    .line 32
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 35
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alimama/mobile/csdk/umupdate/models/e;
    .locals 1

    .prologue
    .line 4
    const-class v0, Lcom/alimama/mobile/csdk/umupdate/models/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alimama/mobile/csdk/umupdate/models/e;

    return-object v0
.end method

.method public static values()[Lcom/alimama/mobile/csdk/umupdate/models/e;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/alimama/mobile/csdk/umupdate/models/e;->e:[Lcom/alimama/mobile/csdk/umupdate/models/e;

    invoke-virtual {v0}, [Lcom/alimama/mobile/csdk/umupdate/models/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alimama/mobile/csdk/umupdate/models/e;

    return-object v0
.end method
