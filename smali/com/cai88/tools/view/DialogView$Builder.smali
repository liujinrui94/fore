.class public Lcom/cai88/tools/view/DialogView$Builder;
.super Ljava/lang/Object;
.source "DialogView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cai88/tools/view/DialogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private contentView:Landroid/view/View;

.field private context:Landroid/content/Context;

.field private headline:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private negativeButtonText:Ljava/lang/String;

.field private positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private positiveButtonText:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/cai88/tools/view/DialogView$Builder;->context:Landroid/content/Context;

    .line 58
    return-void
.end method

.method static synthetic access$0(Lcom/cai88/tools/view/DialogView$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cai88/tools/view/DialogView$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cai88/tools/view/DialogView$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/cai88/tools/view/DialogView$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public create()Lcom/cai88/tools/view/DialogView;
    .locals 11

    .prologue
    const/16 v10, 0x8

    const v9, 0x7f07001b

    const v8, 0x7f070019

    const/4 v7, -0x2

    const v6, 0x7f07001a

    .line 175
    iget-object v3, p0, Lcom/cai88/tools/view/DialogView$Builder;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 177
    .local v1, "inflater":Landroid/view/LayoutInflater;
    new-instance v0, Lcom/cai88/tools/view/DialogView;

    iget-object v3, p0, Lcom/cai88/tools/view/DialogView$Builder;->context:Landroid/content/Context;

    .line 178
    const/high16 v4, 0x7f090000

    .line 177
    invoke-direct {v0, v3, v4}, Lcom/cai88/tools/view/DialogView;-><init>(Landroid/content/Context;I)V

    .line 179
    .local v0, "dialog":Lcom/cai88/tools/view/DialogView;
    const v3, 0x7f030006

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 180
    .local v2, "layout":Landroid/view/View;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 181
    const/4 v4, -0x1

    invoke-direct {v3, v4, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 180
    invoke-virtual {v0, v2, v3}, Lcom/cai88/tools/view/DialogView;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    iget-object v3, p0, Lcom/cai88/tools/view/DialogView$Builder;->headline:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 184
    const v3, 0x7f070017

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    const v3, 0x7f070017

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/cai88/tools/view/DialogView$Builder;->headline:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/cai88/tools/view/DialogView$Builder;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 189
    :cond_0
    iget-object v3, p0, Lcom/cai88/tools/view/DialogView$Builder;->positiveButtonText:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 190
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 191
    iget-object v4, p0, Lcom/cai88/tools/view/DialogView$Builder;->positiveButtonText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v3, p0, Lcom/cai88/tools/view/DialogView$Builder;->positiveButtonText:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 194
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 198
    :cond_1
    iget-object v3, p0, Lcom/cai88/tools/view/DialogView$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v3, :cond_2

    .line 199
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 200
    new-instance v4, Lcom/cai88/tools/view/DialogView$Builder$1;

    invoke-direct {v4, p0, v0}, Lcom/cai88/tools/view/DialogView$Builder$1;-><init>(Lcom/cai88/tools/view/DialogView$Builder;Lcom/cai88/tools/view/DialogView;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    :cond_2
    iget-object v3, p0, Lcom/cai88/tools/view/DialogView$Builder;->negativeButtonText:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 211
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 212
    iget-object v4, p0, Lcom/cai88/tools/view/DialogView$Builder;->negativeButtonText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v3, p0, Lcom/cai88/tools/view/DialogView$Builder;->negativeButtonText:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 215
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 219
    :cond_3
    iget-object v3, p0, Lcom/cai88/tools/view/DialogView$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v3, :cond_5

    .line 220
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 221
    new-instance v4, Lcom/cai88/tools/view/DialogView$Builder$2;

    invoke-direct {v4, p0, v0}, Lcom/cai88/tools/view/DialogView$Builder$2;-><init>(Lcom/cai88/tools/view/DialogView$Builder;Lcom/cai88/tools/view/DialogView;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    :goto_0
    iget-object v3, p0, Lcom/cai88/tools/view/DialogView$Builder;->message:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 239
    iget-object v3, p0, Lcom/cai88/tools/view/DialogView$Builder;->message:Ljava/lang/String;

    const-string v4, "html"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 240
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 241
    iget-object v4, p0, Lcom/cai88/tools/view/DialogView$Builder;->message:Ljava/lang/String;

    const-string v5, "html"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    :cond_4
    :goto_1
    invoke-virtual {v0, v2}, Lcom/cai88/tools/view/DialogView;->setContentView(Landroid/view/View;)V

    .line 259
    return-object v0

    .line 230
    :cond_5
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 231
    new-instance v4, Lcom/cai88/tools/view/DialogView$Builder$3;

    invoke-direct {v4, p0, v0}, Lcom/cai88/tools/view/DialogView$Builder$3;-><init>(Lcom/cai88/tools/view/DialogView$Builder;Lcom/cai88/tools/view/DialogView;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 243
    :cond_6
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 244
    iget-object v4, p0, Lcom/cai88/tools/view/DialogView$Builder;->message:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 247
    :cond_7
    iget-object v3, p0, Lcom/cai88/tools/view/DialogView$Builder;->contentView:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 250
    const v3, 0x7f070018

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 251
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 252
    const v3, 0x7f070018

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 253
    iget-object v4, p0, Lcom/cai88/tools/view/DialogView$Builder;->contentView:Landroid/view/View;

    .line 254
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 253
    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public setContentView(Landroid/view/View;)Lcom/cai88/tools/view/DialogView$Builder;
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/cai88/tools/view/DialogView$Builder;->contentView:Landroid/view/View;

    .line 114
    return-object p0
.end method

.method public setHeadLine(Ljava/lang/String;)Lcom/cai88/tools/view/DialogView$Builder;
    .locals 0
    .param p1, "headline"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/cai88/tools/view/DialogView$Builder;->headline:Ljava/lang/String;

    .line 102
    return-object p0
.end method

.method public setMessage(I)Lcom/cai88/tools/view/DialogView$Builder;
    .locals 1
    .param p1, "message"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/cai88/tools/view/DialogView$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/cai88/tools/view/DialogView$Builder;->message:Ljava/lang/String;

    .line 77
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/cai88/tools/view/DialogView$Builder;
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/cai88/tools/view/DialogView$Builder;->message:Ljava/lang/String;

    .line 67
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/cai88/tools/view/DialogView$Builder;
    .locals 1
    .param p1, "negativeButtonText"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/cai88/tools/view/DialogView$Builder;->context:Landroid/content/Context;

    .line 153
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 152
    iput-object v0, p0, Lcom/cai88/tools/view/DialogView$Builder;->negativeButtonText:Ljava/lang/String;

    .line 154
    iput-object p2, p0, Lcom/cai88/tools/view/DialogView$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 155
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/cai88/tools/view/DialogView$Builder;
    .locals 0
    .param p1, "negativeButtonText"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/cai88/tools/view/DialogView$Builder;->negativeButtonText:Ljava/lang/String;

    .line 167
    iput-object p2, p0, Lcom/cai88/tools/view/DialogView$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 168
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/cai88/tools/view/DialogView$Builder;
    .locals 1
    .param p1, "positiveButtonText"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/cai88/tools/view/DialogView$Builder;->context:Landroid/content/Context;

    .line 126
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 125
    iput-object v0, p0, Lcom/cai88/tools/view/DialogView$Builder;->positiveButtonText:Ljava/lang/String;

    .line 127
    iput-object p2, p0, Lcom/cai88/tools/view/DialogView$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 128
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/cai88/tools/view/DialogView$Builder;
    .locals 0
    .param p1, "positiveButtonText"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/cai88/tools/view/DialogView$Builder;->positiveButtonText:Ljava/lang/String;

    .line 140
    iput-object p2, p0, Lcom/cai88/tools/view/DialogView$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 141
    return-object p0
.end method

.method public setTitle(I)Lcom/cai88/tools/view/DialogView$Builder;
    .locals 1
    .param p1, "title"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/cai88/tools/view/DialogView$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/cai88/tools/view/DialogView$Builder;->title:Ljava/lang/String;

    .line 87
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/cai88/tools/view/DialogView$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/cai88/tools/view/DialogView$Builder;->title:Ljava/lang/String;

    .line 97
    return-object p0
.end method
