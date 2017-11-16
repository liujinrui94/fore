.class Lcom/cai88/tools/shishicai/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cai88/tools/shishicai/MainActivity;->ExitApp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cai88/tools/shishicai/MainActivity;


# direct methods
.method constructor <init>(Lcom/cai88/tools/shishicai/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cai88/tools/shishicai/MainActivity$3;->this$0:Lcom/cai88/tools/shishicai/MainActivity;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 140
    iget-object v0, p0, Lcom/cai88/tools/shishicai/MainActivity$3;->this$0:Lcom/cai88/tools/shishicai/MainActivity;

    invoke-virtual {v0}, Lcom/cai88/tools/shishicai/MainActivity;->finish()V

    .line 141
    return-void
.end method
