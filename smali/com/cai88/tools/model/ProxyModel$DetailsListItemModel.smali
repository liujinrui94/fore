.class public Lcom/cai88/tools/model/ProxyModel$DetailsListItemModel;
.super Ljava/lang/Object;
.source "ProxyModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cai88/tools/model/ProxyModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DetailsListItemModel"
.end annotation


# instance fields
.field public BaseCode:Ljava/lang/String;

.field public GameName:Ljava/lang/String;

.field public IssueNumber:Ljava/lang/String;

.field public SpecialCode:Ljava/lang/String;

.field final synthetic this$0:Lcom/cai88/tools/model/ProxyModel;


# direct methods
.method public constructor <init>(Lcom/cai88/tools/model/ProxyModel;)V
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/cai88/tools/model/ProxyModel$DetailsListItemModel;->this$0:Lcom/cai88/tools/model/ProxyModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
