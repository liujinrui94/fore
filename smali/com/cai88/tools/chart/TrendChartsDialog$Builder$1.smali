.class Lcom/cai88/tools/chart/TrendChartsDialog$Builder$1;
.super Ljava/lang/Object;
.source "TrendChartsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->create()Lcom/cai88/tools/chart/TrendChartsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cai88/tools/chart/TrendChartsDialog$Builder;

.field private final synthetic val$dialog:Lcom/cai88/tools/chart/TrendChartsDialog;


# direct methods
.method constructor <init>(Lcom/cai88/tools/chart/TrendChartsDialog$Builder;Lcom/cai88/tools/chart/TrendChartsDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder$1;->this$1:Lcom/cai88/tools/chart/TrendChartsDialog$Builder;

    iput-object p2, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder$1;->val$dialog:Lcom/cai88/tools/chart/TrendChartsDialog;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 125
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder$1;->this$1:Lcom/cai88/tools/chart/TrendChartsDialog$Builder;

    invoke-static {v3}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->access$0(Lcom/cai88/tools/chart/TrendChartsDialog$Builder;)[Landroid/widget/ToggleButton;

    move-result-object v3

    array-length v3, v3

    if-lt v1, v3, :cond_1

    .line 139
    iget-object v3, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder$1;->this$1:Lcom/cai88/tools/chart/TrendChartsDialog$Builder;

    iget-object v4, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder$1;->this$1:Lcom/cai88/tools/chart/TrendChartsDialog$Builder;

    invoke-static {v4}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->access$2(Lcom/cai88/tools/chart/TrendChartsDialog$Builder;)[Landroid/widget/ToggleButton;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->access$3(Lcom/cai88/tools/chart/TrendChartsDialog$Builder;Z)V

    .line 140
    iget-object v3, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder$1;->this$1:Lcom/cai88/tools/chart/TrendChartsDialog$Builder;

    iget-object v4, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder$1;->this$1:Lcom/cai88/tools/chart/TrendChartsDialog$Builder;

    invoke-static {v4}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->access$4(Lcom/cai88/tools/chart/TrendChartsDialog$Builder;)[Landroid/widget/ToggleButton;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->access$5(Lcom/cai88/tools/chart/TrendChartsDialog$Builder;Z)V

    .line 141
    iget-object v3, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder$1;->this$1:Lcom/cai88/tools/chart/TrendChartsDialog$Builder;

    iget-object v4, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder$1;->this$1:Lcom/cai88/tools/chart/TrendChartsDialog$Builder;

    invoke-static {v4}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->access$6(Lcom/cai88/tools/chart/TrendChartsDialog$Builder;)[Landroid/widget/ToggleButton;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->access$7(Lcom/cai88/tools/chart/TrendChartsDialog$Builder;Z)V

    .line 143
    iget-object v3, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder$1;->this$1:Lcom/cai88/tools/chart/TrendChartsDialog$Builder;

    invoke-static {v3}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->access$8(Lcom/cai88/tools/chart/TrendChartsDialog$Builder;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "cache_chartsetting_period"

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder$1;->this$1:Lcom/cai88/tools/chart/TrendChartsDialog$Builder;

    invoke-static {v6}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->access$9(Lcom/cai88/tools/chart/TrendChartsDialog$Builder;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/cai88/tools/uitl/Common;->SetCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 144
    iget-object v3, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder$1;->this$1:Lcom/cai88/tools/chart/TrendChartsDialog$Builder;

    invoke-static {v3}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->access$8(Lcom/cai88/tools/chart/TrendChartsDialog$Builder;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "cache_chartsetting_show_line"

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder$1;->this$1:Lcom/cai88/tools/chart/TrendChartsDialog$Builder;

    invoke-static {v6}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->access$10(Lcom/cai88/tools/chart/TrendChartsDialog$Builder;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/cai88/tools/uitl/Common;->SetCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 145
    iget-object v3, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder$1;->this$1:Lcom/cai88/tools/chart/TrendChartsDialog$Builder;

    invoke-static {v3}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->access$8(Lcom/cai88/tools/chart/TrendChartsDialog$Builder;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "cache_chartsetting_show_missnumber"

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder$1;->this$1:Lcom/cai88/tools/chart/TrendChartsDialog$Builder;

    invoke-static {v6}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->access$11(Lcom/cai88/tools/chart/TrendChartsDialog$Builder;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/cai88/tools/uitl/Common;->SetCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 146
    iget-object v3, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder$1;->this$1:Lcom/cai88/tools/chart/TrendChartsDialog$Builder;

    invoke-static {v3}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->access$8(Lcom/cai88/tools/chart/TrendChartsDialog$Builder;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "cache_chartsetting_show_analysis"

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder$1;->this$1:Lcom/cai88/tools/chart/TrendChartsDialog$Builder;

    invoke-static {v6}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->access$12(Lcom/cai88/tools/chart/TrendChartsDialog$Builder;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/cai88/tools/uitl/Common;->SetCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_1
    iget-object v3, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder$1;->this$1:Lcom/cai88/tools/chart/TrendChartsDialog$Builder;

    invoke-static {v3}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->access$13(Lcom/cai88/tools/chart/TrendChartsDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 152
    iget-object v3, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder$1;->this$1:Lcom/cai88/tools/chart/TrendChartsDialog$Builder;

    invoke-static {v3}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->access$13(Lcom/cai88/tools/chart/TrendChartsDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    iget-object v4, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder$1;->val$dialog:Lcom/cai88/tools/chart/TrendChartsDialog;

    const/4 v5, -0x1

    invoke-interface {v3, v4, v5}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 154
    :cond_0
    iget-object v3, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder$1;->val$dialog:Lcom/cai88/tools/chart/TrendChartsDialog;

    invoke-virtual {v3}, Lcom/cai88/tools/chart/TrendChartsDialog;->dismiss()V

    .line 155
    return-void

    .line 126
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder$1;->this$1:Lcom/cai88/tools/chart/TrendChartsDialog$Builder;

    invoke-static {v3}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->access$0(Lcom/cai88/tools/chart/TrendChartsDialog$Builder;)[Landroid/widget/ToggleButton;

    move-result-object v3

    aget-object v2, v3, v1

    .line 127
    .local v2, "paramView":Landroid/widget/ToggleButton;
    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 128
    invoke-virtual {v2}, Landroid/widget/ToggleButton;->getId()I

    move-result v3

    const v4, 0x7f070070

    if-ne v3, v4, :cond_3

    .line 129
    iget-object v3, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder$1;->this$1:Lcom/cai88/tools/chart/TrendChartsDialog$Builder;

    const/16 v4, 0x14

    invoke-static {v3, v4}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->access$1(Lcom/cai88/tools/chart/TrendChartsDialog$Builder;I)V

    .line 125
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 130
    :cond_3
    invoke-virtual {v2}, Landroid/widget/ToggleButton;->getId()I

    move-result v3

    const v4, 0x7f070072

    if-ne v3, v4, :cond_4

    .line 131
    iget-object v3, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder$1;->this$1:Lcom/cai88/tools/chart/TrendChartsDialog$Builder;

    const/16 v4, 0x32

    invoke-static {v3, v4}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->access$1(Lcom/cai88/tools/chart/TrendChartsDialog$Builder;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 147
    .end local v2    # "paramView":Landroid/widget/ToggleButton;
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "iws"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "TrendChartsDialog change setting: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 132
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "paramView":Landroid/widget/ToggleButton;
    :cond_4
    :try_start_2
    invoke-virtual {v2}, Landroid/widget/ToggleButton;->getId()I

    move-result v3

    const v4, 0x7f070071

    if-ne v3, v4, :cond_5

    .line 133
    iget-object v3, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder$1;->this$1:Lcom/cai88/tools/chart/TrendChartsDialog$Builder;

    const/16 v4, 0x64

    invoke-static {v3, v4}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->access$1(Lcom/cai88/tools/chart/TrendChartsDialog$Builder;I)V

    goto :goto_2

    .line 135
    :cond_5
    iget-object v3, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder$1;->this$1:Lcom/cai88/tools/chart/TrendChartsDialog$Builder;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->access$1(Lcom/cai88/tools/chart/TrendChartsDialog$Builder;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method
