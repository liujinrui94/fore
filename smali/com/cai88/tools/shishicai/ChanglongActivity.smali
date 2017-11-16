.class public Lcom/cai88/tools/shishicai/ChanglongActivity;
.super Lcom/cai88/tools/shishicai/BaseActivity;
.source "ChanglongActivity.java"


# instance fields
.field private adapter:Lcom/cai88/tools/adapter/ChanglongAdapter;

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

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private listView:Lcom/cai88/tools/view/MyListView;

.field private timer:Ljava/util/Timer;

.field private topView:Lcom/cai88/tools/view/TopView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/cai88/tools/shishicai/BaseActivity;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cai88/tools/shishicai/ChanglongActivity;->list:Ljava/util/List;

    .line 40
    new-instance v0, Lcom/cai88/tools/model/BaseDataModel;

    invoke-direct {v0}, Lcom/cai88/tools/model/BaseDataModel;-><init>()V

    iput-object v0, p0, Lcom/cai88/tools/shishicai/ChanglongActivity;->bdModel:Lcom/cai88/tools/model/BaseDataModel;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cai88/tools/shishicai/ChanglongActivity;->timer:Ljava/util/Timer;

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/cai88/tools/shishicai/ChanglongActivity;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/cai88/tools/shishicai/ChanglongActivity;->loadData()V

    return-void
.end method

.method static synthetic access$1(Lcom/cai88/tools/shishicai/ChanglongActivity;)Lcom/cai88/tools/view/MyListView;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cai88/tools/shishicai/ChanglongActivity;->listView:Lcom/cai88/tools/view/MyListView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cai88/tools/shishicai/ChanglongActivity;Lcom/cai88/tools/model/BaseDataModel;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/cai88/tools/shishicai/ChanglongActivity;->bdModel:Lcom/cai88/tools/model/BaseDataModel;

    return-void
.end method

.method static synthetic access$3(Lcom/cai88/tools/shishicai/ChanglongActivity;)Lcom/cai88/tools/model/BaseDataModel;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cai88/tools/shishicai/ChanglongActivity;->bdModel:Lcom/cai88/tools/model/BaseDataModel;

    return-object v0
.end method

