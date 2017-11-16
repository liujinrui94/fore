.class public Lcom/alimama/mobile/csdk/umupdate/models/b;
.super Ljava/lang/Object;
.source "EntityWarpper.java"


# instance fields
.field private final a:Lcom/alimama/mobile/csdk/umupdate/models/c;

.field private final b:Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;


# direct methods
.method public constructor <init>(Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;)V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/alimama/mobile/csdk/umupdate/models/b;->b:Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    .line 12
    new-instance v0, Lcom/alimama/mobile/csdk/umupdate/models/c;

    invoke-direct {v0}, Lcom/alimama/mobile/csdk/umupdate/models/c;-><init>()V

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/b;->a:Lcom/alimama/mobile/csdk/umupdate/models/c;

    .line 13
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/b;->a:Lcom/alimama/mobile/csdk/umupdate/models/c;

    invoke-virtual {v0, p1}, Lcom/alimama/mobile/csdk/umupdate/models/c;->a(Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;)V

    .line 14
    return-void
.end method


# virtual methods
.method public a()Lcom/alimama/mobile/csdk/umupdate/models/c;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/b;->a:Lcom/alimama/mobile/csdk/umupdate/models/c;

    return-object v0
.end method

.method public b()Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/b;->b:Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    return-object v0
.end method
