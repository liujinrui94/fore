.class public Lcom/cai88/tools/view/VerticalScrollView;
.super Landroid/widget/ScrollView;
.source "VerticalScrollView.java"


# instance fields
.field private onScrollChangedListener:Lcom/cai88/tools/listener/OnScrollChangedListener;

.field private xDistance:F

.field private xLast:F

.field private yDistance:F

.field private yLast:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 70
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_1
    return v2

    .line 53
    :pswitch_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/cai88/tools/view/VerticalScrollView;->yDistance:F

    iput v2, p0, Lcom/cai88/tools/view/VerticalScrollView;->xDistance:F

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/cai88/tools/view/VerticalScrollView;->xLast:F

    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/cai88/tools/view/VerticalScrollView;->yLast:F

    goto :goto_0

    .line 58
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 59
    .local v0, "curX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 61
    .local v1, "curY":F
    iget v2, p0, Lcom/cai88/tools/view/VerticalScrollView;->xDistance:F

    iget v3, p0, Lcom/cai88/tools/view/VerticalScrollView;->xLast:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/cai88/tools/view/VerticalScrollView;->xDistance:F

    .line 62
    iget v2, p0, Lcom/cai88/tools/view/VerticalScrollView;->yDistance:F

    iget v3, p0, Lcom/cai88/tools/view/VerticalScrollView;->yLast:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/cai88/tools/view/VerticalScrollView;->yDistance:F

    .line 63
    iput v0, p0, Lcom/cai88/tools/view/VerticalScrollView;->xLast:F

    .line 64
    iput v1, p0, Lcom/cai88/tools/view/VerticalScrollView;->yLast:F

    .line 66
    iget v2, p0, Lcom/cai88/tools/view/VerticalScrollView;->xDistance:F

    iget v3, p0, Lcom/cai88/tools/view/VerticalScrollView;->yDistance:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 67
    const/4 v2, 0x0

    goto :goto_1

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onScrollChanged(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 76
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 77
    iget-object v0, p0, Lcom/cai88/tools/view/VerticalScrollView;->onScrollChangedListener:Lcom/cai88/tools/listener/OnScrollChangedListener;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/cai88/tools/view/VerticalScrollView;->onScrollChangedListener:Lcom/cai88/tools/listener/OnScrollChangedListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/cai88/tools/listener/OnScrollChangedListener;->onScrollChanged(IIII)V

    .line 80
    :cond_0
    return-void
.end method

.method public setOnScrollChangedListener(Lcom/cai88/tools/listener/OnScrollChangedListener;)V
    .locals 0
    .param p1, "onScrollChangedListener"    # Lcom/cai88/tools/listener/OnScrollChangedListener;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/cai88/tools/view/VerticalScrollView;->onScrollChangedListener:Lcom/cai88/tools/listener/OnScrollChangedListener;

    .line 87
    return-void
.end method
