.class Lcom/alimama/mobile/a$1;
.super Ljava/lang/Object;
.source "MMSDK.java"

# interfaces
.implements Lcom/alimama/mobile/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alimama/mobile/a;->a(Lcom/alimama/mobile/csdk/umupdate/models/b;Lcom/alimama/mobile/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alimama/mobile/a$a;

.field final synthetic b:Z

.field final synthetic c:Lcom/alimama/mobile/csdk/umupdate/models/b;

.field final synthetic d:Lcom/alimama/mobile/a;


# direct methods
.method constructor <init>(Lcom/alimama/mobile/a;Lcom/alimama/mobile/a$a;ZLcom/alimama/mobile/csdk/umupdate/models/b;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/alimama/mobile/a$1;->d:Lcom/alimama/mobile/a;

    iput-object p2, p0, Lcom/alimama/mobile/a$1;->a:Lcom/alimama/mobile/a$a;

    iput-boolean p3, p0, Lcom/alimama/mobile/a$1;->b:Z

    iput-object p4, p0, Lcom/alimama/mobile/a$1;->c:Lcom/alimama/mobile/csdk/umupdate/models/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alimama/mobile/a$1;Z)V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/alimama/mobile/a$1;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 5

    .prologue
    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/alimama/mobile/a$1;->c:Lcom/alimama/mobile/csdk/umupdate/models/b;

    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/models/b;->b()Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    .line 170
    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->clear()V

    .line 171
    new-instance v1, Lcom/alimama/mobile/csdk/umupdate/models/b;

    invoke-direct {v1, v0}, Lcom/alimama/mobile/csdk/umupdate/models/b;-><init>(Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;)V

    .line 173
    if-eqz p1, :cond_0

    .line 174
    iget-object v0, p0, Lcom/alimama/mobile/a$1;->c:Lcom/alimama/mobile/csdk/umupdate/models/b;

    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/models/b;->a()Lcom/alimama/mobile/csdk/umupdate/models/c;

    move-result-object v0

    .line 176
    iget-object v2, p0, Lcom/alimama/mobile/a$1;->d:Lcom/alimama/mobile/a;

    invoke-static {v2}, Lcom/alimama/mobile/a;->a(Lcom/alimama/mobile/a;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/models/c;->c()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 178
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :try_start_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 180
    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/models/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 181
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 182
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    :try_start_2
    new-instance v0, Lcom/alimama/mobile/csdk/umupdate/a/i;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alimama/mobile/csdk/umupdate/a/i;-><init>(Lcom/alimama/mobile/csdk/umupdate/models/b;Lcom/alimama/mobile/a$a;IZ)V

    sget-object v1, Lcom/alimama/mobile/csdk/umupdate/a/i;->c:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/alimama/mobile/csdk/umupdate/a/i;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/alimama/mobile/csdk/umupdate/a/b;
    :try_end_2
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 182
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public dataReceived(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/alimama/mobile/csdk/umupdate/models/Promoter;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 139
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/alimama/mobile/a$1;->a:Lcom/alimama/mobile/a$a;

    invoke-interface {v0, p1, p2}, Lcom/alimama/mobile/a$a;->dataReceived(ILjava/util/List;)V

    .line 142
    iget-boolean v0, p0, Lcom/alimama/mobile/a$1;->b:Z

    invoke-direct {p0, v0}, Lcom/alimama/mobile/a$1;->a(Z)V

    .line 160
    :goto_0
    return-void

    .line 147
    :cond_0
    new-instance v0, Lcom/alimama/mobile/a$1$1;

    invoke-direct {v0, p0}, Lcom/alimama/mobile/a$1$1;-><init>(Lcom/alimama/mobile/a$1;)V

    .line 158
    new-instance v1, Lcom/alimama/mobile/csdk/umupdate/a/i;

    iget-object v2, p0, Lcom/alimama/mobile/a$1;->c:Lcom/alimama/mobile/csdk/umupdate/models/b;

    invoke-direct {v1, v2, v0, v3, v3}, Lcom/alimama/mobile/csdk/umupdate/a/i;-><init>(Lcom/alimama/mobile/csdk/umupdate/models/b;Lcom/alimama/mobile/a$a;IZ)V

    sget-object v0, Lcom/alimama/mobile/csdk/umupdate/a/i;->c:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Lcom/alimama/mobile/csdk/umupdate/a/i;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/alimama/mobile/csdk/umupdate/a/b;

    goto :goto_0
.end method
