.class public Lcom/cai88/tools/view/HorizontalScrollView4Cai88;
.super Landroid/widget/HorizontalScrollView;
.source "HorizontalScrollView4Cai88.java"


# instance fields
.field private onScrollChangedListener:Lcom/cai88/tools/listener/OnScrollChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 21
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 22
    iget-object v0, p0, Lcom/cai88/tools/view/HorizontalScrollView4Cai88;->onScrollChangedListener:Lcom/cai88/tools/listener/OnScrollChangedListener;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/cai88/tools/view/HorizontalScrollView4Cai88;->onScrollChangedListener:Lcom/cai88/tools/listener/OnScrollChangedListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/cai88/tools/listener/OnScrollChangedListener;->onScrollChanged(IIII)V

    .line 25
    :cond_0
    return-void
.end method

.method public setOnScrollChangedListener(Lcom/cai88/tools/listener/OnScrollChangedListener;)V
    .locals 0
    .param p1, "onScrollChangedListener"    # Lcom/cai88/tools/listener/OnScrollChangedListener;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/cai88/tools/view/HorizontalScrollView4Cai88;->onScrollChangedListener:Lcom/cai88/tools/listener/OnScrollChangedListener;

    .line 32
    return-void
.end method
