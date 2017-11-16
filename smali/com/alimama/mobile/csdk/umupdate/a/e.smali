.class public Lcom/alimama/mobile/csdk/umupdate/a/e;
.super Ljava/lang/Object;
.source "ExchangeConstants.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Z

.field public static g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5
    const-string v0, "None"

    sput-object v0, Lcom/alimama/mobile/csdk/umupdate/a/e;->a:Ljava/lang/String;

    .line 7
    const-string v0, "1.0.20141209_update"

    sput-object v0, Lcom/alimama/mobile/csdk/umupdate/a/e;->b:Ljava/lang/String;

    .line 9
    const-string v0, "5.3.20140702"

    sput-object v0, Lcom/alimama/mobile/csdk/umupdate/a/e;->c:Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/alimama/mobile/csdk/umupdate/a/e;->d:Ljava/lang/String;

    .line 16
    const-string v0, "com.alimama.mobile.csdk"

    sput-object v0, Lcom/alimama/mobile/csdk/umupdate/a/e;->e:Ljava/lang/String;

    .line 19
    sput-boolean v1, Lcom/alimama/mobile/csdk/umupdate/a/e;->f:Z

    .line 21
    sput-boolean v1, Lcom/alimama/mobile/csdk/umupdate/a/e;->g:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
