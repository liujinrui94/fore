.class Lcom/cai88/tools/view/SlidingLayer$2;
.super Ljava/lang/Object;
.source "SlidingLayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cai88/tools/view/SlidingLayer;->setSlidingHelpPnl(Landroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cai88/tools/view/SlidingLayer;


# direct methods
.method constructor <init>(Lcom/cai88/tools/view/SlidingLayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cai88/tools/view/SlidingLayer$2;->this$0:Lcom/cai88/tools/view/SlidingLayer;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/cai88/tools/view/SlidingLayer$2;->this$0:Lcom/cai88/tools/view/SlidingLayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cai88/tools/view/SlidingLayer;->closeLayer(Z)V

    .line 198
    return-void
.end method
