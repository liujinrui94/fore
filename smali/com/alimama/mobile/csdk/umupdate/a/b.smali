.class public abstract Lcom/alimama/mobile/csdk/umupdate/a/b;
.super Ljava/lang/Object;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alimama/mobile/csdk/umupdate/a/b$4;,
        Lcom/alimama/mobile/csdk/umupdate/a/b$a;,
        Lcom/alimama/mobile/csdk/umupdate/a/b$e;,
        Lcom/alimama/mobile/csdk/umupdate/a/b$b;,
        Lcom/alimama/mobile/csdk/umupdate/a/b$d;,
        Lcom/alimama/mobile/csdk/umupdate/a/b$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/Executor;

.field public static final b:Ljava/util/concurrent/Executor;

.field public static final c:Ljava/util/concurrent/Executor;

.field public static final d:Ljava/util/concurrent/Executor;

.field private static final e:Ljava/lang/String; = "AsyncTask"

.field private static final f:I = 0x5

.field private static final g:I = 0x80

.field private static final h:I = 0x1

.field private static final i:Ljava/util/concurrent/ThreadFactory;

.field private static final j:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:I = 0x1

.field private static final l:I = 0x2

.field private static final m:Lcom/alimama/mobile/csdk/umupdate/a/b$b;

.field private static volatile n:Ljava/util/concurrent/Executor;


# instance fields
.field private final o:Lcom/alimama/mobile/csdk/umupdate/a/b$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alimama/mobile/csdk/umupdate/a/b$e",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field

.field private final p:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private volatile q:Lcom/alimama/mobile/csdk/umupdate/a/b$d;

