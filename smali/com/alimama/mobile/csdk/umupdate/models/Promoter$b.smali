.class public enum Lcom/alimama/mobile/csdk/umupdate/models/Promoter$b;
.super Ljava/lang/Enum;
.source "Promoter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alimama/mobile/csdk/umupdate/models/Promoter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alimama/mobile/csdk/umupdate/models/Promoter$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/alimama/mobile/csdk/umupdate/models/Promoter$b;

.field public static final enum b:Lcom/alimama/mobile/csdk/umupdate/models/Promoter$b;

.field private static final synthetic c:[Lcom/alimama/mobile/csdk/umupdate/models/Promoter$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter$b$1;

    const-string v1, "TEL"

    invoke-direct {v0, v1, v2}, Lcom/alimama/mobile/csdk/umupdate/models/Promoter$b$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter$b;->a:Lcom/alimama/mobile/csdk/umupdate/models/Promoter$b;

    .line 55
    new-instance v0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter$b$2;

    const-string v1, "CALLBACK"

    invoke-direct {v0, v1, v3}, Lcom/alimama/mobile/csdk/umupdate/models/Promoter$b$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter$b;->b:Lcom/alimama/mobile/csdk/umupdate/models/Promoter$b;

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alimama/mobile/csdk/umupdate/models/Promoter$b;

    sget-object v1, Lcom/alimama/mobile/csdk/umupdate/models/Promoter$b;->a:Lcom/alimama/mobile/csdk/umupdate/models/Promoter$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alimama/mobile/csdk/umupdate/models/Promoter$b;->b:Lcom/alimama/mobile/csdk/umupdate/models/Promoter$b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter$b;->c:[Lcom/alimama/mobile/csdk/umupdate/models/Promoter$b;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/alimama/mobile/csdk/umupdate/models/Promoter$1;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/alimama/mobile/csdk/umupdate/models/Promoter$b;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 63
    invoke-static {}, Lcom/alimama/mobile/csdk/umupdate/models/Promoter$b;->values()[Lcom/alimama/mobile/csdk/umupdate/models/Promoter$b;

    move-result-object v1

    .line 64
    array-length v0, v1

    new-array v2, v0, [Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 66
    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/alimama/mobile/csdk/umupdate/models/Promoter$b;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    return-object v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alimama/mobile/csdk/umupdate/models/Promoter$b;
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter$b;

    return-object v0
.end method

.method public static values()[Lcom/alimama/mobile/csdk/umupdate/models/Promoter$b;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter$b;->c:[Lcom/alimama/mobile/csdk/umupdate/models/Promoter$b;

    invoke-virtual {v0}, [Lcom/alimama/mobile/csdk/umupdate/models/Promoter$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alimama/mobile/csdk/umupdate/models/Promoter$b;

    return-object v0
.end method
