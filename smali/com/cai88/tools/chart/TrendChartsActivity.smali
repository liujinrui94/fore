.class public abstract Lcom/cai88/tools/chart/TrendChartsActivity;
.super Lcom/cai88/tools/shishicai/BaseActivity;
.source "TrendChartsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MSG_KEY_LOADDATA:I = 0x3

.field private static final MSG_KEY_REMAINTIME:I = 0x1

.field private static final MSG_KEY_RENDERVIEW:I = 0x2

.field public static THEME_1:Ljava/lang/String;

.field public static THEME_2:Ljava/lang/String;

.field public static THEME_3:Ljava/lang/String;

.field public static THEME_4:Ljava/lang/String;

.field public static THEME_5:Ljava/lang/String;


# instance fields
.field protected bdModel:Lcom/cai88/tools/model/BaseDataModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cai88/tools/model/BaseDataModel",
            "<",
            "Lcom/cai88/tools/model/CurrentGameData;",
            ">;"
        }
    .end annotation
.end field

.field protected calAvgOmissionNum:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected calDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field protected calMaxDoubleNum:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected calMaxOmissionNum:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected calRepeatedNum:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected changePlayCode:Z

.field protected chartLeftViewLp:Landroid/widget/FrameLayout$LayoutParams;

.field private chartLoadFailedPnl:Landroid/widget/LinearLayout;

.field protected chartOptViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Lcom/cai88/tools/chart/ChartOptView;",
            ">;"
        }
    .end annotation
.end field

.field protected chartRightViewLp:Landroid/widget/FrameLayout$LayoutParams;

.field private chartsDlg:Lcom/cai88/tools/chart/TrendChartsDialog;

.field private chooseInfoPnl:Landroid/widget/LinearLayout;

.field private chooseInfoResTv:Landroid/widget/TextView;

.field private chooseInfoSvPnl:Landroid/widget/LinearLayout;

.field private chooseInfoTitlePnl:Landroid/widget/LinearLayout;

.field protected chooseItemViewLp:Landroid/widget/LinearLayout$LayoutParams;

.field protected choosePnl:Landroid/widget/LinearLayout;

.field protected choosePnl_1:Landroid/widget/LinearLayout;

.field protected choosePnl_2:Landroid/widget/LinearLayout;

.field protected choosePnl_3:Landroid/widget/LinearLayout;

.field private chooseSv:Lcom/cai88/tools/view/HorizontalScrollView4Cai88;

.field protected chooseSvPnl:Landroid/widget/LinearLayout;

.field private chooseTitlePnl:Landroid/widget/LinearLayout;

.field protected chooseTitleTv:Landroid/widget/TextView;

.field protected chooseTitleTv_2:Landroid/widget/TextView;

.field protected chooseTitleTv_3:Landroid/widget/TextView;

.field protected chooseViewLp:Landroid/widget/FrameLayout$LayoutParams;

.field protected circleColor1:I

.field protected circleColor2:I

.field protected circleColorBlue:I

.field protected circleColorBrown:I

.field protected circleColorRed:I

.field private currGameDataLoadding:Z

.field protected dataChooseDisplayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected dataChooseList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private defer:I

.field public detailsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cai88/tools/model/ProxyModel$DetailsListItemModel;",
            ">;"
        }
    .end annotation
.end field

.field protected divLineIvs:[Landroid/widget/ImageView;

.field protected drawLeftView:Lcom/cai88/tools/view/DrawTrendChartsView;

.field protected drawView:Lcom/cai88/tools/view/DrawTrendChartsView;

.field protected drawViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cai88/tools/chart/ChartOptView;",
            ">;"
        }
    .end annotation
.end field

.field private errorTv:Landroid/widget/TextView;

.field protected gameCode:Ljava/lang/String;

.field protected gameName:Ljava/lang/String;

.field protected height:I

.field protected issueList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private issuePnl:Landroid/widget/LinearLayout;

.field private issueTitleTv:Landroid/widget/TextView;

.field private issueTv:Landroid/widget/TextView;

.field private lastRequestTime:J

.field protected leftLp:Landroid/widget/LinearLayout$LayoutParams;

.field protected leftSv:Lcom/cai88/tools/view/VerticalScrollView;

.field private loadCurrGameDataFinsh:Z

.field private loadOmissionDataFinish:Z

.field private lotteryOpenList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cai88/tools/model/LotteryOpenModel;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field private mainChartBasePnl:Landroid/widget/RelativeLayout;

.field private needRefershNow:Z

.field private needRequest:Z

.field protected nowIssue:Ljava/lang/String;

.field private nowIssueCache:Ljava/lang/String;

.field private omissionDataLoadding:Z

.field protected omissionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cai88/tools/model/OmissionModel;",
            ">;"
        }
    .end annotation
.end field

.field protected period:I

.field protected playCode:Ljava/lang/String;

.field protected prePlayCode:Ljava/lang/String;

.field private proxyModel:Lcom/cai88/tools/model/BaseDataModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cai88/tools/model/BaseDataModel",
            "<",
            "Lcom/cai88/tools/model/ProxyModel;",
            ">;"
        }
    .end annotation
.end field

.field private reloadBtn:Landroid/widget/Button;

.field private remainTimeLong:J

.field private remainTimePb:Landroid/widget/ProgressBar;

.field private remainTimeTv:Landroid/widget/TextView;

.field private renderViewTime:Ljava/util/Timer;

.field protected rightHSv:Lcom/cai88/tools/view/HorizontalScrollView4Cai88;

.field protected rightLp:Landroid/widget/LinearLayout$LayoutParams;

.field protected rightVSv:Lcom/cai88/tools/view/VerticalScrollView;

.field private settingPnl:Landroid/widget/LinearLayout;

.field private settingTv:Landroid/widget/TextView;

.field protected showAnalysis:Z

.field protected showLine:Z

.field protected showMissNumber:Z

