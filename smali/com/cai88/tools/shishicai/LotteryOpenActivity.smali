.class public Lcom/cai88/tools/shishicai/LotteryOpenActivity;
.super Lcom/cai88/tools/shishicai/BaseActivity;
.source "LotteryOpenActivity.java"


# instance fields
.field private adapter:Lcom/cai88/tools/adapter/LotteryOpenlistAdapter;

.field private bdModel:Lcom/cai88/tools/model/BaseDataModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cai88/tools/model/BaseDataModel",
            "<",
            "Lcom/cai88/tools/model/LotteryOpenListModel;",
            ">;"
        }
    .end annotation
.end field

.field private fb:Lnet/tsz/afinal/FinalBitmap;

.field private gameDatabdModel:Lcom/cai88/tools/model/BaseDataModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cai88/tools/model/BaseDataModel",
            "<",
            "Lcom/cai88/tools/model/CurrentGameData;",
            ">;"
        }
    .end annotation
.end field

.field private headIv:Lcom/cai88/tools/view/FitImageView;

.field private huodongListBd:Lcom/cai88/tools/model/BaseDataModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cai88/tools/model/BaseDataModel",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cai88/tools/model/HuodongModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cai88/tools/model/LotteryOpenModel;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Lcom/cai88/tools/view/MyListView;

.field private loadMoreView:Lcom/cai88/tools/view/LoadMoreView;

.field private nextPn:I

.field private pn:I

.field private timer:Ljava/util/Timer;

.field private topView:Lcom/cai88/tools/view/TopView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 41
    invoke-direct {p0}, Lcom/cai88/tools/shishicai/BaseActivity;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->list:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Lcom/cai88/tools/model/BaseDataModel;

    invoke-direct {v0}, Lcom/cai88/tools/model/BaseDataModel;-><init>()V

    iput-object v0, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->bdModel:Lcom/cai88/tools/model/BaseDataModel;

    .line 50
    iput v1, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->pn:I

    .line 51
    iput v1, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->nextPn:I

    .line 53
    new-instance v0, Lcom/cai88/tools/model/BaseDataModel;

    invoke-direct {v0}, Lcom/cai88/tools/model/BaseDataModel;-><init>()V

    iput-object v0, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->gameDatabdModel:Lcom/cai88/tools/model/BaseDataModel;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->timer:Ljava/util/Timer;

    .line 58
    new-instance v0, Lcom/cai88/tools/model/BaseDataModel;

    invoke-direct {v0}, Lcom/cai88/tools/model/BaseDataModel;-><init>()V

    iput-object v0, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->huodongListBd:Lcom/cai88/tools/model/BaseDataModel;

    .line 41
    return-void
.end method

.method private ExitApp()V
    .locals 4

    .prologue
    .line 139
    iget-object v0, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->context:Landroid/content/Context;

    const-string v1, "\u9000\u51fa"

    const-string v2, "\u60a8\u786e\u8ba4\u8981\u9000\u51fa?"

    new-instance v3, Lcom/cai88/tools/shishicai/LotteryOpenActivity$4;

    invoke-direct {v3, p0}, Lcom/cai88/tools/shishicai/LotteryOpenActivity$4;-><init>(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)V

    invoke-static {v0, v1, v2, v3}, Lcom/cai88/tools/view/DialogView;->createDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/cai88/tools/view/DialogView;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lcom/cai88/tools/view/DialogView;->show()V

    .line 144
    return-void
.end method

.method static synthetic access$0(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)V
    .locals 0

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->reloadData()V

    return-void
.end method

.method static synthetic access$1(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)Lcom/cai88/tools/view/LoadMoreView;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->loadMoreView:Lcom/cai88/tools/view/LoadMoreView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/cai88/tools/shishicai/LotteryOpenActivity;Lcom/cai88/tools/model/BaseDataModel;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->bdModel:Lcom/cai88/tools/model/BaseDataModel;

    return-void
.end method

.method static synthetic access$11(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)Lcom/cai88/tools/model/BaseDataModel;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->bdModel:Lcom/cai88/tools/model/BaseDataModel;

    return-object v0
.end method

.method static synthetic access$12(Lcom/cai88/tools/shishicai/LotteryOpenActivity;I)V
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->pn:I

    return-void
