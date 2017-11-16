.class final Lcom/umeng/update/UmengUpdateAgent$2;
.super Ljava/lang/Object;
.source "UmengUpdateAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/update/UmengUpdateAgent;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/umeng/update/UmengUpdateAgent$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 296
    iget-object v0, p0, Lcom/umeng/update/UmengUpdateAgent$2;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/update/UmengUpdateAgent$2;->a:Landroid/content/Context;

    .line 299
    invoke-static {v1}, Lu/upd/l;->b(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    .line 296
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 300
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 301
    return-void
.end method
