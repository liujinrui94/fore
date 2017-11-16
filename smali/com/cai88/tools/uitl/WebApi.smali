.class public Lcom/cai88/tools/uitl/WebApi;
.super Ljava/lang/Object;
.source "WebApi.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/cai88/tools/uitl/WebApi;->context:Landroid/content/Context;

    .line 10
    return-void
.end method
