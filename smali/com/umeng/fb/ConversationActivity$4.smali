.class Lcom/umeng/fb/ConversationActivity$4;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/fb/ConversationActivity;->setListViewHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/fb/ConversationActivity;


# direct methods
.method constructor <init>(Lcom/umeng/fb/ConversationActivity;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/umeng/fb/ConversationActivity$4;->this$0:Lcom/umeng/fb/ConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private applyHeaderPadding(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    .line 206
    .local v2, "pointerCount":I
    const/4 v1, 0x0

    .local v1, "p":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 207
    iget-object v4, p0, Lcom/umeng/fb/ConversationActivity$4;->this$0:Lcom/umeng/fb/ConversationActivity;

    invoke-static {v4}, Lcom/umeng/fb/ConversationActivity;->access$100(Lcom/umeng/fb/ConversationActivity;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    if-nez v4, :cond_0

    .line 208
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v4

    float-to-int v0, v4

    .line 212
    .local v0, "historicalY":I
    iget-object v4, p0, Lcom/umeng/fb/ConversationActivity$4;->this$0:Lcom/umeng/fb/ConversationActivity;

    invoke-static {v4}, Lcom/umeng/fb/ConversationActivity;->access$200(Lcom/umeng/fb/ConversationActivity;)I

    move-result v4

    sub-int v4, v0, v4

    iget-object v5, p0, Lcom/umeng/fb/ConversationActivity$4;->this$0:Lcom/umeng/fb/ConversationActivity;

    iget v5, v5, Lcom/umeng/fb/ConversationActivity;->headerHeight:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    const-wide v6, 0x3ffb333333333333L    # 1.7

    div-double/2addr v4, v6

    double-to-int v3, v4

    .line 214
    .local v3, "topPadding":I
    iget-object v4, p0, Lcom/umeng/fb/ConversationActivity$4;->this$0:Lcom/umeng/fb/ConversationActivity;

    iget-object v4, v4, Lcom/umeng/fb/ConversationActivity;->header:Landroid/widget/RelativeLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 215
    iget-object v4, p0, Lcom/umeng/fb/ConversationActivity$4;->this$0:Lcom/umeng/fb/ConversationActivity;

    iget-object v4, v4, Lcom/umeng/fb/ConversationActivity;->header:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/umeng/fb/ConversationActivity$4;->this$0:Lcom/umeng/fb/ConversationActivity;

    iget-object v5, v5, Lcom/umeng/fb/ConversationActivity;->header:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v5

    iget-object v6, p0, Lcom/umeng/fb/ConversationActivity$4;->this$0:Lcom/umeng/fb/ConversationActivity;

    iget-object v6, v6, Lcom/umeng/fb/ConversationActivity;->header:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v6

    iget-object v7, p0, Lcom/umeng/fb/ConversationActivity$4;->this$0:Lcom/umeng/fb/ConversationActivity;

    iget-object v7, v7, Lcom/umeng/fb/ConversationActivity;->header:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 206
    .end local v0    # "historicalY":I
    .end local v3    # "topPadding":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 220
    :cond_1
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    .line 167
    iget-object v0, p0, Lcom/umeng/fb/ConversationActivity$4;->this$0:Lcom/umeng/fb/ConversationActivity;

    invoke-static {v0}, Lcom/umeng/fb/ConversationActivity;->access$100(Lcom/umeng/fb/ConversationActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 199
    :cond_0
    :goto_0
    return v5

    .line 169
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 191
    :pswitch_0
    iget-object v0, p0, Lcom/umeng/fb/ConversationActivity$4;->this$0:Lcom/umeng/fb/ConversationActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/umeng/fb/ConversationActivity;->access$202(Lcom/umeng/fb/ConversationActivity;I)I

    goto :goto_0

    .line 171
    :pswitch_1
    iget-object v0, p0, Lcom/umeng/fb/ConversationActivity$4;->this$0:Lcom/umeng/fb/ConversationActivity;

    invoke-static {v0}, Lcom/umeng/fb/ConversationActivity;->access$100(Lcom/umeng/fb/ConversationActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/umeng/fb/ConversationActivity$4;->this$0:Lcom/umeng/fb/ConversationActivity;

    iget-object v0, v0, Lcom/umeng/fb/ConversationActivity;->header:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v0

    iget-object v1, p0, Lcom/umeng/fb/ConversationActivity$4;->this$0:Lcom/umeng/fb/ConversationActivity;

    iget v1, v1, Lcom/umeng/fb/ConversationActivity;->headerHeight:I

    add-int/lit8 v1, v1, 0x14

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/umeng/fb/ConversationActivity$4;->this$0:Lcom/umeng/fb/ConversationActivity;

    iget-object v0, v0, Lcom/umeng/fb/ConversationActivity;->header:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v0

    if-lez v0, :cond_3

    .line 174
    :cond_2
    iget-object v0, p0, Lcom/umeng/fb/ConversationActivity$4;->this$0:Lcom/umeng/fb/ConversationActivity;

    iget-object v0, v0, Lcom/umeng/fb/ConversationActivity;->header:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/umeng/fb/ConversationActivity$4;->this$0:Lcom/umeng/fb/ConversationActivity;

    iget-object v0, v0, Lcom/umeng/fb/ConversationActivity;->header:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/umeng/fb/ConversationActivity$4;->this$0:Lcom/umeng/fb/ConversationActivity;

    iget-object v1, v1, Lcom/umeng/fb/ConversationActivity;->header:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/umeng/fb/ConversationActivity$4;->this$0:Lcom/umeng/fb/ConversationActivity;

    iget v2, v2, Lcom/umeng/fb/ConversationActivity;->headerPaddingOriginal:I

    iget-object v3, p0, Lcom/umeng/fb/ConversationActivity$4;->this$0:Lcom/umeng/fb/ConversationActivity;

    iget-object v3, v3, Lcom/umeng/fb/ConversationActivity;->header:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/umeng/fb/ConversationActivity$4;->this$0:Lcom/umeng/fb/ConversationActivity;

    iget-object v4, v4, Lcom/umeng/fb/ConversationActivity;->header:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto :goto_0

    .line 182
    :cond_3
    iget-object v0, p0, Lcom/umeng/fb/ConversationActivity$4;->this$0:Lcom/umeng/fb/ConversationActivity;

    invoke-static {v0}, Lcom/umeng/fb/ConversationActivity;->access$100(Lcom/umeng/fb/ConversationActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 183
    iget-object v0, p0, Lcom/umeng/fb/ConversationActivity$4;->this$0:Lcom/umeng/fb/ConversationActivity;

    iget-object v0, v0, Lcom/umeng/fb/ConversationActivity;->header:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/umeng/fb/ConversationActivity$4;->this$0:Lcom/umeng/fb/ConversationActivity;

    iget-object v0, v0, Lcom/umeng/fb/ConversationActivity;->header:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/umeng/fb/ConversationActivity$4;->this$0:Lcom/umeng/fb/ConversationActivity;

    iget-object v1, v1, Lcom/umeng/fb/ConversationActivity;->header:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/umeng/fb/ConversationActivity$4;->this$0:Lcom/umeng/fb/ConversationActivity;

    iget v2, v2, Lcom/umeng/fb/ConversationActivity;->headerHeight:I

    neg-int v2, v2

    iget-object v3, p0, Lcom/umeng/fb/ConversationActivity$4;->this$0:Lcom/umeng/fb/ConversationActivity;

    iget-object v3, v3, Lcom/umeng/fb/ConversationActivity;->header:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/umeng/fb/ConversationActivity$4;->this$0:Lcom/umeng/fb/ConversationActivity;

    iget-object v4, v4, Lcom/umeng/fb/ConversationActivity;->header:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto/16 :goto_0

    .line 195
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/umeng/fb/ConversationActivity$4;->applyHeaderPadding(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
