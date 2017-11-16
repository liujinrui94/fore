.class public Lcom/cai88/tools/shishicai/MainActivity;
.super Lcom/cai88/tools/shishicai/BaseActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MSG_KEY_STARTDISMISS:I = 0x1


# instance fields
.field private bottomChanglong:Landroid/widget/LinearLayout;

.field private bottomHome:Landroid/widget/LinearLayout;

.field private bottomMore:Landroid/widget/LinearLayout;

.field private bottomTubiao:Landroid/widget/LinearLayout;

.field private bottomView:Lcom/cai88/tools/view/HomeBottomView;

.field private changlongView:Landroid/view/View;

.field private chartView:Landroid/view/View;

.field handler:Landroid/os/Handler;

.field private lotteryOpenView:Landroid/view/View;

.field private mainViewFlipper:Landroid/widget/ViewFlipper;

.field private moreView:Landroid/view/View;

.field public selectedIndex:I

.field private startFadeOutAnim:Landroid/view/animation/Animation;

.field private startIv:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/cai88/tools/shishicai/BaseActivity;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/cai88/tools/shishicai/MainActivity;->selectedIndex:I

    .line 52
    new-instance v0, Lcom/cai88/tools/shishicai/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/cai88/tools/shishicai/MainActivity$1;-><init>(Lcom/cai88/tools/shishicai/MainActivity;)V

    iput-object v0, p0, Lcom/cai88/tools/shishicai/MainActivity;->handler:Landroid/os/Handler;

    .line 29
    return-void
.end method

.method private ExitApp()V
    .locals 4

    .prologue
    .line 138
    iget-object v0, p0, Lcom/cai88/tools/shishicai/MainActivity;->context:Landroid/content/Context;

    const-string v1, "\u9000\u51fa"

    const-string v2, "\u60a8\u786e\u8ba4\u8981\u9000\u51fa?"

    new-instance v3, Lcom/cai88/tools/shishicai/MainActivity$3;

    invoke-direct {v3, p0}, Lcom/cai88/tools/shishicai/MainActivity$3;-><init>(Lcom/cai88/tools/shishicai/MainActivity;)V

    invoke-static {v0, v1, v2, v3}, Lcom/cai88/tools/view/DialogView;->createDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/cai88/tools/view/DialogView;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Lcom/cai88/tools/view/DialogView;->show()V

    .line 143
    return-void
.end method

