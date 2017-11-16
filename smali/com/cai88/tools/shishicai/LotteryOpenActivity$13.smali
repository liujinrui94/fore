.class Lcom/cai88/tools/shishicai/LotteryOpenActivity$13;
.super Ljava/lang/Object;
.source "LotteryOpenActivity.java"

# interfaces
.implements Lcom/cai88/tools/asynctask/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cai88/tools/shishicai/LotteryOpenActivity;->getHeadImg()V
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
    iput-object p1, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$13;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/cai88/tools/shishicai/LotteryOpenActivity$13;)Lcom/cai88/tools/shishicai/LotteryOpenActivity;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$13;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cai88/tools/shishicai/LotteryOpenActivity$13;->onCallback(Ljava/lang/String;)V

    return-void
.end method

.method public onCallback(Ljava/lang/String;)V
    .locals 5
    .param p1, "pCallbackValue"    # Ljava/lang/String;

    .prologue
    .line 296
    :try_start_0
    invoke-static {p1}, Lcom/cai88/tools/uitl/Common;->strIsBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 297
    iget-object v2, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$13;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    iget-object v2, v2, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$13;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    iget-object v3, v3, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cai88/tools/uitl/Common;->ShowInfo(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$13;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    iget-object v2, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$13;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    iget-object v2, v2, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->gson:Lcom/google/gson/Gson;

    new-instance v4, Lcom/cai88/tools/shishicai/LotteryOpenActivity$13$1;

    invoke-direct {v4, p0}, Lcom/cai88/tools/shishicai/LotteryOpenActivity$13$1;-><init>(Lcom/cai88/tools/shishicai/LotteryOpenActivity$13;)V

    invoke-virtual {v4}, Lcom/cai88/tools/shishicai/LotteryOpenActivity$13$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v2, p1, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cai88/tools/model/BaseDataModel;

    invoke-static {v3, v2}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->access$14(Lcom/cai88/tools/shishicai/LotteryOpenActivity;Lcom/cai88/tools/model/BaseDataModel;)V
    :try_end_1
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 306
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$13;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    invoke-static {v2}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->access$15(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)Lcom/cai88/tools/model/BaseDataModel;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 309
    iget-object v2, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$13;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    invoke-static {v2}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->access$15(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)Lcom/cai88/tools/model/BaseDataModel;

    move-result-object v2

    iget v2, v2, Lcom/cai88/tools/model/BaseDataModel;->status:I

    if-nez v2, :cond_4

    .line 310
    iget-object v2, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$13;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    invoke-static {v2}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->access$15(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)Lcom/cai88/tools/model/BaseDataModel;

    move-result-object v2

    iget-object v2, v2, Lcom/cai88/tools/model/BaseDataModel;->model:Ljava/lang/Object;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$13;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    invoke-static {v2}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->access$15(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)Lcom/cai88/tools/model/BaseDataModel;

    move-result-object v2

    iget-object v2, v2, Lcom/cai88/tools/model/BaseDataModel;->model:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 311
    iget-object v2, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$13;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    invoke-static {v2}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->access$16(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)Lcom/cai88/tools/view/FitImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/cai88/tools/view/FitImageView;->setVisibility(I)V

    .line 312
    iget-object v2, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$13;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    invoke-static {v2}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->access$15(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)Lcom/cai88/tools/model/BaseDataModel;

    move-result-object v2

    iget-object v2, v2, Lcom/cai88/tools/model/BaseDataModel;->model:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cai88/tools/model/HuodongModel;

    .line 313
    .local v1, "hdmodel":Lcom/cai88/tools/model/HuodongModel;
    iget-object v2, v1, Lcom/cai88/tools/model/HuodongModel;->img:Ljava/lang/String;

    invoke-static {v2}, Lcom/cai88/tools/uitl/Common;->strIsBlank(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 314
    iget-object v2, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$13;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    invoke-static {v2}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->access$17(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)Lnet/tsz/afinal/FinalBitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$13;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    invoke-static {v3}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->access$16(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)Lcom/cai88/tools/view/FitImageView;

    move-result-object v3

    iget-object v4, v1, Lcom/cai88/tools/model/HuodongModel;->img:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lnet/tsz/afinal/FinalBitmap;->display(Landroid/view/View;Ljava/lang/String;)V

    .line 316
    :cond_2
    iget-object v2, v1, Lcom/cai88/tools/model/HuodongModel;->url:Ljava/lang/String;

    invoke-static {v2}, Lcom/cai88/tools/uitl/Common;->strIsBlank(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 317
    iget-object v2, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$13;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    invoke-static {v2}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->access$16(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)Lcom/cai88/tools/view/FitImageView;

    move-result-object v2

    new-instance v3, Lcom/cai88/tools/shishicai/LotteryOpenActivity$13$2;

    invoke-direct {v3, p0, v1}, Lcom/cai88/tools/shishicai/LotteryOpenActivity$13$2;-><init>(Lcom/cai88/tools/shishicai/LotteryOpenActivity$13;Lcom/cai88/tools/model/HuodongModel;)V

    invoke-virtual {v2, v3}, Lcom/cai88/tools/view/FitImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 333
    .end local v1    # "hdmodel":Lcom/cai88/tools/model/HuodongModel;
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "iws"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getHeadImg e:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 302
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 303
    .local v0, "e":Lcom/google/gson/JsonSyntaxException;
    :try_start_3
    const-string v2, "iws"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getHeadImg json\u8f6c\u6362\u9519\u8bef e: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 328
    .end local v0    # "e":Lcom/google/gson/JsonSyntaxException;
    :cond_3
    iget-object v2, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$13;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    invoke-static {v2}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->access$16(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)Lcom/cai88/tools/view/FitImageView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/cai88/tools/view/FitImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 331
    :cond_4
    iget-object v2, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$13;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    iget-object v2, v2, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$13;->this$0:Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    invoke-static {v3}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->access$15(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)Lcom/cai88/tools/model/BaseDataModel;

    move-result-object v3

    iget-object v3, v3, Lcom/cai88/tools/model/BaseDataModel;->msg:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/cai88/tools/uitl/Common;->ShowInfo(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method
