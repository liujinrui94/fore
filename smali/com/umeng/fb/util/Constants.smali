.class public Lcom/umeng/fb/util/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final CACHE_INTERNAL_PATH:Ljava/lang/String; = "/umdownload"

.field public static final CACHE_PATH:Ljava/lang/String; = "/download/.um"

.field public static CHANNEL:Ljava/lang/String; = null

.field public static final KEY_APPKEY:Ljava/lang/String; = "appkey"

.field public static final KEY_CHANNEL:Ljava/lang/String; = "channel"

.field public static final KEY_DELTA:Ljava/lang/String; = "delta"

.field public static final KEY_ID:Ljava/lang/String; = "idmd5"

.field public static final KEY_OLD_MD5:Ljava/lang/String; = "old_md5"

.field public static final KEY_PACKAGE:Ljava/lang/String; = "package"

.field public static final KEY_PROTO_VER:Ljava/lang/String; = "proto_ver"

.field public static final KEY_SDK_VERSION:Ljava/lang/String; = "sdk_version"

.field public static final KEY_TYPE:Ljava/lang/String; = "type"

.field public static final KEY_VERSION_CODE:Ljava/lang/String; = "version_code"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/fb/util/Constants;->CHANNEL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
