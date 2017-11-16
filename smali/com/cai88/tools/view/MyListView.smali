.class public Lcom/cai88/tools/view/MyListView;
.super Landroid/widget/ListView;
.source "MyListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cai88/tools/view/MyListView$OnRefreshListener;
    }
.end annotation


# static fields
.field private static final DONE:I = 0x3

.field private static final LOADING:I = 0x4

.field private static final PULL_To_REFRESH:I = 0x1

.field private static final RATIO:I = 0x3

.field private static final REFRESHING:I = 0x2

.field private static final RELEASE_To_REFRESH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "listview"


# instance fields
.field private animation:Landroid/view/animation/RotateAnimation;

.field private arrowImageView:Landroid/widget/ImageView;

.field private firstItemIndex:I

.field private headContentHeight:I

.field private headContentWidth:I

.field private headView:Landroid/widget/LinearLayout;

.field private inflater:Landroid/view/LayoutInflater;

.field private isBack:Z

.field private isRecored:Z

.field private isRefreshable:Z

.field private lastUpdatedTextView:Landroid/widget/TextView;

.field private progressBar:Landroid/widget/ProgressBar;

.field private refreshListener:Lcom/cai88/tools/view/MyListView$OnRefreshListener;

.field private reverseAnimation:Landroid/view/animation/RotateAnimation;

.field private startY:I

.field private state:I

