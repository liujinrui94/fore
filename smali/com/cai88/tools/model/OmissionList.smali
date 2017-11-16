.class public Lcom/cai88/tools/model/OmissionList;
.super Ljava/lang/Object;
.source "OmissionList.java"


# instance fields
.field public gameName:Ljava/lang/String;

.field public list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cai88/tools/model/OmissionModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/cai88/tools/model/OmissionList;->gameName:Ljava/lang/String;

    .line 5
    return-void
.end method
