.class final enum Lcom/alimama/mobile/csdk/umupdate/models/d$1;
.super Lcom/alimama/mobile/csdk/umupdate/models/d;
.source "UFPModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alimama/mobile/csdk/umupdate/models/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 5
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alimama/mobile/csdk/umupdate/models/d;-><init>(Ljava/lang/String;ILcom/alimama/mobile/csdk/umupdate/models/d$1;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    const-string v0, "um"

    return-object v0
.end method