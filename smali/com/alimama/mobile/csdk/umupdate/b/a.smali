.class public interface abstract Lcom/alimama/mobile/csdk/umupdate/b/a;
.super Ljava/lang/Object;
.source "NETConstants.java"


# static fields
.field public static final a:Ljava/lang/String; = "http://w.m.taobao.com/"

.field public static final b:Ljava/lang/String; = "http://w.m.taobao.com/api/"

.field public static final c:[Ljava/lang/String;

.field public static final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "http://w.m.taobao.com/api/q?"

    aput-object v1, v0, v2

    sput-object v0, Lcom/alimama/mobile/csdk/umupdate/b/a;->c:[Ljava/lang/String;

    .line 13
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "http://w.m.taobao.com/api/r?"

    aput-object v1, v0, v2

    sput-object v0, Lcom/alimama/mobile/csdk/umupdate/b/a;->d:[Ljava/lang/String;

    return-void
.end method