.field private tipsTextview:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-direct {p0, p1}, Lcom/cai88/tools/view/MyListView;->init(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    invoke-direct {p0, p1}, Lcom/cai88/tools/view/MyListView;->init(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method private changeHeaderViewByState()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 259
    iget v0, p0, Lcom/cai88/tools/view/MyListView;->state:I

    packed-switch v0, :pswitch_data_0

    .line 316
    :goto_0
    return-void

    .line 261
    :pswitch_0
    iget-object v0, p0, Lcom/cai88/tools/view/MyListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/cai88/tools/view/MyListView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/cai88/tools/view/MyListView;->tipsTextview:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/cai88/tools/view/MyListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 267
    iget-object v0, p0, Lcom/cai88/tools/view/MyListView;->arrowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cai88/tools/view/MyListView;->animation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 269
    iget-object v0, p0, Lcom/cai88/tools/view/MyListView;->tipsTextview:Landroid/widget/TextView;

    const-string v1, "\u677e\u5f00\u5237\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    const-string v0, "listview"

    const-string v1, "\u5f53\u524d\u72b6\u6001\uff0c\u677e\u5f00\u5237\u65b0"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 274
    :pswitch_1
    iget-object v0, p0, Lcom/cai88/tools/view/MyListView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/cai88/tools/view/MyListView;->tipsTextview:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/cai88/tools/view/MyListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 278
    iget-object v0, p0, Lcom/cai88/tools/view/MyListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 280
    iget-boolean v0, p0, Lcom/cai88/tools/view/MyListView;->isBack:Z

    if-eqz v0, :cond_0

    .line 281
    iput-boolean v2, p0, Lcom/cai88/tools/view/MyListView;->isBack:Z

    .line 282
    iget-object v0, p0, Lcom/cai88/tools/view/MyListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 283
    iget-object v0, p0, Lcom/cai88/tools/view/MyListView;->arrowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cai88/tools/view/MyListView;->reverseAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 285
    iget-object v0, p0, Lcom/cai88/tools/view/MyListView;->tipsTextview:Landroid/widget/TextView;

    const-string v1, "\u4e0b\u62c9\u5237\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    :goto_1
    const-string v0, "listview"

    const-string v1, "\u5f53\u524d\u72b6\u6001\uff0c\u4e0b\u62c9\u5237\u65b0"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/cai88/tools/view/MyListView;->tipsTextview:Landroid/widget/TextView;

    const-string v1, "\u4e0b\u62c9\u5237\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 294
    :pswitch_2
    iget-object v0, p0, Lcom/cai88/tools/view/MyListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 296
    iget-object v0, p0, Lcom/cai88/tools/view/MyListView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/cai88/tools/view/MyListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 298
    iget-object v0, p0, Lcom/cai88/tools/view/MyListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/cai88/tools/view/MyListView;->tipsTextview:Landroid/widget/TextView;

    const-string v1, "\u6b63\u5728\u5237\u65b0..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    const-string v0, "listview"

    const-string v1, "\u5f53\u524d\u72b6\u6001,\u6b63\u5728\u5237\u65b0..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 305
    :pswitch_3
    iget-object v0, p0, Lcom/cai88/tools/view/MyListView;->headView:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/cai88/tools/view/MyListView;->headContentHeight:I

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 307
    iget-object v0, p0, Lcom/cai88/tools/view/MyListView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/cai88/tools/view/MyListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 309
    iget-object v0, p0, Lcom/cai88/tools/view/MyListView;->arrowImageView:Landroid/widget/ImageView;

    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 310
    iget-object v0, p0, Lcom/cai88/tools/view/MyListView;->tipsTextview:Landroid/widget/TextView;

    const-string v1, "\u4e0b\u62c9\u5237\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    const-string v0, "listview"

    const-string v1, "\u5f53\u524d\u72b6\u6001\uff0cdone"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 259
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private init(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/high16 v2, -0x3ccc0000    # -180.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v12, 0x0

    const/4 v3, 0x1

    .line 77
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/cai88/tools/view/MyListView;->inflater:Landroid/view/LayoutInflater;

    .line 79
    iget-object v0, p0, Lcom/cai88/tools/view/MyListView;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f03000b

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cai88/tools/view/MyListView;->headView:Landroid/widget/LinearLayout;

    .line 81
    iget-object v0, p0, Lcom/cai88/tools/view/MyListView;->headView:Landroid/widget/LinearLayout;

    .line 82
    const v5, 0x7f070033

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 81
    iput-object v0, p0, Lcom/cai88/tools/view/MyListView;->arrowImageView:Landroid/widget/ImageView;

    .line 83
    iget-object v0, p0, Lcom/cai88/tools/view/MyListView;->arrowImageView:Landroid/widget/ImageView;

    const/16 v5, 0x46

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 84
    iget-object v0, p0, Lcom/cai88/tools/view/MyListView;->arrowImageView:Landroid/widget/ImageView;

    const/16 v5, 0x32

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 85
    iget-object v0, p0, Lcom/cai88/tools/view/MyListView;->headView:Landroid/widget/LinearLayout;

    .line 86
    const v5, 0x7f070034

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 85
    iput-object v0, p0, Lcom/cai88/tools/view/MyListView;->progressBar:Landroid/widget/ProgressBar;

    .line 87
    iget-object v0, p0, Lcom/cai88/tools/view/MyListView;->headView:Landroid/widget/LinearLayout;

    const v5, 0x7f070035

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cai88/tools/view/MyListView;->tipsTextview:Landroid/widget/TextView;

    .line 88
    iget-object v0, p0, Lcom/cai88/tools/view/MyListView;->headView:Landroid/widget/LinearLayout;

    .line 89
    const v5, 0x7f070036

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 88
    iput-object v0, p0, Lcom/cai88/tools/view/MyListView;->lastUpdatedTextView:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lcom/cai88/tools/view/MyListView;->headView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/cai88/tools/view/MyListView;->measureView(Landroid/view/View;)V

    .line 92
    iget-object v0, p0, Lcom/cai88/tools/view/MyListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/cai88/tools/view/MyListView;->headContentHeight:I

    .line 93
    iget-object v0, p0, Lcom/cai88/tools/view/MyListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/cai88/tools/view/MyListView;->headContentWidth:I

    .line 95
    iget-object v0, p0, Lcom/cai88/tools/view/MyListView;->headView:Landroid/widget/LinearLayout;

    iget v5, p0, Lcom/cai88/tools/view/MyListView;->headContentHeight:I

    mul-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v12, v5, v12, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 96
    iget-object v0, p0, Lcom/cai88/tools/view/MyListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 98
    const-string v0, "size"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "width:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/cai88/tools/view/MyListView;->headContentWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " height:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 99
    iget v6, p0, Lcom/cai88/tools/view/MyListView;->headContentHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 98
    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/cai88/tools/view/MyListView;->headView:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {p0, v0, v5, v12}, Lcom/cai88/tools/view/MyListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 102
    invoke-virtual {p0, p0}, Lcom/cai88/tools/view/MyListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 104
    new-instance v0, Landroid/view/animation/RotateAnimation;

    move v5, v3

    move v6, v4

    .line 106
    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 104
    iput-object v0, p0, Lcom/cai88/tools/view/MyListView;->animation:Landroid/view/animation/RotateAnimation;

    .line 107
    iget-object v0, p0, Lcom/cai88/tools/view/MyListView;->animation:Landroid/view/animation/RotateAnimation;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 108
    iget-object v0, p0, Lcom/cai88/tools/view/MyListView;->animation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v5, 0xfa

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 109
    iget-object v0, p0, Lcom/cai88/tools/view/MyListView;->animation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 111
    new-instance v5, Landroid/view/animation/RotateAnimation;

    move v6, v2

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    move v11, v4

    .line 113
    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 111
    iput-object v5, p0, Lcom/cai88/tools/view/MyListView;->reverseAnimation:Landroid/view/animation/RotateAnimation;

    .line 114
    iget-object v0, p0, Lcom/cai88/tools/view/MyListView;->reverseAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 115
    iget-object v0, p0, Lcom/cai88/tools/view/MyListView;->reverseAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 116
    iget-object v0, p0, Lcom/cai88/tools/view/MyListView;->reverseAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 118
    const/4 v0, 0x3

    iput v0, p0, Lcom/cai88/tools/view/MyListView;->state:I

    .line 119
    iput-boolean v12, p0, Lcom/cai88/tools/view/MyListView;->isRefreshable:Z

    .line 120
    return-void
.end method

.method private measureView(Landroid/view/View;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 341
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 342
    .local v3, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 343
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    .line 344
    const/4 v5, -0x2

    .line 343
    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 346
    .restart local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v6, v6, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 347
    .local v1, "childWidthSpec":I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 349
    .local v2, "lpHeight":I
    if-lez v2, :cond_1

    .line 351
    const/high16 v4, 0x40000000    # 2.0f

    .line 350
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 356
    .local v0, "childHeightSpec":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 357
    return-void

    .line 353
    .end local v0    # "childHeightSpec":I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "childHeightSpec":I
    goto :goto_0
.end method

.method private onRefresh()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/cai88/tools/view/MyListView;->refreshListener:Lcom/cai88/tools/view/MyListView$OnRefreshListener;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/cai88/tools/view/MyListView;->refreshListener:Lcom/cai88/tools/view/MyListView$OnRefreshListener;

    invoke-interface {v0}, Lcom/cai88/tools/view/MyListView$OnRefreshListener;->onRefresh()V

    .line 337
    :cond_0
    return-void
.end method


# virtual methods
.method public onRefreshComplete()V
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x3

    iput v0, p0, Lcom/cai88/tools/view/MyListView;->state:I

    .line 330
    invoke-direct {p0}, Lcom/cai88/tools/view/MyListView;->changeHeaderViewByState()V

    .line 331
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/AbsListView;
    .param p2, "firstVisiableItem"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 124
    iput p2, p0, Lcom/cai88/tools/view/MyListView;->firstItemIndex:I

    .line 125
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/AbsListView;
    .param p2, "arg1"    # I

    .prologue
    .line 128
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 131
    iget-boolean v1, p0, Lcom/cai88/tools/view/MyListView;->isRefreshable:Z

    if-eqz v1, :cond_0

    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 254
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 134
    :pswitch_0
    iget v1, p0, Lcom/cai88/tools/view/MyListView;->firstItemIndex:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/cai88/tools/view/MyListView;->isRecored:Z

    if-nez v1, :cond_0

    .line 135
    iput-boolean v3, p0, Lcom/cai88/tools/view/MyListView;->isRecored:Z

    .line 136
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/cai88/tools/view/MyListView;->startY:I

    .line 137
    const-string v1, "listview"

    const-string v2, "\u5728down\u65f6\u5019\u8bb0\u5f55\u5f53\u524d\u4f4d\u7f6e"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 143
    :pswitch_1
    iget v1, p0, Lcom/cai88/tools/view/MyListView;->state:I

    if-eq v1, v6, :cond_2

    iget v1, p0, Lcom/cai88/tools/view/MyListView;->state:I

    if-eq v1, v7, :cond_2

    .line 147
    iget v1, p0, Lcom/cai88/tools/view/MyListView;->state:I

    if-ne v1, v3, :cond_1

    .line 148
    iput v5, p0, Lcom/cai88/tools/view/MyListView;->state:I

    .line 149
    invoke-direct {p0}, Lcom/cai88/tools/view/MyListView;->changeHeaderViewByState()V

    .line 151
    const-string v1, "listview"

    const-string v2, "\u7531\u4e0b\u62c9\u5237\u65b0\u72b6\u6001\uff0c\u5230done\u72b6\u6001"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_1
    iget v1, p0, Lcom/cai88/tools/view/MyListView;->state:I

    if-nez v1, :cond_2

    .line 154
    iput v6, p0, Lcom/cai88/tools/view/MyListView;->state:I

    .line 155
    invoke-direct {p0}, Lcom/cai88/tools/view/MyListView;->changeHeaderViewByState()V

    .line 156
    invoke-direct {p0}, Lcom/cai88/tools/view/MyListView;->onRefresh()V

    .line 158
    const-string v1, "listview"

    const-string v2, "\u7531\u677e\u5f00\u5237\u65b0\u72b6\u6001\uff0c\u5230done\u72b6\u6001"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_2
    iput-boolean v4, p0, Lcom/cai88/tools/view/MyListView;->isRecored:Z

    .line 163
    iput-boolean v4, p0, Lcom/cai88/tools/view/MyListView;->isBack:Z

    goto :goto_0

    .line 168
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v0, v1

    .line 170
    .local v0, "tempY":I
    iget-boolean v1, p0, Lcom/cai88/tools/view/MyListView;->isRecored:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/cai88/tools/view/MyListView;->firstItemIndex:I

    if-nez v1, :cond_3

    .line 171
    const-string v1, "listview"

    const-string v2, "\u5728move\u65f6\u5019\u8bb0\u5f55\u4e0b\u4f4d\u7f6e"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iput-boolean v3, p0, Lcom/cai88/tools/view/MyListView;->isRecored:Z

    .line 173
    iput v0, p0, Lcom/cai88/tools/view/MyListView;->startY:I

    .line 176
    :cond_3
    iget v1, p0, Lcom/cai88/tools/view/MyListView;->state:I

    if-eq v1, v6, :cond_0

    iget-boolean v1, p0, Lcom/cai88/tools/view/MyListView;->isRecored:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/cai88/tools/view/MyListView;->state:I

    if-eq v1, v7, :cond_0

    .line 181
    iget v1, p0, Lcom/cai88/tools/view/MyListView;->state:I

    if-nez v1, :cond_4

    .line 183
    invoke-virtual {p0, v4}, Lcom/cai88/tools/view/MyListView;->setSelection(I)V

    .line 186
    iget v1, p0, Lcom/cai88/tools/view/MyListView;->startY:I

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x3

    iget v2, p0, Lcom/cai88/tools/view/MyListView;->headContentHeight:I

    if-ge v1, v2, :cond_8

    .line 187
    iget v1, p0, Lcom/cai88/tools/view/MyListView;->startY:I

    sub-int v1, v0, v1

    if-lez v1, :cond_8

    .line 188
    iput v3, p0, Lcom/cai88/tools/view/MyListView;->state:I

    .line 189
    invoke-direct {p0}, Lcom/cai88/tools/view/MyListView;->changeHeaderViewByState()V

    .line 191
    const-string v1, "listview"

    const-string v2, "\u7531\u677e\u5f00\u5237\u65b0\u72b6\u6001\u8f6c\u53d8\u5230\u4e0b\u62c9\u5237\u65b0\u72b6\u6001"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_4
    :goto_1
    iget v1, p0, Lcom/cai88/tools/view/MyListView;->state:I

    if-ne v1, v3, :cond_5

    .line 208
    invoke-virtual {p0, v4}, Lcom/cai88/tools/view/MyListView;->setSelection(I)V

    .line 211
    iget v1, p0, Lcom/cai88/tools/view/MyListView;->startY:I

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x3

    iget v2, p0, Lcom/cai88/tools/view/MyListView;->headContentHeight:I

    if-lt v1, v2, :cond_9

    .line 212
    iput v4, p0, Lcom/cai88/tools/view/MyListView;->state:I

    .line 213
    iput-boolean v3, p0, Lcom/cai88/tools/view/MyListView;->isBack:Z

    .line 214
    invoke-direct {p0}, Lcom/cai88/tools/view/MyListView;->changeHeaderViewByState()V

    .line 216
    const-string v1, "listview"

    const-string v2, "\u7531done\u6216\u8005\u4e0b\u62c9\u5237\u65b0\u72b6\u6001\u8f6c\u53d8\u5230\u677e\u5f00\u5237\u65b0"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_5
    :goto_2
    iget v1, p0, Lcom/cai88/tools/view/MyListView;->state:I

    if-ne v1, v5, :cond_6

    .line 229
    iget v1, p0, Lcom/cai88/tools/view/MyListView;->startY:I

    sub-int v1, v0, v1

    if-lez v1, :cond_6

    .line 230
    iput v3, p0, Lcom/cai88/tools/view/MyListView;->state:I

    .line 231
    invoke-direct {p0}, Lcom/cai88/tools/view/MyListView;->changeHeaderViewByState()V

    .line 236
    :cond_6
    iget v1, p0, Lcom/cai88/tools/view/MyListView;->state:I

    if-ne v1, v3, :cond_7

    .line 237
    iget-object v1, p0, Lcom/cai88/tools/view/MyListView;->headView:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/cai88/tools/view/MyListView;->headContentHeight:I

    mul-int/lit8 v2, v2, -0x1

    .line 238
    iget v3, p0, Lcom/cai88/tools/view/MyListView;->startY:I

    sub-int v3, v0, v3

    div-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    .line 237
    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 243
    :cond_7
    iget v1, p0, Lcom/cai88/tools/view/MyListView;->state:I

    if-nez v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/cai88/tools/view/MyListView;->headView:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/cai88/tools/view/MyListView;->startY:I

    sub-int v2, v0, v2

    div-int/lit8 v2, v2, 0x3

    .line 245
    iget v3, p0, Lcom/cai88/tools/view/MyListView;->headContentHeight:I

    sub-int/2addr v2, v3

    .line 244
    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_0

    .line 194
    :cond_8
    iget v1, p0, Lcom/cai88/tools/view/MyListView;->startY:I

    sub-int v1, v0, v1

    if-gtz v1, :cond_4

    .line 195
    iput v5, p0, Lcom/cai88/tools/view/MyListView;->state:I

    .line 196
    invoke-direct {p0}, Lcom/cai88/tools/view/MyListView;->changeHeaderViewByState()V

    .line 198
    const-string v1, "listview"

    const-string v2, "\u7531\u677e\u5f00\u5237\u65b0\u72b6\u6001\u8f6c\u53d8\u5230done\u72b6\u6001"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 219
    :cond_9
    iget v1, p0, Lcom/cai88/tools/view/MyListView;->startY:I

    sub-int v1, v0, v1

    if-gtz v1, :cond_5

    .line 220
    iput v5, p0, Lcom/cai88/tools/view/MyListView;->state:I

    .line 221
    invoke-direct {p0}, Lcom/cai88/tools/view/MyListView;->changeHeaderViewByState()V

    .line 223
    const-string v1, "listview"

    const-string v2, "\u7531DOne\u6216\u8005\u4e0b\u62c9\u5237\u65b0\u72b6\u6001\u8f6c\u53d8\u5230done\u72b6\u6001"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/BaseAdapter;

    .prologue
    .line 361
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 362
    return-void
.end method

.method public setonRefreshListener(Lcom/cai88/tools/view/MyListView$OnRefreshListener;)V
    .locals 1
    .param p1, "refreshListener"    # Lcom/cai88/tools/view/MyListView$OnRefreshListener;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/cai88/tools/view/MyListView;->refreshListener:Lcom/cai88/tools/view/MyListView$OnRefreshListener;

    .line 320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cai88/tools/view/MyListView;->isRefreshable:Z

    .line 321
    return-void
.end method
