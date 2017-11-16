.class public Lcom/cai88/tools/model/ProxyModel$DetailsListModel;
.super Ljava/lang/Object;
.source "ProxyModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cai88/tools/model/ProxyModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DetailsListModel"
.end annotation


# instance fields
.field public list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cai88/tools/model/ProxyModel$DetailsListItemModel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/cai88/tools/model/ProxyModel;


# direct methods
.method public constructor <init>(Lcom/cai88/tools/model/ProxyModel;)V
    .locals 0

    .prologue
    .line 10
    iput-object p1, p0, Lcom/cai88/tools/model/ProxyModel$DetailsListModel;->this$0:Lcom/cai88/tools/model/ProxyModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
