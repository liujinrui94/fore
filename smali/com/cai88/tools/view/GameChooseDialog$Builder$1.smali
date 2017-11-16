.class Lcom/cai88/tools/view/GameChooseDialog$Builder$1;
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
    iput-object p1, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder$1;->this$1:Lcom/cai88/tools/view/GameChooseDialog$Builder;

    iput-object p2, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder$1;->val$dialog:Lcom/cai88/tools/view/GameChooseDialog;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder$1;->this$1:Lcom/cai88/tools/view/GameChooseDialog$Builder;

    invoke-static {v1}, Lcom/cai88/tools/view/GameChooseDialog$Builder;->access$0(Lcom/cai88/tools/view/GameChooseDialog$Builder;)[Landroid/widget/ToggleButton;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 82
    iget-object v1, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder$1;->this$1:Lcom/cai88/tools/view/GameChooseDialog$Builder;

    const-string v2, "018"

    invoke-static {v1, v2}, Lcom/cai88/tools/view/GameChooseDialog$Builder;->access$1(Lcom/cai88/tools/view/GameChooseDialog$Builder;Ljava/lang/String;)V

    .line 87
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder$1;->this$1:Lcom/cai88/tools/view/GameChooseDialog$Builder;

    invoke-static {v1}, Lcom/cai88/tools/view/GameChooseDialog$Builder;->access$2(Lcom/cai88/tools/view/GameChooseDialog$Builder;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "cache_default_game"

    iget-object v3, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder$1;->this$1:Lcom/cai88/tools/view/GameChooseDialog$Builder;

    invoke-static {v3}, Lcom/cai88/tools/view/GameChooseDialog$Builder;->access$3(Lcom/cai88/tools/view/GameChooseDialog$Builder;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/cai88/tools/uitl/Common;->SetCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 88
    iget-object v1, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder$1;->this$1:Lcom/cai88/tools/view/GameChooseDialog$Builder;

    invoke-static {v1}, Lcom/cai88/tools/view/GameChooseDialog$Builder;->access$3(Lcom/cai88/tools/view/GameChooseDialog$Builder;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/cai88/tools/shishicai/SscApplication;->GameCode:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_1
    iget-object v1, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder$1;->this$1:Lcom/cai88/tools/view/GameChooseDialog$Builder;

    invoke-static {v1}, Lcom/cai88/tools/view/GameChooseDialog$Builder;->access$4(Lcom/cai88/tools/view/GameChooseDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder$1;->this$1:Lcom/cai88/tools/view/GameChooseDialog$Builder;

    invoke-static {v1}, Lcom/cai88/tools/view/GameChooseDialog$Builder;->access$4(Lcom/cai88/tools/view/GameChooseDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    iget-object v2, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder$1;->val$dialog:Lcom/cai88/tools/view/GameChooseDialog;

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder$1;->val$dialog:Lcom/cai88/tools/view/GameChooseDialog;

    invoke-virtual {v1}, Lcom/cai88/tools/view/GameChooseDialog;->dismiss()V

    .line 97
    return-void

    .line 83
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder$1;->this$1:Lcom/cai88/tools/view/GameChooseDialog$Builder;

    invoke-static {v1}, Lcom/cai88/tools/view/GameChooseDialog$Builder;->access$0(Lcom/cai88/tools/view/GameChooseDialog$Builder;)[Landroid/widget/ToggleButton;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder$1;->this$1:Lcom/cai88/tools/view/GameChooseDialog$Builder;

    const-string v2, "006"

    invoke-static {v1, v2}, Lcom/cai88/tools/view/GameChooseDialog$Builder;->access$1(Lcom/cai88/tools/view/GameChooseDialog$Builder;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "iws"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TrendChartsDialog change setting: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
