.class Lcom/cai88/tools/view/GameChooseDialog$Builder$2;
.super Ljava/lang/Object;
.source "GameChooseDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cai88/tools/view/GameChooseDialog$Builder;->create()Lcom/cai88/tools/view/GameChooseDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cai88/tools/view/GameChooseDialog$Builder;

.field private final synthetic val$dialog:Lcom/cai88/tools/view/GameChooseDialog;


# direct methods
.method constructor <init>(Lcom/cai88/tools/view/GameChooseDialog$Builder;Lcom/cai88/tools/view/GameChooseDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder$2;->this$1:Lcom/cai88/tools/view/GameChooseDialog$Builder;

    iput-object p2, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder$2;->val$dialog:Lcom/cai88/tools/view/GameChooseDialog;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder$2;->this$1:Lcom/cai88/tools/view/GameChooseDialog$Builder;

    invoke-static {v0}, Lcom/cai88/tools/view/GameChooseDialog$Builder;->access$5(Lcom/cai88/tools/view/GameChooseDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder$2;->this$1:Lcom/cai88/tools/view/GameChooseDialog$Builder;

    invoke-static {v0}, Lcom/cai88/tools/view/GameChooseDialog$Builder;->access$5(Lcom/cai88/tools/view/GameChooseDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder$2;->val$dialog:Lcom/cai88/tools/view/GameChooseDialog;

    const/4 v2, -0x2

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder$2;->val$dialog:Lcom/cai88/tools/view/GameChooseDialog;

    invoke-virtual {v0}, Lcom/cai88/tools/view/GameChooseDialog;->dismiss()V

    .line 108
    return-void
.end method
