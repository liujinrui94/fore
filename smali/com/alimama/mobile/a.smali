.class public Lcom/alimama/mobile/a;
.super Ljava/lang/Object;
.source "MMSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alimama/mobile/a$a;
    }
.end annotation


# static fields
.field private static a:Lcom/alimama/mobile/a;


# instance fields
.field private b:Lcom/alimama/mobile/csdk/umupdate/a/a;

.field private c:Landroid/content/Context;

.field private d:Lcom/alimama/mobile/csdk/umupdate/a/h;

.field private e:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alimama/mobile/a;->e:Z

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/alimama/mobile/a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alimama/mobile/a;->c:Landroid/content/Context;

    return-object v0
.end method

.method public static a()Lcom/alimama/mobile/a;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/alimama/mobile/a;->a:Lcom/alimama/mobile/a;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/alimama/mobile/a;

    invoke-direct {v0}, Lcom/alimama/mobile/a;-><init>()V

    sput-object v0, Lcom/alimama/mobile/a;->a:Lcom/alimama/mobile/a;

    .line 62
    :cond_0
    sget-object v0, Lcom/alimama/mobile/a;->a:Lcom/alimama/mobile/a;

    return-object v0
.end method

.method private a(Lcom/alimama/mobile/csdk/umupdate/models/b;Lcom/alimama/mobile/a$a;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 135
    invoke-virtual {p1}, Lcom/alimama/mobile/csdk/umupdate/models/b;->b()Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->sid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 136
    :goto_0
    new-instance v3, Lcom/alimama/mobile/a$1;

    invoke-direct {v3, p0, p2, v0, p1}, Lcom/alimama/mobile/a$1;-><init>(Lcom/alimama/mobile/a;Lcom/alimama/mobile/a$a;ZLcom/alimama/mobile/csdk/umupdate/models/b;)V

    .line 193
    new-instance v0, Lcom/alimama/mobile/csdk/umupdate/a/i;

    invoke-direct {v0, p1, v3, v1, v2}, Lcom/alimama/mobile/csdk/umupdate/a/i;-><init>(Lcom/alimama/mobile/csdk/umupdate/models/b;Lcom/alimama/mobile/a$a;IZ)V

    sget-object v1, Lcom/alimama/mobile/csdk/umupdate/a/i;->c:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/alimama/mobile/csdk/umupdate/a/i;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/alimama/mobile/csdk/umupdate/a/b;

    .line 194
    return-void

    :cond_0
    move v0, v2

    .line 135
    goto :goto_0
.end method

.method private a(Lcom/alimama/mobile/csdk/umupdate/models/b;Lcom/alimama/mobile/a$a;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 122
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/alimama/mobile/a;->a(Lcom/alimama/mobile/csdk/umupdate/models/b;Lcom/alimama/mobile/a$a;)V

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    new-instance v0, Lcom/alimama/mobile/csdk/umupdate/a/i;

    invoke-direct {v0, p1, p2, v2, v2}, Lcom/alimama/mobile/csdk/umupdate/a/i;-><init>(Lcom/alimama/mobile/csdk/umupdate/models/b;Lcom/alimama/mobile/a$a;IZ)V

    sget-object v1, Lcom/alimama/mobile/csdk/umupdate/a/i;->c:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/alimama/mobile/csdk/umupdate/a/i;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/alimama/mobile/csdk/umupdate/a/b;

    goto :goto_0
.end method

.method private b(Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;Lcom/alimama/mobile/a$a;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 112
    new-instance v0, Lcom/alimama/mobile/csdk/umupdate/models/b;

    invoke-direct {v0, p1}, Lcom/alimama/mobile/csdk/umupdate/models/b;-><init>(Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;)V

    .line 113
    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/models/b;->a()Lcom/alimama/mobile/csdk/umupdate/models/c;

    move-result-object v1

    .line 115
    iget-object v2, p0, Lcom/alimama/mobile/a;->c:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/alimama/mobile/csdk/umupdate/models/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 116
    invoke-virtual {v1}, Lcom/alimama/mobile/csdk/umupdate/models/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 117
    invoke-direct {p0, v0, p2, v1}, Lcom/alimama/mobile/a;->a(Lcom/alimama/mobile/csdk/umupdate/models/b;Lcom/alimama/mobile/a$a;I)V

    .line 118
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/alimama/mobile/a;->e:Z

    if-nez v0, :cond_0

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/a;->c:Landroid/content/Context;

    .line 42
    new-instance v0, Lcom/alimama/mobile/csdk/umupdate/a/c;

    invoke-direct {v0}, Lcom/alimama/mobile/csdk/umupdate/a/c;-><init>()V

    .line 43
    new-instance v1, Lcom/alimama/mobile/csdk/umupdate/a/c$a;

    invoke-direct {v1}, Lcom/alimama/mobile/csdk/umupdate/a/c$a;-><init>()V

    .line 44
    const-string v2, "*"

    iput-object v2, v1, Lcom/alimama/mobile/csdk/umupdate/a/c$a;->a:Ljava/lang/String;

    .line 45
    const-string v2, "2G/3G"

    iput-object v2, v1, Lcom/alimama/mobile/csdk/umupdate/a/c$a;->c:Ljava/lang/String;

    .line 46
    const-string v2, "Wi-Fi"

    iput-object v2, v1, Lcom/alimama/mobile/csdk/umupdate/a/c$a;->d:Ljava/lang/String;

    .line 47
    const-string v2, "Unknown"

    iput-object v2, v1, Lcom/alimama/mobile/csdk/umupdate/a/c$a;->b:Ljava/lang/String;

    .line 48
    iget-object v2, p0, Lcom/alimama/mobile/a;->c:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/alimama/mobile/csdk/umupdate/a/c;->a(Landroid/content/Context;Lcom/alimama/mobile/csdk/umupdate/a/c$a;)V

    .line 49
    iput-object v0, p0, Lcom/alimama/mobile/a;->b:Lcom/alimama/mobile/csdk/umupdate/a/a;

    .line 51
    new-instance v0, Lcom/alimama/mobile/csdk/umupdate/a/h;

    iget-object v1, p0, Lcom/alimama/mobile/a;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alimama/mobile/csdk/umupdate/a/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alimama/mobile/a;->d:Lcom/alimama/mobile/csdk/umupdate/a/h;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alimama/mobile/a;->e:Z

    .line 55
    :cond_0
    return-void
.end method

.method public a(Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;Lcom/alimama/mobile/a$a;)V
    .locals 0

    .prologue
    .line 89
    invoke-virtual {p1}, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->clear()V

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/alimama/mobile/a;->b(Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;Lcom/alimama/mobile/a$a;)V

    .line 92
    return-void
.end method

.method public a(Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;Lcom/alimama/mobile/csdk/umupdate/models/Promoter;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-static {p2, p1, v0, v0}, Lcom/alimama/mobile/csdk/umupdate/a/d;->a(Lcom/alimama/mobile/csdk/umupdate/models/Promoter;Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;ZI)V

    .line 86
    return-void
.end method

.method public varargs a(Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;[Lcom/alimama/mobile/csdk/umupdate/models/Promoter;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 98
    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_2

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable send impression report.[promoters="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p2, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/alimama/mobile/csdk/umupdate/a/g;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    :goto_1
    return-void

    .line 99
    :cond_1
    array-length v0, p2

    goto :goto_0

    .line 103
    :cond_2
    new-instance v0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;

    invoke-direct {v0, p1}, Lcom/alimama/mobile/csdk/umupdate/b/d$a;-><init>(Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;)V

    invoke-virtual {v0, v1}, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->a(I)Lcom/alimama/mobile/csdk/umupdate/b/d$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->b(I)Lcom/alimama/mobile/csdk/umupdate/b/d$a;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->c(I)Lcom/alimama/mobile/csdk/umupdate/b/d$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->a([Lcom/alimama/mobile/csdk/umupdate/models/Promoter;)Lcom/alimama/mobile/csdk/umupdate/b/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->a()Lcom/alimama/mobile/csdk/umupdate/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/b/d;->a()V

    goto :goto_1
.end method

.method public b()Lcom/alimama/mobile/csdk/umupdate/a/a;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alimama/mobile/a;->b:Lcom/alimama/mobile/csdk/umupdate/a/a;

    return-object v0
.end method

.method public c()Landroid/content/Context;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alimama/mobile/a;->c:Landroid/content/Context;

    return-object v0
.end method

.method public d()Lcom/alimama/mobile/csdk/umupdate/a/h;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alimama/mobile/a;->d:Lcom/alimama/mobile/csdk/umupdate/a/h;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/alimama/mobile/a;->e:Z

    return v0
.end method
