.class Lcom/umeng/fb/ContactActivity$1;
.super Ljava/lang/Object;
.source "ContactActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/fb/ContactActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/fb/ContactActivity;


# direct methods
.method constructor <init>(Lcom/umeng/fb/ContactActivity;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/umeng/fb/ContactActivity$1;->this$0:Lcom/umeng/fb/ContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/umeng/fb/ContactActivity$1;->this$0:Lcom/umeng/fb/ContactActivity;

    invoke-virtual {v0}, Lcom/umeng/fb/ContactActivity;->back()V

    .line 104
    return-void
.end method