.end method

.method static synthetic access$13(Lcom/cai88/tools/shishicai/LotteryOpenActivity;I)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->nextPn:I

    return-void
.end method

.method static synthetic access$14(Lcom/cai88/tools/shishicai/LotteryOpenActivity;Lcom/cai88/tools/model/BaseDataModel;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->huodongListBd:Lcom/cai88/tools/model/BaseDataModel;

    return-void
.end method

.method static synthetic access$15(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)Lcom/cai88/tools/model/BaseDataModel;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->huodongListBd:Lcom/cai88/tools/model/BaseDataModel;

    return-object v0
.end method

.method static synthetic access$16(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)Lcom/cai88/tools/view/FitImageView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->headIv:Lcom/cai88/tools/view/FitImageView;

    return-object v0
.end method

.method static synthetic access$17(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)Lnet/tsz/afinal/FinalBitmap;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->fb:Lnet/tsz/afinal/FinalBitmap;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->nextPn:I

    return v0
.end method

.method static synthetic access$3(Lcom/cai88/tools/shishicai/LotteryOpenActivity;I)V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->loadData(I)V

    return-void
.end method

.method static synthetic access$4(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->getCurrentGameData()V

    return-void
.end method

.method static synthetic access$5(Lcom/cai88/tools/shishicai/LotteryOpenActivity;Lcom/cai88/tools/model/BaseDataModel;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->gameDatabdModel:Lcom/cai88/tools/model/BaseDataModel;

    return-void
.end method

.method static synthetic access$6(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)Lcom/cai88/tools/model/BaseDataModel;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->gameDatabdModel:Lcom/cai88/tools/model/BaseDataModel;

    return-object v0
.end method

.method static synthetic access$7(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$8(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)Lcom/cai88/tools/adapter/LotteryOpenlistAdapter;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->adapter:Lcom/cai88/tools/adapter/LotteryOpenlistAdapter;

    return-object v0
.end method

.method static synthetic access$9(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)Lcom/cai88/tools/view/MyListView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->listView:Lcom/cai88/tools/view/MyListView;

    return-object v0
.end method

.method private getCurrentGameData()V
    .locals 4

    .prologue
    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 147
    .local v0, "gameDataParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "type"

    sget-object v2, Lcom/cai88/tools/shishicai/SscApplication;->GameCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    new-instance v1, Lcom/cai88/tools/shishicai/LotteryOpenActivity$5;

    invoke-direct {v1, p0}, Lcom/cai88/tools/shishicai/LotteryOpenActivity$5;-><init>(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)V

    .line 152
    new-instance v2, Lcom/cai88/tools/shishicai/LotteryOpenActivity$6;

    invoke-direct {v2, p0, v0}, Lcom/cai88/tools/shishicai/LotteryOpenActivity$6;-><init>(Lcom/cai88/tools/shishicai/LotteryOpenActivity;Ljava/util/HashMap;)V

    .line 158
    new-instance v3, Lcom/cai88/tools/shishicai/LotteryOpenActivity$7;

    invoke-direct {v3, p0}, Lcom/cai88/tools/shishicai/LotteryOpenActivity$7;-><init>(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)V

    .line 148
    invoke-static {v1, v2, v3}, Lcom/cai88/tools/asynctask/AsyncTaskUtils;->doAsync(Lcom/cai88/tools/asynctask/CallEarliest;Lcom/cai88/tools/asynctask/Callable;Lcom/cai88/tools/asynctask/Callback;)V

    .line 194
    return-void
.end method

.method private getHeadImg()V
    .locals 4

    .prologue
    .line 278
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 279
    .local v0, "hiParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "position"

    const-string v2, "\u65f6\u65f6\u5f69\u73a9\u5bb6\u5e7f\u544a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    new-instance v1, Lcom/cai88/tools/shishicai/LotteryOpenActivity$11;

    invoke-direct {v1, p0}, Lcom/cai88/tools/shishicai/LotteryOpenActivity$11;-><init>(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)V

    .line 284
    new-instance v2, Lcom/cai88/tools/shishicai/LotteryOpenActivity$12;

    invoke-direct {v2, p0, v0}, Lcom/cai88/tools/shishicai/LotteryOpenActivity$12;-><init>(Lcom/cai88/tools/shishicai/LotteryOpenActivity;Ljava/util/HashMap;)V

    .line 291
    new-instance v3, Lcom/cai88/tools/shishicai/LotteryOpenActivity$13;

    invoke-direct {v3, p0}, Lcom/cai88/tools/shishicai/LotteryOpenActivity$13;-><init>(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)V

    .line 280
    invoke-static {v1, v2, v3}, Lcom/cai88/tools/asynctask/AsyncTaskUtils;->doAsync(Lcom/cai88/tools/asynctask/CallEarliest;Lcom/cai88/tools/asynctask/Callable;Lcom/cai88/tools/asynctask/Callback;)V

    .line 340
    return-void
.end method

.method private loadData(I)V
    .locals 4
    .param p1, "pnNum"    # I

    .prologue
    .line 197
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 198
    sget-object v0, Lcom/cai88/tools/shishicai/SscApplication;->GameCode:Ljava/lang/String;

    const-string v1, "018"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 199
    iget-object v0, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->topView:Lcom/cai88/tools/view/TopView;

    const-string v1, "\u91cd\u5e86\u65f6\u65f6\u5f69"

    invoke-virtual {v0, v1}, Lcom/cai88/tools/view/TopView;->setTitle(Ljava/lang/String;)V

    .line 203
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->listView:Lcom/cai88/tools/view/MyListView;

    iget-object v1, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->loadMoreView:Lcom/cai88/tools/view/LoadMoreView;

    invoke-virtual {v0, v1}, Lcom/cai88/tools/view/MyListView;->addFooterView(Landroid/view/View;)V

    .line 204
    iget-object v0, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->listView:Lcom/cai88/tools/view/MyListView;

    iget-object v1, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->adapter:Lcom/cai88/tools/adapter/LotteryOpenlistAdapter;

    invoke-virtual {v0, v1}, Lcom/cai88/tools/view/MyListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->param:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 207
    iget-object v0, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->param:Ljava/util/HashMap;

    const-string v1, "type"

    sget-object v2, Lcom/cai88/tools/shishicai/SscApplication;->GameCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v0, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->param:Ljava/util/HashMap;

    const-string v1, "ps"

    const-string v2, "20"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v0, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->param:Ljava/util/HashMap;

    const-string v1, "pn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    new-instance v0, Lcom/cai88/tools/shishicai/LotteryOpenActivity$8;

    invoke-direct {v0, p0}, Lcom/cai88/tools/shishicai/LotteryOpenActivity$8;-><init>(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)V

    .line 215
    new-instance v1, Lcom/cai88/tools/shishicai/LotteryOpenActivity$9;

    invoke-direct {v1, p0}, Lcom/cai88/tools/shishicai/LotteryOpenActivity$9;-><init>(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)V

    .line 221
    new-instance v2, Lcom/cai88/tools/shishicai/LotteryOpenActivity$10;

    invoke-direct {v2, p0}, Lcom/cai88/tools/shishicai/LotteryOpenActivity$10;-><init>(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)V

    .line 210
    invoke-static {v0, v1, v2}, Lcom/cai88/tools/asynctask/AsyncTaskUtils;->doAsync(Lcom/cai88/tools/asynctask/CallEarliest;Lcom/cai88/tools/asynctask/Callable;Lcom/cai88/tools/asynctask/Callback;)V

    .line 261
    return-void

    .line 200
    :cond_2
    sget-object v0, Lcom/cai88/tools/shishicai/SscApplication;->GameCode:Ljava/lang/String;

    const-string v1, "006"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->topView:Lcom/cai88/tools/view/TopView;

    const-string v1, "\u6c5f\u897f\u65f6\u65f6\u5f69"

    invoke-virtual {v0, v1}, Lcom/cai88/tools/view/TopView;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private reloadData()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 263
    iget-object v0, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 264
    iput v2, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->pn:I

    .line 265
    iput v2, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->nextPn:I

    .line 266
    iget-object v0, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->loadMoreView:Lcom/cai88/tools/view/LoadMoreView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/cai88/tools/view/LoadMoreView;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->listView:Lcom/cai88/tools/view/MyListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cai88/tools/view/MyListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 268
    iget-object v0, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->listView:Lcom/cai88/tools/view/MyListView;

    iget-object v1, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->loadMoreView:Lcom/cai88/tools/view/LoadMoreView;

    invoke-virtual {v0, v1}, Lcom/cai88/tools/view/MyListView;->removeFooterView(Landroid/view/View;)Z

    .line 269
    invoke-direct {p0, v2}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->loadData(I)V

    .line 270
    return-void
.end method


# virtual methods
.method protected AppInit()V
    .locals 1

    .prologue
    .line 61
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->setContentView(I)V

    .line 62
    iget-object v0, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lnet/tsz/afinal/FinalBitmap;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalBitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->fb:Lnet/tsz/afinal/FinalBitmap;

    .line 63
    return-void
.end method

.method protected BroadcastReceive(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 276
    return-void
.end method

.method protected DataInit()V
    .locals 6

    .prologue
    .line 110
    new-instance v0, Lcom/cai88/tools/adapter/LotteryOpenlistAdapter;

    iget-object v1, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->list:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/cai88/tools/adapter/LotteryOpenlistAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->adapter:Lcom/cai88/tools/adapter/LotteryOpenlistAdapter;

    .line 111
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->loadData(I)V

    .line 112
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->timer:Ljava/util/Timer;

    .line 113
    iget-object v0, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/cai88/tools/shishicai/LotteryOpenActivity$3;

    invoke-direct {v1, p0}, Lcom/cai88/tools/shishicai/LotteryOpenActivity$3;-><init>(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)V

    .line 118
    const-wide/16 v2, 0x0

    const-wide/32 v4, 0xea60

    .line 113
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 119
    invoke-direct {p0}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->getHeadImg()V

    .line 120
    return-void
.end method

.method protected Destroy()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->timer:Ljava/util/Timer;

    .line 128
    :cond_0
    return-void
.end method

.method protected ViewInit()V
    .locals 2

    .prologue
    .line 67
    const v0, 0x7f070005

    invoke-virtual {p0, v0}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cai88/tools/view/TopView;

    iput-object v0, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->topView:Lcom/cai88/tools/view/TopView;

    .line 68
    const v0, 0x7f070009

    invoke-virtual {p0, v0}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cai88/tools/view/MyListView;

    iput-object v0, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->listView:Lcom/cai88/tools/view/MyListView;

    .line 69
    new-instance v0, Lcom/cai88/tools/view/LoadMoreView;

    iget-object v1, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cai88/tools/view/LoadMoreView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->loadMoreView:Lcom/cai88/tools/view/LoadMoreView;

    .line 70
    iget-object v0, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->loadMoreView:Lcom/cai88/tools/view/LoadMoreView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cai88/tools/view/LoadMoreView;->setVisible(Z)V

    .line 71
    const v0, 0x7f07000a

    invoke-virtual {p0, v0}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cai88/tools/view/FitImageView;

    iput-object v0, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->headIv:Lcom/cai88/tools/view/FitImageView;

    .line 72
    return-void
.end method

.method protected ViewListen()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->listView:Lcom/cai88/tools/view/MyListView;

    new-instance v1, Lcom/cai88/tools/shishicai/LotteryOpenActivity$1;

    invoke-direct {v1, p0}, Lcom/cai88/tools/shishicai/LotteryOpenActivity$1;-><init>(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)V

    invoke-virtual {v0, v1}, Lcom/cai88/tools/view/MyListView;->setonRefreshListener(Lcom/cai88/tools/view/MyListView$OnRefreshListener;)V

    .line 99
    iget-object v0, p0, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->loadMoreView:Lcom/cai88/tools/view/LoadMoreView;

    new-instance v1, Lcom/cai88/tools/shishicai/LotteryOpenActivity$2;

    invoke-direct {v1, p0}, Lcom/cai88/tools/shishicai/LotteryOpenActivity$2;-><init>(Lcom/cai88/tools/shishicai/LotteryOpenActivity;)V

    invoke-virtual {v0, v1}, Lcom/cai88/tools/view/LoadMoreView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCoder"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 131
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/cai88/tools/shishicai/LotteryOpenActivity;->ExitApp()V

    .line 133
    const/4 v0, 0x1

    .line 135
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
