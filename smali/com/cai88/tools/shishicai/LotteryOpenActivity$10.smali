.class Lcom/cai88/tools/shishicai/LotteryOpenActivity$10;
.super Ljava/lang/Object;
.source "LotteryOpenActivity.java"

# interfaces
.implements Lcom/cai88/tools/asynctask/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cai88/tools/shishicai/LotteryOpenActivity;->loadData(I)V
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
    iput-object p1, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$10;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cai88/tools/shishicai/LotteryOpenActivity$10;->onCallback(Ljava/lang/String;)V

    return-void
.end method

.method public onCallback(Ljava/lang/String;)V
    .locals 4
    .param p1, "pCallbackValue"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 225
    iget-object v1, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$10;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    invoke-static {v1}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->access$9(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)Lcom/cai88/tools/view/MyListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cai88/tools/view/MyListView;->onRefreshComplete()V

    .line 226
    iget-object v1, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$10;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    invoke-static {v1}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->access$1(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)Lcom/cai88/tools/view/LoadMoreView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/cai88/tools/view/LoadMoreView;->setBtnState(Z)V

    .line 228
    :try_start_0
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    iget-object v1, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$10;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    iget-object v1, v1, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$10;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    iget-object v2, v2, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cai88/tools/uitl/Common;->ShowInfo(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$10;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    iget-object v1, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$10;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    iget-object v1, v1, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->gson:Lcom/google/gson/Gson;

    new-instance v3, Lcom/cai88/tools/shishicai/LotteryOpenActivity$10$1;

    invoke-direct {v3, p0}, Lcom/cai88/tools/shishicai/LotteryOpenActivity$10$1;-><init>(Lcom/cai88/tools/shishicai/LotteryOpenActivity$10;)V

    invoke-virtual {v3}, Lcom/cai88/tools/shishicai/LotteryOpenActivity$10$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cai88/tools/model/BaseDataModel;

    invoke-static {v2, v1}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->access$10(Lcom/cai88/tools/shishicai/LotteryOpenActivity;Lcom/cai88/tools/model/BaseDataModel;)V
    :try_end_1
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 237
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$10;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    invoke-static {v1}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->access$11(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)Lcom/cai88/tools/model/BaseDataModel;

    move-result-object v1

    if-nez v1, :cond_2

    .line 238
    iget-object v1, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$10;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    iget-object v1, v1, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->context:Landroid/content/Context;

    const-string v2, "\u83b7\u53d6\u5386\u53f2\u5f00\u5956\u5f02\u5e38"

    invoke-static {v1, v2}, Lcom/cai88/tools/uitl/Common;->ShowInfo(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "iws"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LotteryOpenList e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 234
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 235
    .local v0, "e":Lcom/google/gson/JsonSyntaxException;
    :try_start_3
    const-string v1, "iws"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LotteryOpenList json\u8f6c\u6362\u9519\u8bef e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 241
    .end local v0    # "e":Lcom/google/gson/JsonSyntaxException;
    :cond_2
    iget-object v1, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$10;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    invoke-static {v1}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->access$11(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)Lcom/cai88/tools/model/BaseDataModel;

    move-result-object v1

    iget v1, v1, Lcom/cai88/tools/model/BaseDataModel;->status:I

    if-nez v1, :cond_4

    .line 242
    iget-object v2, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$10;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    iget-object v1, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$10;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    invoke-static {v1}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->access$11(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)Lcom/cai88/tools/model/BaseDataModel;

    move-result-object v1

    iget-object v1, v1, Lcom/cai88/tools/model/BaseDataModel;->model:Ljava/lang/Object;

    check-cast v1, Lcom/cai88/tools/model/LotteryOpenListModel;

    iget v1, v1, Lcom/cai88/tools/model/LotteryOpenListModel;->pn:I

    invoke-static {v2, v1}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->access$12(Lcom/cai88/tools/shishicai/LotteryOpenActivity;I)V

    .line 243
    iget-object v1, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$10;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    invoke-static {v1}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->access$11(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)Lcom/cai88/tools/model/BaseDataModel;

    move-result-object v1

    iget-object v1, v1, Lcom/cai88/tools/model/BaseDataModel;->model:Ljava/lang/Object;

    check-cast v1, Lcom/cai88/tools/model/LotteryOpenListModel;

    iget v1, v1, Lcom/cai88/tools/model/LotteryOpenListModel;->l:I

    if-lez v1, :cond_3

    .line 244
    iget-object v2, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$10;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    iget-object v1, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$10;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    invoke-static {v1}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->access$11(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)Lcom/cai88/tools/model/BaseDataModel;

    move-result-object v1

    iget-object v1, v1, Lcom/cai88/tools/model/BaseDataModel;->model:Ljava/lang/Object;

    check-cast v1, Lcom/cai88/tools/model/LotteryOpenListModel;

    iget v1, v1, Lcom/cai88/tools/model/LotteryOpenListModel;->pn:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v2, v1}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->access$13(Lcom/cai88/tools/shishicai/LotteryOpenActivity;I)V

    .line 245
    iget-object v1, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$10;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    invoke-static {v1}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->access$1(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)Lcom/cai88/tools/view/LoadMoreView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/cai88/tools/view/LoadMoreView;->setVisible(Z)V

    .line 249
    :goto_2
    iget-object v1, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$10;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    invoke-static {v1}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->access$11(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)Lcom/cai88/tools/model/BaseDataModel;

    move-result-object v1

    iget-object v1, v1, Lcom/cai88/tools/model/BaseDataModel;->model:Ljava/lang/Object;

    check-cast v1, Lcom/cai88/tools/model/LotteryOpenListModel;

    iget-object v1, v1, Lcom/cai88/tools/model/LotteryOpenListModel;->data:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$10;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    invoke-static {v1}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->access$7(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v1, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$10;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    invoke-static {v1}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->access$11(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)Lcom/cai88/tools/model/BaseDataModel;

    move-result-object v1

    iget-object v1, v1, Lcom/cai88/tools/model/BaseDataModel;->model:Ljava/lang/Object;

    check-cast v1, Lcom/cai88/tools/model/LotteryOpenListModel;

    iget-object v1, v1, Lcom/cai88/tools/model/LotteryOpenListModel;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 251
    iget-object v1, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$10;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    invoke-static {v1}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->access$8(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)Lcom/cai88/tools/adapter/LotteryOpenlistAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cai88/tools/adapter/LotteryOpenlistAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 247
    :cond_3
    iget-object v1, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$10;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    invoke-static {v1}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->access$1(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)Lcom/cai88/tools/view/LoadMoreView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/cai88/tools/view/LoadMoreView;->setVisible(Z)V

    goto :goto_2

    .line 254
    :cond_4
    iget-object v1, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$10;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    iget-object v1, v1, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$10;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    invoke-static {v2}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->access$11(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)Lcom/cai88/tools/model/BaseDataModel;

    move-result-object v2

    iget-object v2, v2, Lcom/cai88/tools/model/BaseDataModel;->msg:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/cai88/tools/uitl/Common;->ShowInfo(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method
