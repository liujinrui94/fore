.class Lokhttp3/internal/DiskLruCache$Editor$1;
.super Lokhttp3/internal/FaultHidingSink;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/DiskLruCache$Editor;->newSink(I)Lokio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lokhttp3/internal/DiskLruCache$Editor;


# direct methods
.method constructor <init>(Lokhttp3/internal/DiskLruCache$Editor;Lokio/Sink;)V
    .locals 0
    .param p1, "this$1"    # Lokhttp3/internal/DiskLruCache$Editor;
    .param p2, "delegate"    # Lokio/Sink;

    .prologue
    .line 882
    iput-object p1, p0, Lokhttp3/internal/DiskLruCache$Editor$1;->this$1:Lokhttp3/internal/DiskLruCache$Editor;

    invoke-direct {p0, p2}, Lokhttp3/internal/FaultHidingSink;-><init>(Lokio/Sink;)V

    return-void
.end method


# virtual methods
.method protected onException(Ljava/io/IOException;)V
    .locals 3
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 884
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$Editor$1;->this$1:Lokhttp3/internal/DiskLruCache$Editor;

    iget-object v1, v0, Lokhttp3/internal/DiskLruCache$Editor;->this$0:Lokhttp3/internal/DiskLruCache;

    monitor-enter v1

    .line 885
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/DiskLruCache$Editor$1;->this$1:Lokhttp3/internal/DiskLruCache$Editor;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lokhttp3/internal/DiskLruCache$Editor;->access$2002(Lokhttp3/internal/DiskLruCache$Editor;Z)Z

    .line 886
    monitor-exit v1

    .line 887
    return-void

    .line 886
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
