.class public Lcom/cai88/tools/model/OmissionModel;
.super Ljava/lang/Object;
.source "OmissionModel.java"


# instance fields
.field public c:Ljava/lang/String;

.field public code:Ljava/lang/String;

.field public issue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/cai88/tools/model/OmissionModel;->issue:Ljava/lang/String;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/cai88/tools/model/OmissionModel;->c:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/cai88/tools/model/OmissionModel;->code:Ljava/lang/String;

    .line 3
    return-void
.end method