.method static synthetic access$0(Lcom/cai88/tools/shishicai/MainActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/cai88/tools/shishicai/MainActivity;->startIv:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cai88/tools/shishicai/MainActivity;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cai88/tools/shishicai/MainActivity;->startFadeOutAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private dealBottomSelected(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 145
    if-eqz p1, :cond_0

    .line 146
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 147
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 150
    :cond_0
    iput p1, p0, Lcom/cai88/tools/shishicai/MainActivity;->selectedIndex:I

    .line 151
    iget-object v0, p0, Lcom/cai88/tools/shishicai/MainActivity;->mainViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, p1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 152
    iget-object v0, p0, Lcom/cai88/tools/shishicai/MainActivity;->bottomView:Lcom/cai88/tools/view/HomeBottomView;

    invoke-virtual {v0, p1}, Lcom/cai88/tools/view/HomeBottomView;->dealBottomSelected(I)V

    .line 153
    return-void
.end method

.method private initViewFlipper()V
    .locals 5

    .prologue
    .line 107
    iget-object v0, p0, Lcom/cai88/tools/shishicai/MainActivity;->localActivityManager:Landroid/app/LocalActivityManager;

    const-string v1, "LotteryOpenView"

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/cai88/tools/shishicai/MainActivity;->context:Landroid/content/Context;

    const-class v4, Lcom/cai88/tools/shishicai/LotteryOpenActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cai88/tools/shishicai/MainActivity;->lotteryOpenView:Landroid/view/View;

    .line 108
    iget-object v0, p0, Lcom/cai88/tools/shishicai/MainActivity;->localActivityManager:Landroid/app/LocalActivityManager;

    const-string v1, "ChartView"

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/cai88/tools/shishicai/MainActivity;->context:Landroid/content/Context;

    const-class v4, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cai88/tools/shishicai/MainActivity;->chartView:Landroid/view/View;

    .line 109
    iget-object v0, p0, Lcom/cai88/tools/shishicai/MainActivity;->localActivityManager:Landroid/app/LocalActivityManager;

    const-string v1, "ChanglongView"

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/cai88/tools/shishicai/MainActivity;->context:Landroid/content/Context;

    const-class v4, Lcom/cai88/tools/shishicai/ChanglongActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cai88/tools/shishicai/MainActivity;->changlongView:Landroid/view/View;

    .line 110
    iget-object v0, p0, Lcom/cai88/tools/shishicai/MainActivity;->localActivityManager:Landroid/app/LocalActivityManager;

    const-string v1, "MoreView"

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/cai88/tools/shishicai/MainActivity;->context:Landroid/content/Context;

    const-class v4, Lcom/cai88/tools/shishicai/MoreActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cai88/tools/shishicai/MainActivity;->moreView:Landroid/view/View;

    .line 111
    iget-object v0, p0, Lcom/cai88/tools/shishicai/MainActivity;->mainViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/cai88/tools/shishicai/MainActivity;->lotteryOpenView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 112
    iget-object v0, p0, Lcom/cai88/tools/shishicai/MainActivity;->mainViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/cai88/tools/shishicai/MainActivity;->chartView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 113
    iget-object v0, p0, Lcom/cai88/tools/shishicai/MainActivity;->mainViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/cai88/tools/shishicai/MainActivity;->changlongView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 114
    iget-object v0, p0, Lcom/cai88/tools/shishicai/MainActivity;->mainViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/cai88/tools/shishicai/MainActivity;->moreView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 115
    return-void
.end method


# virtual methods
.method protected AppInit()V
    .locals 2

    .prologue
    .line 69
    const-string v0, "018"

    sput-object v0, Lcom/cai88/tools/shishicai/SscApplication;->GameCode:Ljava/lang/String;

    .line 70
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/cai88/tools/shishicai/MainActivity;->setContentView(I)V

    .line 71
    invoke-static {p0}, Lcom/umeng/update/UmengUpdateAgent;->update(Landroid/content/Context;)V

    .line 72
    iget-object v0, p0, Lcom/cai88/tools/shishicai/MainActivity;->context:Landroid/content/Context;

    const/high16 v1, 0x7f040000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/cai88/tools/shishicai/MainActivity;->startFadeOutAnim:Landroid/view/animation/Animation;

    .line 74
    return-void
.end method

.method protected BroadcastReceive(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 176
    return-void
.end method

.method protected DataInit()V
    .locals 4

    .prologue
    .line 118
    iget-object v0, p0, Lcom/cai88/tools/shishicai/MainActivity;->startIv:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/cai88/tools/shishicai/MainActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 120
    return-void
.end method

.method protected Destroy()V
    .locals 1

    .prologue
    .line 123
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onKillProcess(Landroid/content/Context;)V

    .line 124
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 125
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 127
    return-void
.end method

.method protected ViewInit()V
    .locals 1

    .prologue
    .line 77
    const v0, 0x7f070010

    invoke-virtual {p0, v0}, Lcom/cai88/tools/shishicai/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cai88/tools/shishicai/MainActivity;->startIv:Landroid/widget/ImageView;

    .line 78
    const v0, 0x7f07000f

    invoke-virtual {p0, v0}, Lcom/cai88/tools/shishicai/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/cai88/tools/shishicai/MainActivity;->mainViewFlipper:Landroid/widget/ViewFlipper;

    .line 79
    const v0, 0x7f07000e

    invoke-virtual {p0, v0}, Lcom/cai88/tools/shishicai/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cai88/tools/view/HomeBottomView;

    iput-object v0, p0, Lcom/cai88/tools/shishicai/MainActivity;->bottomView:Lcom/cai88/tools/view/HomeBottomView;

    .line 80
    const v0, 0x7f07009a

    invoke-virtual {p0, v0}, Lcom/cai88/tools/shishicai/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cai88/tools/shishicai/MainActivity;->bottomHome:Landroid/widget/LinearLayout;

    .line 81
    const v0, 0x7f07009d

    invoke-virtual {p0, v0}, Lcom/cai88/tools/shishicai/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cai88/tools/shishicai/MainActivity;->bottomTubiao:Landroid/widget/LinearLayout;

    .line 82
    const v0, 0x7f0700a0

    invoke-virtual {p0, v0}, Lcom/cai88/tools/shishicai/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cai88/tools/shishicai/MainActivity;->bottomChanglong:Landroid/widget/LinearLayout;

    .line 83
    const v0, 0x7f0700a3

    invoke-virtual {p0, v0}, Lcom/cai88/tools/shishicai/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cai88/tools/shishicai/MainActivity;->bottomMore:Landroid/widget/LinearLayout;

    .line 84
    invoke-direct {p0}, Lcom/cai88/tools/shishicai/MainActivity;->initViewFlipper()V

    .line 85
    return-void
.end method

.method protected ViewListen()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/cai88/tools/shishicai/MainActivity;->bottomHome:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/cai88/tools/shishicai/MainActivity;->bottomTubiao:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/cai88/tools/shishicai/MainActivity;->bottomChanglong:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/cai88/tools/shishicai/MainActivity;->bottomMore:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/cai88/tools/shishicai/MainActivity;->startIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/cai88/tools/shishicai/MainActivity;->startFadeOutAnim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/cai88/tools/shishicai/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/cai88/tools/shishicai/MainActivity$2;-><init>(Lcom/cai88/tools/shishicai/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 105
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 173
    :goto_0
    return-void

    .line 158
    :sswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cai88/tools/shishicai/MainActivity;->dealBottomSelected(I)V

    goto :goto_0

    .line 161
    :sswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/cai88/tools/shishicai/MainActivity;->dealBottomSelected(I)V

    goto :goto_0

    .line 164
    :sswitch_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/cai88/tools/shishicai/MainActivity;->dealBottomSelected(I)V

    goto :goto_0

    .line 167
    :sswitch_3
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/cai88/tools/shishicai/MainActivity;->dealBottomSelected(I)V

    goto :goto_0

    .line 156
    :sswitch_data_0
    .sparse-switch
        0x7f07009a -> :sswitch_0
        0x7f07009d -> :sswitch_1
        0x7f0700a0 -> :sswitch_2
        0x7f0700a3 -> :sswitch_3
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCoder"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 130
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/cai88/tools/shishicai/MainActivity;->ExitApp()V

    .line 132
    const/4 v0, 0x1

    .line 134
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
