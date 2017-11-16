.class Lcom/cai88/tools/chart/TrendChartsDialog$Builder;
.super Ljava/lang/Object;
.source "TrendChartsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cai88/tools/chart/TrendChartsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Builder"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private gameCode:Ljava/lang/String;

.field private helpPnl:Landroid/widget/LinearLayout;

.field private helpTv:Landroid/widget/TextView;

.field private message:Ljava/lang/String;

.field private messageTv:Landroid/widget/TextView;

.field private negativeBtn:Landroid/widget/Button;

.field private negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private okBtn:Landroid/widget/Button;

.field private period:I

.field private periodBtnArray:[Landroid/widget/ToggleButton;

.field private positiveBtn:Landroid/widget/Button;

.field private positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private settingPnl:Landroid/widget/LinearLayout;

.field private showAnalysis:Z

.field private showAnalysisBtnArray:[Landroid/widget/ToggleButton;

.field private showLine:Z

.field private showLineBtnArray:[Landroid/widget/ToggleButton;

.field private showMissNumber:Z

.field private showMissNumberBtnArray:[Landroid/widget/ToggleButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/16 v0, 0x14

    iput v0, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->period:I

    .line 54
    iput-boolean v1, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showLine:Z

    .line 55
    iput-boolean v1, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showMissNumber:Z

    .line 56
    iput-boolean v1, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showAnalysis:Z

    .line 59
    iput-object p1, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->context:Landroid/content/Context;

    .line 60
    return-void
.end method

.method static synthetic access$0(Lcom/cai88/tools/chart/TrendChartsDialog$Builder;)[Landroid/widget/ToggleButton;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->periodBtnArray:[Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cai88/tools/chart/TrendChartsDialog$Builder;I)V
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->period:I

    return-void
.end method

.method static synthetic access$10(Lcom/cai88/tools/chart/TrendChartsDialog$Builder;)Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showLine:Z

    return v0
.end method

.method static synthetic access$11(Lcom/cai88/tools/chart/TrendChartsDialog$Builder;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showMissNumber:Z

    return v0
.end method

.method static synthetic access$12(Lcom/cai88/tools/chart/TrendChartsDialog$Builder;)Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showAnalysis:Z

    return v0
.end method

.method static synthetic access$13(Lcom/cai88/tools/chart/TrendChartsDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$14(Lcom/cai88/tools/chart/TrendChartsDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$15(Lcom/cai88/tools/chart/TrendChartsDialog$Builder;)V
    .locals 0

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->initToggleBtnSetting()V

    return-void
.end method

.method static synthetic access$2(Lcom/cai88/tools/chart/TrendChartsDialog$Builder;)[Landroid/widget/ToggleButton;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showLineBtnArray:[Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cai88/tools/chart/TrendChartsDialog$Builder;Z)V
    .locals 0

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showLine:Z

    return-void
.end method

.method static synthetic access$4(Lcom/cai88/tools/chart/TrendChartsDialog$Builder;)[Landroid/widget/ToggleButton;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showAnalysisBtnArray:[Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$5(Lcom/cai88/tools/chart/TrendChartsDialog$Builder;Z)V
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showAnalysis:Z

    return-void
.end method

.method static synthetic access$6(Lcom/cai88/tools/chart/TrendChartsDialog$Builder;)[Landroid/widget/ToggleButton;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showMissNumberBtnArray:[Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$7(Lcom/cai88/tools/chart/TrendChartsDialog$Builder;Z)V
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showMissNumber:Z

    return-void
.end method

.method static synthetic access$8(Lcom/cai88/tools/chart/TrendChartsDialog$Builder;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$9(Lcom/cai88/tools/chart/TrendChartsDialog$Builder;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->period:I

    return v0
.end method

.method private initToggleBtnSetting()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 332
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/cai88/tools/uitl/Common;->GetCache4TrendChartsPeriod(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->period:I

    .line 333
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/cai88/tools/uitl/Common;->GetCache4TrendChartsShowMissNumber(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showMissNumber:Z

    .line 334
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/cai88/tools/uitl/Common;->GetCache4TrendChartsShowLine(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showLine:Z

    .line 335
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/cai88/tools/uitl/Common;->GetCache4TrendChartsShowanalysis(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showAnalysis:Z

    .line 337
    iget v0, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->period:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->periodBtnArray:[Landroid/widget/ToggleButton;

    aget-object v0, v0, v2

    :goto_0
    invoke-direct {p0, v0}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->tooglePeriodBtn(Landroid/widget/ToggleButton;)V

    .line 338
    iget-boolean v0, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showLine:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showLineBtnArray:[Landroid/widget/ToggleButton;

    aget-object v0, v0, v2

    :goto_1
    invoke-direct {p0, v0}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->toogleShowLineBtn(Landroid/widget/ToggleButton;)V

    .line 339
    iget-boolean v0, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showMissNumber:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showMissNumberBtnArray:[Landroid/widget/ToggleButton;

    aget-object v0, v0, v2

    :goto_2
    invoke-direct {p0, v0}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->toogleShowMissNumberBtn(Landroid/widget/ToggleButton;)V

    .line 340
    iget-boolean v0, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showAnalysis:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showAnalysisBtnArray:[Landroid/widget/ToggleButton;

    aget-object v0, v0, v2

    :goto_3
    invoke-direct {p0, v0}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->toogleShowAnalysisBtn(Landroid/widget/ToggleButton;)V

    .line 341
    return-void

    .line 337
    :cond_0
    iget v0, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->period:I

    const/16 v1, 0x32

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->periodBtnArray:[Landroid/widget/ToggleButton;

    aget-object v0, v0, v3

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->period:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->periodBtnArray:[Landroid/widget/ToggleButton;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->periodBtnArray:[Landroid/widget/ToggleButton;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    goto :goto_0

    .line 338
    :cond_3
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showLineBtnArray:[Landroid/widget/ToggleButton;

    aget-object v0, v0, v3

    goto :goto_1

    .line 339
    :cond_4
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showMissNumberBtnArray:[Landroid/widget/ToggleButton;

    aget-object v0, v0, v3

    goto :goto_2

    .line 340
    :cond_5
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showAnalysisBtnArray:[Landroid/widget/ToggleButton;

    aget-object v0, v0, v3

    goto :goto_3
.end method

.method private tooglePeriodBtn(Landroid/widget/ToggleButton;)V
    .locals 4
    .param p1, "paramView"    # Landroid/widget/ToggleButton;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 284
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->periodBtnArray:[Landroid/widget/ToggleButton;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 293
    return-void

    .line 285
    :cond_0
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->periodBtnArray:[Landroid/widget/ToggleButton;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 286
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->periodBtnArray:[Landroid/widget/ToggleButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 287
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->periodBtnArray:[Landroid/widget/ToggleButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 284
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 289
    :cond_1
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->periodBtnArray:[Landroid/widget/ToggleButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 290
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->periodBtnArray:[Landroid/widget/ToggleButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    goto :goto_1
.end method

.method private toogleShowAnalysisBtn(Landroid/widget/ToggleButton;)V
    .locals 4
    .param p1, "paramView"    # Landroid/widget/ToggleButton;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 320
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showAnalysisBtnArray:[Landroid/widget/ToggleButton;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 329
    return-void

    .line 321
    :cond_0
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showAnalysisBtnArray:[Landroid/widget/ToggleButton;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 322
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showAnalysisBtnArray:[Landroid/widget/ToggleButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 323
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showAnalysisBtnArray:[Landroid/widget/ToggleButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 320
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 325
    :cond_1
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showAnalysisBtnArray:[Landroid/widget/ToggleButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 326
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showAnalysisBtnArray:[Landroid/widget/ToggleButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    goto :goto_1
.end method

.method private toogleShowLineBtn(Landroid/widget/ToggleButton;)V
    .locals 4
    .param p1, "paramView"    # Landroid/widget/ToggleButton;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 296
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showLineBtnArray:[Landroid/widget/ToggleButton;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 305
    return-void

    .line 297
    :cond_0
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showLineBtnArray:[Landroid/widget/ToggleButton;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 298
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showLineBtnArray:[Landroid/widget/ToggleButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 299
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showLineBtnArray:[Landroid/widget/ToggleButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 296
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 301
    :cond_1
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showLineBtnArray:[Landroid/widget/ToggleButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 302
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showLineBtnArray:[Landroid/widget/ToggleButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    goto :goto_1
.end method

.method private toogleShowMissNumberBtn(Landroid/widget/ToggleButton;)V
    .locals 4
    .param p1, "paramView"    # Landroid/widget/ToggleButton;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 308
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showMissNumberBtnArray:[Landroid/widget/ToggleButton;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 317
    return-void

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showMissNumberBtnArray:[Landroid/widget/ToggleButton;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 310
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showMissNumberBtnArray:[Landroid/widget/ToggleButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 311
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showMissNumberBtnArray:[Landroid/widget/ToggleButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 308
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 313
    :cond_1
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showMissNumberBtnArray:[Landroid/widget/ToggleButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 314
    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showMissNumberBtnArray:[Landroid/widget/ToggleButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    goto :goto_1
.end method

.method private toolgeSettingPnl(Z)V
    .locals 3
    .param p1, "isShow"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 268
    if-eqz p1, :cond_0

    .line 269
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->helpPnl:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->okBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->settingPnl:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->positiveBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->negativeBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 281
    :goto_0
    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->helpPnl:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->okBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->settingPnl:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->positiveBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->negativeBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public create()Lcom/cai88/tools/chart/TrendChartsDialog;
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 63
    new-instance v0, Lcom/cai88/tools/chart/TrendChartsDialog;

    iget-object v4, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->context:Landroid/content/Context;

    const/high16 v5, 0x7f090000

    invoke-direct {v0, v4, v5}, Lcom/cai88/tools/chart/TrendChartsDialog;-><init>(Landroid/content/Context;I)V

    .line 65
    .local v0, "dialog":Lcom/cai88/tools/chart/TrendChartsDialog;
    iget-object v4, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 66
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f030011

    .line 67
    const/4 v5, 0x0

    .line 66
    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 69
    .local v2, "layout":Landroid/view/View;
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .line 70
    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 69
    invoke-virtual {v0, v2, v4}, Lcom/cai88/tools/chart/TrendChartsDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    const v4, 0x7f07001c

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->settingPnl:Landroid/widget/LinearLayout;

    .line 73
    const v4, 0x7f07001f

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->helpPnl:Landroid/widget/LinearLayout;

    .line 74
    const v4, 0x7f070022

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->negativeBtn:Landroid/widget/Button;

    .line 75
    const v4, 0x7f070023

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->positiveBtn:Landroid/widget/Button;

    .line 76
    const v4, 0x7f070024

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->okBtn:Landroid/widget/Button;

    .line 77
    const v4, 0x7f070021

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->messageTv:Landroid/widget/TextView;

    .line 78
    const v4, 0x7f07006f

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->helpTv:Landroid/widget/TextView;

    .line 79
    iget-object v4, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->helpTv:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    const/4 v4, 0x4

    new-array v4, v4, [Landroid/widget/ToggleButton;

    iput-object v4, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->periodBtnArray:[Landroid/widget/ToggleButton;

    .line 82
    iget-object v5, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->periodBtnArray:[Landroid/widget/ToggleButton;

    const v4, 0x7f070070

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    aput-object v4, v5, v7

    .line 83
    iget-object v5, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->periodBtnArray:[Landroid/widget/ToggleButton;

    const v4, 0x7f070072

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    aput-object v4, v5, v8

    .line 84
    iget-object v5, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->periodBtnArray:[Landroid/widget/ToggleButton;

    const v4, 0x7f070071

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    aput-object v4, v5, v9

    .line 85
    iget-object v5, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->periodBtnArray:[Landroid/widget/ToggleButton;

    const v4, 0x7f070073

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    aput-object v4, v5, v10

    .line 87
    new-array v4, v9, [Landroid/widget/ToggleButton;

    iput-object v4, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showLineBtnArray:[Landroid/widget/ToggleButton;

    .line 88
    iget-object v5, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showLineBtnArray:[Landroid/widget/ToggleButton;

    const v4, 0x7f070075

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    aput-object v4, v5, v7

    .line 89
    iget-object v5, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showLineBtnArray:[Landroid/widget/ToggleButton;

    const v4, 0x7f070076

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    aput-object v4, v5, v8

    .line 91
    new-array v4, v9, [Landroid/widget/ToggleButton;

    iput-object v4, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showMissNumberBtnArray:[Landroid/widget/ToggleButton;

    .line 92
    iget-object v5, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showMissNumberBtnArray:[Landroid/widget/ToggleButton;

    const v4, 0x7f070077

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    aput-object v4, v5, v7

    .line 93
    iget-object v5, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showMissNumberBtnArray:[Landroid/widget/ToggleButton;

    const v4, 0x7f070078

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    aput-object v4, v5, v8

    .line 95
    new-array v4, v9, [Landroid/widget/ToggleButton;

    iput-object v4, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showAnalysisBtnArray:[Landroid/widget/ToggleButton;

    .line 96
    iget-object v5, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showAnalysisBtnArray:[Landroid/widget/ToggleButton;

    const v4, 0x7f070079

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    aput-object v4, v5, v7

    .line 97
    iget-object v5, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showAnalysisBtnArray:[Landroid/widget/ToggleButton;

    const v4, 0x7f07007a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    aput-object v4, v5, v8

    .line 99
    const-string v3, "\u4eca\u5929"

    .line 100
    .local v3, "periodNowStr":Ljava/lang/String;
    iget-object v4, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->periodBtnArray:[Landroid/widget/ToggleButton;

    aget-object v4, v4, v10

    invoke-virtual {v4, v3}, Landroid/widget/ToggleButton;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v4, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->periodBtnArray:[Landroid/widget/ToggleButton;

    aget-object v4, v4, v10

    invoke-virtual {v4, v3}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v4, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->periodBtnArray:[Landroid/widget/ToggleButton;

    aget-object v4, v4, v10

    invoke-virtual {v4, v3}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 104
    invoke-direct {p0}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->initToggleBtnSetting()V

    .line 106
    iget-object v4, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->messageTv:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v4, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->periodBtnArray:[Landroid/widget/ToggleButton;

    aget-object v4, v4, v7

    invoke-virtual {v4, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v4, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->periodBtnArray:[Landroid/widget/ToggleButton;

    aget-object v4, v4, v8

    invoke-virtual {v4, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v4, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->periodBtnArray:[Landroid/widget/ToggleButton;

    aget-object v4, v4, v9

    invoke-virtual {v4, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v4, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->periodBtnArray:[Landroid/widget/ToggleButton;

    aget-object v4, v4, v10

    invoke-virtual {v4, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v4, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showLineBtnArray:[Landroid/widget/ToggleButton;

    aget-object v4, v4, v7

    invoke-virtual {v4, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v4, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showLineBtnArray:[Landroid/widget/ToggleButton;

    aget-object v4, v4, v8

    invoke-virtual {v4, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v4, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showMissNumberBtnArray:[Landroid/widget/ToggleButton;

    aget-object v4, v4, v7

    invoke-virtual {v4, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v4, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showMissNumberBtnArray:[Landroid/widget/ToggleButton;

    aget-object v4, v4, v8

    invoke-virtual {v4, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v4, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showAnalysisBtnArray:[Landroid/widget/ToggleButton;

    aget-object v4, v4, v7

    invoke-virtual {v4, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v4, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->showAnalysisBtnArray:[Landroid/widget/ToggleButton;

    aget-object v4, v4, v8

    invoke-virtual {v4, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v4, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->okBtn:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v4, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->helpTv:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v4, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->positiveBtn:Landroid/widget/Button;

    new-instance v5, Lcom/cai88/tools/chart/TrendChartsDialog$Builder$1;

    invoke-direct {v5, p0, v0}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder$1;-><init>(Lcom/cai88/tools/chart/TrendChartsDialog$Builder;Lcom/cai88/tools/chart/TrendChartsDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v4, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->negativeBtn:Landroid/widget/Button;

    new-instance v5, Lcom/cai88/tools/chart/TrendChartsDialog$Builder$2;

    invoke-direct {v5, p0, v0}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder$2;-><init>(Lcom/cai88/tools/chart/TrendChartsDialog$Builder;Lcom/cai88/tools/chart/TrendChartsDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    invoke-virtual {v0, v2}, Lcom/cai88/tools/chart/TrendChartsDialog;->setContentView(Landroid/view/View;)V

    .line 170
    invoke-virtual {v0, v7}, Lcom/cai88/tools/chart/TrendChartsDialog;->setCancelable(Z)V

    .line 171
    return-object v0
.end method

.method public createHelp()Lcom/cai88/tools/chart/TrendChartsDialog;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 175
    new-instance v0, Lcom/cai88/tools/chart/TrendChartsDialog;

    iget-object v3, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->context:Landroid/content/Context;

    const/high16 v4, 0x7f090000

    invoke-direct {v0, v3, v4}, Lcom/cai88/tools/chart/TrendChartsDialog;-><init>(Landroid/content/Context;I)V

    .line 177
    .local v0, "dialog":Lcom/cai88/tools/chart/TrendChartsDialog;
    iget-object v3, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 178
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030011

    .line 179
    const/4 v4, 0x0

    .line 178
    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 181
    .local v2, "layout":Landroid/view/View;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 182
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 181
    invoke-virtual {v0, v2, v3}, Lcom/cai88/tools/chart/TrendChartsDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    const v3, 0x7f07001c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->settingPnl:Landroid/widget/LinearLayout;

    .line 185
    const v3, 0x7f07001f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->helpPnl:Landroid/widget/LinearLayout;

    .line 186
    const v3, 0x7f070022

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->negativeBtn:Landroid/widget/Button;

    .line 187
    const v3, 0x7f070023

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->positiveBtn:Landroid/widget/Button;

    .line 188
    const v3, 0x7f070024

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->okBtn:Landroid/widget/Button;

    .line 189
    const v3, 0x7f070021

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->messageTv:Landroid/widget/TextView;

    .line 191
    invoke-direct {p0, v6}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->toolgeSettingPnl(Z)V

    .line 192
    iget-object v3, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->messageTv:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->message:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v3, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->okBtn:Landroid/widget/Button;

    new-instance v4, Lcom/cai88/tools/chart/TrendChartsDialog$Builder$3;

    invoke-direct {v4, p0, v0}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder$3;-><init>(Lcom/cai88/tools/chart/TrendChartsDialog$Builder;Lcom/cai88/tools/chart/TrendChartsDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    invoke-virtual {v0, v2}, Lcom/cai88/tools/chart/TrendChartsDialog;->setContentView(Landroid/view/View;)V

    .line 202
    invoke-virtual {v0, v6}, Lcom/cai88/tools/chart/TrendChartsDialog;->setCancelable(Z)V

    .line 203
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "paramView"    # Landroid/view/View;

    .prologue
    .line 230
    instance-of v0, p1, Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 265
    .end local p1    # "paramView":Landroid/view/View;
    :goto_0
    :pswitch_0
    return-void

    .line 236
    .restart local p1    # "paramView":Landroid/view/View;
    :pswitch_1
    check-cast p1, Landroid/widget/ToggleButton;

    .end local p1    # "paramView":Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->tooglePeriodBtn(Landroid/widget/ToggleButton;)V

    goto :goto_0

    .line 240
    .restart local p1    # "paramView":Landroid/view/View;
    :pswitch_2
    check-cast p1, Landroid/widget/ToggleButton;

    .end local p1    # "paramView":Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->toogleShowLineBtn(Landroid/widget/ToggleButton;)V

    goto :goto_0

    .line 244
    .restart local p1    # "paramView":Landroid/view/View;
    :pswitch_3
    check-cast p1, Landroid/widget/ToggleButton;

    .end local p1    # "paramView":Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->toogleShowMissNumberBtn(Landroid/widget/ToggleButton;)V

    goto :goto_0

    .line 248
    .restart local p1    # "paramView":Landroid/view/View;
    :pswitch_4
    check-cast p1, Landroid/widget/ToggleButton;

    .end local p1    # "paramView":Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->toogleShowAnalysisBtn(Landroid/widget/ToggleButton;)V

    goto :goto_0

    .line 254
    .restart local p1    # "paramView":Landroid/view/View;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 256
    :sswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->toolgeSettingPnl(Z)V

    goto :goto_0

    .line 259
    :sswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->toolgeSettingPnl(Z)V

    goto :goto_0

    .line 231
    :pswitch_data_0
    .packed-switch 0x7f070070
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 254
    :sswitch_data_0
    .sparse-switch
        0x7f070024 -> :sswitch_0
        0x7f07006f -> :sswitch_1
    .end sparse-switch
.end method

.method public setGameCode(Ljava/lang/String;)Lcom/cai88/tools/chart/TrendChartsDialog$Builder;
    .locals 0
    .param p1, "gameCode"    # Ljava/lang/String;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->gameCode:Ljava/lang/String;

    .line 220
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/cai88/tools/chart/TrendChartsDialog$Builder;
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->message:Ljava/lang/String;

    .line 225
    return-object p0
.end method

.method public setNegativeButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)Lcom/cai88/tools/chart/TrendChartsDialog$Builder;
    .locals 0
    .param p1, "negativeButtonClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 215
    return-object p0
.end method

.method public setPositiveButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)Lcom/cai88/tools/chart/TrendChartsDialog$Builder;
    .locals 0
    .param p1, "positiveButtonClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/cai88/tools/chart/TrendChartsDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 209
    return-object p0
.end method
