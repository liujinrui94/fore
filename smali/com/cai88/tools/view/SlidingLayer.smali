.class public Lcom/cai88/tools/view/SlidingLayer;
.super Landroid/widget/FrameLayout;
.source "SlidingLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cai88/tools/view/SlidingLayer$OnInteractListener;
    }
.end annotation


# static fields
.field private static final INVALID_POINTER:I = -0x1

.field private static final MAX_SCROLLING_DURATION:I = 0x258

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field public static final STICK_TO_AUTO:I = 0x0

.field public static final STICK_TO_LEFT:I = -0x2

.field public static final STICK_TO_MIDDLE:I = -0x3

.field public static final STICK_TO_RIGHT:I = -0x1

.field private static final sMenuInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private closeOnTapEnabled:Z

.field protected mActivePointerId:I

.field private mDrawingCacheEnabled:Z

.field private mEnabled:Z

.field private mFlingDistance:I

.field private mInitialX:F

.field private mIsDragging:Z

.field private mIsOpen:Z

.field private mIsUnableToDrag:Z

.field private mLastTouchAllowed:Z

.field private mLastX:F

.field private mLastY:F

.field protected mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOnInteractListener:Lcom/cai88/tools/view/SlidingLayer$OnInteractListener;

.field private mScreenSide:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrolling:Z

.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mShadowWidth:I

.field private mSlidingFromShadowEnabled:Z

.field private mTouchSlop:I

.field protected mVelocityTracker:Landroid/view/VelocityTracker;

.field private slidingHelpPnl:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/cai88/tools/view/SlidingLayer$1;

    invoke-direct {v0}, Lcom/cai88/tools/view/SlidingLayer$1;-><init>()V

    sput-object v0, Lcom/cai88/tools/view/SlidingLayer;->sMenuInterpolator:Landroid/view/animation/Interpolator;

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cai88/tools/view/SlidingLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cai88/tools/view/SlidingLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 140
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    iput v4, p0, Lcom/cai88/tools/view/SlidingLayer;->mScreenSide:I

    .line 98
    iput-boolean v3, p0, Lcom/cai88/tools/view/SlidingLayer;->closeOnTapEnabled:Z

    .line 100
    iput-boolean v3, p0, Lcom/cai88/tools/view/SlidingLayer;->mEnabled:Z

    .line 101
    iput-boolean v3, p0, Lcom/cai88/tools/view/SlidingLayer;->mSlidingFromShadowEnabled:Z

    .line 106
    iput v2, p0, Lcom/cai88/tools/view/SlidingLayer;->mLastX:F

    .line 107
    iput v2, p0, Lcom/cai88/tools/view/SlidingLayer;->mLastY:F

    .line 108
    iput v2, p0, Lcom/cai88/tools/view/SlidingLayer;->mInitialX:F

    .line 110
    iput v5, p0, Lcom/cai88/tools/view/SlidingLayer;->mActivePointerId:I

    .line 127
    iput-boolean v4, p0, Lcom/cai88/tools/view/SlidingLayer;->mLastTouchAllowed:Z

    .line 143
    sget-object v2, Lcom/cai88/tools/shishicai/R$styleable;->SlidingLayer:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 146
    .local v1, "ta":Landroid/content/res/TypedArray;
    const/4 v2, 0x3

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/cai88/tools/view/SlidingLayer;->setStickTo(I)V

    .line 149
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 150
    .local v0, "shadowRes":I
    if-eq v0, v5, :cond_0

    .line 151
    invoke-virtual {p0, v0}, Lcom/cai88/tools/view/SlidingLayer;->setShadowDrawable(I)V

    .line 155
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v2}, Lcom/cai88/tools/view/SlidingLayer;->setShadowWidth(I)V

    .line 158
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/cai88/tools/view/SlidingLayer;->closeOnTapEnabled:Z

    .line 160
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 162
    invoke-direct {p0}, Lcom/cai88/tools/view/SlidingLayer;->init()V

    .line 163
    return-void
.end method

