.class Lcom/cai88/tools/chart/TrendChartsActivity$14;
.super Ljava/lang/Object;
.source "TrendChartsActivity.java"

# interfaces
.implements Lcom/cai88/tools/asynctask/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cai88/tools/chart/TrendChartsActivity;->requestOmissionData()V
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
    iput-object p1, p0, Lcom/cai88/tools/chart/TrendChartsActivity$14;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cai88/tools/chart/TrendChartsActivity$14;->onCallback(Ljava/lang/String;)V

    return-void
.end method

.method public onCallback(Ljava/lang/String;)V
    .locals 11
    .param p1, "pCallbackValue"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 525
    iget-object v6, p0, Lcom/cai88/tools/chart/TrendChartsActivity$14;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v6}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$30(Lcom/cai88/tools/chart/TrendChartsActivity;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-static {v6}, Lcom/cai88/tools/view/ProgressView;->dismissProgress(Landroid/app/ProgressDialog;)V

    .line 527
    :try_start_0
    iget-object v6, p0, Lcom/cai88/tools/chart/TrendChartsActivity$14;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v6, p1}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$18(Lcom/cai88/tools/chart/TrendChartsActivity;Ljava/lang/String;)V

    .line 528
    invoke-static {p1}, Lcom/cai88/tools/uitl/Common;->strIsBlank(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 529
    iget-object v6, p0, Lcom/cai88/tools/chart/TrendChartsActivity$14;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v6}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$19(Lcom/cai88/tools/chart/TrendChartsActivity;)Landroid/widget/LinearLayout;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 531
    :cond_1
    iget-object v6, p0, Lcom/cai88/tools/chart/TrendChartsActivity$14;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v6}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$19(Lcom/cai88/tools/chart/TrendChartsActivity;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    .line 532
    iget-object v6, p0, Lcom/cai88/tools/chart/TrendChartsActivity$14;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v6}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$19(Lcom/cai88/tools/chart/TrendChartsActivity;)Landroid/widget/LinearLayout;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/cai88/tools/chart/TrendChartsActivity$14;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v6, p0, Lcom/cai88/tools/chart/TrendChartsActivity$14;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v6}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$20(Lcom/cai88/tools/chart/TrendChartsActivity;)Lcom/google/gson/Gson;

    move-result-object v6

    new-instance v8, Lcom/cai88/tools/chart/TrendChartsActivity$14$1;

    invoke-direct {v8, p0}, Lcom/cai88/tools/chart/TrendChartsActivity$14$1;-><init>(Lcom/cai88/tools/chart/TrendChartsActivity$14;)V

    invoke-virtual {v8}, Lcom/cai88/tools/chart/TrendChartsActivity$14$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-virtual {v6, p1, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cai88/tools/model/BaseDataModel;

    invoke-static {v7, v6}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$31(Lcom/cai88/tools/chart/TrendChartsActivity;Lcom/cai88/tools/model/BaseDataModel;)V
    :try_end_1
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 539
    :goto_1
    :try_start_2
    iget-object v6, p0, Lcom/cai88/tools/chart/TrendChartsActivity$14;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v6}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$32(Lcom/cai88/tools/chart/TrendChartsActivity;)Lcom/cai88/tools/model/BaseDataModel;

    move-result-object v6

    if-nez v6, :cond_3

    .line 540
    iget-object v6, p0, Lcom/cai88/tools/chart/TrendChartsActivity$14;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v6}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$13(Lcom/cai88/tools/chart/TrendChartsActivity;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "\u83b7\u53d6\u9057\u6f0f\u6570\u636e\u5f02\u5e38"

    invoke-static {v6, v7}, Lcom/cai88/tools/uitl/Common;->ShowInfo(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 585
    :catch_0
    move-exception v0

    .line 586
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "iws"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "DataInit json\u8f6c\u6362\u9519\u8bef e:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    iget-object v6, p0, Lcom/cai88/tools/chart/TrendChartsActivity$14;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v6, v10}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$28(Lcom/cai88/tools/chart/TrendChartsActivity;Z)V

    goto :goto_0

    .line 536
    :catch_1
    move-exception v0

    .line 537
    .local v0, "e":Lcom/google/gson/JsonSyntaxException;
    :try_start_3
    const-string v6, "iws"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "DataInit json\u8f6c\u6362\u9519\u8bef e:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 543
    .end local v0    # "e":Lcom/google/gson/JsonSyntaxException;
    :cond_3
    iget-object v6, p0, Lcom/cai88/tools/chart/TrendChartsActivity$14;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v6}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$32(Lcom/cai88/tools/chart/TrendChartsActivity;)Lcom/cai88/tools/model/BaseDataModel;

    move-result-object v6

    iget v6, v6, Lcom/cai88/tools/model/BaseDataModel;->status:I

    if-nez v6, :cond_c

    .line 544
    iget-object v6, p0, Lcom/cai88/tools/chart/TrendChartsActivity$14;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v6}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$32(Lcom/cai88/tools/chart/TrendChartsActivity;)Lcom/cai88/tools/model/BaseDataModel;

    move-result-object v6

    iget-object v6, v6, Lcom/cai88/tools/model/BaseDataModel;->model:Ljava/lang/Object;

    if-eqz v6, :cond_0

    .line 545
    iget-object v6, p0, Lcom/cai88/tools/chart/TrendChartsActivity$14;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v6}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$32(Lcom/cai88/tools/chart/TrendChartsActivity;)Lcom/cai88/tools/model/BaseDataModel;

    move-result-object v6

    iget-object v6, v6, Lcom/cai88/tools/model/BaseDataModel;->model:Ljava/lang/Object;

    check-cast v6, Lcom/cai88/tools/model/ProxyModel;

    iget-object v6, v6, Lcom/cai88/tools/model/ProxyModel;->omissionList:Lcom/cai88/tools/model/OmissionList;

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/cai88/tools/chart/TrendChartsActivity$14;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v6}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$32(Lcom/cai88/tools/chart/TrendChartsActivity;)Lcom/cai88/tools/model/BaseDataModel;

    move-result-object v6

    iget-object v6, v6, Lcom/cai88/tools/model/BaseDataModel;->model:Ljava/lang/Object;

    check-cast v6, Lcom/cai88/tools/model/ProxyModel;

    iget-object v6, v6, Lcom/cai88/tools/model/ProxyModel;->lotteryOpenHistoryList:Lcom/cai88/tools/model/LotteryOpenHistoryListModel;

    if-eqz v6, :cond_0

    .line 548
    :cond_4
    iget-object v6, p0, Lcom/cai88/tools/chart/TrendChartsActivity$14;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v6, v6, Lcom/cai88/tools/chart/TrendChartsActivity;->omissionList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 549
    iget-object v6, p0, Lcom/cai88/tools/chart/TrendChartsActivity$14;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v6}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$33(Lcom/cai88/tools/chart/TrendChartsActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 550
    iget-object v6, p0, Lcom/cai88/tools/chart/TrendChartsActivity$14;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v6}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$33(Lcom/cai88/tools/chart/TrendChartsActivity;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v6, p0, Lcom/cai88/tools/chart/TrendChartsActivity$14;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v6}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$32(Lcom/cai88/tools/chart/TrendChartsActivity;)Lcom/cai88/tools/model/BaseDataModel;

    move-result-object v6

    iget-object v6, v6, Lcom/cai88/tools/model/BaseDataModel;->model:Ljava/lang/Object;

    check-cast v6, Lcom/cai88/tools/model/ProxyModel;

    iget-object v6, v6, Lcom/cai88/tools/model/ProxyModel;->lotteryOpenHistoryList:Lcom/cai88/tools/model/LotteryOpenHistoryListModel;

    iget-object v6, v6, Lcom/cai88/tools/model/LotteryOpenHistoryListModel;->data:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 552
    iget-object v6, p0, Lcom/cai88/tools/chart/TrendChartsActivity$14;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v6}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$32(Lcom/cai88/tools/chart/TrendChartsActivity;)Lcom/cai88/tools/model/BaseDataModel;

    move-result-object v6

    iget-object v6, v6, Lcom/cai88/tools/model/BaseDataModel;->model:Ljava/lang/Object;

    check-cast v6, Lcom/cai88/tools/model/ProxyModel;

    iget-object v6, v6, Lcom/cai88/tools/model/ProxyModel;->omissionList:Lcom/cai88/tools/model/OmissionList;

    iget-object v5, v6, Lcom/cai88/tools/model/OmissionList;->list:Ljava/util/ArrayList;

    .line 553
    .local v5, "tmpOmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cai88/tools/model/OmissionModel;>;"
    iget-object v6, p0, Lcom/cai88/tools/chart/TrendChartsActivity$14;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v6}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$33(Lcom/cai88/tools/chart/TrendChartsActivity;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/cai88/tools/chart/TrendChartsActivity$14;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v6}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$33(Lcom/cai88/tools/chart/TrendChartsActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 554
    iget-object v6, p0, Lcom/cai88/tools/chart/TrendChartsActivity$14;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v6}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$33(Lcom/cai88/tools/chart/TrendChartsActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 555
    const/4 v2, 0x0

    .line 556
    .local v2, "isExist":Z
    iget-object v6, p0, Lcom/cai88/tools/chart/TrendChartsActivity$14;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v6}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$33(Lcom/cai88/tools/chart/TrendChartsActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_7

    .line 572
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    iget-object v6, p0, Lcom/cai88/tools/chart/TrendChartsActivity$14;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v6, v6, Lcom/cai88/tools/chart/TrendChartsActivity;->omissionList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v7, p0, Lcom/cai88/tools/chart/TrendChartsActivity$14;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v7}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$33(Lcom/cai88/tools/chart/TrendChartsActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v6, v7

    if-lt v1, v6, :cond_b

    .line 576
    .end local v1    # "i":I
    .end local v2    # "isExist":Z
    :cond_5
    iget-object v6, p0, Lcom/cai88/tools/chart/TrendChartsActivity$14;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v6, v6, Lcom/cai88/tools/chart/TrendChartsActivity;->detailsList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 578
    iget-object v6, p0, Lcom/cai88/tools/chart/TrendChartsActivity$14;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-virtual {v6}, Lcom/cai88/tools/chart/TrendChartsActivity;->needOpeningTips()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 579
    iget-object v6, p0, Lcom/cai88/tools/chart/TrendChartsActivity$14;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v6, v6, Lcom/cai88/tools/chart/TrendChartsActivity;->omissionList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 581
    :cond_6
    iget-object v6, p0, Lcom/cai88/tools/chart/TrendChartsActivity$14;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$35(Lcom/cai88/tools/chart/TrendChartsActivity;Z)V

    goto/16 :goto_2

    .line 556
    .restart local v2    # "isExist":Z
    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cai88/tools/model/LotteryOpenModel;

    .line 557
    .local v3, "item":Lcom/cai88/tools/model/LotteryOpenModel;
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_a

    .line 566
    :goto_5
    if-nez v2, :cond_9

    .line 567
    iget-object v7, p0, Lcom/cai88/tools/chart/TrendChartsActivity$14;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v7, v7, Lcom/cai88/tools/chart/TrendChartsActivity;->omissionList:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/cai88/tools/chart/TrendChartsActivity$14;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v9, p0, Lcom/cai88/tools/chart/TrendChartsActivity$14;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v9, v9, Lcom/cai88/tools/chart/TrendChartsActivity;->gameCode:Ljava/lang/String;

    invoke-static {v8, v9, v3}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$34(Lcom/cai88/tools/chart/TrendChartsActivity;Ljava/lang/String;Lcom/cai88/tools/model/LotteryOpenModel;)Lcom/cai88/tools/model/OmissionModel;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    :cond_9
    const/4 v2, 0x0

    goto :goto_3

    .line 557
    :cond_a
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cai88/tools/model/OmissionModel;

    .line 558
    .local v4, "obj":Lcom/cai88/tools/model/OmissionModel;
    iget-object v8, v3, Lcom/cai88/tools/model/LotteryOpenModel;->issue:Ljava/lang/String;

    iget-object v9, v4, Lcom/cai88/tools/model/OmissionModel;->issue:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 559
    iget-object v7, p0, Lcom/cai88/tools/chart/TrendChartsActivity$14;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v7, v7, Lcom/cai88/tools/chart/TrendChartsActivity;->omissionList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 561
    const/4 v2, 0x1

    .line 562
    goto :goto_5

    .line 573
    .end local v3    # "item":Lcom/cai88/tools/model/LotteryOpenModel;
    .end local v4    # "obj":Lcom/cai88/tools/model/OmissionModel;
    .restart local v1    # "i":I
    :cond_b
    iget-object v6, p0, Lcom/cai88/tools/chart/TrendChartsActivity$14;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    iget-object v6, v6, Lcom/cai88/tools/chart/TrendChartsActivity;->omissionList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 572
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 583
    .end local v1    # "i":I
    .end local v2    # "isExist":Z
    .end local v5    # "tmpOmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cai88/tools/model/OmissionModel;>;"
    :cond_c
    iget-object v6, p0, Lcom/cai88/tools/chart/TrendChartsActivity$14;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v6}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$13(Lcom/cai88/tools/chart/TrendChartsActivity;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/cai88/tools/chart/TrendChartsActivity$14;->this$0:Lcom/cai88/tools/chart/TrendChartsActivity;

    invoke-static {v7}, Lcom/cai88/tools/chart/TrendChartsActivity;->access$32(Lcom/cai88/tools/chart/TrendChartsActivity;)Lcom/cai88/tools/model/BaseDataModel;

    move-result-object v7

    iget-object v7, v7, Lcom/cai88/tools/model/BaseDataModel;->msg:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/cai88/tools/uitl/Common;->ShowInfo(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2
.end method
