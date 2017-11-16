.class Lcom/cai88/tools/shishicai/ChanglongActivity$5;
.super Ljava/lang/Object;
.source "ChanglongActivity.java"

# interfaces
.implements Lcom/cai88/tools/asynctask/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cai88/tools/shishicai/ChanglongActivity;->loadData()V
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
.field final synthetic this$0:Lcom/cai88/tools/shishicai/ChanglongActivity;


# direct methods
.method constructor <init>(Lcom/cai88/tools/shishicai/ChanglongActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cai88/tools/shishicai/ChanglongActivity$5;->this$0:Lcom/cai88/tools/shishicai/ChanglongActivity;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cai88/tools/shishicai/ChanglongActivity$5;->onCallback(Ljava/lang/String;)V

    return-void
.end method

.method public onCallback(Ljava/lang/String;)V
    .locals 11
    .param p1, "pCallbackValue"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 108
    iget-object v7, p0, Lcom/cai88/tools/shishicai/ChanglongActivity$5;->this$0:Lcom/cai88/tools/shishicai/ChanglongActivity;

    invoke-static {v7}, Lcom/cai88/tools/shishicai/ChanglongActivity;->access$1(Lcom/cai88/tools/shishicai/ChanglongActivity;)Lcom/cai88/tools/view/MyListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cai88/tools/view/MyListView;->onRefreshComplete()V

    .line 110
    :try_start_0
    const-string v7, ""

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 111
    iget-object v7, p0, Lcom/cai88/tools/shishicai/ChanglongActivity$5;->this$0:Lcom/cai88/tools/shishicai/ChanglongActivity;

    iget-object v7, v7, Lcom/cai88/tools/shishicai/ChanglongActivity;->context:Landroid/content/Context;

    iget-object v8, p0, Lcom/cai88/tools/shishicai/ChanglongActivity$5;->this$0:Lcom/cai88/tools/shishicai/ChanglongActivity;

    iget-object v8, v8, Lcom/cai88/tools/shishicai/ChanglongActivity;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080001

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/cai88/tools/uitl/Common;->ShowInfo(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    :try_start_1
    iget-object v9, p0, Lcom/cai88/tools/shishicai/ChanglongActivity$5;->this$0:Lcom/cai88/tools/shishicai/ChanglongActivity;

    iget-object v7, p0, Lcom/cai88/tools/shishicai/ChanglongActivity$5;->this$0:Lcom/cai88/tools/shishicai/ChanglongActivity;

    iget-object v7, v7, Lcom/cai88/tools/shishicai/ChanglongActivity;->gson:Lcom/google/gson/Gson;

    new-instance v10, Lcom/cai88/tools/shishicai/ChanglongActivity$5$1;

    invoke-direct {v10, p0}, Lcom/cai88/tools/shishicai/ChanglongActivity$5$1;-><init>(Lcom/cai88/tools/shishicai/ChanglongActivity$5;)V

    invoke-virtual {v10}, Lcom/cai88/tools/shishicai/ChanglongActivity$5$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v10

    invoke-virtual {v7, p1, v10}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cai88/tools/model/BaseDataModel;

    invoke-static {v9, v7}, Lcom/cai88/tools/shishicai/ChanglongActivity;->access$2(Lcom/cai88/tools/shishicai/ChanglongActivity;Lcom/cai88/tools/model/BaseDataModel;)V
    :try_end_1
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 119
    :goto_1
    :try_start_2
    iget-object v7, p0, Lcom/cai88/tools/shishicai/ChanglongActivity$5;->this$0:Lcom/cai88/tools/shishicai/ChanglongActivity;

    invoke-static {v7}, Lcom/cai88/tools/shishicai/ChanglongActivity;->access$3(Lcom/cai88/tools/shishicai/ChanglongActivity;)Lcom/cai88/tools/model/BaseDataModel;

    move-result-object v7

    if-nez v7, :cond_2

    .line 120
    iget-object v7, p0, Lcom/cai88/tools/shishicai/ChanglongActivity$5;->this$0:Lcom/cai88/tools/shishicai/ChanglongActivity;

    iget-object v7, v7, Lcom/cai88/tools/shishicai/ChanglongActivity;->context:Landroid/content/Context;

    const-string v8, "\u83b7\u53d6\u5386\u53f2\u5f00\u5956\u5f02\u5e38"

    invoke-static {v7, v8}, Lcom/cai88/tools/uitl/Common;->ShowInfo(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 190
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "iws"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "LotteryOpenList e:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 116
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 117
    .local v1, "e":Lcom/google/gson/JsonSyntaxException;
    :try_start_3
    const-string v7, "iws"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "LotteryOpenList json\u8f6c\u6362\u9519\u8bef e:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 123
    .end local v1    # "e":Lcom/google/gson/JsonSyntaxException;
    :cond_2
    iget-object v7, p0, Lcom/cai88/tools/shishicai/ChanglongActivity$5;->this$0:Lcom/cai88/tools/shishicai/ChanglongActivity;

    invoke-static {v7}, Lcom/cai88/tools/shishicai/ChanglongActivity;->access$3(Lcom/cai88/tools/shishicai/ChanglongActivity;)Lcom/cai88/tools/model/BaseDataModel;

    move-result-object v7

    iget v7, v7, Lcom/cai88/tools/model/BaseDataModel;->status:I

    if-nez v7, :cond_19

    .line 124
    iget-object v7, p0, Lcom/cai88/tools/shishicai/ChanglongActivity$5;->this$0:Lcom/cai88/tools/shishicai/ChanglongActivity;

    invoke-static {v7}, Lcom/cai88/tools/shishicai/ChanglongActivity;->access$3(Lcom/cai88/tools/shishicai/ChanglongActivity;)Lcom/cai88/tools/model/BaseDataModel;

    move-result-object v7

    iget-object v7, v7, Lcom/cai88/tools/model/BaseDataModel;->model:Ljava/lang/Object;

    check-cast v7, Lcom/cai88/tools/model/LotteryOpenListModel;

    iget-object v7, v7, Lcom/cai88/tools/model/LotteryOpenListModel;->data:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 126
    .local v0, "calMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v7, p0, Lcom/cai88/tools/shishicai/ChanglongActivity$5;->this$0:Lcom/cai88/tools/shishicai/ChanglongActivity;

    invoke-static {v7}, Lcom/cai88/tools/shishicai/ChanglongActivity;->access$3(Lcom/cai88/tools/shishicai/ChanglongActivity;)Lcom/cai88/tools/model/BaseDataModel;

    move-result-object v7

    iget-object v7, v7, Lcom/cai88/tools/model/BaseDataModel;->model:Ljava/lang/Object;

    check-cast v7, Lcom/cai88/tools/model/LotteryOpenListModel;

    iget-object v7, v7, Lcom/cai88/tools/model/LotteryOpenListModel;->data:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 127
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v7, p0, Lcom/cai88/tools/shishicai/ChanglongActivity$5;->this$0:Lcom/cai88/tools/shishicai/ChanglongActivity;

    invoke-static {v7}, Lcom/cai88/tools/shishicai/ChanglongActivity;->access$3(Lcom/cai88/tools/shishicai/ChanglongActivity;)Lcom/cai88/tools/model/BaseDataModel;

    move-result-object v7

    iget-object v7, v7, Lcom/cai88/tools/model/BaseDataModel;->model:Ljava/lang/Object;

    check-cast v7, Lcom/cai88/tools/model/LotteryOpenListModel;

    iget-object v7, v7, Lcom/cai88/tools/model/LotteryOpenListModel;->data:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v2, v7, :cond_4

    .line 173
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 174
    .local v5, "mappingList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    new-instance v7, Lcom/cai88/tools/shishicai/ChanglongActivity$5$2;

    invoke-direct {v7, p0}, Lcom/cai88/tools/shishicai/ChanglongActivity$5$2;-><init>(Lcom/cai88/tools/shishicai/ChanglongActivity$5;)V

    invoke-static {v5, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 179
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_18

    .line 185
    iget-object v7, p0, Lcom/cai88/tools/shishicai/ChanglongActivity$5;->this$0:Lcom/cai88/tools/shishicai/ChanglongActivity;

    invoke-static {v7}, Lcom/cai88/tools/shishicai/ChanglongActivity;->access$5(Lcom/cai88/tools/shishicai/ChanglongActivity;)Lcom/cai88/tools/adapter/ChanglongAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cai88/tools/adapter/ChanglongAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 128
    .end local v5    # "mappingList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_4
    iget-object v7, p0, Lcom/cai88/tools/shishicai/ChanglongActivity$5;->this$0:Lcom/cai88/tools/shishicai/ChanglongActivity;

    invoke-static {v7}, Lcom/cai88/tools/shishicai/ChanglongActivity;->access$3(Lcom/cai88/tools/shishicai/ChanglongActivity;)Lcom/cai88/tools/model/BaseDataModel;

    move-result-object v7

    iget-object v7, v7, Lcom/cai88/tools/model/BaseDataModel;->model:Ljava/lang/Object;

    check-cast v7, Lcom/cai88/tools/model/LotteryOpenListModel;

    iget-object v7, v7, Lcom/cai88/tools/model/LotteryOpenListModel;->data:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cai88/tools/model/LotteryOpenModel;

    .line 129
    .local v6, "model":Lcom/cai88/tools/model/LotteryOpenModel;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_4
    const/4 v7, 0x5

    if-lt v3, v7, :cond_6

    .line 145
    invoke-virtual {v6}, Lcom/cai88/tools/model/LotteryOpenModel;->getSumBigSmall()Ljava/lang/String;

    move-result-object v7

    const-string v9, "\u5927"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 146
    const-string v9, "\u603b\u548c-\u5927"

    const-string v7, "\u603b\u548c-\u5927"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_d

    move v7, v8

    :goto_5
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v7, "\u603b\u548c-\u5c0f"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :goto_6
    invoke-virtual {v6}, Lcom/cai88/tools/model/LotteryOpenModel;->getSumDanShuang()Ljava/lang/String;

    move-result-object v7

    const-string v9, "\u5355"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 153
    const-string v9, "\u603b\u548c-\u5355"

    const-string v7, "\u603b\u548c-\u5355"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_10

    move v7, v8

    :goto_7
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v7, "\u603b\u548c-\u53cc"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :goto_8
    invoke-virtual {v6}, Lcom/cai88/tools/model/LotteryOpenModel;->getLonghu()Ljava/lang/String;

    move-result-object v7

    const-string v9, "\u9f99"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 160
    const-string v9, "\u9f99"

    const-string v7, "\u9f99"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_13

    move v7, v8

    :goto_9
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v7, "\u864e"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v7, "\u548c"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_5
    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 130
    :cond_6
    invoke-virtual {v6, v3}, Lcom/cai88/tools/model/LotteryOpenModel;->getSigleBallBigSmall(I)Ljava/lang/String;

    move-result-object v7

    const-string v9, "\u5927"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 131
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "\u7b2c"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v9, v3, 0x1

    invoke-static {v9}, Lcom/cai88/tools/uitl/Common;->getNumChinese(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\u7403-\u5927"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "\u7b2c"

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v10, v3, 0x1

    invoke-static {v10}, Lcom/cai88/tools/uitl/Common;->getNumChinese(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "\u7403-\u5927"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_7

    move v7, v8

    :goto_b
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "\u7b2c"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v9, v3, 0x1

    invoke-static {v9}, Lcom/cai88/tools/uitl/Common;->getNumChinese(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\u7403-\u5c0f"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :goto_c
    invoke-virtual {v6, v3}, Lcom/cai88/tools/model/LotteryOpenModel;->getSigleBallDanShuang(I)Ljava/lang/String;

    move-result-object v7

    const-string v9, "\u5355"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 138
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "\u7b2c"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v9, v3, 0x1

    invoke-static {v9}, Lcom/cai88/tools/uitl/Common;->getNumChinese(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\u7403-\u5355"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "\u7b2c"

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v10, v3, 0x1

    invoke-static {v10}, Lcom/cai88/tools/uitl/Common;->getNumChinese(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "\u7403-\u5355"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_a

    move v7, v8

    :goto_d
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "\u7b2c"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v9, v3, 0x1

    invoke-static {v9}, Lcom/cai88/tools/uitl/Common;->getNumChinese(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\u7403-\u53cc"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :goto_e
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    .line 131
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "\u7b2c"

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v10, v3, 0x1

    invoke-static {v10}, Lcom/cai88/tools/uitl/Common;->getNumChinese(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "\u7403-\u5927"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_b

    .line 134
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "\u7b2c"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v9, v3, 0x1

    invoke-static {v9}, Lcom/cai88/tools/uitl/Common;->getNumChinese(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\u7403-\u5c0f"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "\u7b2c"

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v10, v3, 0x1

    invoke-static {v10}, Lcom/cai88/tools/uitl/Common;->getNumChinese(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "\u7403-\u5c0f"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_9

    move v7, v8

    :goto_f
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "\u7b2c"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v9, v3, 0x1

    invoke-static {v9}, Lcom/cai88/tools/uitl/Common;->getNumChinese(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\u7403-\u5927"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    .line 134
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "\u7b2c"

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v10, v3, 0x1

    invoke-static {v10}, Lcom/cai88/tools/uitl/Common;->getNumChinese(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "\u7403-\u5c0f"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    .line 138
    :cond_a
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "\u7b2c"

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v10, v3, 0x1

    invoke-static {v10}, Lcom/cai88/tools/uitl/Common;->getNumChinese(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "\u7403-\u5355"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_d

    .line 141
    :cond_b
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "\u7b2c"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v9, v3, 0x1

    invoke-static {v9}, Lcom/cai88/tools/uitl/Common;->getNumChinese(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\u7403-\u53cc"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "\u7b2c"

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v10, v3, 0x1

    invoke-static {v10}, Lcom/cai88/tools/uitl/Common;->getNumChinese(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "\u7403-\u53cc"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_c

    move v7, v8

    :goto_10
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "\u7b2c"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v9, v3, 0x1

    invoke-static {v9}, Lcom/cai88/tools/uitl/Common;->getNumChinese(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\u7403-\u5355"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e

    .line 141
    :cond_c
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "\u7b2c"

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v10, v3, 0x1

    invoke-static {v10}, Lcom/cai88/tools/uitl/Common;->getNumChinese(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "\u7403-\u53cc"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    .line 146
    :cond_d
    const-string v7, "\u603b\u548c-\u5927"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_5

    .line 149
    :cond_e
    const-string v9, "\u603b\u548c-\u5c0f"

    const-string v7, "\u603b\u548c-\u5c0f"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_f

    move v7, v8

    :goto_11
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v7, "\u603b\u548c-\u5927"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 149
    :cond_f
    const-string v7, "\u603b\u548c-\u5c0f"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    .line 153
    :cond_10
    const-string v7, "\u603b\u548c-\u5355"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_7

    .line 156
    :cond_11
    const-string v9, "\u603b\u548c-\u53cc"

    const-string v7, "\u603b\u548c-\u53cc"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_12

    move v7, v8

    :goto_12
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v7, "\u603b\u548c-\u5355"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 156
    :cond_12
    const-string v7, "\u603b\u548c-\u53cc"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    .line 160
    :cond_13
    const-string v7, "\u9f99"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_9

    .line 163
    :cond_14
    invoke-virtual {v6}, Lcom/cai88/tools/model/LotteryOpenModel;->getLonghu()Ljava/lang/String;

    move-result-object v7

    const-string v9, "\u864e"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 164
    const-string v9, "\u864e"

    const-string v7, "\u864e"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_15

    move v7, v8

    :goto_13
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v7, "\u9f99"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v7, "\u548c"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    .line 164
    :cond_15
    const-string v7, "\u864e"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    .line 167
    :cond_16
    invoke-virtual {v6}, Lcom/cai88/tools/model/LotteryOpenModel;->getLonghu()Ljava/lang/String;

    move-result-object v7

    const-string v9, "\u548c"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 168
    const-string v9, "\u548c"

    const-string v7, "\u548c"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_17

    move v7, v8

    :goto_14
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v7, "\u9f99"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v7, "\u864e"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    .line 168
    :cond_17
    const-string v7, "\u548c"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    .line 179
    .end local v3    # "j":I
    .end local v6    # "model":Lcom/cai88/tools/model/LotteryOpenModel;
    .restart local v5    # "mappingList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_18
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 181
    .local v4, "mapping":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-le v7, v8, :cond_3

    .line 182
    iget-object v7, p0, Lcom/cai88/tools/shishicai/ChanglongActivity$5;->this$0:Lcom/cai88/tools/shishicai/ChanglongActivity;

    invoke-static {v7}, Lcom/cai88/tools/shishicai/ChanglongActivity;->access$4(Lcom/cai88/tools/shishicai/ChanglongActivity;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 188
    .end local v0    # "calMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "i":I
    .end local v4    # "mapping":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v5    # "mappingList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_19
    iget-object v7, p0, Lcom/cai88/tools/shishicai/ChanglongActivity$5;->this$0:Lcom/cai88/tools/shishicai/ChanglongActivity;

    iget-object v7, v7, Lcom/cai88/tools/shishicai/ChanglongActivity;->context:Landroid/content/Context;

    iget-object v8, p0, Lcom/cai88/tools/shishicai/ChanglongActivity$5;->this$0:Lcom/cai88/tools/shishicai/ChanglongActivity;

    invoke-static {v8}, Lcom/cai88/tools/shishicai/ChanglongActivity;->access$3(Lcom/cai88/tools/shishicai/ChanglongActivity;)Lcom/cai88/tools/model/BaseDataModel;

    move-result-object v8

    iget-object v8, v8, Lcom/cai88/tools/model/BaseDataModel;->msg:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/cai88/tools/uitl/Common;->ShowInfo(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method
