.class Lcom/cai88/tools/view/GameChooseDialog$Builder;
.super Ljava/lang/Object;
.source "GameChooseDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cai88/tools/view/GameChooseDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Builder"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private gCode:Ljava/lang/String;

.field private gameBtnArray:[Landroid/widget/ToggleButton;

.field private negativeBtn:Landroid/widget/Button;

.field private negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private okBtn:Landroid/widget/Button;

.field private positiveBtn:Landroid/widget/Button;

.field private positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder;->gCode:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder;->context:Landroid/content/Context;

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/cai88/tools/view/GameChooseDialog$Builder;)[Landroid/widget/ToggleButton;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder;->gameBtnArray:[Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cai88/tools/view/GameChooseDialog$Builder;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder;->gCode:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/cai88/tools/view/GameChooseDialog$Builder;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cai88/tools/view/GameChooseDialog$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder;->gCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/cai88/tools/view/GameChooseDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$5(Lcom/cai88/tools/view/GameChooseDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$6(Lcom/cai88/tools/view/GameChooseDialog$Builder;)V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/cai88/tools/view/GameChooseDialog$Builder;->initToggleBtnSetting()V

    return-void
.end method

.method private initToggleBtnSetting()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/cai88/tools/uitl/Common;->GetCacheDefaultGame(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder;->gCode:Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder;->gCode:Ljava/lang/String;

    const-string v1, "018"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder;->gameBtnArray:[Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/cai88/tools/view/GameChooseDialog$Builder;->toogleShowLineBtn(Landroid/widget/ToggleButton;)V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder;->gCode:Ljava/lang/String;

    const-string v1, "006"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder;->gameBtnArray:[Landroid/widget/ToggleButton;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/cai88/tools/view/GameChooseDialog$Builder;->toogleShowLineBtn(Landroid/widget/ToggleButton;)V

    goto :goto_0
.end method

.method private toogleShowLineBtn(Landroid/widget/ToggleButton;)V
    .locals 4
    .param p1, "paramView"    # Landroid/widget/ToggleButton;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 148
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder;->gameBtnArray:[Landroid/widget/ToggleButton;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 157
    return-void

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder;->gameBtnArray:[Landroid/widget/ToggleButton;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 150
    iget-object v1, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder;->gameBtnArray:[Landroid/widget/ToggleButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 151
    iget-object v1, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder;->gameBtnArray:[Landroid/widget/ToggleButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 148
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_1
    iget-object v1, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder;->gameBtnArray:[Landroid/widget/ToggleButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 154
    iget-object v1, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder;->gameBtnArray:[Landroid/widget/ToggleButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method public create()Lcom/cai88/tools/view/GameChooseDialog;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 50
    new-instance v0, Lcom/cai88/tools/view/GameChooseDialog;

    iget-object v3, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder;->context:Landroid/content/Context;

    const/high16 v4, 0x7f090000

    invoke-direct {v0, v3, v4}, Lcom/cai88/tools/view/GameChooseDialog;-><init>(Landroid/content/Context;I)V

    .line 52
    .local v0, "dialog":Lcom/cai88/tools/view/GameChooseDialog;
    iget-object v3, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 53
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030007

    .line 54
    const/4 v4, 0x0

    .line 53
    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 56
    .local v2, "layout":Landroid/view/View;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 57
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 56
    invoke-virtual {v0, v2, v3}, Lcom/cai88/tools/view/GameChooseDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    const v3, 0x7f070022

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder;->negativeBtn:Landroid/widget/Button;

    .line 60
    const v3, 0x7f070023

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder;->positiveBtn:Landroid/widget/Button;

    .line 61
    const v3, 0x7f070024

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder;->okBtn:Landroid/widget/Button;

    .line 64
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/widget/ToggleButton;

    iput-object v3, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder;->gameBtnArray:[Landroid/widget/ToggleButton;

    .line 65
    iget-object v4, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder;->gameBtnArray:[Landroid/widget/ToggleButton;

    const v3, 0x7f07001d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    aput-object v3, v4, v6

    .line 66
    iget-object v4, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder;->gameBtnArray:[Landroid/widget/ToggleButton;

    const v3, 0x7f07001e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    aput-object v3, v4, v7

    .line 70
    invoke-direct {p0}, Lcom/cai88/tools/view/GameChooseDialog$Builder;->initToggleBtnSetting()V

    .line 72
    iget-object v3, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder;->gameBtnArray:[Landroid/widget/ToggleButton;

    aget-object v3, v3, v6

    invoke-virtual {v3, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v3, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder;->gameBtnArray:[Landroid/widget/ToggleButton;

    aget-object v3, v3, v7

    invoke-virtual {v3, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v3, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder;->okBtn:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v3, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder;->positiveBtn:Landroid/widget/Button;

    new-instance v4, Lcom/cai88/tools/view/GameChooseDialog$Builder$1;

    invoke-direct {v4, p0, v0}, Lcom/cai88/tools/view/GameChooseDialog$Builder$1;-><init>(Lcom/cai88/tools/view/GameChooseDialog$Builder;Lcom/cai88/tools/view/GameChooseDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v3, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder;->negativeBtn:Landroid/widget/Button;

    new-instance v4, Lcom/cai88/tools/view/GameChooseDialog$Builder$2;

    invoke-direct {v4, p0, v0}, Lcom/cai88/tools/view/GameChooseDialog$Builder$2;-><init>(Lcom/cai88/tools/view/GameChooseDialog$Builder;Lcom/cai88/tools/view/GameChooseDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    invoke-virtual {v0, v2}, Lcom/cai88/tools/view/GameChooseDialog;->setContentView(Landroid/view/View;)V

    .line 112
    invoke-virtual {v0, v6}, Lcom/cai88/tools/view/GameChooseDialog;->setCancelable(Z)V

    .line 113
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "paramView"    # Landroid/view/View;

    .prologue
    .line 133
    instance-of v0, p1, Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 143
    .end local p1    # "paramView":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 137
    .restart local p1    # "paramView":Landroid/view/View;
    :pswitch_0
    check-cast p1, Landroid/widget/ToggleButton;

    .end local p1    # "paramView":Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/cai88/tools/view/GameChooseDialog$Builder;->toogleShowLineBtn(Landroid/widget/ToggleButton;)V

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x7f07001d
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setNegativeButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)Lcom/cai88/tools/view/GameChooseDialog$Builder;
    .locals 0
    .param p1, "negativeButtonClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 126
    return-object p0
.end method

.method public setPositiveButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)Lcom/cai88/tools/view/GameChooseDialog$Builder;
    .locals 0
    .param p1, "positiveButtonClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/cai88/tools/view/GameChooseDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 120
    return-object p0
.end method
