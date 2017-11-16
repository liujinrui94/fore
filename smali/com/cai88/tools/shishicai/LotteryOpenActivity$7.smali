.class Lcom/cai88/tools/shishicai/LotteryOpenActivity$7;
.super Ljava/lang/Object;
.source "LotteryOpenActivity.java"

# interfaces
.implements Lcom/cai88/tools/asynctask/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cai88/tools/shishicai/LotteryOpenActivity;->getCurrentGameData()V
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
.field final synthetic this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;


# direct methods
.method constructor <init>(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$7;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cai88/tools/shishicai/LotteryOpenActivity$7;->onCallback(Ljava/lang/String;)V

    return-void
.end method

.method public onCallback(Ljava/lang/String;)V
    .locals 7
    .param p1, "pCallbackValue"    # Ljava/lang/String;

    .prologue
    .line 162
    if-eqz p1, :cond_0

    :try_start_0
    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 163
    :cond_0
    iget-object v4, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$7;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    iget-object v4, v4, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$7;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    iget-object v5, v5, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cai88/tools/uitl/Common;->ShowInfo(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :cond_1
    :goto_0
    return-void

    .line 167
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$7;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    iget-object v4, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$7;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    iget-object v4, v4, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->gson:Lcom/google/gson/Gson;

    new-instance v6, Lcom/cai88/tools/shishicai/LotteryOpenActivity$7$1;

    invoke-direct {v6, p0}, Lcom/cai88/tools/shishicai/LotteryOpenActivity$7$1;-><init>(Lcom/cai88/tools/shishicai/LotteryOpenActivity$7;)V

    invoke-virtual {v6}, Lcom/cai88/tools/shishicai/LotteryOpenActivity$7$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-virtual {v4, p1, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cai88/tools/model/BaseDataModel;

    invoke-static {v5, v4}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->access$5(Lcom/cai88/tools/shishicai/LotteryOpenActivity;Lcom/cai88/tools/model/BaseDataModel;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 171
    :goto_1
    :try_start_2
    iget-object v4, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$7;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    invoke-static {v4}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->access$6(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)Lcom/cai88/tools/model/BaseDataModel;

    move-result-object v4

    if-nez v4, :cond_3

    .line 172
    iget-object v4, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$7;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    iget-object v4, v4, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->context:Landroid/content/Context;

    const-string v5, "\u83b7\u53d6\u5f69\u79cd\u4fe1\u606f\u5f02\u5e38"

    invoke-static {v4, v5}, Lcom/cai88/tools/uitl/Common;->ShowInfo(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "iws"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getgame e:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 168
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 169
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_3
    const-string v4, "iws"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getgame json\u8f6c\u6362\u9519\u8bef e:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 175
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v4, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$7;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    invoke-static {v4}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->access$6(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)Lcom/cai88/tools/model/BaseDataModel;

    move-result-object v4

    iget v4, v4, Lcom/cai88/tools/model/BaseDataModel;->status:I

    if-nez v4, :cond_5

    .line 176
    iget-object v4, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$7;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    invoke-static {v4}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->access$7(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cai88/tools/model/LotteryOpenModel;

    iget-object v4, v4, Lcom/cai88/tools/model/LotteryOpenModel;->issue:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 177
    .local v2, "lastIssue":I
    iget-object v4, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$7;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    invoke-static {v4}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->access$6(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)Lcom/cai88/tools/model/BaseDataModel;

    move-result-object v4

    iget-object v4, v4, Lcom/cai88/tools/model/BaseDataModel;->model:Ljava/lang/Object;

    check-cast v4, Lcom/cai88/tools/model/CurrentGameData;

    iget-object v4, v4, Lcom/cai88/tools/model/CurrentGameData;->entity:Lcom/cai88/tools/model/CurrentGameItem;

    iget-object v4, v4, Lcom/cai88/tools/model/CurrentGameItem;->list:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 178
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v4, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$7;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    invoke-static {v4}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->access$6(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)Lcom/cai88/tools/model/BaseDataModel;

    move-result-object v4

    iget-object v4, v4, Lcom/cai88/tools/model/BaseDataModel;->model:Ljava/lang/Object;

    check-cast v4, Lcom/cai88/tools/model/CurrentGameData;

    iget-object v4, v4, Lcom/cai88/tools/model/CurrentGameData;->entity:Lcom/cai88/tools/model/CurrentGameItem;

    iget-object v4, v4, Lcom/cai88/tools/model/CurrentGameItem;->list:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 179
    iget-object v4, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$7;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    invoke-static {v4}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->access$6(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)Lcom/cai88/tools/model/BaseDataModel;

    move-result-object v4

    iget-object v4, v4, Lcom/cai88/tools/model/BaseDataModel;->model:Ljava/lang/Object;

    check-cast v4, Lcom/cai88/tools/model/CurrentGameData;

    iget-object v4, v4, Lcom/cai88/tools/model/CurrentGameData;->entity:Lcom/cai88/tools/model/CurrentGameItem;

    iget-object v4, v4, Lcom/cai88/tools/model/CurrentGameItem;->list:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cai88/tools/model/LotteryOpenModel;

    iget-object v4, v4, Lcom/cai88/tools/model/LotteryOpenModel;->issue:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 180
    .local v3, "tempIssue":I
    if-le v3, v2, :cond_4

    .line 181
    iget-object v4, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$7;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    invoke-static {v4}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->access$7(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$7;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    invoke-static {v4}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->access$6(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)Lcom/cai88/tools/model/BaseDataModel;

    move-result-object v4

    iget-object v4, v4, Lcom/cai88/tools/model/BaseDataModel;->model:Ljava/lang/Object;

    check-cast v4, Lcom/cai88/tools/model/CurrentGameData;

    iget-object v4, v4, Lcom/cai88/tools/model/CurrentGameData;->entity:Lcom/cai88/tools/model/CurrentGameItem;

    iget-object v4, v4, Lcom/cai88/tools/model/CurrentGameItem;->list:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cai88/tools/model/LotteryOpenModel;

    invoke-virtual {v5, v6, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 182
    iget-object v4, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$7;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    invoke-static {v4}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->access$8(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)Lcom/cai88/tools/adapter/LotteryOpenlistAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cai88/tools/adapter/LotteryOpenlistAdapter;->notifyDataSetChanged()V

    .line 178
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 186
    .end local v1    # "i":I
    .end local v2    # "lastIssue":I
    .end local v3    # "tempIssue":I
    :cond_5
    iget-object v4, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$7;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    iget-object v4, v4, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$7;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    invoke-static {v5}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->access$6(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)Lcom/cai88/tools/model/BaseDataModel;

    move-result-object v5

    iget-object v5, v5, Lcom/cai88/tools/model/BaseDataModel;->msg:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/cai88/tools/uitl/Common;->ShowInfo(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method