.field private final r:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final s:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 205
    new-instance v0, Lcom/alimama/mobile/csdk/umupdate/a/b$1;

    invoke-direct {v0}, Lcom/alimama/mobile/csdk/umupdate/a/b$1;-><init>()V

    sput-object v0, Lcom/alimama/mobile/csdk/umupdate/a/b;->i:Ljava/util/concurrent/ThreadFactory;

    .line 213
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/alimama/mobile/csdk/umupdate/a/b;->j:Ljava/util/concurrent/BlockingQueue;

    .line 219
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x5

    const/16 v2, 0x80

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/alimama/mobile/csdk/umupdate/a/b;->j:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Lcom/alimama/mobile/csdk/umupdate/a/b;->i:Ljava/util/concurrent/ThreadFactory;

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lcom/alimama/mobile/csdk/umupdate/a/b;->a:Ljava/util/concurrent/Executor;

    .line 228
    invoke-static {}, Lcom/alimama/mobile/csdk/umupdate/a/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alimama/mobile/csdk/umupdate/a/b$c;

    invoke-direct {v0, v9}, Lcom/alimama/mobile/csdk/umupdate/a/b$c;-><init>(Lcom/alimama/mobile/csdk/umupdate/a/b$1;)V

    :goto_0
    sput-object v0, Lcom/alimama/mobile/csdk/umupdate/a/b;->b:Ljava/util/concurrent/Executor;

    .line 230
    invoke-static {}, Lcom/alimama/mobile/csdk/umupdate/a/b;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/alimama/mobile/csdk/umupdate/a/b$c;

    invoke-direct {v0, v9}, Lcom/alimama/mobile/csdk/umupdate/a/b$c;-><init>(Lcom/alimama/mobile/csdk/umupdate/a/b$1;)V

    :goto_1
    sput-object v0, Lcom/alimama/mobile/csdk/umupdate/a/b;->c:Ljava/util/concurrent/Executor;

    .line 233
    sget-object v0, Lcom/alimama/mobile/csdk/umupdate/a/b;->b:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/alimama/mobile/csdk/umupdate/a/b;->d:Ljava/util/concurrent/Executor;

    .line 239
    new-instance v0, Lcom/alimama/mobile/csdk/umupdate/a/b$b;

    invoke-direct {v0, v9}, Lcom/alimama/mobile/csdk/umupdate/a/b$b;-><init>(Lcom/alimama/mobile/csdk/umupdate/a/b$1;)V

    sput-object v0, Lcom/alimama/mobile/csdk/umupdate/a/b;->m:Lcom/alimama/mobile/csdk/umupdate/a/b$b;

    .line 241
    sget-object v0, Lcom/alimama/mobile/csdk/umupdate/a/b;->b:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/alimama/mobile/csdk/umupdate/a/b;->n:Ljava/util/concurrent/Executor;

    return-void

    .line 228
    :cond_0
    sget-object v0, Lcom/alimama/mobile/csdk/umupdate/a/b;->i:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_0

    .line 230
    :cond_1
    sget-object v0, Lcom/alimama/mobile/csdk/umupdate/a/b;->i:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    sget-object v0, Lcom/alimama/mobile/csdk/umupdate/a/b$d;->a:Lcom/alimama/mobile/csdk/umupdate/a/b$d;

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/b;->q:Lcom/alimama/mobile/csdk/umupdate/a/b$d;

    .line 247
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/b;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 248
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/b;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 314
    new-instance v0, Lcom/alimama/mobile/csdk/umupdate/a/b$2;

    invoke-direct {v0, p0}, Lcom/alimama/mobile/csdk/umupdate/a/b$2;-><init>(Lcom/alimama/mobile/csdk/umupdate/a/b;)V

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/b;->o:Lcom/alimama/mobile/csdk/umupdate/a/b$e;

    .line 324
    new-instance v0, Lcom/alimama/mobile/csdk/umupdate/a/b$3;

    iget-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/a/b;->o:Lcom/alimama/mobile/csdk/umupdate/a/b$e;

    invoke-direct {v0, p0, v1}, Lcom/alimama/mobile/csdk/umupdate/a/b$3;-><init>(Lcom/alimama/mobile/csdk/umupdate/a/b;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/b;->p:Ljava/util/concurrent/FutureTask;

    .line 339
    return-void
.end method

.method static synthetic a(Lcom/alimama/mobile/csdk/umupdate/a/b;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/alimama/mobile/csdk/umupdate/a/b;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alimama/mobile/csdk/umupdate/a/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/b;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 300
    sget-object v0, Lcom/alimama/mobile/csdk/umupdate/a/b;->m:Lcom/alimama/mobile/csdk/umupdate/a/b$b;

    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/a/b$b;->getLooper()Landroid/os/Looper;

    .line 301
    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 619
    sget-object v0, Lcom/alimama/mobile/csdk/umupdate/a/b;->n:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 620
    return-void
.end method

.method public static a(Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 307
    sput-object p0, Lcom/alimama/mobile/csdk/umupdate/a/b;->n:Ljava/util/concurrent/Executor;

    .line 308
    return-void
.end method

.method static synthetic b(Lcom/alimama/mobile/csdk/umupdate/a/b;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/alimama/mobile/csdk/umupdate/a/b;->c(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic c(Lcom/alimama/mobile/csdk/umupdate/a/b;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/alimama/mobile/csdk/umupdate/a/b;->e(Ljava/lang/Object;)V

    return-void
.end method

.method private c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 342
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/b;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 343
    if-nez v0, :cond_0

    .line 344
    invoke-direct {p0, p1}, Lcom/alimama/mobile/csdk/umupdate/a/b;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    :cond_0
    return-void
.end method

.method private d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 350
    sget-object v0, Lcom/alimama/mobile/csdk/umupdate/a/b;->m:Lcom/alimama/mobile/csdk/umupdate/a/b$b;

    new-instance v1, Lcom/alimama/mobile/csdk/umupdate/a/b$a;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/alimama/mobile/csdk/umupdate/a/b$a;-><init>(Lcom/alimama/mobile/csdk/umupdate/a/b;[Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v1}, Lcom/alimama/mobile/csdk/umupdate/a/b$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 352
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 353
    return-object p1
.end method

.method private e(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 643
    invoke-virtual {p0}, Lcom/alimama/mobile/csdk/umupdate/a/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    invoke-virtual {p0, p1}, Lcom/alimama/mobile/csdk/umupdate/a/b;->b(Ljava/lang/Object;)V

    .line 648
    :goto_0
    sget-object v0, Lcom/alimama/mobile/csdk/umupdate/a/b$d;->c:Lcom/alimama/mobile/csdk/umupdate/a/b$d;

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/b;->q:Lcom/alimama/mobile/csdk/umupdate/a/b$d;

    .line 649
    return-void

    .line 646
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alimama/mobile/csdk/umupdate/a/b;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static g()Z
    .locals 2

    .prologue
    .line 684
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final varargs a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/alimama/mobile/csdk/umupdate/a/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lcom/alimama/mobile/csdk/umupdate/a/b",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 588
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/b;->q:Lcom/alimama/mobile/csdk/umupdate/a/b$d;

    sget-object v1, Lcom/alimama/mobile/csdk/umupdate/a/b$d;->a:Lcom/alimama/mobile/csdk/umupdate/a/b$d;

    if-eq v0, v1, :cond_0

    .line 589
    sget-object v0, Lcom/alimama/mobile/csdk/umupdate/a/b$4;->a:[I

    iget-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/a/b;->q:Lcom/alimama/mobile/csdk/umupdate/a/b$d;

    invoke-virtual {v1}, Lcom/alimama/mobile/csdk/umupdate/a/b$d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 600
    :cond_0
    sget-object v0, Lcom/alimama/mobile/csdk/umupdate/a/b$d;->b:Lcom/alimama/mobile/csdk/umupdate/a/b$d;

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/b;->q:Lcom/alimama/mobile/csdk/umupdate/a/b$d;

    .line 602
    invoke-virtual {p0}, Lcom/alimama/mobile/csdk/umupdate/a/b;->c()V

    .line 604
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/b;->o:Lcom/alimama/mobile/csdk/umupdate/a/b$e;

    iput-object p2, v0, Lcom/alimama/mobile/csdk/umupdate/a/b$e;->b:[Ljava/lang/Object;

    .line 605
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/b;->p:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 607
    return-object p0

    .line 591
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 594
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 589
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 524
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/b;->p:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs abstract a([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 403
    return-void
.end method

.method public final a(Z)Z
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/b;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 492
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/b;->p:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public final b()Lcom/alimama/mobile/csdk/umupdate/a/b$d;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/b;->q:Lcom/alimama/mobile/csdk/umupdate/a/b$d;

    return-object v0
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/alimama/mobile/csdk/umupdate/a/b;->d()V

    .line 433
    return-void
.end method

.method protected varargs b([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 415
    return-void
.end method

.method public final varargs c([Ljava/lang/Object;)Lcom/alimama/mobile/csdk/umupdate/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/alimama/mobile/csdk/umupdate/a/b",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 553
    sget-object v0, Lcom/alimama/mobile/csdk/umupdate/a/b;->n:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/alimama/mobile/csdk/umupdate/a/b;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/alimama/mobile/csdk/umupdate/a/b;

    move-result-object v0

    return-object v0
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 388
    return-void
.end method

.method protected d()V
    .locals 0

    .prologue
    .line 448
    return-void
.end method

.method protected final varargs d([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 636
    invoke-virtual {p0}, Lcom/alimama/mobile/csdk/umupdate/a/b;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 637
    sget-object v0, Lcom/alimama/mobile/csdk/umupdate/a/b;->m:Lcom/alimama/mobile/csdk/umupdate/a/b$b;

    const/4 v1, 0x2

    new-instance v2, Lcom/alimama/mobile/csdk/umupdate/a/b$a;

    invoke-direct {v2, p0, p1}, Lcom/alimama/mobile/csdk/umupdate/a/b$a;-><init>(Lcom/alimama/mobile/csdk/umupdate/a/b;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/alimama/mobile/csdk/umupdate/a/b$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 640
    :cond_0
    return-void
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/b;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final f()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 506
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/b;->p:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
