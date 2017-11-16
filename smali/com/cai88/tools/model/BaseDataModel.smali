.class public Lcom/cai88/tools/model/BaseDataModel;
.super Ljava/lang/Object;
.source "BaseDataModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public addition:Lcom/cai88/tools/model/AdditionModel;

.field public model:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public msg:Ljava/lang/String;

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    .local p0, "this":Lcom/cai88/tools/model/BaseDataModel;, "Lcom/cai88/tools/model/BaseDataModel<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/cai88/tools/model/BaseDataModel;->status:I

    .line 16
    return-void
.end method
