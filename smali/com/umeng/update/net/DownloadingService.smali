.class public Lcom/umeng/update/net/DownloadingService;
.super Landroid/app/Service;
.source "DownloadingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/update/net/DownloadingService$b;,
        Lcom/umeng/update/net/DownloadingService$a;,
        Lcom/umeng/update/net/DownloadingService$c;
    }
.end annotation


# static fields
.field private static final C:J = 0x1f40L

.field private static final D:J = 0x1f4L

.field private static E:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/umeng/update/net/a$a;",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field private static F:Landroid/util/SparseArray; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/umeng/update/net/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private static I:Ljava/lang/Boolean; = null

.field static final a:I = 0x1

.field static final b:I = 0x2

.field static final c:I = 0x3

.field static final d:I = 0x4

.field static final e:I = 0x5

.field static final f:I = 0x6

.field public static final g:I = 0x0

.field public static final h:I = 0x1

.field public static final i:I = 0x2

.field public static final j:I = 0x3

.field public static final k:I = 0x4

.field public static final l:I = 0x5

.field public static final m:I = 0x6

.field public static final n:I = 0x7

.field static final o:I = 0x64

.field static final p:Ljava/lang/String; = "filename"

.field public static r:Z = false

.field private static final t:Ljava/lang/String;

.field private static final w:J = 0x6400000L

.field private static final x:J = 0xa00000L

.field private static final y:J = 0xf731400L

.field private static final z:I = 0x3


# instance fields
.field private A:Landroid/content/Context;

.field private B:Landroid/os/Handler;

.field private G:Lcom/umeng/update/net/e;

.field private H:Z

.field q:Lcom/umeng/update/net/DownloadingService$a;

.field final s:Landroid/os/Messenger;

.field private u:Landroid/app/NotificationManager;

