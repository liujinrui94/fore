.class Lcom/umeng/update/UpdateDialogActivity$1;
.super Ljava/lang/Object;
.source "UpdateDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/update/UpdateDialogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/umeng/update/UpdateDialogActivity;


# direct methods
.method constructor <init>(Lcom/umeng/update/UpdateDialogActivity;II)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/umeng/update/UpdateDialogActivity$1;->c:Lcom/umeng/update/UpdateDialogActivity;

    iput p2, p0, Lcom/umeng/update/UpdateDialogActivity$1;->a:I

    iput p3, p0, Lcom/umeng/update/UpdateDialogActivity$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x7

    .line 72
    iget v0, p0, Lcom/umeng/update/UpdateDialogActivity$1;->a:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 73
    iget-object v0, p0, Lcom/umeng/update/UpdateDialogActivity$1;->c:Lcom/umeng/update/UpdateDialogActivity;

    const/4 v1, 0x5

    iput v1, v0, Lcom/umeng/update/UpdateDialogActivity;->a:I

    .line 79
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/umeng/update/UpdateDialogActivity$1;->c:Lcom/umeng/update/UpdateDialogActivity;

    invoke-virtual {v0}, Lcom/umeng/update/UpdateDialogActivity;->finish()V

    .line 80
    return-void

    .line 74
    :cond_1
    iget v0, p0, Lcom/umeng/update/UpdateDialogActivity$1;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 75
    iget-object v0, p0, Lcom/umeng/update/UpdateDialogActivity$1;->c:Lcom/umeng/update/UpdateDialogActivity;

    iput v2, v0, Lcom/umeng/update/UpdateDialogActivity;->a:I

    goto :goto_0

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/umeng/update/UpdateDialogActivity$1;->c:Lcom/umeng/update/UpdateDialogActivity;

    iget-boolean v0, v0, Lcom/umeng/update/UpdateDialogActivity;->c:Z

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/umeng/update/UpdateDialogActivity$1;->c:Lcom/umeng/update/UpdateDialogActivity;

    iput v2, v0, Lcom/umeng/update/UpdateDialogActivity;->a:I

    goto :goto_0
.end method
