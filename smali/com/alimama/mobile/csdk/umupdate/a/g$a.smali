.class public Lcom/alimama/mobile/csdk/umupdate/a/g$a;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alimama/mobile/csdk/umupdate/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alimama/mobile/csdk/umupdate/a/g$a$a;
    }
.end annotation


# static fields
.field public static final a:Z

.field private static final b:J


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alimama/mobile/csdk/umupdate/a/g$a$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 123
    sget-boolean v0, Lcom/alimama/mobile/csdk/umupdate/a/g;->b:Z

    sput-boolean v0, Lcom/alimama/mobile/csdk/umupdate/a/g$a;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/g$a;->c:Ljava/util/List;

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/g$a;->d:Z

    return-void
.end method

.method private a()J
    .locals 5

    .prologue
    .line 194
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/g$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 195
    const-wide/16 v0, 0x0

    .line 200
    :goto_0
    return-wide v0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/g$a;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alimama/mobile/csdk/umupdate/a/g$a$a;

    iget-wide v1, v0, Lcom/alimama/mobile/csdk/umupdate/a/g$a$a;->c:J

    .line 199
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/g$a;->c:Ljava/util/List;

    iget-object v3, p0, Lcom/alimama/mobile/csdk/umupdate/a/g$a;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alimama/mobile/csdk/umupdate/a/g$a$a;

    iget-wide v3, v0, Lcom/alimama/mobile/csdk/umupdate/a/g$a$a;->c:J

    .line 200
    sub-long v0, v3, v1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 164
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/g$a;->d:Z

    .line 166
    invoke-direct {p0}, Lcom/alimama/mobile/csdk/umupdate/a/g$a;->a()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 167
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_1

    .line 178
    :cond_0
    monitor-exit p0

    return-void

    .line 171
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/g$a;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alimama/mobile/csdk/umupdate/a/g$a$a;

    iget-wide v0, v0, Lcom/alimama/mobile/csdk/umupdate/a/g$a$a;->c:J

    .line 172
    const-string v4, "(%-4d ms) %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object p1, v5, v2

    invoke-static {v4, v5}, Lcom/alimama/mobile/csdk/umupdate/a/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    iget-object v2, p0, Lcom/alimama/mobile/csdk/umupdate/a/g$a;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-wide v1, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alimama/mobile/csdk/umupdate/a/g$a$a;

    .line 174
    iget-wide v3, v0, Lcom/alimama/mobile/csdk/umupdate/a/g$a$a;->c:J

    .line 175
    const-string v6, "(+%-4d) [%2d] %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    sub-long v1, v3, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, v8

    const/4 v1, 0x1

    iget-wide v8, v0, Lcom/alimama/mobile/csdk/umupdate/a/g$a$a;->b:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x2

    iget-object v0, v0, Lcom/alimama/mobile/csdk/umupdate/a/g$a$a;->a:Ljava/lang/String;

    aput-object v0, v7, v1

    invoke-static {v6, v7}, Lcom/alimama/mobile/csdk/umupdate/a/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v1, v3

    .line 177
    goto :goto_0

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;J)V
    .locals 7

    .prologue
    .line 149
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/g$a;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 155
    :goto_0
    monitor-exit p0

    return-void

    .line 154
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/alimama/mobile/csdk/umupdate/a/g$a;->c:Ljava/util/List;

    new-instance v0, Lcom/alimama/mobile/csdk/umupdate/a/g$a$a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/alimama/mobile/csdk/umupdate/a/g$a$a;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/g$a;->d:Z

    if-nez v0, :cond_0

    .line 185
    const-string v0, "Request on the loose"

    invoke-virtual {p0, v0}, Lcom/alimama/mobile/csdk/umupdate/a/g$a;->a(Ljava/lang/String;)V

    .line 186
    const-string v0, "Marker log finalized without finish() - uncaught exit point for request"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/alimama/mobile/csdk/umupdate/a/g;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    :cond_0
    return-void
.end method