.field private v:Lcom/umeng/update/net/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 108
    const-class v0, Lcom/umeng/update/net/DownloadingService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/update/net/DownloadingService;->t:Ljava/lang/String;

    .line 154
    sput-boolean v1, Lcom/umeng/update/net/DownloadingService;->r:Z

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/update/net/DownloadingService;->E:Ljava/util/Map;

    .line 164
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/umeng/update/net/DownloadingService;->F:Landroid/util/SparseArray;

    .line 1053
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/umeng/update/net/DownloadingService;->I:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 107
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 166
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/umeng/update/net/DownloadingService$c;

    invoke-direct {v1, p0}, Lcom/umeng/update/net/DownloadingService$c;-><init>(Lcom/umeng/update/net/DownloadingService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/umeng/update/net/DownloadingService;->s:Landroid/os/Messenger;

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/update/net/DownloadingService;->H:Z

    .line 627
    return-void
.end method

.method static synthetic a(Lcom/umeng/update/net/DownloadingService;Landroid/app/NotificationManager;)Landroid/app/NotificationManager;
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/umeng/update/net/DownloadingService;->u:Landroid/app/NotificationManager;

    return-object p1
.end method

.method static synthetic a(Lcom/umeng/update/net/DownloadingService;)Lcom/umeng/update/net/c;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/umeng/update/net/DownloadingService;->v:Lcom/umeng/update/net/c;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 107
    sput-object p0, Lcom/umeng/update/net/DownloadingService;->I:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/umeng/update/net/DownloadingService;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/update/net/DownloadingService;Lcom/umeng/update/net/a$a;)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/umeng/update/net/DownloadingService;->a(Lcom/umeng/update/net/a$a;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/update/net/DownloadingService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/umeng/update/net/DownloadingService;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/umeng/update/net/a$a;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 593
    sget-object v0, Lcom/umeng/update/net/DownloadingService;->t:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDownload([mComponentName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/umeng/update/net/a$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mTitle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/umeng/update/net/a$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/umeng/update/net/a$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "])"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lu/upd/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    iget-object v0, p0, Lcom/umeng/update/net/DownloadingService;->v:Lcom/umeng/update/net/c;

    invoke-virtual {v0, p1}, Lcom/umeng/update/net/c;->a(Lcom/umeng/update/net/a$a;)I

    move-result v4

    .line 598
    new-instance v0, Lcom/umeng/update/net/DownloadingService$b;

    .line 599
    invoke-virtual {p0}, Lcom/umeng/update/net/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v6, p0, Lcom/umeng/update/net/DownloadingService;->q:Lcom/umeng/update/net/DownloadingService$a;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/umeng/update/net/DownloadingService$b;-><init>(Lcom/umeng/update/net/DownloadingService;Landroid/content/Context;Lcom/umeng/update/net/a$a;IILcom/umeng/update/net/DownloadingService$a;)V

    .line 601
    new-instance v1, Lcom/umeng/update/net/c$b;

    invoke-direct {v1, p1, v4}, Lcom/umeng/update/net/c$b;-><init>(Lcom/umeng/update/net/a$a;I)V

    .line 602
    iget-object v2, p0, Lcom/umeng/update/net/DownloadingService;->G:Lcom/umeng/update/net/e;

    invoke-virtual {v2, v4}, Lcom/umeng/update/net/e;->a(I)V

    .line 603
    sget-object v2, Lcom/umeng/update/net/DownloadingService;->F:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Lcom/umeng/update/net/c$b;->a(Landroid/util/SparseArray;)V

    .line 604
    iput-object v0, v1, Lcom/umeng/update/net/c$b;->a:Lcom/umeng/update/net/DownloadingService$b;

    .line 606
    invoke-virtual {v0}, Lcom/umeng/update/net/DownloadingService$b;->start()V

    .line 608
    invoke-direct {p0}, Lcom/umeng/update/net/DownloadingService;->e()V

    .line 609
    sget-boolean v0, Lcom/umeng/update/net/DownloadingService;->r:Z

    if-eqz v0, :cond_0

    .line 610
    :goto_0
    sget-object v0, Lcom/umeng/update/net/DownloadingService;->F:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v5, v0, :cond_0

    .line 611
    sget-object v0, Lcom/umeng/update/net/DownloadingService;->F:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/update/net/c$b;

    .line 612
    sget-object v1, Lcom/umeng/update/net/DownloadingService;->t:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Running task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/umeng/update/net/c$b;->e:Lcom/umeng/update/net/a$a;

    iget-object v0, v0, Lcom/umeng/update/net/a$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lu/upd/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 615
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1056
    sget-object v1, Lcom/umeng/update/net/DownloadingService;->I:Ljava/lang/Boolean;

    monitor-enter v1

    .line 1057
    :try_start_0
    sget-object v0, Lcom/umeng/update/net/DownloadingService;->I:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1058
    sget-object v0, Lcom/umeng/update/net/DownloadingService;->t:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show single toast.["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lu/upd/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/umeng/update/net/DownloadingService;->I:Ljava/lang/Boolean;

    .line 1060
    iget-object v0, p0, Lcom/umeng/update/net/DownloadingService;->B:Landroid/os/Handler;

    new-instance v2, Lcom/umeng/update/net/DownloadingService$3;

    invoke-direct {v2, p0, p1}, Lcom/umeng/update/net/DownloadingService$3;-><init>(Lcom/umeng/update/net/DownloadingService;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1067
    iget-object v0, p0, Lcom/umeng/update/net/DownloadingService;->B:Landroid/os/Handler;

    new-instance v2, Lcom/umeng/update/net/DownloadingService$4;

    invoke-direct {v2, p0}, Lcom/umeng/update/net/DownloadingService$4;-><init>(Lcom/umeng/update/net/DownloadingService;)V

    const-wide/16 v3, 0x4b0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1074
    :cond_0
    monitor-exit v1

    .line 1075
    return-void

    .line 1074
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/umeng/update/net/DownloadingService;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/umeng/update/net/DownloadingService;->A:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/umeng/update/net/DownloadingService;->F:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic c(Lcom/umeng/update/net/DownloadingService;)Landroid/app/NotificationManager;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/umeng/update/net/DownloadingService;->u:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic c()Ljava/util/Map;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/umeng/update/net/DownloadingService;->E:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic d(Lcom/umeng/update/net/DownloadingService;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/umeng/update/net/DownloadingService;->B:Landroid/os/Handler;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 586
    iget-object v0, p0, Lcom/umeng/update/net/DownloadingService;->G:Lcom/umeng/update/net/e;

    invoke-virtual {v0}, Lcom/umeng/update/net/e;->a()Ljava/util/List;

    move-result-object v0

    .line 587
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 588
    iget-object v2, p0, Lcom/umeng/update/net/DownloadingService;->u:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 590
    :cond_0
    return-void
.end method

.method private e()V
    .locals 5

    .prologue
    .line 1091
    sget-boolean v0, Lcom/umeng/update/net/DownloadingService;->r:Z

    if-eqz v0, :cond_0

    .line 1092
    sget-object v0, Lcom/umeng/update/net/DownloadingService;->E:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 1093
    sget-object v1, Lcom/umeng/update/net/DownloadingService;->F:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1094
    sget-object v2, Lcom/umeng/update/net/DownloadingService;->t:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Client size ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   cacheSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lu/upd/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    if-eq v0, v1, :cond_0

    .line 1096
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Client size ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "   cacheSize = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1100
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 272
    sget-object v0, Lcom/umeng/update/net/DownloadingService;->t:Ljava/lang/String;

    const-string v1, "onBind "

    invoke-static {v0, v1}, Lu/upd/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/umeng/update/net/DownloadingService;->s:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 328
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 330
    sget-boolean v0, Lcom/umeng/update/net/DownloadingService;->r:Z

    if-eqz v0, :cond_0

    .line 331
    const/4 v0, 0x1

    sput-boolean v0, Lu/upd/b;->a:Z

    .line 332
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 334
    :cond_0
    sget-object v0, Lcom/umeng/update/net/DownloadingService;->t:Ljava/lang/String;

    const-string v1, "onCreate "

    invoke-static {v0, v1}, Lu/upd/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/umeng/update/net/DownloadingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/umeng/update/net/DownloadingService;->u:Landroid/app/NotificationManager;

    .line 336
    iput-object p0, p0, Lcom/umeng/update/net/DownloadingService;->A:Landroid/content/Context;

    .line 338
    new-instance v0, Lcom/umeng/update/net/e;

    iget-object v1, p0, Lcom/umeng/update/net/DownloadingService;->A:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/umeng/update/net/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/update/net/DownloadingService;->G:Lcom/umeng/update/net/e;

    .line 340
    new-instance v0, Lcom/umeng/update/net/c;

    sget-object v1, Lcom/umeng/update/net/DownloadingService;->F:Landroid/util/SparseArray;

    sget-object v2, Lcom/umeng/update/net/DownloadingService;->E:Ljava/util/Map;

    iget-object v3, p0, Lcom/umeng/update/net/DownloadingService;->G:Lcom/umeng/update/net/e;

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/update/net/c;-><init>(Landroid/util/SparseArray;Ljava/util/Map;Lcom/umeng/update/net/e;)V

    iput-object v0, p0, Lcom/umeng/update/net/DownloadingService;->v:Lcom/umeng/update/net/c;

    .line 342
    new-instance v0, Lcom/umeng/update/net/DownloadingService$1;

    invoke-direct {v0, p0}, Lcom/umeng/update/net/DownloadingService$1;-><init>(Lcom/umeng/update/net/DownloadingService;)V

    iput-object v0, p0, Lcom/umeng/update/net/DownloadingService;->B:Landroid/os/Handler;

    .line 464
    new-instance v0, Lcom/umeng/update/net/DownloadingService$2;

    invoke-direct {v0, p0}, Lcom/umeng/update/net/DownloadingService$2;-><init>(Lcom/umeng/update/net/DownloadingService;)V

    iput-object v0, p0, Lcom/umeng/update/net/DownloadingService;->q:Lcom/umeng/update/net/DownloadingService$a;

    .line 580
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1080
    const v0, 0x3f480

    .line 1081
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/update/net/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/update/net/b;->a(Landroid/content/Context;)Lcom/umeng/update/net/b;

    move-result-object v1

    .line 1082
    invoke-virtual {v1, v0}, Lcom/umeng/update/net/b;->a(I)V

    .line 1083
    invoke-virtual {p0}, Lcom/umeng/update/net/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/update/net/b;->a(Landroid/content/Context;)Lcom/umeng/update/net/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/update/net/b;->finalize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1087
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1088
    return-void

    .line 1084
    :catch_0
    move-exception v0

    .line 1085
    sget-object v1, Lcom/umeng/update/net/DownloadingService;->t:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lu/upd/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 280
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.umeng.broadcast.download.msg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/umeng/update/net/DownloadingService;->v:Lcom/umeng/update/net/c;

    invoke-virtual {v0, p0, p1}, Lcom/umeng/update/net/c;->a(Lcom/umeng/update/net/DownloadingService;Landroid/content/Intent;)Z

    .line 286
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/umeng/update/net/DownloadingService;->G:Lcom/umeng/update/net/e;

    .line 287
    invoke-virtual {v0}, Lcom/umeng/update/net/e;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/umeng/update/net/DownloadingService;->H:Z

    if-eqz v0, :cond_2

    .line 301
    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 302
    invoke-virtual {p0}, Lcom/umeng/update/net/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 303
    invoke-virtual {p0}, Lcom/umeng/update/net/DownloadingService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    invoke-virtual {p0}, Lcom/umeng/update/net/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 308
    invoke-virtual {p0}, Lcom/umeng/update/net/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "alarm"

    .line 309
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 310
    const/4 v2, 0x3

    .line 311
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v5, 0x1388

    add-long/2addr v3, v5

    .line 310
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/umeng/update/net/DownloadingService;->H:Z

    if-eqz v0, :cond_3

    .line 319
    invoke-direct {p0}, Lcom/umeng/update/net/DownloadingService;->d()V

    .line 320
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/update/net/DownloadingService;->H:Z

    .line 323
    :cond_3
    return v7

    .line 313
    :catch_0
    move-exception v0

    goto :goto_0
.end method