.field protected tabArray:[Ljava/lang/String;

.field private tabPnl:Landroid/widget/LinearLayout;

.field private tabView:Lcom/cai88/tools/view/TabView;

.field private tagIndex:I

.field protected textColorBlack:I

.field protected textColorGray:I

.field protected textColorRed:I

.field protected textColorWhite:I

.field private timer:Ljava/util/Timer;

.field protected tmpAvgOmissionNum:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected tmpcalMaxDoubleNum:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private topSv:Lcom/cai88/tools/view/HorizontalScrollView4Cai88;

.field protected topSvPnl:Landroid/widget/LinearLayout;

.field private topTabPnl:Landroid/widget/LinearLayout;

.field private topView:Lcom/cai88/tools/view/TopView;

.field protected widthLeft:I

.field protected widthRight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string v0, "theme1"

    sput-object v0, Lcom/cai88/tools/chart/TrendChartsActivity;->THEME_1:Ljava/lang/String;

    .line 65
    const-string v0, "theme2"

    sput-object v0, Lcom/cai88/tools/chart/TrendChartsActivity;->THEME_2:Ljava/lang/String;

    .line 66
    const-string v0, "theme3"

    sput-object v0, Lcom/cai88/tools/chart/TrendChartsActivity;->THEME_3:Ljava/lang/String;

    .line 67
    const-string v0, "theme4"

    sput-object v0, Lcom/cai88/tools/chart/TrendChartsActivity;->THEME_4:Ljava/lang/String;

    .line 68
    const-string v0, "theme5"

    sput-object v0, Lcom/cai88/tools/chart/TrendChartsActivity;->THEME_5:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Lcom/cai88/tools/shishicai/BaseActivity;-><init>()V

    .line 120
    iput-object v3, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->tabArray:[Ljava/lang/String;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->drawViewList:Ljava/util/ArrayList;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->issueList:Ljava/util/ArrayList;

    .line 125
    iput-boolean v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->loadOmissionDataFinish:Z

    .line 126
    iput-boolean v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->loadCurrGameDataFinsh:Z

    .line 127
    iput-boolean v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->currGameDataLoadding:Z

    .line 128
    iput-boolean v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->omissionDataLoadding:Z

    .line 129
    new-instance v0, Lcom/cai88/tools/model/BaseDataModel;

    invoke-direct {v0}, Lcom/cai88/tools/model/BaseDataModel;-><init>()V

    iput-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->bdModel:Lcom/cai88/tools/model/BaseDataModel;

    .line 130
    new-instance v0, Lcom/cai88/tools/model/BaseDataModel;

    invoke-direct {v0}, Lcom/cai88/tools/model/BaseDataModel;-><init>()V

    iput-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->proxyModel:Lcom/cai88/tools/model/BaseDataModel;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->omissionList:Ljava/util/ArrayList;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->lotteryOpenList:Ljava/util/ArrayList;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->detailsList:Ljava/util/ArrayList;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->calDataList:Ljava/util/ArrayList;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->calRepeatedNum:Ljava/util/ArrayList;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->calAvgOmissionNum:Ljava/util/ArrayList;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->calMaxOmissionNum:Ljava/util/ArrayList;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->calMaxDoubleNum:Ljava/util/ArrayList;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->tmpcalMaxDoubleNum:Ljava/util/ArrayList;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->tmpAvgOmissionNum:Ljava/util/ArrayList;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->dataChooseList:Ljava/util/ArrayList;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->dataChooseDisplayList:Ljava/util/ArrayList;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->chartOptViewList:Ljava/util/ArrayList;

    .line 149
    iput v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->tagIndex:I

    .line 150
    iput-boolean v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->changePlayCode:Z

    .line 151
    const-string v0, ""

    iput-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->prePlayCode:Ljava/lang/String;

    .line 152
    const-string v0, ""

    iput-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->playCode:Ljava/lang/String;

    .line 153
    const-string v0, ""

    iput-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->gameName:Ljava/lang/String;

    .line 155
    const-string v0, ""

    iput-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->nowIssueCache:Ljava/lang/String;

    .line 156
    const-string v0, ""

    iput-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->nowIssue:Ljava/lang/String;

    .line 158
    iput-wide v4, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->remainTimeLong:J

    .line 159
    iput-object v3, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->timer:Ljava/util/Timer;

    .line 160
    iput-object v3, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->renderViewTime:Ljava/util/Timer;

    .line 161
    iput-boolean v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->needRequest:Z

    .line 162
    iput-wide v4, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->lastRequestTime:J

    .line 165
    const/16 v0, 0x32

    iput v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->period:I

    .line 166
    iput-boolean v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->showLine:Z

    .line 167
    iput-boolean v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->showMissNumber:Z

    .line 168
    iput-boolean v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->showAnalysis:Z

    .line 170
    iput v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->widthLeft:I

    .line 171
    iput v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->widthRight:I

    .line 172
    iput v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->height:I

    .line 173
    iput v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->textColorWhite:I

    .line 174
    iput v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->textColorBlack:I

    .line 175
    iput v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->textColorGray:I

    .line 176
    iput v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->textColorRed:I

    .line 177
    const v0, -0x1986ee

    iput v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->circleColorRed:I

    .line 178
    const v0, -0x8c4510

    iput v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->circleColorBlue:I

    .line 179
    const v0, -0x439ba

    iput v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->circleColorBrown:I

    .line 180
    iget v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->circleColorRed:I

    iput v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->circleColor1:I

    .line 181
    const v0, -0x7039e9

    iput v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->circleColor2:I

    .line 696
    const/16 v0, 0x1388

    iput v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->defer:I

    .line 697
    iput-boolean v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->needRefershNow:Z

    .line 698
    new-instance v0, Lcom/cai88/tools/chart/TrendChartsActivity$1;

    invoke-direct {v0, p0}, Lcom/cai88/tools/chart/TrendChartsActivity$1;-><init>(Lcom/cai88/tools/chart/TrendChartsActivity;)V

    iput-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->mHandler:Landroid/os/Handler;

    .line 60
    return-void
.end method

.method static synthetic access$0(Lcom/cai88/tools/chart/TrendChartsActivity;)Z
    .locals 1

    .prologue
    .line 649
    invoke-direct {p0}, Lcom/cai88/tools/chart/TrendChartsActivity;->setRemainTimer()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/cai88/tools/chart/TrendChartsActivity;Z)V
    .locals 0

    .prologue
    .line 161
    iput-boolean p1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->needRequest:Z

    return-void
.end method

.method static synthetic access$10(Lcom/cai88/tools/chart/TrendChartsActivity;)I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->tagIndex:I

    return v0
.end method

.method static synthetic access$11(Lcom/cai88/tools/chart/TrendChartsActivity;I)V
    .locals 0

    .prologue
    .line 945
    invoke-direct {p0, p1}, Lcom/cai88/tools/chart/TrendChartsActivity;->initDataView(I)V

    return-void
.end method

.method static synthetic access$12(Lcom/cai88/tools/chart/TrendChartsActivity;)V
    .locals 0

    .prologue
    .line 483
    invoke-direct {p0}, Lcom/cai88/tools/chart/TrendChartsActivity;->requestOmissionData()V

    return-void
.end method

.method static synthetic access$13(Lcom/cai88/tools/chart/TrendChartsActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$14(Lcom/cai88/tools/chart/TrendChartsActivity;I)V
    .locals 0

    .prologue
    .line 149
    iput p1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->tagIndex:I

    return-void
.end method

.method static synthetic access$15(Lcom/cai88/tools/chart/TrendChartsActivity;)Lcom/cai88/tools/view/HorizontalScrollView4Cai88;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->topSv:Lcom/cai88/tools/view/HorizontalScrollView4Cai88;

    return-object v0
.end method

.method static synthetic access$16(Lcom/cai88/tools/chart/TrendChartsActivity;)Lcom/cai88/tools/view/HorizontalScrollView4Cai88;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->chooseSv:Lcom/cai88/tools/view/HorizontalScrollView4Cai88;

    return-object v0
.end method

.method static synthetic access$17(Lcom/cai88/tools/chart/TrendChartsActivity;Z)V
    .locals 0

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->currGameDataLoadding:Z

    return-void
.end method

.method static synthetic access$18(Lcom/cai88/tools/chart/TrendChartsActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 593
    invoke-direct {p0, p1}, Lcom/cai88/tools/chart/TrendChartsActivity;->setTipShow(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$19(Lcom/cai88/tools/chart/TrendChartsActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->chartLoadFailedPnl:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cai88/tools/chart/TrendChartsActivity;)Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->needRequest:Z

    return v0
.end method

.method static synthetic access$20(Lcom/cai88/tools/chart/TrendChartsActivity;)Lcom/google/gson/Gson;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->gson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method static synthetic access$21(Lcom/cai88/tools/chart/TrendChartsActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->nowIssueCache:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$22(Lcom/cai88/tools/chart/TrendChartsActivity;J)V
    .locals 0

    .prologue
    .line 158
    iput-wide p1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->remainTimeLong:J

    return-void
.end method

.method static synthetic access$23(Lcom/cai88/tools/chart/TrendChartsActivity;I)V
    .locals 0

    .prologue
    .line 696
    iput p1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->defer:I

    return-void
.end method

.method static synthetic access$24(Lcom/cai88/tools/chart/TrendChartsActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->issueTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$25(Lcom/cai88/tools/chart/TrendChartsActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->remainTimeTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$26(Lcom/cai88/tools/chart/TrendChartsActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->remainTimePb:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$27(Lcom/cai88/tools/chart/TrendChartsActivity;Z)V
    .locals 0

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->loadCurrGameDataFinsh:Z

    return-void
.end method

.method static synthetic access$28(Lcom/cai88/tools/chart/TrendChartsActivity;Z)V
    .locals 0

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->omissionDataLoadding:Z

    return-void
.end method

.method static synthetic access$29(Lcom/cai88/tools/chart/TrendChartsActivity;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->pgView:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$3(Lcom/cai88/tools/chart/TrendChartsActivity;)Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->currGameDataLoadding:Z

    return v0
.end method

.method static synthetic access$30(Lcom/cai88/tools/chart/TrendChartsActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->pgView:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$31(Lcom/cai88/tools/chart/TrendChartsActivity;Lcom/cai88/tools/model/BaseDataModel;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->proxyModel:Lcom/cai88/tools/model/BaseDataModel;

    return-void
.end method

.method static synthetic access$32(Lcom/cai88/tools/chart/TrendChartsActivity;)Lcom/cai88/tools/model/BaseDataModel;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->proxyModel:Lcom/cai88/tools/model/BaseDataModel;

    return-object v0
.end method

.method static synthetic access$33(Lcom/cai88/tools/chart/TrendChartsActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->lotteryOpenList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$34(Lcom/cai88/tools/chart/TrendChartsActivity;Ljava/lang/String;Lcom/cai88/tools/model/LotteryOpenModel;)Lcom/cai88/tools/model/OmissionModel;
    .locals 1

    .prologue
    .line 597
    invoke-direct {p0, p1, p2}, Lcom/cai88/tools/chart/TrendChartsActivity;->genrateOmissionData(Ljava/lang/String;Lcom/cai88/tools/model/LotteryOpenModel;)Lcom/cai88/tools/model/OmissionModel;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$35(Lcom/cai88/tools/chart/TrendChartsActivity;Z)V
    .locals 0

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->loadOmissionDataFinish:Z

    return-void
.end method

.method static synthetic access$36(Lcom/cai88/tools/chart/TrendChartsActivity;)Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->loadOmissionDataFinish:Z

    return v0
.end method

.method static synthetic access$37(Lcom/cai88/tools/chart/TrendChartsActivity;)Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->omissionDataLoadding:Z

    return v0
.end method

.method static synthetic access$38(Lcom/cai88/tools/chart/TrendChartsActivity;)Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->loadCurrGameDataFinsh:Z

    return v0
.end method

.method static synthetic access$39(Lcom/cai88/tools/chart/TrendChartsActivity;)J
    .locals 2

    .prologue
    .line 158
    iget-wide v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->remainTimeLong:J

    return-wide v0
.end method

.method static synthetic access$4(Lcom/cai88/tools/chart/TrendChartsActivity;)Z
    .locals 1

    .prologue
    .line 697
    iget-boolean v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->needRefershNow:Z

    return v0
.end method

.method static synthetic access$40(Lcom/cai88/tools/chart/TrendChartsActivity;)V
    .locals 0

    .prologue
    .line 1081
    invoke-direct {p0}, Lcom/cai88/tools/chart/TrendChartsActivity;->generateChooseInfoPnl()V

    return-void
.end method

.method static synthetic access$5(Lcom/cai88/tools/chart/TrendChartsActivity;)J
    .locals 2

    .prologue
    .line 162
    iget-wide v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->lastRequestTime:J

    return-wide v0
.end method

.method static synthetic access$6(Lcom/cai88/tools/chart/TrendChartsActivity;)I
    .locals 1

    .prologue
    .line 696
    iget v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->defer:I

    return v0
.end method

.method static synthetic access$7(Lcom/cai88/tools/chart/TrendChartsActivity;J)V
    .locals 0

    .prologue
    .line 162
    iput-wide p1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->lastRequestTime:J

    return-void
.end method

.method static synthetic access$8(Lcom/cai88/tools/chart/TrendChartsActivity;Z)V
    .locals 0

    .prologue
    .line 697
    iput-boolean p1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->needRefershNow:Z

    return-void
.end method

.method static synthetic access$9(Lcom/cai88/tools/chart/TrendChartsActivity;)V
    .locals 0

    .prologue
    .line 399
    invoke-direct {p0}, Lcom/cai88/tools/chart/TrendChartsActivity;->requestCurrentGameData()V

    return-void
.end method

.method private dealRemainTimer()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 668
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->timer:Ljava/util/Timer;

    .line 669
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/cai88/tools/chart/TrendChartsActivity$15;

    invoke-direct {v1, p0}, Lcom/cai88/tools/chart/TrendChartsActivity$15;-><init>(Lcom/cai88/tools/chart/TrendChartsActivity;)V

    .line 677
    const-wide/16 v4, 0x3e8

    .line 669
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 679
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->renderViewTime:Ljava/util/Timer;

    .line 680
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->renderViewTime:Ljava/util/Timer;

    new-instance v1, Lcom/cai88/tools/chart/TrendChartsActivity$16;

    invoke-direct {v1, p0}, Lcom/cai88/tools/chart/TrendChartsActivity$16;-><init>(Lcom/cai88/tools/chart/TrendChartsActivity;)V

    .line 693
    const-wide/16 v4, 0xa

    .line 680
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 694
    return-void
.end method

.method private generateChooseInfoPnl()V
    .locals 7

    .prologue
    .line 1082
    const-string v2, ""

    .line 1083
    .local v2, "resStr":Ljava/lang/String;
    iget-object v5, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->dataChooseList:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->dataChooseList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 1084
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->dataChooseList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v0, v5, :cond_1

    .line 1096
    .end local v0    # "i":I
    :cond_0
    iget-object v5, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->chooseInfoResTv:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1097
    return-void

    .line 1085
    .restart local v0    # "i":I
    :cond_1
    iget-object v5, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->dataChooseList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 1086
    .local v3, "tmpArr":[Ljava/lang/String;
    iget-object v5, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->dataChooseDisplayList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 1087
    .local v4, "tmpArr2":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "<font color=\"#d24c0a\">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1088
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v5, v3

    if-lt v1, v5, :cond_2

    .line 1093
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "</font>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1084
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1089
    :cond_2
    aget-object v5, v3, v1

    invoke-static {v5}, Lcom/cai88/tools/uitl/Common;->strIsBlank(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1090
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&nbsp;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1088
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private genrateOmissionData(Ljava/lang/String;Lcom/cai88/tools/model/LotteryOpenModel;)Lcom/cai88/tools/model/OmissionModel;
    .locals 21
    .param p1, "gameCode"    # Ljava/lang/String;
    .param p2, "lotteryOpen"    # Lcom/cai88/tools/model/LotteryOpenModel;

    .prologue
    .line 598
    new-instance v4, Lcom/cai88/tools/model/OmissionModel;

    invoke-direct {v4}, Lcom/cai88/tools/model/OmissionModel;-><init>()V

    .line 599
    .local v4, "modelTemp":Lcom/cai88/tools/model/OmissionModel;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/cai88/tools/model/LotteryOpenModel;->issue:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v4, Lcom/cai88/tools/model/OmissionModel;->issue:Ljava/lang/String;

    .line 600
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/cai88/tools/model/LotteryOpenModel;->code:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v4, Lcom/cai88/tools/model/OmissionModel;->code:Ljava/lang/String;

    .line 602
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/cai88/tools/model/LotteryOpenModel;->code:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "+"

    const-string v20, "#"

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "|"

    const-string v20, "#"

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    .line 603
    .local v17, "tmpCode":Ljava/lang/String;
    const-string v7, ""

    .local v7, "q1Str":Ljava/lang/String;
    const-string v9, ""

    .local v9, "q2Str":Ljava/lang/String;
    const-string v11, ""

    .local v11, "q3Str":Ljava/lang/String;
    const-string v13, ""

    .local v13, "q4Str":Ljava/lang/String;
    const-string v15, ""

    .local v15, "q5Str":Ljava/lang/String;
    const-string v2, ""

    .line 604
    .local v2, "c":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/cai88/tools/model/LotteryOpenModel;->code:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 605
    .local v16, "tmp":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    if-lez v18, :cond_0

    const/16 v18, 0x0

    aget-object v6, v16, v18

    .line 606
    .local v6, "q1":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1

    const/16 v18, 0x1

    aget-object v8, v16, v18

    .line 607
    .local v8, "q2":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_2

    const/16 v18, 0x2

    aget-object v10, v16, v18

    .line 608
    .local v10, "q3":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_3

    const/16 v18, 0x3

    aget-object v12, v16, v18

    .line 609
    .local v12, "q4":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_4

    const/16 v18, 0x4

    aget-object v14, v16, v18

    .line 611
    .local v14, "q5":Ljava/lang/String;
    :goto_4
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5
    const/16 v18, 0xa

    move/from16 v0, v18

    if-lt v3, v0, :cond_5

    .line 620
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v4, Lcom/cai88/tools/model/OmissionModel;->c:Ljava/lang/String;

    .line 621
    iget-object v0, v4, Lcom/cai88/tools/model/OmissionModel;->c:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    iget-object v0, v4, Lcom/cai88/tools/model/OmissionModel;->c:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v4, Lcom/cai88/tools/model/OmissionModel;->c:Ljava/lang/String;

    .line 622
    return-object v4

    .line 605
    .end local v3    # "i":I
    .end local v6    # "q1":Ljava/lang/String;
    .end local v8    # "q2":Ljava/lang/String;
    .end local v10    # "q3":Ljava/lang/String;
    .end local v12    # "q4":Ljava/lang/String;
    .end local v14    # "q5":Ljava/lang/String;
    :cond_0
    const-string v6, "-"

    goto/16 :goto_0

    .line 606
    .restart local v6    # "q1":Ljava/lang/String;
    :cond_1
    const-string v8, "-"

    goto/16 :goto_1

    .line 607
    .restart local v8    # "q2":Ljava/lang/String;
    :cond_2
    const-string v10, "-"

    goto :goto_2

    .line 608
    .restart local v10    # "q3":Ljava/lang/String;
    :cond_3
    const-string v12, "-"

    goto :goto_3

    .line 609
    .restart local v12    # "q4":Ljava/lang/String;
    :cond_4
    const-string v14, "-"

    goto :goto_4

    .line 612
    .restart local v3    # "i":I
    .restart local v14    # "q5":Ljava/lang/String;
    :cond_5
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 613
    .local v5, "num":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    const-string v18, "0"

    :goto_6
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 614
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    const-string v18, "0"

    :goto_7
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 615
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    const-string v18, "0"

    :goto_8
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 616
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    const-string v18, "0"

    :goto_9
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 617
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    const-string v18, "0"

    :goto_a
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 618
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/cai88/tools/model/LotteryOpenModel;->code:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_b

    const-string v18, "0"

    :goto_b
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 611
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    .line 613
    :cond_6
    const-string v18, "-"

    goto/16 :goto_6

    .line 614
    :cond_7
    const-string v18, "-"

    goto/16 :goto_7

    .line 615
    :cond_8
    const-string v18, "-"

    goto/16 :goto_8

    .line 616
    :cond_9
    const-string v18, "-"

    goto :goto_9

    .line 617
    :cond_a
    const-string v18, "-"

    goto :goto_a

    .line 618
    :cond_b
    const-string v18, "-"

    goto :goto_b
.end method

.method private initDataView(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 946
    invoke-virtual {p0}, Lcom/cai88/tools/chart/TrendChartsActivity;->clearView()V

    .line 947
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->omissionList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->omissionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->bdModel:Lcom/cai88/tools/model/BaseDataModel;

    if-eqz v0, :cond_0

    .line 948
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->bdModel:Lcom/cai88/tools/model/BaseDataModel;

    iget-object v0, v0, Lcom/cai88/tools/model/BaseDataModel;->model:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->bdModel:Lcom/cai88/tools/model/BaseDataModel;

    iget-object v0, v0, Lcom/cai88/tools/model/BaseDataModel;->model:Ljava/lang/Object;

    check-cast v0, Lcom/cai88/tools/model/CurrentGameData;

    iget-object v0, v0, Lcom/cai88/tools/model/CurrentGameData;->entity:Lcom/cai88/tools/model/CurrentGameItem;

    if-nez v0, :cond_2

    .line 949
    :cond_0
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->chartLoadFailedPnl:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 965
    :cond_1
    :goto_0
    return-void

    .line 951
    :cond_2
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->chartLoadFailedPnl:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 952
    invoke-virtual {p0, p1}, Lcom/cai88/tools/chart/TrendChartsActivity;->dealRecordTypeChoose(I)V

    .line 953
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->leftSv:Lcom/cai88/tools/view/VerticalScrollView;

    if-eqz v0, :cond_1

    .line 956
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->leftSv:Lcom/cai88/tools/view/VerticalScrollView;

    new-instance v1, Lcom/cai88/tools/chart/TrendChartsActivity$19;

    invoke-direct {v1, p0}, Lcom/cai88/tools/chart/TrendChartsActivity$19;-><init>(Lcom/cai88/tools/chart/TrendChartsActivity;)V

    invoke-virtual {v0, v1}, Lcom/cai88/tools/view/VerticalScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private requestCurrentGameData()V
    .locals 4

    .prologue
    .line 400
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 401
    .local v0, "mapParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "type"

    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->gameCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    new-instance v1, Lcom/cai88/tools/chart/TrendChartsActivity$9;

    invoke-direct {v1, p0}, Lcom/cai88/tools/chart/TrendChartsActivity$9;-><init>(Lcom/cai88/tools/chart/TrendChartsActivity;)V

    .line 408
    new-instance v2, Lcom/cai88/tools/chart/TrendChartsActivity$10;

    invoke-direct {v2, p0, v0}, Lcom/cai88/tools/chart/TrendChartsActivity$10;-><init>(Lcom/cai88/tools/chart/TrendChartsActivity;Ljava/util/HashMap;)V

    .line 415
    new-instance v3, Lcom/cai88/tools/chart/TrendChartsActivity$11;

    invoke-direct {v3, p0}, Lcom/cai88/tools/chart/TrendChartsActivity$11;-><init>(Lcom/cai88/tools/chart/TrendChartsActivity;)V

    .line 402
    invoke-static {v1, v2, v3}, Lcom/cai88/tools/asynctask/AsyncTaskUtils;->doAsync(Lcom/cai88/tools/asynctask/CallEarliest;Lcom/cai88/tools/asynctask/Callable;Lcom/cai88/tools/asynctask/Callback;)V

    .line 478
    return-void
.end method

.method private requestOmissionData()V
    .locals 8

    .prologue
    .line 484
    iget-object v5, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->bdModel:Lcom/cai88/tools/model/BaseDataModel;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->bdModel:Lcom/cai88/tools/model/BaseDataModel;

    iget-object v5, v5, Lcom/cai88/tools/model/BaseDataModel;->model:Ljava/lang/Object;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->bdModel:Lcom/cai88/tools/model/BaseDataModel;

    iget-object v5, v5, Lcom/cai88/tools/model/BaseDataModel;->model:Ljava/lang/Object;

    check-cast v5, Lcom/cai88/tools/model/CurrentGameData;

    iget-object v5, v5, Lcom/cai88/tools/model/CurrentGameData;->entity:Lcom/cai88/tools/model/CurrentGameItem;

    if-nez v5, :cond_1

    .line 485
    :cond_0
    invoke-direct {p0}, Lcom/cai88/tools/chart/TrendChartsActivity;->requestCurrentGameData()V

    .line 591
    :goto_0
    return-void

    .line 488
    :cond_1
    iget v5, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->period:I

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->bdModel:Lcom/cai88/tools/model/BaseDataModel;

    iget-object v5, v5, Lcom/cai88/tools/model/BaseDataModel;->model:Ljava/lang/Object;

    check-cast v5, Lcom/cai88/tools/model/CurrentGameData;

    iget-object v5, v5, Lcom/cai88/tools/model/CurrentGameData;->entity:Lcom/cai88/tools/model/CurrentGameItem;

    iget-object v5, v5, Lcom/cai88/tools/model/CurrentGameItem;->issue:Ljava/lang/String;

    iget-object v6, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->gameCode:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/cai88/tools/uitl/IssueHelper;->shortIssue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .line 489
    .local v0, "issueAmount":I
    :goto_1
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 490
    .local v2, "obj1":Lcom/google/gson/JsonObject;
    const-string v5, "action"

    const-string v6, "Omission"

    invoke-virtual {v2, v5, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const-string v5, "gameName"

    iget-object v6, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->gameCode:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const-string v5, "issueAmount"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 495
    .local v3, "obj2":Lcom/google/gson/JsonObject;
    const-string v5, "action"

    const-string v6, "list"

    invoke-virtual {v3, v5, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const-string v5, "type"

    iget-object v6, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->gameCode:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const-string v5, "ps"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 499
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 500
    .local v1, "json":Lcom/google/gson/JsonObject;
    const-string v5, "omissionList"

    invoke-virtual {v1, v5, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 501
    const-string v5, "lotteryOpenHistoryList"

    invoke-virtual {v1, v5, v3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 504
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 505
    .local v4, "paramMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "actions"

    invoke-virtual {v1}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    new-instance v5, Lcom/cai88/tools/chart/TrendChartsActivity$12;

    invoke-direct {v5, p0}, Lcom/cai88/tools/chart/TrendChartsActivity$12;-><init>(Lcom/cai88/tools/chart/TrendChartsActivity;)V

    .line 514
    new-instance v6, Lcom/cai88/tools/chart/TrendChartsActivity$13;

    invoke-direct {v6, p0, v4}, Lcom/cai88/tools/chart/TrendChartsActivity$13;-><init>(Lcom/cai88/tools/chart/TrendChartsActivity;Ljava/util/HashMap;)V

    .line 521
    new-instance v7, Lcom/cai88/tools/chart/TrendChartsActivity$14;

    invoke-direct {v7, p0}, Lcom/cai88/tools/chart/TrendChartsActivity$14;-><init>(Lcom/cai88/tools/chart/TrendChartsActivity;)V

    .line 507
    invoke-static {v5, v6, v7}, Lcom/cai88/tools/asynctask/AsyncTaskUtils;->doAsync(Lcom/cai88/tools/asynctask/CallEarliest;Lcom/cai88/tools/asynctask/Callable;Lcom/cai88/tools/asynctask/Callback;)V

    goto/16 :goto_0

    .line 488
    .end local v0    # "issueAmount":I
    .end local v1    # "json":Lcom/google/gson/JsonObject;
    .end local v2    # "obj1":Lcom/google/gson/JsonObject;
    .end local v3    # "obj2":Lcom/google/gson/JsonObject;
    .end local v4    # "paramMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    iget v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->period:I

    goto :goto_1
.end method

.method private setRemainTimer()Z
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 650
    const/4 v0, 0x0

    .line 651
    .local v0, "needReq":Z
    iget-wide v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->remainTimeLong:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->remainTimeLong:J

    .line 652
    iget-wide v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->remainTimeLong:J

    cmp-long v1, v1, v5

    if-gtz v1, :cond_0

    .line 653
    const/4 v0, 0x1

    .line 654
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->remainTimeTv:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 655
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->issueTv:Landroid/widget/TextView;

    const-string v2, "\u671f\u6b21\u83b7\u53d6\u4e2d..."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 660
    :goto_0
    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->remainTimePb:Landroid/widget/ProgressBar;

    iget-wide v3, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->remainTimeLong:J

    cmp-long v1, v3, v5

    if-gtz v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 661
    return v0

    .line 657
    :cond_0
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->remainTimeTv:Landroid/widget/TextView;

    iget-wide v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->remainTimeLong:J

    invoke-static {v2, v3}, Lcom/cai88/tools/uitl/TimeHelper;->GetRemainTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 660
    :cond_1
    iget-wide v3, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->remainTimeLong:J

    long-to-int v1, v3

    goto :goto_1
.end method

.method private setTipShow(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 594
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->errorTv:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/cai88/tools/uitl/Common;->strIsBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u6682\u65e0\u8d70\u52bf\u6570\u636e"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    return-void

    .line 594
    :cond_0
    const-string v0, "\u7f51\u7edc\u4e0d\u7ed9\u529b \u8bf7\u68c0\u67e5\u7f51\u7edc"

    goto :goto_0
.end method


# virtual methods
.method protected AppInit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 188
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/cai88/tools/chart/TrendChartsActivity;->setContentView(I)V

    .line 189
    sget-object v0, Lcom/cai88/tools/shishicai/SscApplication;->GameCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->gameCode:Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->gameCode:Ljava/lang/String;

    const-string v1, "018"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    const-string v0, "018-05-01"

    iput-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->playCode:Ljava/lang/String;

    .line 192
    const-string v0, "\u91cd\u5e86\u65f6\u65f6\u5f69"

    iput-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->gameName:Ljava/lang/String;

    .line 198
    :cond_0
    :goto_0
    const/high16 v0, 0x42480000    # 50.0f

    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/cai88/tools/uitl/Common;->GetD(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->widthLeft:I

    .line 199
    const/high16 v0, 0x41d00000    # 26.0f

    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/cai88/tools/uitl/Common;->GetD(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->height:I

    .line 201
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->widthLeft:I

    iget v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->height:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->leftLp:Landroid/widget/LinearLayout$LayoutParams;

    .line 202
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->widthLeft:I

    iget v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->height:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->rightLp:Landroid/widget/LinearLayout$LayoutParams;

    .line 203
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->chartRightViewLp:Landroid/widget/FrameLayout$LayoutParams;

    .line 204
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->chartLeftViewLp:Landroid/widget/FrameLayout$LayoutParams;

    .line 205
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v1, 0x420c0000    # 35.0f

    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/cai88/tools/uitl/Common;->GetD(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {v0, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->chooseViewLp:Landroid/widget/FrameLayout$LayoutParams;

    .line 206
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->height:I

    invoke-direct {v0, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->chooseItemViewLp:Landroid/widget/LinearLayout$LayoutParams;

    .line 208
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/cai88/tools/uitl/Common;->GetCache4TrendChartsPeriod(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->period:I

    .line 209
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/cai88/tools/uitl/Common;->GetCache4TrendChartsShowMissNumber(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->showMissNumber:Z

    .line 210
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/cai88/tools/uitl/Common;->GetCache4TrendChartsShowLine(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->showLine:Z

    .line 211
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/cai88/tools/uitl/Common;->GetCache4TrendChartsShowanalysis(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->showAnalysis:Z

    .line 213
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f050000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->textColorWhite:I

    .line 214
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->textColorBlack:I

    .line 215
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->textColorGray:I

    .line 216
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->textColorRed:I

    .line 217
    return-void

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->gameCode:Ljava/lang/String;

    const-string v1, "006"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const-string v0, "006-05-01"

    iput-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->playCode:Ljava/lang/String;

    .line 195
    const-string v0, "\u6c5f\u897f\u65f6\u65f6\u5f69"

    iput-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->gameName:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method protected DataInit()V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->topView:Lcom/cai88/tools/view/TopView;

    const-string v1, "\u53f7\u7801\u8d70\u52bf"

    invoke-virtual {v0, v1}, Lcom/cai88/tools/view/TopView;->setTitle(Ljava/lang/String;)V

    .line 392
    invoke-direct {p0}, Lcom/cai88/tools/chart/TrendChartsActivity;->dealRemainTimer()V

    .line 393
    return-void
.end method

.method protected Destroy()V
    .locals 4

    .prologue
    .line 925
    :try_start_0
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->timer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 926
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 927
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->timer:Ljava/util/Timer;

    .line 929
    :cond_0
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->renderViewTime:Ljava/util/Timer;

    if-eqz v1, :cond_1

    .line 930
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->renderViewTime:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 931
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->renderViewTime:Ljava/util/Timer;

    .line 933
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->loadOmissionDataFinish:Z

    .line 934
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->loadCurrGameDataFinsh:Z

    .line 935
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->omissionDataLoadding:Z

    .line 936
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->currGameDataLoadding:Z

    .line 937
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->chartsDlg:Lcom/cai88/tools/chart/TrendChartsDialog;

    .line 938
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 942
    :goto_0
    return-void

    .line 939
    :catch_0
    move-exception v0

    .line 940
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "iws"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TrendChartsActivity Destroy e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected ViewInit()V
    .locals 5

    .prologue
    const v4, 0x7f05001a

    const v3, 0x7f050017

    .line 221
    const v1, 0x7f07003e

    invoke-virtual {p0, v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->mainChartBasePnl:Landroid/widget/RelativeLayout;

    .line 222
    const v1, 0x7f070005

    invoke-virtual {p0, v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cai88/tools/view/TopView;

    iput-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->topView:Lcom/cai88/tools/view/TopView;

    .line 223
    const v1, 0x7f070054

    invoke-virtual {p0, v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->issuePnl:Landroid/widget/LinearLayout;

    .line 224
    const v1, 0x7f070027

    invoke-virtual {p0, v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->issueTv:Landroid/widget/TextView;

    .line 225
    const v1, 0x7f070055

    invoke-virtual {p0, v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->remainTimeTv:Landroid/widget/TextView;

    .line 226
    const v1, 0x7f070057

    invoke-virtual {p0, v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->tabPnl:Landroid/widget/LinearLayout;

    .line 227
    const v1, 0x7f07001c

    invoke-virtual {p0, v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->settingPnl:Landroid/widget/LinearLayout;

    .line 228
    const v1, 0x7f070058

    invoke-virtual {p0, v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->settingTv:Landroid/widget/TextView;

    .line 229
    const v1, 0x7f070061

    invoke-virtual {p0, v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->issueTitleTv:Landroid/widget/TextView;

    .line 230
    const v1, 0x7f070056

    invoke-virtual {p0, v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->remainTimePb:Landroid/widget/ProgressBar;

    .line 231
    const v1, 0x7f07005a

    invoke-virtual {p0, v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cai88/tools/view/TabView;

    iput-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->tabView:Lcom/cai88/tools/view/TabView;

    .line 233
    const v1, 0x7f070060

    invoke-virtual {p0, v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->topTabPnl:Landroid/widget/LinearLayout;

    .line 234
    const v1, 0x7f070063

    invoke-virtual {p0, v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cai88/tools/view/HorizontalScrollView4Cai88;

    iput-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->topSv:Lcom/cai88/tools/view/HorizontalScrollView4Cai88;

    .line 235
    const v1, 0x7f070064

    invoke-virtual {p0, v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->topSvPnl:Landroid/widget/LinearLayout;

    .line 236
    const v1, 0x7f070066

    invoke-virtual {p0, v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cai88/tools/view/VerticalScrollView;

    iput-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->leftSv:Lcom/cai88/tools/view/VerticalScrollView;

    .line 237
    const v1, 0x7f070067

    invoke-virtual {p0, v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cai88/tools/view/DrawTrendChartsView;

    iput-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->drawLeftView:Lcom/cai88/tools/view/DrawTrendChartsView;

    .line 238
    const v1, 0x7f07006a

    invoke-virtual {p0, v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cai88/tools/view/HorizontalScrollView4Cai88;

    iput-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->rightHSv:Lcom/cai88/tools/view/HorizontalScrollView4Cai88;

    .line 239
    const v1, 0x7f070069

    invoke-virtual {p0, v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cai88/tools/view/VerticalScrollView;

    iput-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->rightVSv:Lcom/cai88/tools/view/VerticalScrollView;

    .line 240
    const v1, 0x7f07006b

    invoke-virtual {p0, v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cai88/tools/view/DrawTrendChartsView;

    iput-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->drawView:Lcom/cai88/tools/view/DrawTrendChartsView;

    .line 241
    const v1, 0x7f07003f

    invoke-virtual {p0, v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->choosePnl:Landroid/widget/LinearLayout;

    .line 242
    const v1, 0x7f070040

    invoke-virtual {p0, v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->chooseTitlePnl:Landroid/widget/LinearLayout;

    .line 243
    const v1, 0x7f070049

    invoke-virtual {p0, v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->choosePnl_1:Landroid/widget/LinearLayout;

    .line 244
    const v1, 0x7f07004b

    invoke-virtual {p0, v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->choosePnl_2:Landroid/widget/LinearLayout;

    .line 245
    const v1, 0x7f07004d

    invoke-virtual {p0, v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->choosePnl_3:Landroid/widget/LinearLayout;

    .line 246
    const v1, 0x7f070041

    invoke-virtual {p0, v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->chooseTitleTv:Landroid/widget/TextView;

    .line 247
    const v1, 0x7f070043

    invoke-virtual {p0, v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->chooseTitleTv_2:Landroid/widget/TextView;

    .line 248
    const v1, 0x7f070045

    invoke-virtual {p0, v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->chooseTitleTv_3:Landroid/widget/TextView;

    .line 249
    const v1, 0x7f070047

    invoke-virtual {p0, v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cai88/tools/view/HorizontalScrollView4Cai88;

    iput-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->chooseSv:Lcom/cai88/tools/view/HorizontalScrollView4Cai88;

    .line 250
    const v1, 0x7f070048

    invoke-virtual {p0, v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->chooseSvPnl:Landroid/widget/LinearLayout;

    .line 252
    const v1, 0x7f07004e

    invoke-virtual {p0, v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->chooseInfoPnl:Landroid/widget/LinearLayout;

    .line 253
    const v1, 0x7f07004f

    invoke-virtual {p0, v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->chooseInfoTitlePnl:Landroid/widget/LinearLayout;

    .line 254
    const v1, 0x7f070052

    invoke-virtual {p0, v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->chooseInfoSvPnl:Landroid/widget/LinearLayout;

    .line 255
    const v1, 0x7f070053

    invoke-virtual {p0, v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->chooseInfoResTv:Landroid/widget/TextView;

    .line 258
    const v1, 0x7f07005d

    invoke-virtual {p0, v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->chartLoadFailedPnl:Landroid/widget/LinearLayout;

    .line 259
    const v1, 0x7f07005e

    invoke-virtual {p0, v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->errorTv:Landroid/widget/TextView;

    .line 260
    const v1, 0x7f07005f

    invoke-virtual {p0, v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->reloadBtn:Landroid/widget/Button;

    .line 262
    const/4 v0, 0x0

    .line 263
    .local v0, "divIndex":I
    const/16 v1, 0xb

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->divLineIvs:[Landroid/widget/ImageView;

    .line 265
    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->divLineIvs:[Landroid/widget/ImageView;

    add-int/lit8 v0, v0, 0x1

    const v1, 0x7f070059

    invoke-virtual {p0, v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    .line 266
    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->divLineIvs:[Landroid/widget/ImageView;

    add-int/lit8 v0, v0, 0x1

    const v1, 0x7f07005b

    invoke-virtual {p0, v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    .line 267
    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->divLineIvs:[Landroid/widget/ImageView;

    add-int/lit8 v0, v0, 0x1

    const v1, 0x7f070062

    invoke-virtual {p0, v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    .line 268
    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->divLineIvs:[Landroid/widget/ImageView;

    add-int/lit8 v0, v0, 0x1

    const v1, 0x7f070065

    invoke-virtual {p0, v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    .line 269
    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->divLineIvs:[Landroid/widget/ImageView;

    add-int/lit8 v0, v0, 0x1

    const v1, 0x7f070068

    invoke-virtual {p0, v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    .line 270
    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->divLineIvs:[Landroid/widget/ImageView;

    add-int/lit8 v0, v0, 0x1

    const v1, 0x7f070046

    invoke-virtual {p0, v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    .line 271
    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->divLineIvs:[Landroid/widget/ImageView;

    add-int/lit8 v0, v0, 0x1

    const v1, 0x7f070042

    invoke-virtual {p0, v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    .line 272
    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->divLineIvs:[Landroid/widget/ImageView;

    add-int/lit8 v0, v0, 0x1

    const v1, 0x7f070044

    invoke-virtual {p0, v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    .line 273
    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->divLineIvs:[Landroid/widget/ImageView;

    add-int/lit8 v0, v0, 0x1

    const v1, 0x7f07004a

    invoke-virtual {p0, v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    .line 274
    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->divLineIvs:[Landroid/widget/ImageView;

    add-int/lit8 v0, v0, 0x1

    const v1, 0x7f07004c

    invoke-virtual {p0, v1}, Lcom/cai88/tools/chart/TrendChartsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    .line 277
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->mainChartBasePnl:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 278
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->tabView:Lcom/cai88/tools/view/TabView;

    const-string v2, "trendchart"

    invoke-virtual {v1, v2}, Lcom/cai88/tools/view/TabView;->changeTheme(Ljava/lang/String;)V

    .line 280
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->issuePnl:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 281
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->settingTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 282
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->topTabPnl:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 283
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->chooseTitlePnl:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 284
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->chooseInfoTitlePnl:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 285
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->remainTimePb:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02002b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 287
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->issueTitleTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->leftLp:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->chooseTitleTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->leftLp:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    invoke-virtual {p0}, Lcom/cai88/tools/chart/TrendChartsActivity;->clearView()V

    .line 291
    invoke-virtual {p0}, Lcom/cai88/tools/chart/TrendChartsActivity;->initTabInfo()V

    .line 292
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->tabView:Lcom/cai88/tools/view/TabView;

    invoke-virtual {v1}, Lcom/cai88/tools/view/TabView;->emptyData()V

    .line 293
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->tabArray:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->tabArray:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->tabView:Lcom/cai88/tools/view/TabView;

    const-string v2, "trendchart"

    invoke-virtual {v1, v2}, Lcom/cai88/tools/view/TabView;->changeTheme(Ljava/lang/String;)V

    .line 295
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->tabView:Lcom/cai88/tools/view/TabView;

    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->tabArray:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/cai88/tools/view/TabView;->setData([Ljava/lang/String;)V

    .line 296
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->tabView:Lcom/cai88/tools/view/TabView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/cai88/tools/view/TabView;->setSelected(I)V

    .line 298
    :cond_0
    return-void
.end method

.method protected ViewListen()V
    .locals 3

    .prologue
    .line 302
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->topView:Lcom/cai88/tools/view/TopView;

    const v1, 0x7f020018

    new-instance v2, Lcom/cai88/tools/chart/TrendChartsActivity$2;

    invoke-direct {v2, p0}, Lcom/cai88/tools/chart/TrendChartsActivity$2;-><init>(Lcom/cai88/tools/chart/TrendChartsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/cai88/tools/view/TopView;->showOtherBtn(ILcom/cai88/tools/view/TopView$OnOtherListener;)V

    .line 315
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->tabView:Lcom/cai88/tools/view/TabView;

    new-instance v1, Lcom/cai88/tools/chart/TrendChartsActivity$3;

    invoke-direct {v1, p0}, Lcom/cai88/tools/chart/TrendChartsActivity$3;-><init>(Lcom/cai88/tools/chart/TrendChartsActivity;)V

    invoke-virtual {v0, v1}, Lcom/cai88/tools/view/TabView;->setMyClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->rightHSv:Lcom/cai88/tools/view/HorizontalScrollView4Cai88;

    new-instance v1, Lcom/cai88/tools/chart/TrendChartsActivity$4;

    invoke-direct {v1, p0}, Lcom/cai88/tools/chart/TrendChartsActivity$4;-><init>(Lcom/cai88/tools/chart/TrendChartsActivity;)V

    invoke-virtual {v0, v1}, Lcom/cai88/tools/view/HorizontalScrollView4Cai88;->setOnScrollChangedListener(Lcom/cai88/tools/listener/OnScrollChangedListener;)V

    .line 343
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->rightVSv:Lcom/cai88/tools/view/VerticalScrollView;

    new-instance v1, Lcom/cai88/tools/chart/TrendChartsActivity$5;

    invoke-direct {v1, p0}, Lcom/cai88/tools/chart/TrendChartsActivity$5;-><init>(Lcom/cai88/tools/chart/TrendChartsActivity;)V

    invoke-virtual {v0, v1}, Lcom/cai88/tools/view/VerticalScrollView;->setOnScrollChangedListener(Lcom/cai88/tools/listener/OnScrollChangedListener;)V

    .line 352
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->topSv:Lcom/cai88/tools/view/HorizontalScrollView4Cai88;

    new-instance v1, Lcom/cai88/tools/chart/TrendChartsActivity$6;

    invoke-direct {v1, p0}, Lcom/cai88/tools/chart/TrendChartsActivity$6;-><init>(Lcom/cai88/tools/chart/TrendChartsActivity;)V

    invoke-virtual {v0, v1}, Lcom/cai88/tools/view/HorizontalScrollView4Cai88;->setOnScrollChangedListener(Lcom/cai88/tools/listener/OnScrollChangedListener;)V

    .line 364
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->leftSv:Lcom/cai88/tools/view/VerticalScrollView;

    new-instance v1, Lcom/cai88/tools/chart/TrendChartsActivity$7;

    invoke-direct {v1, p0}, Lcom/cai88/tools/chart/TrendChartsActivity$7;-><init>(Lcom/cai88/tools/chart/TrendChartsActivity;)V

    invoke-virtual {v0, v1}, Lcom/cai88/tools/view/VerticalScrollView;->setOnScrollChangedListener(Lcom/cai88/tools/listener/OnScrollChangedListener;)V

    .line 373
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->chooseSv:Lcom/cai88/tools/view/HorizontalScrollView4Cai88;

    new-instance v1, Lcom/cai88/tools/chart/TrendChartsActivity$8;

    invoke-direct {v1, p0}, Lcom/cai88/tools/chart/TrendChartsActivity$8;-><init>(Lcom/cai88/tools/chart/TrendChartsActivity;)V

    invoke-virtual {v0, v1}, Lcom/cai88/tools/view/HorizontalScrollView4Cai88;->setOnScrollChangedListener(Lcom/cai88/tools/listener/OnScrollChangedListener;)V

    .line 385
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->settingPnl:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->reloadBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    return-void
.end method

.method protected clearView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 629
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->topSv:Lcom/cai88/tools/view/HorizontalScrollView4Cai88;

    invoke-virtual {v0, v1, v1}, Lcom/cai88/tools/view/HorizontalScrollView4Cai88;->scrollTo(II)V

    .line 630
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->leftSv:Lcom/cai88/tools/view/VerticalScrollView;

    invoke-virtual {v0, v1, v1}, Lcom/cai88/tools/view/VerticalScrollView;->scrollTo(II)V

    .line 631
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->rightHSv:Lcom/cai88/tools/view/HorizontalScrollView4Cai88;

    invoke-virtual {v0, v1, v1}, Lcom/cai88/tools/view/HorizontalScrollView4Cai88;->scrollTo(II)V

    .line 632
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->rightVSv:Lcom/cai88/tools/view/VerticalScrollView;

    invoke-virtual {v0, v1, v1}, Lcom/cai88/tools/view/VerticalScrollView;->scrollTo(II)V

    .line 634
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->drawViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 635
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->issueList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 637
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->topSvPnl:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 639
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->calAvgOmissionNum:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 640
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->calMaxDoubleNum:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 641
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->calMaxOmissionNum:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 642
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->calRepeatedNum:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 643
    return-void
.end method

.method protected abstract dealRecordTypeChoose(I)V
.end method

.method protected generateChoosePnl(IIZ)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "w"    # I
    .param p3, "uniqueChoose"    # Z

    .prologue
    const/4 v7, 0x0

    .line 1022
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->choosePnl:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1023
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->chooseItemViewLp:Landroid/widget/LinearLayout$LayoutParams;

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1024
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->dataChooseList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->dataChooseList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->dataChooseList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    move v2, v7

    .line 1027
    .local v2, "chooseType":I
    :goto_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->dataChooseList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v0, v0

    if-lt v6, v0, :cond_2

    .line 1079
    .end local v2    # "chooseType":I
    .end local v6    # "i":I
    :cond_0
    return-void

    :cond_1
    move v2, p1

    .line 1026
    goto :goto_0

    .line 1028
    .restart local v2    # "chooseType":I
    .restart local v6    # "i":I
    :cond_2
    new-instance v4, Lcom/cai88/tools/chart/ChartOptView;

    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->context:Landroid/content/Context;

    invoke-direct {v4, v0}, Lcom/cai88/tools/chart/ChartOptView;-><init>(Landroid/content/Context;)V

    .line 1029
    .local v4, "item":Lcom/cai88/tools/chart/ChartOptView;
    move v3, v6

    .line 1030
    .local v3, "chooseIndex":I
    const-string v1, "-1"

    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->dataChooseList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ""

    :goto_2
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->chooseItemViewLp:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4, v0, v1}, Lcom/cai88/tools/chart/ChartOptView;->setDataWithoutLine(Ljava/lang/String;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1031
    iget v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->textColorRed:I

    invoke-virtual {v4, v0}, Lcom/cai88/tools/chart/ChartOptView;->setTextColor(I)V

    .line 1033
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->dataChooseList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v1, v0, v6

    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->dataChooseDisplayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1034
    const/4 v0, 0x1

    invoke-virtual {p0, v4, v0}, Lcom/cai88/tools/chart/TrendChartsActivity;->toogleChooseCoin(Lcom/cai88/tools/chart/ChartOptView;Z)V

    .line 1039
    :goto_3
    new-instance v0, Lcom/cai88/tools/chart/TrendChartsActivity$20;

    move-object v1, p0

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/cai88/tools/chart/TrendChartsActivity$20;-><init>(Lcom/cai88/tools/chart/TrendChartsActivity;IILcom/cai88/tools/chart/ChartOptView;Z)V

    invoke-virtual {v4, v0}, Lcom/cai88/tools/chart/ChartOptView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1072
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->chartOptViewList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->chartOptViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1073
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->chartOptViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cai88/tools/chart/ChartOptView;

    aput-object v4, v0, v6

    .line 1076
    :cond_3
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->choosePnl_1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1027
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1030
    :cond_4
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->dataChooseDisplayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v6

    goto :goto_2

    .line 1036
    :cond_5
    invoke-virtual {p0, v4, v7}, Lcom/cai88/tools/chart/TrendChartsActivity;->toogleChooseCoin(Lcom/cai88/tools/chart/ChartOptView;Z)V

    goto :goto_3
.end method

.method protected generateParam(ZZZZ)Lorg/json/JSONObject;
    .locals 4
    .param p1, "drawLeft"    # Z
    .param p2, "showLine"    # Z
    .param p3, "showOpeningTips"    # Z
    .param p4, "showMissNumber"    # Z

    .prologue
    const/4 v1, 0x0

    .line 992
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 994
    .local v0, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "drawLeft"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 995
    const-string v2, "showLine"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 996
    const-string v2, "showOpeningTips"

    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 997
    const-string v2, "showMissNumber"

    invoke-virtual {v0, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 998
    const-string v2, "showAnalysis"

    iget-boolean v3, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->showAnalysis:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->calDataList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->calDataList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 999
    const-string v1, "gameCode"

    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->gameCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1000
    const-string v1, "playCode"

    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->playCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1001
    const-string v1, "height"

    iget v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->height:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1002
    if-eqz p1, :cond_1

    .line 1003
    const-string v1, "width"

    iget v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->widthLeft:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1007
    :goto_0
    const-string v1, "drawHeadLineSingle"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1008
    const-string v1, "openingTipString"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1011
    :goto_1
    return-object v0

    .line 1005
    :cond_1
    const-string v1, "width"

    iget v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->widthRight:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1009
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method protected generateTopScrollView([Ljava/lang/String;I)V
    .locals 7
    .param p1, "topArray"    # [Ljava/lang/String;
    .param p2, "width"    # I

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 851
    if-eqz p1, :cond_0

    array-length v3, p1

    if-gtz v3, :cond_2

    .line 852
    :cond_0
    iget-object v3, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->topTabPnl:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 853
    iget-object v3, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->divLineIvs:[Landroid/widget/ImageView;

    aget-object v3, v3, v5

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 864
    :cond_1
    return-void

    .line 855
    :cond_2
    iget-object v3, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->topTabPnl:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 856
    iget-object v3, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->divLineIvs:[Landroid/widget/ImageView;

    aget-object v3, v3, v5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 857
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->height:I

    invoke-direct {v1, p2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 858
    .local v1, "lParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 859
    new-instance v2, Lcom/cai88/tools/chart/ChartOptView;

    iget-object v3, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->gameCode:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/cai88/tools/chart/ChartOptView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 860
    .local v2, "view":Lcom/cai88/tools/chart/ChartOptView;
    aget-object v3, p1, v0

    invoke-virtual {v2, v3, v1}, Lcom/cai88/tools/chart/ChartOptView;->setData(Ljava/lang/String;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 861
    iget-object v3, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->topSvPnl:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 858
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected generateTopScrollView([Ljava/lang/String;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 6
    .param p1, "topArray"    # [Ljava/lang/String;
    .param p2, "lParams"    # Landroid/widget/LinearLayout$LayoutParams;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 833
    if-eqz p1, :cond_0

    array-length v2, p1

    if-gtz v2, :cond_2

    .line 834
    :cond_0
    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->topTabPnl:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 835
    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->divLineIvs:[Landroid/widget/ImageView;

    aget-object v2, v2, v4

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 845
    :cond_1
    return-void

    .line 837
    :cond_2
    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->topTabPnl:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 838
    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->divLineIvs:[Landroid/widget/ImageView;

    aget-object v2, v2, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 839
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 840
    new-instance v1, Lcom/cai88/tools/chart/ChartOptView;

    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->gameCode:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/cai88/tools/chart/ChartOptView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 841
    .local v1, "view":Lcom/cai88/tools/chart/ChartOptView;
    aget-object v2, p1, v0

    invoke-virtual {v1, v2, p2}, Lcom/cai88/tools/chart/ChartOptView;->setData(Ljava/lang/String;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 842
    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->topSvPnl:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 839
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public varargs getMinNum([[Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p1, "array"    # [[Ljava/lang/String;

    .prologue
    .line 968
    const/4 v6, 0x0

    aget-object v5, p1, v6

    .line 969
    .local v5, "tmpArray":[Ljava/lang/String;
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    array-length v6, p1

    if-lt v3, v6, :cond_0

    .line 979
    return-object v5

    .line 970
    :cond_0
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v6, v5

    if-lt v4, v6, :cond_1

    .line 969
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 971
    :cond_1
    const v0, 0xf423f

    .local v0, "a":I
    const v1, 0xf423f

    .line 972
    .local v1, "b":I
    :try_start_0
    aget-object v6, v5, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 973
    :goto_2
    :try_start_1
    aget-object v6, p1, v3

    aget-object v6, v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 974
    :goto_3
    if-gt v0, v1, :cond_2

    move v2, v0

    .line 975
    .local v2, "c":I
    :goto_4
    const v6, 0xf423f

    if-ne v2, v6, :cond_3

    const-string v6, "-"

    :goto_5
    aput-object v6, v5, v4

    .line 970
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v2    # "c":I
    :cond_2
    move v2, v1

    .line 974
    goto :goto_4

    .line 975
    .restart local v2    # "c":I
    :cond_3
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    .line 973
    .end local v2    # "c":I
    :catch_0
    move-exception v6

    goto :goto_3

    .line 972
    :catch_1
    move-exception v6

    goto :goto_2
.end method

.method protected initChooseData(I)[Ljava/lang/String;
    .locals 3
    .param p1, "length"    # I

    .prologue
    .line 1100
    new-array v1, p1, [Ljava/lang/String;

    .line 1101
    .local v1, "tmp":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 1104
    return-object v1

    .line 1102
    :cond_0
    const-string v2, ""

    aput-object v2, v1, v0

    .line 1101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected abstract initTabInfo()V
.end method

.method protected isZhiShu(I)Z
    .locals 2
    .param p1, "num"    # I

    .prologue
    const/4 v0, 0x1

    .line 1015
    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    const/16 v1, 0xd

    if-ne p1, v1, :cond_1

    .line 1018
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected needOpeningTips()Z
    .locals 11

    .prologue
    const/4 v6, 0x0

    .line 734
    const-wide/16 v3, 0x0

    .local v3, "nowIssueInt":J
    const-wide/16 v1, 0x0

    .line 736
    .local v1, "lastIssueInt":J
    :try_start_0
    iget-object v5, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->nowIssue:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 737
    iget-object v5, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->bdModel:Lcom/cai88/tools/model/BaseDataModel;

    iget-object v5, v5, Lcom/cai88/tools/model/BaseDataModel;->model:Ljava/lang/Object;

    check-cast v5, Lcom/cai88/tools/model/CurrentGameData;

    iget-object v5, v5, Lcom/cai88/tools/model/CurrentGameData;->entity:Lcom/cai88/tools/model/CurrentGameItem;

    iget-object v7, v5, Lcom/cai88/tools/model/CurrentGameItem;->list:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->bdModel:Lcom/cai88/tools/model/BaseDataModel;

    iget-object v5, v5, Lcom/cai88/tools/model/BaseDataModel;->model:Ljava/lang/Object;

    check-cast v5, Lcom/cai88/tools/model/CurrentGameData;

    iget-object v5, v5, Lcom/cai88/tools/model/CurrentGameData;->entity:Lcom/cai88/tools/model/CurrentGameItem;

    iget-object v5, v5, Lcom/cai88/tools/model/CurrentGameItem;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cai88/tools/model/LotteryOpenModel;

    iget-object v5, v5, Lcom/cai88/tools/model/LotteryOpenModel;->issue:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 741
    :goto_0
    const-wide/16 v7, 0x1

    add-long/2addr v7, v1

    cmp-long v5, v3, v7

    if-nez v5, :cond_0

    move v5, v6

    .line 753
    :goto_1
    return v5

    .line 738
    :catch_0
    move-exception v0

    .line 739
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "iws"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "NeedOpeningTips parseint e:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 744
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v5, "018"

    iget-object v7, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->gameCode:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 745
    const-wide/16 v7, 0x3e8

    rem-long v7, v1, v7

    iget-object v5, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->gameCode:Ljava/lang/String;

    invoke-static {v5}, Lcom/cai88/tools/uitl/IssueHelper;->getMaxIssue(Ljava/lang/String;)I

    move-result v5

    int-to-long v9, v5

    cmp-long v5, v7, v9

    if-nez v5, :cond_2

    move v5, v6

    .line 746
    goto :goto_1

    .line 749
    :cond_1
    const-wide/16 v7, 0x64

    rem-long v7, v1, v7

    iget-object v5, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->gameCode:Ljava/lang/String;

    invoke-static {v5}, Lcom/cai88/tools/uitl/IssueHelper;->getMaxIssue(Ljava/lang/String;)I

    move-result v5

    int-to-long v9, v5

    cmp-long v5, v7, v9

    if-nez v5, :cond_2

    move v5, v6

    .line 750
    goto :goto_1

    .line 753
    :cond_2
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 868
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 897
    :goto_0
    return-void

    .line 870
    :sswitch_0
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->chartsDlg:Lcom/cai88/tools/chart/TrendChartsDialog;

    if-nez v0, :cond_0

    .line 871
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->gameCode:Ljava/lang/String;

    new-instance v2, Lcom/cai88/tools/chart/TrendChartsActivity$17;

    invoke-direct {v2, p0}, Lcom/cai88/tools/chart/TrendChartsActivity$17;-><init>(Lcom/cai88/tools/chart/TrendChartsActivity;)V

    .line 883
    new-instance v3, Lcom/cai88/tools/chart/TrendChartsActivity$18;

    invoke-direct {v3, p0}, Lcom/cai88/tools/chart/TrendChartsActivity$18;-><init>(Lcom/cai88/tools/chart/TrendChartsActivity;)V

    .line 871
    invoke-static {v0, v1, v2, v3}, Lcom/cai88/tools/chart/TrendChartsDialog;->createDialog(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/cai88/tools/chart/TrendChartsDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->chartsDlg:Lcom/cai88/tools/chart/TrendChartsDialog;

    .line 889
    :cond_0
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->chartsDlg:Lcom/cai88/tools/chart/TrendChartsDialog;

    invoke-virtual {v0}, Lcom/cai88/tools/chart/TrendChartsDialog;->show()V

    goto :goto_0

    .line 892
    :sswitch_1
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 868
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f07001c -> :sswitch_0
        0x7f07005f -> :sswitch_1
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 916
    invoke-super {p0}, Lcom/cai88/tools/shishicai/BaseActivity;->onResume()V

    .line 917
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->drawView:Lcom/cai88/tools/view/DrawTrendChartsView;

    invoke-virtual {v0}, Lcom/cai88/tools/view/DrawTrendChartsView;->reDraw()V

    .line 918
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->drawLeftView:Lcom/cai88/tools/view/DrawTrendChartsView;

    invoke-virtual {v0}, Lcom/cai88/tools/view/DrawTrendChartsView;->reDraw()V

    .line 919
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->pgView:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/cai88/tools/view/ProgressView;->dismissProgress(Landroid/app/ProgressDialog;)V

    .line 920
    return-void
.end method

.method protected reloadData()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1139
    sget-object v0, Lcom/cai88/tools/shishicai/SscApplication;->GameCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->gameCode:Ljava/lang/String;

    .line 1140
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->gameCode:Ljava/lang/String;

    const-string v1, "018"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1141
    const-string v0, "018-05-01"

    iput-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->playCode:Ljava/lang/String;

    .line 1142
    const-string v0, "\u91cd\u5e86\u65f6\u65f6\u5f69"

    iput-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->gameName:Ljava/lang/String;

    .line 1147
    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->needRefershNow:Z

    .line 1148
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1149
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1150
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1151
    return-void

    .line 1143
    :cond_1
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->gameCode:Ljava/lang/String;

    const-string v1, "006"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1144
    const-string v0, "006-05-01"

    iput-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->playCode:Ljava/lang/String;

    .line 1145
    const-string v0, "\u6c5f\u897f\u65f6\u65f6\u5f69"

    iput-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->gameName:Ljava/lang/String;

    goto :goto_0
.end method

.method protected resetCalculationData(I)V
    .locals 4
    .param p1, "lineCount"    # I

    .prologue
    const/4 v3, 0x0

    .line 761
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->calRepeatedNum:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 762
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->calAvgOmissionNum:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 763
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->calMaxOmissionNum:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 764
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->calMaxDoubleNum:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 765
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->tmpcalMaxDoubleNum:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 767
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 775
    return-void

    .line 768
    :cond_0
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->calRepeatedNum:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 769
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->calAvgOmissionNum:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 770
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->calMaxOmissionNum:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->calMaxDoubleNum:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 772
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->tmpcalMaxDoubleNum:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->tmpAvgOmissionNum:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected resetChoosePnl()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    .line 1119
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->choosePnl_1:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1120
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->choosePnl_2:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1121
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->choosePnl_3:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1122
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->choosePnl_2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1123
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->choosePnl_3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1124
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->chooseTitleTv_2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1125
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->chooseTitleTv_3:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1126
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->divLineIvs:[Landroid/widget/ImageView;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1127
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->divLineIvs:[Landroid/widget/ImageView;

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1128
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->divLineIvs:[Landroid/widget/ImageView;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1129
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->divLineIvs:[Landroid/widget/ImageView;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1130
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->chooseTitleTv:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->widthLeft:I

    iget-object v3, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->choosePnl_1:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1131
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->chooseTitleTv_2:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->widthLeft:I

    iget-object v3, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->choosePnl_1:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1132
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->chooseTitleTv_3:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->widthLeft:I

    iget-object v3, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->choosePnl_1:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1134
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->chooseTitleTv:Landroid/widget/TextView;

    const-string v1, "\u9009\u53f7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1136
    return-void
.end method

.method protected setCalData()V
    .locals 5

    .prologue
    .line 1108
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->calAvgOmissionNum:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1112
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->calDataList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->calRepeatedNum:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1113
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->calDataList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->calAvgOmissionNum:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1114
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->calDataList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->calMaxOmissionNum:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1115
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->calDataList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->calMaxDoubleNum:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1116
    return-void

    .line 1109
    :cond_0
    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->calAvgOmissionNum:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->calAvgOmissionNum:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v3, v1

    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->calRepeatedNum:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v1, v4

    div-float v1, v3, v1

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->rint(D)D

    move-result-wide v3

    double-to-int v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected setCalculationData(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4
    .param p1, "curr"    # Ljava/lang/String;
    .param p2, "pre"    # Ljava/lang/String;
    .param p3, "pos"    # I
    .param p4, "issueSize"    # I

    .prologue
    const/4 v3, 0x0

    .line 785
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 786
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->calRepeatedNum:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->calRepeatedNum:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 789
    :cond_0
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 790
    const-string v0, "0"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 791
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->tmpcalMaxDoubleNum:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->tmpcalMaxDoubleNum:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 795
    :goto_0
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->tmpcalMaxDoubleNum:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->calMaxDoubleNum:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v1, v0, :cond_1

    .line 796
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->calMaxDoubleNum:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->tmpcalMaxDoubleNum:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, p3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 807
    :cond_1
    :goto_1
    :try_start_0
    invoke-static {p1}, Lcom/cai88/tools/uitl/Common;->strIsBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "-"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 808
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->calMaxOmissionNum:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v1, v0, :cond_2

    .line 809
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->calMaxOmissionNum:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 817
    :cond_2
    :goto_2
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 818
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->calAvgOmissionNum:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->calAvgOmissionNum:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->tmpAvgOmissionNum:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 819
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->tmpAvgOmissionNum:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 827
    :goto_3
    return-void

    .line 793
    :cond_3
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->tmpcalMaxDoubleNum:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 799
    :cond_4
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->tmpcalMaxDoubleNum:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->calMaxDoubleNum:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v1, v0, :cond_5

    .line 800
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->calMaxDoubleNum:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->tmpcalMaxDoubleNum:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, p3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 802
    :cond_5
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->tmpcalMaxDoubleNum:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 822
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->tmpAvgOmissionNum:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 823
    :catch_0
    move-exception v0

    goto :goto_3

    .line 812
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method protected toogleChooseCoin(Lcom/cai88/tools/chart/ChartOptView;Z)V
    .locals 1
    .param p1, "item"    # Lcom/cai88/tools/chart/ChartOptView;
    .param p2, "ischoose"    # Z

    .prologue
    .line 905
    if-eqz p2, :cond_0

    .line 906
    const v0, 0x7f020019

    invoke-virtual {p1, v0}, Lcom/cai88/tools/chart/ChartOptView;->toogleChooseBg(I)V

    .line 907
    iget v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->textColorWhite:I

    invoke-virtual {p1, v0}, Lcom/cai88/tools/chart/ChartOptView;->setTextColor(I)V

    .line 912
    :goto_0
    return-void

    .line 909
    :cond_0
    const v0, 0x7f02001a

    invoke-virtual {p1, v0}, Lcom/cai88/tools/chart/ChartOptView;->toogleChooseBg(I)V

    .line 910
    iget v0, p0, Lcom/cai88/tools/chart/TrendChartsActivity;->textColorRed:I

    invoke-virtual {p1, v0}, Lcom/cai88/tools/chart/ChartOptView;->setTextColor(I)V

    goto :goto_0
.end method
