.class public Lcom/cai88/tools/model/AdditionModel;
.super Ljava/lang/Object;
.source "AdditionModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1876eL


# instance fields
.field public money:F

.field public points:I

.field public systime:Ljava/lang/String;

.field public token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/cai88/tools/model/AdditionModel;->token:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/cai88/tools/model/AdditionModel;->systime:Ljava/lang/String;

    .line 5
    return-void
.end method
