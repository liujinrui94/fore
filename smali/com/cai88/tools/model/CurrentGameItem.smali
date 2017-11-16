.class public Lcom/cai88/tools/model/CurrentGameItem;
.super Ljava/lang/Object;
.source "CurrentGameItem.java"


# instance fields
.field public cname:Ljava/lang/String;

.field public end:Ljava/lang/String;

.field public issue:Ljava/lang/String;

.field public list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cai88/tools/model/LotteryOpenModel;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public pool:I

.field public remains:Ljava/lang/String;

.field public start:Ljava/lang/String;

.field public status:I

.field public ticks:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
