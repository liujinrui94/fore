.class public enum Lcom/alimama/mobile/csdk/umupdate/models/f;
.super Ljava/lang/Enum;
.source "UFPTemplate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alimama/mobile/csdk/umupdate/models/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/alimama/mobile/csdk/umupdate/models/f;

.field public static final enum b:Lcom/alimama/mobile/csdk/umupdate/models/f;

.field public static final enum c:Lcom/alimama/mobile/csdk/umupdate/models/f;

.field public static final enum d:Lcom/alimama/mobile/csdk/umupdate/models/f;

.field private static final synthetic e:[Lcom/alimama/mobile/csdk/umupdate/models/f;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/alimama/mobile/csdk/umupdate/models/f$1;

    const-string v1, "LIST"

    invoke-direct {v0, v1, v2}, Lcom/alimama/mobile/csdk/umupdate/models/f$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alimama/mobile/csdk/umupdate/models/f;->a:Lcom/alimama/mobile/csdk/umupdate/models/f;

    .line 11
    new-instance v0, Lcom/alimama/mobile/csdk/umupdate/models/f$2;

    const-string v1, "WATERFALL"

    invoke-direct {v0, v1, v3}, Lcom/alimama/mobile/csdk/umupdate/models/f$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alimama/mobile/csdk/umupdate/models/f;->b:Lcom/alimama/mobile/csdk/umupdate/models/f;

    .line 17
    new-instance v0, Lcom/alimama/mobile/csdk/umupdate/models/f$3;

    const-string v1, "IMGLIST"

    invoke-direct {v0, v1, v4}, Lcom/alimama/mobile/csdk/umupdate/models/f$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alimama/mobile/csdk/umupdate/models/f;->c:Lcom/alimama/mobile/csdk/umupdate/models/f;

    .line 23
    new-instance v0, Lcom/alimama/mobile/csdk/umupdate/models/f$4;

    const-string v1, "GRID"

    invoke-direct {v0, v1, v5}, Lcom/alimama/mobile/csdk/umupdate/models/f$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alimama/mobile/csdk/umupdate/models/f;->d:Lcom/alimama/mobile/csdk/umupdate/models/f;

    .line 4
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alimama/mobile/csdk/umupdate/models/f;

    sget-object v1, Lcom/alimama/mobile/csdk/umupdate/models/f;->a:Lcom/alimama/mobile/csdk/umupdate/models/f;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alimama/mobile/csdk/umupdate/models/f;->b:Lcom/alimama/mobile/csdk/umupdate/models/f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alimama/mobile/csdk/umupdate/models/f;->c:Lcom/alimama/mobile/csdk/umupdate/models/f;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alimama/mobile/csdk/umupdate/models/f;->d:Lcom/alimama/mobile/csdk/umupdate/models/f;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alimama/mobile/csdk/umupdate/models/f;->e:[Lcom/alimama/mobile/csdk/umupdate/models/f;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/alimama/mobile/csdk/umupdate/models/f$1;)V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0, p1, p2}, Lcom/alimama/mobile/csdk/umupdate/models/f;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/alimama/mobile/csdk/umupdate/models/f;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 33
    :try_start_0
    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 34
    const/4 v2, 0x0

    aget-object v2, v1, v2

    .line 36
    invoke-static {}, Lcom/alimama/mobile/csdk/umupdate/models/f;->values()[Lcom/alimama/mobile/csdk/umupdate/models/f;

    move-result-object v3

    .line 37
    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 38
    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/models/f;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 42
    :goto_1
    return-object v0

    .line 37
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 42
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alimama/mobile/csdk/umupdate/models/f;
    .locals 1

    .prologue
    .line 4
    const-class v0, Lcom/alimama/mobile/csdk/umupdate/models/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alimama/mobile/csdk/umupdate/models/f;

    return-object v0
.end method

.method public static values()[Lcom/alimama/mobile/csdk/umupdate/models/f;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/alimama/mobile/csdk/umupdate/models/f;->e:[Lcom/alimama/mobile/csdk/umupdate/models/f;

    invoke-virtual {v0}, [Lcom/alimama/mobile/csdk/umupdate/models/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alimama/mobile/csdk/umupdate/models/f;

    return-object v0
.end method
