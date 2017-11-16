.class Lcom/cai88/tools/chart/TrendChartsActivity$11;
.super Ljava/lang/Object;
.source "TrendChartsActivity.java"

# interfaces
.implements Lcom/cai88/tools/asynctask/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cai88/tools/chart/TrendChartsActivity;->requestCurrentGameData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/cai88/tools/asynctask/Callback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cai88/tools/chart/TrendChartsActivity;


# direct methods
.method constructor <init>(Lcom/cai88/tools/chart/TrendChartsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cai88/tools/chart/TrendChartsActivity$11;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cai88/tools/chart/TrendChartsActivity$11;->onCallback(Ljava/lang/String;)V

    return-void
.end method

.method public onCallback(Ljava/lang/String;)V
    .locals 11
    .param p1, "pCallbackValue"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 420
    :try_start_0
    iget-object v5, p0, Lcom/cai88/tools/chart/TrendChartsActivity$11;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v5, p1}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$18(Lcom/cai88/tools/chart/TrendChartsActivity;Ljava/lang/String;)V

    .line 421
    invoke-static {p1}, Lcom/cai88/tools/uitl/Common;->strIsBlank(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 422
    iget-object v5, p0, Lcom/cai88/tools/chart/TrendChartsActivity$11;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v5}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$19(Lcom/cai88/tools/chart/TrendChartsActivity;)Landroid/widget/LinearLayout;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    iget-object v5, p0, Lcom/cai88/tools/chart/TrendChartsActivity$11;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v5}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$19(Lcom/cai88/tools/chart/TrendChartsActivity;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    .line 425
    iget-object v5, p0, Lcom/cai88/tools/chart/TrendChartsActivity$11;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v5}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$19(Lcom/cai88/tools/chart/TrendChartsActivity;)Landroid/widget/LinearLayout;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 428
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/cai88/tools/chart/TrendChartsActivity$11;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v5, p0, Lcom/cai88/tools/chart/TrendChartsActivity$11;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v5}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$20(Lcom/cai88/tools/chart/TrendChartsActivity;)Lcom/google/gson/Gson;

    move-result-object v5

    new-instance v7, Lcom/cai88/tools/chart/TrendChartsActivity$11$1;

    invoke-direct {v7, p0}, Lcom/cai88/tools/chart/TrendChartsActivity$11$1;-><init>(Lcom/cai88/tools/chart/TrendChartsActivity$11;)V

    invoke-virtual {v7}, Lcom/cai88/tools/chart/TrendChartsActivity$11$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v7

    invoke-virtual {v5, p1, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cai88/tools/model/BaseDataModel;

    iput-object v5, v6, Lcom/cai88/tools/chart/TrendChartsActivity;->bdModel:Lcom/cai88/tools/model/BaseDataModel;
    :try_end_1
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 432
    :goto_1
    :try_start_2
    iget-object v5, p0, Lcom/cai88/tools/chart/TrendChartsActivity$11;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v5, v5, Lcom/cai88/tools/chart/TrendChartsActivity;->bdModel:Lcom/cai88/tools/model/BaseDataModel;

    if-eqz v5, :cond_0

    .line 435
    iget-object v5, p0, Lcom/cai88/tools/chart/TrendChartsActivity$11;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v5, v5, Lcom/cai88/tools/chart/TrendChartsActivity;->bdModel:Lcom/cai88/tools/model/BaseDataModel;

    iget v5, v5, Lcom/cai88/tools/model/BaseDataModel;->status:I

    if-nez v5, :cond_5

    .line 436
    iget-object v5, p0, Lcom/cai88/tools/chart/TrendChartsActivity$11;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v5, v5, Lcom/cai88/tools/chart/TrendChartsActivity;->bdModel:Lcom/cai88/tools/model/BaseDataModel;

    iget-object v5, v5, Lcom/cai88/tools/model/BaseDataModel;->model:Ljava/lang/Object;

    check-cast v5, Lcom/cai88/tools/model/CurrentGameData;

    iget-object v5, v5, Lcom/cai88/tools/model/CurrentGameData;->entity:Lcom/cai88/tools/model/CurrentGameItem;

    if-eqz v5, :cond_0

    .line 439
    iget-object v5, p0, Lcom/cai88/tools/chart/TrendChartsActivity$11;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v5, v5, Lcom/cai88/tools/chart/TrendChartsActivity;->bdModel:Lcom/cai88/tools/model/BaseDataModel;

    iget-object v5, v5, Lcom/cai88/tools/model/BaseDataModel;->model:Ljava/lang/Object;

    check-cast v5, Lcom/cai88/tools/model/CurrentGameData;

    iget-object v5, v5, Lcom/cai88/tools/model/CurrentGameData;->entity:Lcom/cai88/tools/model/CurrentGameItem;

    iget-object v5, v5, Lcom/cai88/tools/model/CurrentGameItem;->list:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    .line 440
    iget-object v6, p0, Lcom/cai88/tools/chart/TrendChartsActivity$11;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v5, p0, Lcom/cai88/tools/chart/TrendChartsActivity$11;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v5, v5, Lcom/cai88/tools/chart/TrendChartsActivity;->bdModel:Lcom/cai88/tools/model/BaseDataModel;

    iget-object v5, v5, Lcom/cai88/tools/model/BaseDataModel;->model:Ljava/lang/Object;

    check-cast v5, Lcom/cai88/tools/model/CurrentGameData;

    iget-object v5, v5, Lcom/cai88/tools/model/CurrentGameData;->entity:Lcom/cai88/tools/model/CurrentGameItem;

    iget-object v5, v5, Lcom/cai88/tools/model/CurrentGameItem;->issue:Ljava/lang/String;

    iput-object v5, v6, Lcom/cai88/tools/chart/TrendChartsActivity;->nowIssue:Ljava/lang/String;

    .line 444
    iget-object v5, p0, Lcom/cai88/tools/chart/TrendChartsActivity$11;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v6, p0, Lcom/cai88/tools/chart/TrendChartsActivity$11;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v6, v6, Lcom/cai88/tools/chart/TrendChartsActivity;->nowIssue:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$21(Lcom/cai88/tools/chart/TrendChartsActivity;Ljava/lang/String;)V

    .line 445
    iget-object v6, p0, Lcom/cai88/tools/chart/TrendChartsActivity$11;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v5, p0, Lcom/cai88/tools/chart/TrendChartsActivity$11;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v5, v5, Lcom/cai88/tools/chart/TrendChartsActivity;->bdModel:Lcom/cai88/tools/model/BaseDataModel;

    iget-object v5, v5, Lcom/cai88/tools/model/BaseDataModel;->model:Ljava/lang/Object;

    check-cast v5, Lcom/cai88/tools/model/CurrentGameData;

    iget-object v5, v5, Lcom/cai88/tools/model/CurrentGameData;->entity:Lcom/cai88/tools/model/CurrentGameItem;

    iget-wide v7, v5, Lcom/cai88/tools/model/CurrentGameItem;->ticks:J

    invoke-static {v6, v7, v8}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$22(Lcom/cai88/tools/chart/TrendChartsActivity;J)V

    .line 446
    iget-object v5, p0, Lcom/cai88/tools/chart/TrendChartsActivity$11;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v5, v5, Lcom/cai88/tools/chart/TrendChartsActivity;->bdModel:Lcom/cai88/tools/model/BaseDataModel;

    iget-object v5, v5, Lcom/cai88/tools/model/BaseDataModel;->model:Ljava/lang/Object;

    check-cast v5, Lcom/cai88/tools/model/CurrentGameData;

    iget-object v5, v5, Lcom/cai88/tools/model/CurrentGameData;->entity:Lcom/cai88/tools/model/CurrentGameItem;

    iget-object v5, v5, Lcom/cai88/tools/model/CurrentGameItem;->list:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 447
    iget-object v5, p0, Lcom/cai88/tools/chart/TrendChartsActivity$11;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v5, v5, Lcom/cai88/tools/chart/TrendChartsActivity;->bdModel:Lcom/cai88/tools/model/BaseDataModel;

    iget-object v5, v5, Lcom/cai88/tools/model/BaseDataModel;->model:Ljava/lang/Object;

    check-cast v5, Lcom/cai88/tools/model/CurrentGameData;

    iget-object v5, v5, Lcom/cai88/tools/model/CurrentGameData;->entity:Lcom/cai88/tools/model/CurrentGameItem;

    iget-wide v5, v5, Lcom/cai88/tools/model/CurrentGameItem;->ticks:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gtz v5, :cond_4

    .line 448
    iget-object v5, p0, Lcom/cai88/tools/chart/TrendChartsActivity$11;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v5}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$6(Lcom/cai88/tools/chart/TrendChartsActivity;)I

    move-result v6

    add-int/lit16 v6, v6, 0x2710

    invoke-static {v5, v6}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$23(Lcom/cai88/tools/chart/TrendChartsActivity;I)V

    .line 453
    :cond_3
    :goto_2
    const-string v3, ""

    .line 454
    .local v3, "issueStr":Ljava/lang/String;
    const-string v4, ""

    .line 455
    .local v4, "remainTimeStr":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v5, "\u8ddd"

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/cai88/tools/chart/TrendChartsActivity$11;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v5, v5, Lcom/cai88/tools/chart/TrendChartsActivity;->bdModel:Lcom/cai88/tools/model/BaseDataModel;

    iget-object v5, v5, Lcom/cai88/tools/model/BaseDataModel;->model:Ljava/lang/Object;

    check-cast v5, Lcom/cai88/tools/model/CurrentGameData;

    iget-object v5, v5, Lcom/cai88/tools/model/CurrentGameData;->entity:Lcom/cai88/tools/model/CurrentGameItem;

    iget-object v5, v5, Lcom/cai88/tools/model/CurrentGameItem;->issue:Ljava/lang/String;

    iget-object v7, p0, Lcom/cai88/tools/chart/TrendChartsActivity$11;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v7, v7, Lcom/cai88/tools/chart/TrendChartsActivity;->gameCode:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/cai88/tools/uitl/IssueHelper;->shortIssueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u622a\u6b62:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 456
    iget-object v5, p0, Lcom/cai88/tools/chart/TrendChartsActivity$11;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v5, v5, Lcom/cai88/tools/chart/TrendChartsActivity;->bdModel:Lcom/cai88/tools/model/BaseDataModel;

    iget-object v5, v5, Lcom/cai88/tools/model/BaseDataModel;->model:Ljava/lang/Object;

    check-cast v5, Lcom/cai88/tools/model/CurrentGameData;

    iget-object v5, v5, Lcom/cai88/tools/model/CurrentGameData;->entity:Lcom/cai88/tools/model/CurrentGameItem;

    iget-wide v5, v5, Lcom/cai88/tools/model/CurrentGameItem;->ticks:J

    invoke-static {v5, v6}, Lcom/cai88/tools/uitl/TimeHelper;->GetRemainTime(J)Ljava/lang/String;

    move-result-object v4

    .line 457
    iget-object v5, p0, Lcom/cai88/tools/chart/TrendChartsActivity$11;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v5}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$24(Lcom/cai88/tools/chart/TrendChartsActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    iget-object v5, p0, Lcom/cai88/tools/chart/TrendChartsActivity$11;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v5}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$25(Lcom/cai88/tools/chart/TrendChartsActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 461
    :try_start_3
    const-string v6, "yyyy/MM/dd hh:mm:ss"

    iget-object v5, p0, Lcom/cai88/tools/chart/TrendChartsActivity$11;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v5, v5, Lcom/cai88/tools/chart/TrendChartsActivity;->bdModel:Lcom/cai88/tools/model/BaseDataModel;

    iget-object v5, v5, Lcom/cai88/tools/model/BaseDataModel;->model:Ljava/lang/Object;

    check-cast v5, Lcom/cai88/tools/model/CurrentGameData;

    iget-object v5, v5, Lcom/cai88/tools/model/CurrentGameData;->entity:Lcom/cai88/tools/model/CurrentGameItem;

    iget-object v5, v5, Lcom/cai88/tools/model/CurrentGameItem;->end:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/cai88/tools/uitl/TimeHelper;->convertStringToDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-string v8, "yyyy/MM/dd hh:mm:ss"

    iget-object v5, p0, Lcom/cai88/tools/chart/TrendChartsActivity$11;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v5, v5, Lcom/cai88/tools/chart/TrendChartsActivity;->bdModel:Lcom/cai88/tools/model/BaseDataModel;

    iget-object v5, v5, Lcom/cai88/tools/model/BaseDataModel;->model:Ljava/lang/Object;

    check-cast v5, Lcom/cai88/tools/model/CurrentGameData;

    iget-object v5, v5, Lcom/cai88/tools/model/CurrentGameData;->entity:Lcom/cai88/tools/model/CurrentGameItem;

    iget-object v5, v5, Lcom/cai88/tools/model/CurrentGameItem;->start:Ljava/lang/String;

    invoke-static {v8, v5}, Lcom/cai88/tools/uitl/TimeHelper;->convertStringToDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long v0, v6, v8

    .line 462
    .local v0, "diff":J
    const-wide/16 v5, 0x3e8

    div-long/2addr v0, v5

    .line 463
    iget-object v5, p0, Lcom/cai88/tools/chart/TrendChartsActivity$11;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v5}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$26(Lcom/cai88/tools/chart/TrendChartsActivity;)Landroid/widget/ProgressBar;

    move-result-object v5

    long-to-int v6, v0

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setMax(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 468
    .end local v0    # "diff":J
    :goto_3
    :try_start_4
    iget-object v5, p0, Lcom/cai88/tools/chart/TrendChartsActivity$11;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$27(Lcom/cai88/tools/chart/TrendChartsActivity;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 475
    .end local v3    # "issueStr":Ljava/lang/String;
    .end local v4    # "remainTimeStr":Ljava/lang/String;
    :goto_4
    iget-object v5, p0, Lcom/cai88/tools/chart/TrendChartsActivity$11;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v5, v10}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$17(Lcom/cai88/tools/chart/TrendChartsActivity;Z)V

    goto/16 :goto_0

    .line 429
    :catch_0
    move-exception v2

    .line 430
    .local v2, "e":Lcom/google/gson/JsonSyntaxException;
    :try_start_5
    const-string v5, "iws"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "CurrentGameData json\u8f6c\u6362\u9519\u8bef e:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 472
    .end local v2    # "e":Lcom/google/gson/JsonSyntaxException;
    :catch_1
    move-exception v2

    .line 473
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "iws"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "CurrentGameData e:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 450
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_6
    iget-object v5, p0, Lcom/cai88/tools/chart/TrendChartsActivity$11;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    const/16 v6, 0x1388

    invoke-static {v5, v6}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$23(Lcom/cai88/tools/chart/TrendChartsActivity;I)V

    goto/16 :goto_2

    .line 464
    .restart local v3    # "issueStr":Ljava/lang/String;
    .restart local v4    # "remainTimeStr":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 465
    .restart local v2    # "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/cai88/tools/chart/TrendChartsActivity$11;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v5}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$26(Lcom/cai88/tools/chart/TrendChartsActivity;)Landroid/widget/ProgressBar;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setMax(I)V

    goto :goto_3

    .line 470
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "issueStr":Ljava/lang/String;
    .end local v4    # "remainTimeStr":Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/cai88/tools/chart/TrendChartsActivity$11;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v5}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$13(Lcom/cai88/tools/chart/TrendChartsActivity;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/cai88/tools/chart/TrendChartsActivity$11;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v6, v6, Lcom/cai88/tools/chart/TrendChartsActivity;->bdModel:Lcom/cai88/tools/model/BaseDataModel;

    iget-object v6, v6, Lcom/cai88/tools/model/BaseDataModel;->msg:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/cai88/tools/uitl/Common;->ShowInfo(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4
.end method