.method private allowDraging(F)Z
    .locals 1
    .param p1, "dx"    # F

    .prologue
    .line 559
    iget-boolean v0, p0, Lcom/cai88/tools/view/SlidingLayer;->mIsOpen:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private allowSlidingFromHere(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 555
    iget-boolean v0, p0, Lcom/cai88/tools/view/SlidingLayer;->mIsOpen:Z

    return v0
.end method

.method private closeLayer(ZZ)V
    .locals 1
    .param p1, "smoothAnim"    # Z
    .param p2, "forceClose"    # Z

    .prologue
    const/4 v0, 0x0

    .line 219
    invoke-direct {p0, v0, p1, p2, v0}, Lcom/cai88/tools/view/SlidingLayer;->switchLayer(ZZZI)V

    .line 221
    return-void
.end method

.method private completeScroll()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 707
    iget-boolean v0, p0, Lcom/cai88/tools/view/SlidingLayer;->mScrolling:Z

    .line 708
    .local v0, "needPopulate":Z
    if-eqz v0, :cond_2

    .line 710
    invoke-virtual {p0, v6}, Lcom/cai88/tools/view/SlidingLayer;->setDrawingCacheEnabled(Z)V

    .line 711
    iget-object v5, p0, Lcom/cai88/tools/view/SlidingLayer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->abortAnimation()V

    .line 712
    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->getScrollX()I

    move-result v1

    .line 713
    .local v1, "oldX":I
    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->getScrollY()I

    move-result v2

    .line 714
    .local v2, "oldY":I
    iget-object v5, p0, Lcom/cai88/tools/view/SlidingLayer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    .line 715
    .local v3, "x":I
    iget-object v5, p0, Lcom/cai88/tools/view/SlidingLayer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    .line 716
    .local v4, "y":I
    if-ne v1, v3, :cond_0

    if-eq v2, v4, :cond_1

    .line 717
    :cond_0
    invoke-virtual {p0, v3, v4}, Lcom/cai88/tools/view/SlidingLayer;->scrollTo(II)V

    .line 719
    :cond_1
    iget-boolean v5, p0, Lcom/cai88/tools/view/SlidingLayer;->mIsOpen:Z

    if-eqz v5, :cond_3

    .line 720
    iget-object v5, p0, Lcom/cai88/tools/view/SlidingLayer;->mOnInteractListener:Lcom/cai88/tools/view/SlidingLayer$OnInteractListener;

    if-eqz v5, :cond_2

    .line 721
    iget-object v5, p0, Lcom/cai88/tools/view/SlidingLayer;->mOnInteractListener:Lcom/cai88/tools/view/SlidingLayer$OnInteractListener;

    invoke-interface {v5}, Lcom/cai88/tools/view/SlidingLayer$OnInteractListener;->onOpened()V

    .line 729
    .end local v1    # "oldX":I
    .end local v2    # "oldY":I
    .end local v3    # "x":I
    .end local v4    # "y":I
    :cond_2
    :goto_0
    iput-boolean v6, p0, Lcom/cai88/tools/view/SlidingLayer;->mScrolling:Z

    .line 730
    return-void

    .line 724
    .restart local v1    # "oldX":I
    .restart local v2    # "oldY":I
    .restart local v3    # "x":I
    .restart local v4    # "y":I
    :cond_3
    iget-object v5, p0, Lcom/cai88/tools/view/SlidingLayer;->mOnInteractListener:Lcom/cai88/tools/view/SlidingLayer$OnInteractListener;

    if-eqz v5, :cond_2

    .line 725
    iget-object v5, p0, Lcom/cai88/tools/view/SlidingLayer;->mOnInteractListener:Lcom/cai88/tools/view/SlidingLayer$OnInteractListener;

    invoke-interface {v5}, Lcom/cai88/tools/view/SlidingLayer$OnInteractListener;->onClosed()V

    goto :goto_0
.end method

.method private determineNextStateOpened(ZFII)Z
    .locals 7
    .param p1, "currentState"    # Z
    .param p2, "swipeOffset"    # F
    .param p3, "velocity"    # I
    .param p4, "deltaX"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v5, -0x2

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 565
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/cai88/tools/view/SlidingLayer;->mFlingDistance:I

    if-le v3, v4, :cond_3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/cai88/tools/view/SlidingLayer;->mMinimumVelocity:I

    if-le v3, v4, :cond_3

    .line 567
    iget v3, p0, Lcom/cai88/tools/view/SlidingLayer;->mScreenSide:I

    if-ne v3, v6, :cond_0

    if-lez p3, :cond_2

    :cond_0
    iget v3, p0, Lcom/cai88/tools/view/SlidingLayer;->mScreenSide:I

    if-ne v3, v5, :cond_1

    if-gtz p3, :cond_2

    .line 584
    .local v0, "targetState":Z
    :cond_1
    :goto_0
    return v0

    .end local v0    # "targetState":Z
    :cond_2
    move v0, v2

    .line 567
    goto :goto_0

    .line 571
    :cond_3
    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->getWidth()I

    move-result v1

    .line 573
    .local v1, "w":I
    iget v3, p0, Lcom/cai88/tools/view/SlidingLayer;->mScreenSide:I

    if-ne v3, v6, :cond_5

    .line 574
    neg-int v3, v1

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpl-float v3, p2, v3

    if-lez v3, :cond_4

    move v0, v2

    .line 575
    .restart local v0    # "targetState":Z
    :cond_4
    goto :goto_0

    .end local v0    # "targetState":Z
    :cond_5
    iget v3, p0, Lcom/cai88/tools/view/SlidingLayer;->mScreenSide:I

    if-ne v3, v5, :cond_7

    .line 576
    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    cmpg-float v3, p2, v3

    if-gez v3, :cond_6

    move v0, v2

    .line 577
    .restart local v0    # "targetState":Z
    :cond_6
    goto :goto_0

    .end local v0    # "targetState":Z
    :cond_7
    iget v3, p0, Lcom/cai88/tools/view/SlidingLayer;->mScreenSide:I

    const/4 v4, -0x3

    if-ne v3, v4, :cond_9

    .line 578
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-int/lit8 v4, v1, 0x2

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_8

    move v0, v2

    .line 579
    .restart local v0    # "targetState":Z
    :cond_8
    goto :goto_0

    .line 580
    .end local v0    # "targetState":Z
    :cond_9
    const/4 v0, 0x1

    .restart local v0    # "targetState":Z
    goto :goto_0
.end method

.method private endDrag()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 664
    iput-boolean v0, p0, Lcom/cai88/tools/view/SlidingLayer;->mIsDragging:Z

    .line 665
    iput-boolean v0, p0, Lcom/cai88/tools/view/SlidingLayer;->mIsUnableToDrag:Z

    .line 666
    iput-boolean v0, p0, Lcom/cai88/tools/view/SlidingLayer;->mLastTouchAllowed:Z

    .line 668
    iget-object v0, p0, Lcom/cai88/tools/view/SlidingLayer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/cai88/tools/view/SlidingLayer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 670
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cai88/tools/view/SlidingLayer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 672
    :cond_0
    return-void
.end method

.method private getDestScrollX()I
    .locals 1

    .prologue
    .line 832
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cai88/tools/view/SlidingLayer;->getDestScrollX(I)I

    move-result v0

    return v0
.end method

.method private getDestScrollX(I)I
    .locals 2
    .param p1, "velocity"    # I

    .prologue
    .line 836
    iget-boolean v0, p0, Lcom/cai88/tools/view/SlidingLayer;->mIsOpen:Z

    if-eqz v0, :cond_0

    .line 837
    const/4 v0, 0x0

    .line 847
    :goto_0
    return v0

    .line 839
    :cond_0
    iget v0, p0, Lcom/cai88/tools/view/SlidingLayer;->mScreenSide:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 840
    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->getWidth()I

    move-result v0

    neg-int v0, v0

    goto :goto_0

    .line 841
    :cond_1
    iget v0, p0, Lcom/cai88/tools/view/SlidingLayer;->mScreenSide:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    .line 842
    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->getWidth()I

    move-result v0

    goto :goto_0

    .line 844
    :cond_2
    if-nez p1, :cond_3

    .line 845
    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->getWidth()I

    move-result v0

    goto :goto_0

    .line 847
    :cond_3
    if-lez p1, :cond_4

    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->getWidth()I

    move-result v0

    neg-int v0, v0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method private getScreenSideAuto(II)I
    .locals 13
    .param p1, "newLeft"    # I
    .param p2, "newRight"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v11, 0x0

    .line 747
    iget v10, p0, Lcom/cai88/tools/view/SlidingLayer;->mScreenSide:I

    if-nez v10, :cond_4

    .line 749
    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v12, "window"

    invoke-virtual {v10, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    .line 750
    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 752
    .local v3, "display":Landroid/view/Display;
    :try_start_0
    const-class v2, Landroid/view/Display;

    .line 753
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v10, 0x1

    new-array v8, v10, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v12, Landroid/graphics/Point;

    aput-object v12, v8, v10

    .line 754
    .local v8, "parameterTypes":[Ljava/lang/Class;
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 755
    .local v7, "parameter":Landroid/graphics/Point;
    const-string v10, "getSize"

    invoke-virtual {v2, v10, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 756
    .local v5, "method":Ljava/lang/reflect/Method;
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v7, v10, v12

    invoke-virtual {v5, v3, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    iget v9, v7, Landroid/graphics/Point;->x:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    .end local v2    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .end local v7    # "parameter":Landroid/graphics/Point;
    .end local v8    # "parameterTypes":[Ljava/lang/Class;
    .local v9, "screenWidth":I
    :goto_0
    if-nez p1, :cond_0

    move v0, v1

    .line 763
    .local v0, "boundToLeftBorder":Z
    :goto_1
    if-ne p2, v9, :cond_1

    .line 765
    .local v1, "boundToRightBorder":Z
    :goto_2
    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_2

    .line 766
    const/4 v6, -0x3

    .line 776
    .end local v0    # "boundToLeftBorder":Z
    .end local v1    # "boundToRightBorder":Z
    .end local v3    # "display":Landroid/view/Display;
    .end local v9    # "screenWidth":I
    .local v6, "newScreenSide":I
    :goto_3
    return v6

    .line 758
    .end local v6    # "newScreenSide":I
    .restart local v3    # "display":Landroid/view/Display;
    :catch_0
    move-exception v4

    .line 759
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v9

    .restart local v9    # "screenWidth":I
    goto :goto_0

    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    move v0, v11

    .line 762
    goto :goto_1

    .restart local v0    # "boundToLeftBorder":Z
    :cond_1
    move v1, v11

    .line 763
    goto :goto_2

    .line 767
    .restart local v1    # "boundToRightBorder":Z
    :cond_2
    if-eqz v0, :cond_3

    .line 768
    const/4 v6, -0x2

    .line 769
    .restart local v6    # "newScreenSide":I
    goto :goto_3

    .line 770
    .end local v6    # "newScreenSide":I
    :cond_3
    const/4 v6, -0x1

    .line 772
    .restart local v6    # "newScreenSide":I
    goto :goto_3

    .line 773
    .end local v0    # "boundToLeftBorder":Z
    .end local v1    # "boundToRightBorder":Z
    .end local v3    # "display":Landroid/view/Display;
    .end local v6    # "newScreenSide":I
    .end local v9    # "screenWidth":I
    :cond_4
    iget v6, p0, Lcom/cai88/tools/view/SlidingLayer;->mScreenSide:I

    .restart local v6    # "newScreenSide":I
    goto :goto_3
.end method

.method private init()V
    .locals 5

    .prologue
    .line 166
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/cai88/tools/view/SlidingLayer;->setWillNotDraw(Z)V

    .line 167
    const/high16 v3, 0x40000

    invoke-virtual {p0, v3}, Lcom/cai88/tools/view/SlidingLayer;->setDescendantFocusability(I)V

    .line 168
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/cai88/tools/view/SlidingLayer;->setFocusable(Z)V

    .line 169
    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 170
    .local v1, "context":Landroid/content/Context;
    new-instance v3, Landroid/widget/Scroller;

    sget-object v4, Lcom/cai88/tools/view/SlidingLayer;->sMenuInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v3, v1, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v3, p0, Lcom/cai88/tools/view/SlidingLayer;->mScroller:Landroid/widget/Scroller;

    .line 171
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 172
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v3

    iput v3, p0, Lcom/cai88/tools/view/SlidingLayer;->mTouchSlop:I

    .line 173
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/cai88/tools/view/SlidingLayer;->mMinimumVelocity:I

    .line 174
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/cai88/tools/view/SlidingLayer;->mMaximumVelocity:I

    .line 176
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 177
    .local v2, "density":F
    const/high16 v3, 0x41c80000    # 25.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/cai88/tools/view/SlidingLayer;->mFlingDistance:I

    .line 178
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 692
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    .line 693
    .local v2, "pointerIndex":I
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 694
    .local v1, "pointerId":I
    iget v3, p0, Lcom/cai88/tools/view/SlidingLayer;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 697
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 698
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    iput v3, p0, Lcom/cai88/tools/view/SlidingLayer;->mLastX:F

    .line 699
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    iput v3, p0, Lcom/cai88/tools/view/SlidingLayer;->mActivePointerId:I

    .line 700
    iget-object v3, p0, Lcom/cai88/tools/view/SlidingLayer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 701
    iget-object v3, p0, Lcom/cai88/tools/view/SlidingLayer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 704
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 697
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openLayer(ZZ)V
    .locals 2
    .param p1, "smoothAnim"    # Z
    .param p2, "forceOpen"    # Z

    .prologue
    .line 210
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/cai88/tools/view/SlidingLayer;->switchLayer(ZZZI)V

    .line 212
    return-void
.end method

.method private switchLayer(ZZZ)V
    .locals 1
    .param p1, "open"    # Z
    .param p2, "smoothAnim"    # Z
    .param p3, "forceSwitch"    # Z

    .prologue
    .line 224
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/cai88/tools/view/SlidingLayer;->switchLayer(ZZZI)V

    .line 225
    return-void
.end method

.method private switchLayer(ZZZI)V
    .locals 4
    .param p1, "open"    # Z
    .param p2, "smoothAnim"    # Z
    .param p3, "forceSwitch"    # Z
    .param p4, "velocity"    # I

    .prologue
    const/4 v3, 0x0

    .line 228
    if-nez p3, :cond_0

    iget-boolean v1, p0, Lcom/cai88/tools/view/SlidingLayer;->mIsOpen:Z

    if-ne p1, v1, :cond_0

    .line 229
    invoke-virtual {p0, v3}, Lcom/cai88/tools/view/SlidingLayer;->setDrawingCacheEnabled(Z)V

    .line 258
    :goto_0
    return-void

    .line 232
    :cond_0
    if-eqz p1, :cond_3

    .line 233
    iget-object v1, p0, Lcom/cai88/tools/view/SlidingLayer;->mOnInteractListener:Lcom/cai88/tools/view/SlidingLayer$OnInteractListener;

    if-eqz v1, :cond_1

    .line 234
    iget-object v1, p0, Lcom/cai88/tools/view/SlidingLayer;->mOnInteractListener:Lcom/cai88/tools/view/SlidingLayer$OnInteractListener;

    invoke-interface {v1}, Lcom/cai88/tools/view/SlidingLayer$OnInteractListener;->onOpen()V

    .line 236
    :cond_1
    iget-object v1, p0, Lcom/cai88/tools/view/SlidingLayer;->slidingHelpPnl:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    .line 237
    iget-object v1, p0, Lcom/cai88/tools/view/SlidingLayer;->slidingHelpPnl:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 248
    :cond_2
    :goto_1
    iput-boolean p1, p0, Lcom/cai88/tools/view/SlidingLayer;->mIsOpen:Z

    .line 250
    invoke-direct {p0, p4}, Lcom/cai88/tools/view/SlidingLayer;->getDestScrollX(I)I

    move-result v0

    .line 252
    .local v0, "destX":I
    if-eqz p2, :cond_5

    .line 253
    invoke-virtual {p0, v0, v3, p4}, Lcom/cai88/tools/view/SlidingLayer;->smoothScrollTo(III)V

    goto :goto_0

    .line 240
    .end local v0    # "destX":I
    :cond_3
    iget-object v1, p0, Lcom/cai88/tools/view/SlidingLayer;->mOnInteractListener:Lcom/cai88/tools/view/SlidingLayer$OnInteractListener;

    if-eqz v1, :cond_4

    .line 241
    iget-object v1, p0, Lcom/cai88/tools/view/SlidingLayer;->mOnInteractListener:Lcom/cai88/tools/view/SlidingLayer$OnInteractListener;

    invoke-interface {v1}, Lcom/cai88/tools/view/SlidingLayer$OnInteractListener;->onClose()V

    .line 243
    :cond_4
    iget-object v1, p0, Lcom/cai88/tools/view/SlidingLayer;->slidingHelpPnl:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    .line 244
    iget-object v1, p0, Lcom/cai88/tools/view/SlidingLayer;->slidingHelpPnl:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 255
    .restart local v0    # "destX":I
    :cond_5
    invoke-direct {p0}, Lcom/cai88/tools/view/SlidingLayer;->completeScroll()V

    .line 256
    invoke-virtual {p0, v0, v3}, Lcom/cai88/tools/view/SlidingLayer;->scrollTo(II)V

    goto :goto_0
.end method


# virtual methods
.method public closeLayer(Z)V
    .locals 1
    .param p1, "smoothAnim"    # Z

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cai88/tools/view/SlidingLayer;->closeLayer(ZZ)V

    .line 216
    return-void
.end method

.method public computeScroll()V
    .locals 8

    .prologue
    .line 874
    iget-object v4, p0, Lcom/cai88/tools/view/SlidingLayer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_2

    .line 875
    iget-object v4, p0, Lcom/cai88/tools/view/SlidingLayer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 876
    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->getScrollX()I

    move-result v0

    .line 877
    .local v0, "oldX":I
    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->getScrollY()I

    move-result v1

    .line 878
    .local v1, "oldY":I
    iget-object v4, p0, Lcom/cai88/tools/view/SlidingLayer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 879
    .local v2, "x":I
    iget-object v4, p0, Lcom/cai88/tools/view/SlidingLayer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 881
    .local v3, "y":I
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 882
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/cai88/tools/view/SlidingLayer;->scrollTo(II)V

    .line 886
    :cond_1
    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->getLeft()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->getTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->getRight()I

    move-result v6

    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->getBottom()I

    move-result v7

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/cai88/tools/view/SlidingLayer;->invalidate(IIII)V

    .line 893
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :goto_0
    return-void

    .line 892
    :cond_2
    invoke-direct {p0}, Lcom/cai88/tools/view/SlidingLayer;->completeScroll()V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 859
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 861
    iget v0, p0, Lcom/cai88/tools/view/SlidingLayer;->mShadowWidth:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/cai88/tools/view/SlidingLayer;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 862
    iget v0, p0, Lcom/cai88/tools/view/SlidingLayer;->mScreenSide:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    .line 863
    iget-object v0, p0, Lcom/cai88/tools/view/SlidingLayer;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/cai88/tools/view/SlidingLayer;->mShadowWidth:I

    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->getHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 865
    :cond_0
    iget v0, p0, Lcom/cai88/tools/view/SlidingLayer;->mScreenSide:I

    const/4 v1, -0x1

    if-ge v0, v1, :cond_1

    .line 866
    iget-object v0, p0, Lcom/cai88/tools/view/SlidingLayer;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/cai88/tools/view/SlidingLayer;->mShadowWidth:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 868
    :cond_1
    iget-object v0, p0, Lcom/cai88/tools/view/SlidingLayer;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 870
    :cond_2
    return-void
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 658
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 659
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 660
    invoke-static {p1}, Landroid/util/FloatMath;->sin(F)F

    move-result v0

    return v0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 334
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 335
    iget-object v0, p0, Lcom/cai88/tools/view/SlidingLayer;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 336
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 339
    :cond_0
    return-void
.end method

.method public getContentLeft()I
    .locals 2

    .prologue
    .line 854
    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getShadowWidth()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lcom/cai88/tools/view/SlidingLayer;->mShadowWidth:I

    return v0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/cai88/tools/view/SlidingLayer;->mIsOpen:Z

    return v0
.end method

.method public isSlidingEnabled()Z
    .locals 1

    .prologue
    .line 342
    iget-boolean v0, p0, Lcom/cai88/tools/view/SlidingLayer;->mEnabled:Z

    return v0
.end method

.method public isSlidingFromShadowEnabled()Z
    .locals 1

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/cai88/tools/view/SlidingLayer;->mSlidingFromShadowEnabled:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 828
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 829
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 360
    iget-boolean v10, p0, Lcom/cai88/tools/view/SlidingLayer;->mEnabled:Z

    if-nez v10, :cond_1

    .line 439
    :cond_0
    :goto_0
    return v8

    .line 364
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    and-int/lit16 v0, v10, 0xff

    .line 366
    .local v0, "action":I
    const/4 v10, 0x3

    if-eq v0, v10, :cond_2

    if-ne v0, v9, :cond_3

    .line 367
    :cond_2
    iput-boolean v8, p0, Lcom/cai88/tools/view/SlidingLayer;->mIsDragging:Z

    .line 368
    iput-boolean v8, p0, Lcom/cai88/tools/view/SlidingLayer;->mIsUnableToDrag:Z

    .line 369
    iput v11, p0, Lcom/cai88/tools/view/SlidingLayer;->mActivePointerId:I

    .line 370
    iget-object v9, p0, Lcom/cai88/tools/view/SlidingLayer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_0

    .line 371
    iget-object v9, p0, Lcom/cai88/tools/view/SlidingLayer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    .line 372
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/cai88/tools/view/SlidingLayer;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 377
    :cond_3
    if-eqz v0, :cond_5

    .line 378
    iget-boolean v10, p0, Lcom/cai88/tools/view/SlidingLayer;->mIsDragging:Z

    if-eqz v10, :cond_4

    move v8, v9

    .line 379
    goto :goto_0

    .line 380
    :cond_4
    iget-boolean v10, p0, Lcom/cai88/tools/view/SlidingLayer;->mIsUnableToDrag:Z

    if-nez v10, :cond_0

    .line 385
    :cond_5
    sparse-switch v0, :sswitch_data_0

    .line 432
    :cond_6
    :goto_1
    iget-boolean v8, p0, Lcom/cai88/tools/view/SlidingLayer;->mIsDragging:Z

    if-nez v8, :cond_8

    .line 433
    iget-object v8, p0, Lcom/cai88/tools/view/SlidingLayer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v8, :cond_7

    .line 434
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, p0, Lcom/cai88/tools/view/SlidingLayer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 436
    :cond_7
    iget-object v8, p0, Lcom/cai88/tools/view/SlidingLayer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 439
    :cond_8
    iget-boolean v8, p0, Lcom/cai88/tools/view/SlidingLayer;->mIsDragging:Z

    goto :goto_0

    .line 387
    :sswitch_0
    iget v1, p0, Lcom/cai88/tools/view/SlidingLayer;->mActivePointerId:I

    .line 388
    .local v1, "activePointerId":I
    if-eq v1, v11, :cond_6

    .line 392
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 393
    .local v3, "pointerIndex":I
    if-ne v3, v11, :cond_9

    .line 394
    iput v11, p0, Lcom/cai88/tools/view/SlidingLayer;->mActivePointerId:I

    goto :goto_1

    .line 398
    :cond_9
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 399
    .local v4, "x":F
    iget v8, p0, Lcom/cai88/tools/view/SlidingLayer;->mLastX:F

    sub-float v2, v4, v8

    .line 400
    .local v2, "dx":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 401
    .local v5, "xDiff":F
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v6

    .line 402
    .local v6, "y":F
    iget v8, p0, Lcom/cai88/tools/view/SlidingLayer;->mLastY:F

    sub-float v8, v6, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 403
    .local v7, "yDiff":F
    iget v8, p0, Lcom/cai88/tools/view/SlidingLayer;->mTouchSlop:I

    int-to-float v8, v8

    cmpl-float v8, v5, v8

    if-lez v8, :cond_a

    cmpl-float v8, v5, v7

    if-lez v8, :cond_a

    invoke-direct {p0, v2}, Lcom/cai88/tools/view/SlidingLayer;->allowDraging(F)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 404
    iput-boolean v9, p0, Lcom/cai88/tools/view/SlidingLayer;->mIsDragging:Z

    .line 405
    iput v4, p0, Lcom/cai88/tools/view/SlidingLayer;->mLastX:F

    .line 406
    invoke-virtual {p0, v9}, Lcom/cai88/tools/view/SlidingLayer;->setDrawingCacheEnabled(Z)V

    goto :goto_1

    .line 407
    :cond_a
    iget v8, p0, Lcom/cai88/tools/view/SlidingLayer;->mTouchSlop:I

    int-to-float v8, v8

    cmpl-float v8, v7, v8

    if-lez v8, :cond_6

    .line 408
    iput-boolean v9, p0, Lcom/cai88/tools/view/SlidingLayer;->mIsUnableToDrag:Z

    goto :goto_1

    .line 413
    .end local v1    # "activePointerId":I
    .end local v2    # "dx":F
    .end local v3    # "pointerIndex":I
    .end local v4    # "x":F
    .end local v5    # "xDiff":F
    .end local v6    # "y":F
    .end local v7    # "yDiff":F
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    .line 414
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x8

    if-lt v11, v12, :cond_b

    .line 415
    :cond_b
    and-int/lit8 v10, v10, 0x8

    .line 413
    iput v10, p0, Lcom/cai88/tools/view/SlidingLayer;->mActivePointerId:I

    .line 416
    iget v10, p0, Lcom/cai88/tools/view/SlidingLayer;->mActivePointerId:I

    invoke-static {p1, v10}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v10

    iput v10, p0, Lcom/cai88/tools/view/SlidingLayer;->mInitialX:F

    iput v10, p0, Lcom/cai88/tools/view/SlidingLayer;->mLastX:F

    .line 417
    iget v10, p0, Lcom/cai88/tools/view/SlidingLayer;->mActivePointerId:I

    invoke-static {p1, v10}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v10

    iput v10, p0, Lcom/cai88/tools/view/SlidingLayer;->mLastY:F

    .line 418
    invoke-direct {p0, p1}, Lcom/cai88/tools/view/SlidingLayer;->allowSlidingFromHere(Landroid/view/MotionEvent;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 419
    iput-boolean v8, p0, Lcom/cai88/tools/view/SlidingLayer;->mIsDragging:Z

    .line 420
    iput-boolean v8, p0, Lcom/cai88/tools/view/SlidingLayer;->mIsUnableToDrag:Z

    .line 422
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto/16 :goto_0

    .line 424
    :cond_c
    iput-boolean v9, p0, Lcom/cai88/tools/view/SlidingLayer;->mIsUnableToDrag:Z

    goto/16 :goto_1

    .line 428
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/cai88/tools/view/SlidingLayer;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 385
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 804
    iget v0, p0, Lcom/cai88/tools/view/SlidingLayer;->mScreenSide:I

    .line 806
    .local v0, "screenSide":I
    iget v1, p0, Lcom/cai88/tools/view/SlidingLayer;->mScreenSide:I

    if-nez v1, :cond_0

    .line 807
    invoke-direct {p0, p2, p4}, Lcom/cai88/tools/view/SlidingLayer;->getScreenSideAuto(II)I

    move-result v0

    .line 810
    :cond_0
    iget v1, p0, Lcom/cai88/tools/view/SlidingLayer;->mScreenSide:I

    if-eq v0, v1, :cond_1

    .line 811
    invoke-virtual {p0, v0}, Lcom/cai88/tools/view/SlidingLayer;->setStickTo(I)V

    .line 813
    iget v1, p0, Lcom/cai88/tools/view/SlidingLayer;->mScreenSide:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 814
    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/cai88/tools/view/SlidingLayer;->mShadowWidth:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/cai88/tools/view/SlidingLayer;->setPadding(IIII)V

    .line 823
    :cond_1
    :goto_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 824
    return-void

    .line 815
    :cond_2
    iget v1, p0, Lcom/cai88/tools/view/SlidingLayer;->mScreenSide:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_3

    .line 816
    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->getPaddingRight()I

    move-result v3

    iget v4, p0, Lcom/cai88/tools/view/SlidingLayer;->mShadowWidth:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/cai88/tools/view/SlidingLayer;->setPadding(IIII)V

    goto :goto_0

    .line 817
    :cond_3
    iget v1, p0, Lcom/cai88/tools/view/SlidingLayer;->mScreenSide:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_1

    .line 818
    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/cai88/tools/view/SlidingLayer;->mShadowWidth:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->getPaddingRight()I

    move-result v3

    iget v4, p0, Lcom/cai88/tools/view/SlidingLayer;->mShadowWidth:I

    add-int/2addr v3, v4

    .line 819
    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->getPaddingBottom()I

    move-result v4

    .line 818
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/cai88/tools/view/SlidingLayer;->setPadding(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 782
    invoke-static {v3, p1}, Lcom/cai88/tools/view/SlidingLayer;->getDefaultSize(II)I

    move-result v1

    .line 783
    .local v1, "width":I
    invoke-static {v3, p2}, Lcom/cai88/tools/view/SlidingLayer;->getDefaultSize(II)I

    move-result v0

    .line 784
    .local v0, "height":I
    invoke-virtual {p0, v1, v0}, Lcom/cai88/tools/view/SlidingLayer;->setMeasuredDimension(II)V

    .line 786
    invoke-static {p1, v3, v1}, Lcom/cai88/tools/view/SlidingLayer;->getChildMeasureSpec(III)I

    move-result v2

    .line 787
    invoke-static {p2, v3, v0}, Lcom/cai88/tools/view/SlidingLayer;->getChildMeasureSpec(III)I

    move-result v3

    .line 786
    invoke-super {p0, v2, v3}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 788
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 792
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 794
    if-eq p1, p3, :cond_0

    .line 795
    invoke-direct {p0}, Lcom/cai88/tools/view/SlidingLayer;->completeScroll()V

    .line 796
    invoke-direct {p0}, Lcom/cai88/tools/view/SlidingLayer;->getDestScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/cai88/tools/view/SlidingLayer;->scrollTo(II)V

    .line 798
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 24
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 444
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cai88/tools/view/SlidingLayer;->mEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cai88/tools/view/SlidingLayer;->mIsDragging:Z

    move/from16 v21, v0

    if-nez v21, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cai88/tools/view/SlidingLayer;->mLastTouchAllowed:Z

    move/from16 v21, v0

    if-nez v21, :cond_1

    invoke-direct/range {p0 .. p1}, Lcom/cai88/tools/view/SlidingLayer;->allowSlidingFromHere(Landroid/view/MotionEvent;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 445
    :cond_0
    const/16 v21, 0x0

    .line 551
    :goto_0
    return v21

    .line 448
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 450
    .local v4, "action":I
    const/16 v21, 0x1

    move/from16 v0, v21

    if-eq v4, v0, :cond_2

    const/16 v21, 0x3

    move/from16 v0, v21

    if-eq v4, v0, :cond_2

    .line 451
    const/16 v21, 0x4

    move/from16 v0, v21

    if-ne v4, v0, :cond_6

    .line 452
    :cond_2
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/cai88/tools/view/SlidingLayer;->mLastTouchAllowed:Z

    .line 457
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cai88/tools/view/SlidingLayer;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    if-nez v21, :cond_3

    .line 458
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cai88/tools/view/SlidingLayer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 460
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cai88/tools/view/SlidingLayer;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 462
    and-int/lit16 v0, v4, 0xff

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_0

    .line 548
    :cond_4
    :goto_2
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cai88/tools/view/SlidingLayer;->mActivePointerId:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 549
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/cai88/tools/view/SlidingLayer;->mLastTouchAllowed:Z

    .line 551
    :cond_5
    const/16 v21, 0x1

    goto :goto_0

    .line 454
    :cond_6
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/cai88/tools/view/SlidingLayer;->mLastTouchAllowed:Z

    goto :goto_1

    .line 464
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/cai88/tools/view/SlidingLayer;->completeScroll()V

    .line 467
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cai88/tools/view/SlidingLayer;->mInitialX:F

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cai88/tools/view/SlidingLayer;->mLastX:F

    .line 468
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cai88/tools/view/SlidingLayer;->mActivePointerId:I

    goto :goto_2

    .line 471
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cai88/tools/view/SlidingLayer;->mIsDragging:Z

    move/from16 v21, v0

    if-nez v21, :cond_8

    .line 472
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cai88/tools/view/SlidingLayer;->mActivePointerId:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v12

    .line 473
    .local v12, "pointerIndex":I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v12, v0, :cond_7

    .line 474
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cai88/tools/view/SlidingLayer;->mActivePointerId:I

    goto :goto_2

    .line 477
    :cond_7
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v17

    .line 478
    .local v17, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cai88/tools/view/SlidingLayer;->mLastX:F

    move/from16 v21, v0

    sub-float v21, v17, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v18

    .line 479
    .local v18, "xDiff":F
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v19

    .line 480
    .local v19, "y":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cai88/tools/view/SlidingLayer;->mLastY:F

    move/from16 v21, v0

    sub-float v21, v19, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v20

    .line 481
    .local v20, "yDiff":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cai88/tools/view/SlidingLayer;->mTouchSlop:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpl-float v21, v18, v21

    if-lez v21, :cond_8

    cmpl-float v21, v18, v20

    if-lez v21, :cond_8

    .line 482
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/cai88/tools/view/SlidingLayer;->mIsDragging:Z

    .line 483
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cai88/tools/view/SlidingLayer;->mLastX:F

    .line 484
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/cai88/tools/view/SlidingLayer;->setDrawingCacheEnabled(Z)V

    .line 487
    .end local v12    # "pointerIndex":I
    .end local v17    # "x":F
    .end local v18    # "xDiff":F
    .end local v19    # "y":F
    .end local v20    # "yDiff":F
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cai88/tools/view/SlidingLayer;->mIsDragging:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    .line 489
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cai88/tools/view/SlidingLayer;->mActivePointerId:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v5

    .line 490
    .local v5, "activePointerIndex":I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v5, v0, :cond_9

    .line 491
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cai88/tools/view/SlidingLayer;->mActivePointerId:I

    goto/16 :goto_2

    .line 494
    :cond_9
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v17

    .line 495
    .restart local v17    # "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cai88/tools/view/SlidingLayer;->mLastX:F

    move/from16 v21, v0

    sub-float v6, v21, v17

    .line 496
    .local v6, "deltaX":F
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cai88/tools/view/SlidingLayer;->mLastX:F

    .line 497
    invoke-virtual/range {p0 .. p0}, Lcom/cai88/tools/view/SlidingLayer;->getScrollX()I

    move-result v21

    move/from16 v0, v21

    int-to-float v11, v0

    .line 498
    .local v11, "oldScrollX":F
    add-float v14, v11, v6

    .line 499
    .local v14, "scrollX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cai88/tools/view/SlidingLayer;->mScreenSide:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/cai88/tools/view/SlidingLayer;->getWidth()I

    move-result v21

    :goto_3
    move/from16 v0, v21

    int-to-float v9, v0

    .line 500
    .local v9, "leftBound":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cai88/tools/view/SlidingLayer;->mScreenSide:I

    move/from16 v21, v0

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    const/16 v21, 0x0

    :goto_4
    move/from16 v0, v21

    int-to-float v13, v0

    .line 501
    .local v13, "rightBound":F
    cmpl-float v21, v14, v9

    if-lez v21, :cond_d

    .line 502
    move v14, v9

    .line 507
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cai88/tools/view/SlidingLayer;->mLastX:F

    move/from16 v21, v0

    float-to-int v0, v14

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v22, v14, v22

    add-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cai88/tools/view/SlidingLayer;->mLastX:F

    .line 508
    float-to-int v0, v14

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/cai88/tools/view/SlidingLayer;->getScrollY()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/cai88/tools/view/SlidingLayer;->scrollTo(II)V

    goto/16 :goto_2

    .line 499
    .end local v9    # "leftBound":F
    .end local v13    # "rightBound":F
    :cond_b
    const/16 v21, 0x0

    goto :goto_3

    .line 500
    .restart local v9    # "leftBound":F
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/cai88/tools/view/SlidingLayer;->getWidth()I

    move-result v21

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    goto :goto_4

    .line 503
    .restart local v13    # "rightBound":F
    :cond_d
    cmpg-float v21, v14, v13

    if-gez v21, :cond_a

    .line 504
    move v14, v13

    goto :goto_5

    .line 512
    .end local v5    # "activePointerIndex":I
    .end local v6    # "deltaX":F
    .end local v9    # "leftBound":F
    .end local v11    # "oldScrollX":F
    .end local v13    # "rightBound":F
    .end local v14    # "scrollX":F
    .end local v17    # "x":F
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cai88/tools/view/SlidingLayer;->mIsDragging:Z

    move/from16 v21, v0

    if-eqz v21, :cond_e

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cai88/tools/view/SlidingLayer;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    .line 514
    .local v16, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v21, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cai88/tools/view/SlidingLayer;->mMaximumVelocity:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 515
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cai88/tools/view/SlidingLayer;->mActivePointerId:I

    move/from16 v21, v0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v21

    move/from16 v0, v21

    float-to-int v8, v0

    .line 516
    .local v8, "initialVelocity":I
    invoke-virtual/range {p0 .. p0}, Lcom/cai88/tools/view/SlidingLayer;->getScrollX()I

    move-result v14

    .line 517
    .local v14, "scrollX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cai88/tools/view/SlidingLayer;->mActivePointerId:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v5

    .line 518
    .restart local v5    # "activePointerIndex":I
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v17

    .line 519
    .restart local v17    # "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cai88/tools/view/SlidingLayer;->mInitialX:F

    move/from16 v21, v0

    sub-float v21, v17, v21

    move/from16 v0, v21

    float-to-int v15, v0

    .line 520
    .local v15, "totalDelta":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cai88/tools/view/SlidingLayer;->mIsOpen:Z

    move/from16 v21, v0

    int-to-float v0, v14

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v8, v15}, Lcom/cai88/tools/view/SlidingLayer;->determineNextStateOpened(ZFII)Z

    move-result v10

    .line 521
    .local v10, "nextStateOpened":Z
    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v10, v1, v2, v8}, Lcom/cai88/tools/view/SlidingLayer;->switchLayer(ZZZI)V

    .line 523
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cai88/tools/view/SlidingLayer;->mActivePointerId:I

    .line 524
    invoke-direct/range {p0 .. p0}, Lcom/cai88/tools/view/SlidingLayer;->endDrag()V

    goto/16 :goto_2

    .line 525
    .end local v5    # "activePointerIndex":I
    .end local v8    # "initialVelocity":I
    .end local v10    # "nextStateOpened":Z
    .end local v14    # "scrollX":I
    .end local v15    # "totalDelta":I
    .end local v16    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v17    # "x":F
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cai88/tools/view/SlidingLayer;->mIsOpen:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cai88/tools/view/SlidingLayer;->closeOnTapEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    .line 526
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/cai88/tools/view/SlidingLayer;->closeLayer(Z)V

    goto/16 :goto_2

    .line 530
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cai88/tools/view/SlidingLayer;->mIsDragging:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    .line 531
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cai88/tools/view/SlidingLayer;->mIsOpen:Z

    move/from16 v21, v0

    const/16 v22, 0x1

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/cai88/tools/view/SlidingLayer;->switchLayer(ZZZ)V

    .line 532
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cai88/tools/view/SlidingLayer;->mActivePointerId:I

    .line 533
    invoke-direct/range {p0 .. p0}, Lcom/cai88/tools/view/SlidingLayer;->endDrag()V

    goto/16 :goto_2

    .line 537
    :pswitch_5
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v7

    .line 538
    .local v7, "index":I
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v17

    .line 539
    .restart local v17    # "x":F
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cai88/tools/view/SlidingLayer;->mLastX:F

    .line 540
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cai88/tools/view/SlidingLayer;->mActivePointerId:I

    goto/16 :goto_2

    .line 544
    .end local v7    # "index":I
    .end local v17    # "x":F
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/cai88/tools/view/SlidingLayer;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 545
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cai88/tools/view/SlidingLayer;->mActivePointerId:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cai88/tools/view/SlidingLayer;->mLastY:F

    goto/16 :goto_2

    .line 462
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public openLayer(Z)V
    .locals 1
    .param p1, "smoothAnim"    # Z

    .prologue
    .line 206
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cai88/tools/view/SlidingLayer;->openLayer(ZZ)V

    .line 207
    return-void
.end method

.method public setCloseOnTapEnabled(Z)V
    .locals 0
    .param p1, "_closeOnTapEnabled"    # Z

    .prologue
    .line 739
    iput-boolean p1, p0, Lcom/cai88/tools/view/SlidingLayer;->closeOnTapEnabled:Z

    .line 740
    return-void
.end method

.method public setDrawingCacheEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 677
    iget-boolean v3, p0, Lcom/cai88/tools/view/SlidingLayer;->mDrawingCacheEnabled:Z

    if-eq v3, p1, :cond_0

    .line 678
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setDrawingCacheEnabled(Z)V

    .line 679
    iput-boolean p1, p0, Lcom/cai88/tools/view/SlidingLayer;->mDrawingCacheEnabled:Z

    .line 681
    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->getChildCount()I

    move-result v2

    .line 682
    .local v2, "l":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 689
    .end local v1    # "i":I
    .end local v2    # "l":I
    :cond_0
    return-void

    .line 683
    .restart local v1    # "i":I
    .restart local v2    # "l":I
    :cond_1
    invoke-virtual {p0, v1}, Lcom/cai88/tools/view/SlidingLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 684
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2

    .line 685
    invoke-virtual {v0, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 682
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setOnInteractListener(Lcom/cai88/tools/view/SlidingLayer$OnInteractListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/cai88/tools/view/SlidingLayer$OnInteractListener;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/cai88/tools/view/SlidingLayer;->mOnInteractListener:Lcom/cai88/tools/view/SlidingLayer$OnInteractListener;

    .line 268
    return-void
.end method

.method public setShadowDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cai88/tools/view/SlidingLayer;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 325
    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/cai88/tools/view/SlidingLayer;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 312
    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->refreshDrawableState()V

    .line 313
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cai88/tools/view/SlidingLayer;->setWillNotDraw(Z)V

    .line 314
    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->getBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/cai88/tools/view/SlidingLayer;->invalidate(IIII)V

    .line 315
    return-void
.end method

.method public setShadowWidth(I)V
    .locals 4
    .param p1, "shadowWidth"    # I

    .prologue
    .line 281
    iput p1, p0, Lcom/cai88/tools/view/SlidingLayer;->mShadowWidth:I

    .line 282
    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->getBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/cai88/tools/view/SlidingLayer;->invalidate(IIII)V

    .line 283
    return-void
.end method

.method public setShadowWidthRes(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/cai88/tools/view/SlidingLayer;->setShadowWidth(I)V

    .line 293
    return-void
.end method

.method public setSlidingEnabled(Z)V
    .locals 0
    .param p1, "_enabled"    # Z

    .prologue
    .line 346
    iput-boolean p1, p0, Lcom/cai88/tools/view/SlidingLayer;->mEnabled:Z

    .line 347
    return-void
.end method

.method public setSlidingFromShadowEnabled(Z)V
    .locals 0
    .param p1, "_slidingShadow"    # Z

    .prologue
    .line 354
    iput-boolean p1, p0, Lcom/cai88/tools/view/SlidingLayer;->mSlidingFromShadowEnabled:Z

    .line 355
    return-void
.end method

.method public setSlidingHelpPnl(Landroid/widget/FrameLayout;)V
    .locals 2
    .param p1, "slidinghelppnl"    # Landroid/widget/FrameLayout;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/cai88/tools/view/SlidingLayer;->slidingHelpPnl:Landroid/widget/FrameLayout;

    .line 194
    iget-object v0, p0, Lcom/cai88/tools/view/SlidingLayer;->slidingHelpPnl:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/cai88/tools/view/SlidingLayer$2;

    invoke-direct {v1, p0}, Lcom/cai88/tools/view/SlidingLayer$2;-><init>(Lcom/cai88/tools/view/SlidingLayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    return-void
.end method

.method public setStickTo(I)V
    .locals 2
    .param p1, "screenSide"    # I

    .prologue
    .line 734
    iput p1, p0, Lcom/cai88/tools/view/SlidingLayer;->mScreenSide:I

    .line 735
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/cai88/tools/view/SlidingLayer;->closeLayer(ZZ)V

    .line 736
    return-void
.end method

.method smoothScrollTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 596
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/cai88/tools/view/SlidingLayer;->smoothScrollTo(III)V

    .line 597
    return-void
.end method

.method smoothScrollTo(III)V
    .locals 12
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "velocity"    # I

    .prologue
    const/4 v10, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    .line 610
    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 611
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cai88/tools/view/SlidingLayer;->setDrawingCacheEnabled(Z)V

    .line 651
    :cond_0
    :goto_0
    return-void

    .line 614
    :cond_1
    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->getScrollX()I

    move-result v1

    .line 615
    .local v1, "sx":I
    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->getScrollY()I

    move-result v2

    .line 616
    .local v2, "sy":I
    sub-int v3, p1, v1

    .line 617
    .local v3, "dx":I
    sub-int v4, p2, v2

    .line 618
    .local v4, "dy":I
    if-nez v3, :cond_3

    if-nez v4, :cond_3

    .line 619
    invoke-direct {p0}, Lcom/cai88/tools/view/SlidingLayer;->completeScroll()V

    .line 620
    iget-boolean v0, p0, Lcom/cai88/tools/view/SlidingLayer;->mIsOpen:Z

    if-eqz v0, :cond_2

    .line 621
    iget-object v0, p0, Lcom/cai88/tools/view/SlidingLayer;->mOnInteractListener:Lcom/cai88/tools/view/SlidingLayer$OnInteractListener;

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/cai88/tools/view/SlidingLayer;->mOnInteractListener:Lcom/cai88/tools/view/SlidingLayer$OnInteractListener;

    invoke-interface {v0}, Lcom/cai88/tools/view/SlidingLayer$OnInteractListener;->onOpened()V

    goto :goto_0

    .line 625
    :cond_2
    iget-object v0, p0, Lcom/cai88/tools/view/SlidingLayer;->mOnInteractListener:Lcom/cai88/tools/view/SlidingLayer$OnInteractListener;

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/cai88/tools/view/SlidingLayer;->mOnInteractListener:Lcom/cai88/tools/view/SlidingLayer$OnInteractListener;

    invoke-interface {v0}, Lcom/cai88/tools/view/SlidingLayer$OnInteractListener;->onClosed()V

    goto :goto_0

    .line 632
    :cond_3
    invoke-virtual {p0, v10}, Lcom/cai88/tools/view/SlidingLayer;->setDrawingCacheEnabled(Z)V

    .line 633
    iput-boolean v10, p0, Lcom/cai88/tools/view/SlidingLayer;->mScrolling:Z

    .line 635
    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->getWidth()I

    move-result v9

    .line 636
    .local v9, "width":I
    div-int/lit8 v8, v9, 0x2

    .line 637
    .local v8, "halfWidth":I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v11

    int-to-float v10, v9

    div-float/2addr v0, v10

    invoke-static {v11, v0}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 638
    .local v7, "distanceRatio":F
    int-to-float v0, v8

    int-to-float v10, v8

    invoke-virtual {p0, v7}, Lcom/cai88/tools/view/SlidingLayer;->distanceInfluenceForSnapDuration(F)F

    move-result v11

    mul-float/2addr v10, v11

    add-float v6, v0, v10

    .line 640
    .local v6, "distance":F
    const/4 v5, 0x0

    .line 641
    .local v5, "duration":I
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 642
    if-lez p3, :cond_4

    .line 643
    const/high16 v0, 0x447a0000    # 1000.0f

    int-to-float v10, p3

    div-float v10, v6, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    mul-float/2addr v0, v10

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v5, v0, 0x4

    .line 647
    :goto_1
    const/16 v0, 0x258

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 649
    iget-object v0, p0, Lcom/cai88/tools/view/SlidingLayer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 650
    invoke-virtual {p0}, Lcom/cai88/tools/view/SlidingLayer;->invalidate()V

    goto :goto_0

    .line 645
    :cond_4
    const/16 v5, 0x258

    goto :goto_1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 329
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cai88/tools/view/SlidingLayer;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