.method static synthetic access$4(Lcom/cai88/tools/shishicai/ChanglongActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/cai88/tools/shishicai/ChanglongActivity;->list:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5(Lcom/cai88/tools/shishicai/ChanglongActivity;)Lcom/cai88/tools/adapter/ChanglongAdapter;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cai88/tools/shishicai/ChanglongActivity;->adapter:Lcom/cai88/tools/adapter/ChanglongAdapter;

    return-object v0
.end method

.method private loadData()V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/cai88/tools/shishicai/ChanglongActivity;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 90
    iget-object v0, p0, Lcom/cai88/tools/shishicai/ChanglongActivity;->param:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 91
    iget-object v0, p0, Lcom/cai88/tools/shishicai/ChanglongActivity;->param:Ljava/util/HashMap;

    const-string v1, "type"

    sget-object v2, Lcom/cai88/tools/shishicai/SscApplication;->GameCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/cai88/tools/shishicai/ChanglongActivity;->param:Ljava/util/HashMap;

    const-string v1, "ps"

    const-string v2, "20"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    new-instance v0, Lcom/cai88/tools/shishicai/ChanglongActivity$3;

    invoke-direct {v0, p0}, Lcom/cai88/tools/shishicai/ChanglongActivity$3;-><init>(Lcom/cai88/tools/shishicai/ChanglongActivity;)V

    .line 98
    new-instance v1, Lcom/cai88/tools/shishicai/ChanglongActivity$4;

    invoke-direct {v1, p0}, Lcom/cai88/tools/shishicai/ChanglongActivity$4;-><init>(Lcom/cai88/tools/shishicai/ChanglongActivity;)V

    .line 104
    new-instance v2, Lcom/cai88/tools/shishicai/ChanglongActivity$5;

    invoke-direct {v2, p0}, Lcom/cai88/tools/shishicai/ChanglongActivity$5;-><init>(Lcom/cai88/tools/shishicai/ChanglongActivity;)V

    .line 93
    invoke-static {v0, v1, v2}, Lcom/cai88/tools/asynctask/AsyncTaskUtils;->doAsync(Lcom/cai88/tools/asynctask/CallEarliest;Lcom/cai88/tools/asynctask/Callable;Lcom/cai88/tools/asynctask/Callback;)V

    .line 195
    return-void
.end method


# virtual methods
.method protected AppInit()V
    .locals 1

    .prologue
    .line 46
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/cai88/tools/shishicai/ChanglongActivity;->setContentView(I)V

    .line 47
    return-void
.end method

.method protected BroadcastReceive(Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 199
    const-string v0, "changlong_update"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/cai88/tools/shishicai/ChanglongActivity;->loadData()V

    .line 203
    :cond_0
    return-void
.end method

.method protected DataInit()V
    .locals 6

    .prologue
    .line 70
    iget-object v0, p0, Lcom/cai88/tools/shishicai/ChanglongActivity;->topView:Lcom/cai88/tools/view/TopView;

    const-string v1, "\u6700\u65b0\u4e24\u9762\u957f\u9f99"

    invoke-virtual {v0, v1}, Lcom/cai88/tools/view/TopView;->setTitle(Ljava/lang/String;)V

    .line 71
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/cai88/tools/shishicai/ChanglongActivity;->timer:Ljava/util/Timer;

    .line 72
    iget-object v0, p0, Lcom/cai88/tools/shishicai/ChanglongActivity;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/cai88/tools/shishicai/ChanglongActivity$2;

    invoke-direct {v1, p0}, Lcom/cai88/tools/shishicai/ChanglongActivity$2;-><init>(Lcom/cai88/tools/shishicai/ChanglongActivity;)V

    .line 77
    const-wide/16 v2, 0x0

    const-wide/32 v4, 0xea60

    .line 72
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 78
    return-void
.end method

.method protected Destroy()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/cai88/tools/shishicai/ChanglongActivity;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/cai88/tools/shishicai/ChanglongActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cai88/tools/shishicai/ChanglongActivity;->timer:Ljava/util/Timer;

    .line 86
    :cond_0
    return-void
.end method

.method protected ViewInit()V
    .locals 3

    .prologue
    .line 51
    const v0, 0x7f070005

    invoke-virtual {p0, v0}, Lcom/cai88/tools/shishicai/ChanglongActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cai88/tools/view/TopView;

    iput-object v0, p0, Lcom/cai88/tools/shishicai/ChanglongActivity;->topView:Lcom/cai88/tools/view/TopView;

    .line 52
    const v0, 0x7f070009

    invoke-virtual {p0, v0}, Lcom/cai88/tools/shishicai/ChanglongActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cai88/tools/view/MyListView;

    iput-object v0, p0, Lcom/cai88/tools/shishicai/ChanglongActivity;->listView:Lcom/cai88/tools/view/MyListView;

    .line 53
    new-instance v0, Lcom/cai88/tools/adapter/ChanglongAdapter;

    iget-object v1, p0, Lcom/cai88/tools/shishicai/ChanglongActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/cai88/tools/shishicai/ChanglongActivity;->list:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/cai88/tools/adapter/ChanglongAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/cai88/tools/shishicai/ChanglongActivity;->adapter:Lcom/cai88/tools/adapter/ChanglongAdapter;

    .line 54
    iget-object v0, p0, Lcom/cai88/tools/shishicai/ChanglongActivity;->listView:Lcom/cai88/tools/view/MyListView;

    iget-object v1, p0, Lcom/cai88/tools/shishicai/ChanglongActivity;->adapter:Lcom/cai88/tools/adapter/ChanglongAdapter;

    invoke-virtual {v0, v1}, Lcom/cai88/tools/view/MyListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 55
    return-void
.end method

.method protected ViewListen()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cai88/tools/shishicai/ChanglongActivity;->listView:Lcom/cai88/tools/view/MyListView;

    new-instance v1, Lcom/cai88/tools/shishicai/ChanglongActivity$1;

    invoke-direct {v1, p0}, Lcom/cai88/tools/shishicai/ChanglongActivity$1;-><init>(Lcom/cai88/tools/shishicai/ChanglongActivity;)V

    invoke-virtual {v0, v1}, Lcom/cai88/tools/view/MyListView;->setonRefreshListener(Lcom/cai88/tools/view/MyListView$OnRefreshListener;)V

    .line 65
    return-void
.end method
