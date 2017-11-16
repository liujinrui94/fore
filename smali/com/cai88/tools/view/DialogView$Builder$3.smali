.class Lcom/cai88/tools/view/DialogView$Builder$3;
.super Ljava/lang/Object;
.source "DialogView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cai88/tools/view/DialogView$Builder;->create()Lcom/cai88/tools/view/DialogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cai88/tools/view/DialogView$Builder;

.field private final synthetic val$dialog:Lcom/cai88/tools/view/DialogView;


# direct methods
.method constructor <init>(Lcom/cai88/tools/view/DialogView$Builder;Lcom/cai88/tools/view/DialogView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cai88/tools/view/DialogView$Builder$3;->this$1:Lcom/cai88/tools/view/DialogView$Builder;

    iput-object p2, p0, Lcom/cai88/tools/view/DialogView$Builder$3;->val$dialog:Lcom/cai88/tools/view/DialogView;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/cai88/tools/view/DialogView$Builder$3;->val$dialog:Lcom/cai88/tools/view/DialogView;

    invoke-virtual {v0}, Lcom/cai88/tools/view/DialogView;->dismiss()V

    .line 234
    return-void
.end method
