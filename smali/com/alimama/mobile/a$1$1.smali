.class Lcom/alimama/mobile/a$1$1;
.super Ljava/lang/Object;
.source "MMSDK.java"

# interfaces
.implements Lcom/alimama/mobile/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alimama/mobile/a$1;->dataReceived(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alimama/mobile/a$1;


# direct methods
.method constructor <init>(Lcom/alimama/mobile/a$1;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/alimama/mobile/a$1$1;->a:Lcom/alimama/mobile/a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dataReceived(ILjava/util/List;)V
    .locals 2
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
    .line 150
    iget-object v0, p0, Lcom/alimama/mobile/a$1$1;->a:Lcom/alimama/mobile/a$1;

    iget-object v0, v0, Lcom/alimama/mobile/a$1;->a:Lcom/alimama/mobile/a$a;

    invoke-interface {v0, p1, p2}, Lcom/alimama/mobile/a$a;->dataReceived(ILjava/util/List;)V

    .line 151
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/alimama/mobile/a$1$1;->a:Lcom/alimama/mobile/a$1;

    iget-object v1, p0, Lcom/alimama/mobile/a$1$1;->a:Lcom/alimama/mobile/a$1;

    iget-boolean v1, v1, Lcom/alimama/mobile/a$1;->b:Z

    invoke-static {v0, v1}, Lcom/alimama/mobile/a$1;->a(Lcom/alimama/mobile/a$1;Z)V

    .line 154
    :cond_0
    return-void
.end method
