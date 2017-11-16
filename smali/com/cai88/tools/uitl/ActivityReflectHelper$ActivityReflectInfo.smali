.class public Lcom/cai88/tools/uitl/ActivityReflectHelper$ActivityReflectInfo;
.super Ljava/lang/Object;
.source "ActivityReflectHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cai88/tools/uitl/ActivityReflectHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActivityReflectInfo"
.end annotation


# instance fields
.field public className:Ljava/lang/String;

.field public param:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/cai88/tools/uitl/ActivityReflectHelper;


# direct methods
.method public constructor <init>(Lcom/cai88/tools/uitl/ActivityReflectHelper;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/cai88/tools/uitl/ActivityReflectHelper$ActivityReflectInfo;->this$0:Lcom/cai88/tools/uitl/ActivityReflectHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
