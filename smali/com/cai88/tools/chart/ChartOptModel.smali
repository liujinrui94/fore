.class public Lcom/cai88/tools/chart/ChartOptModel;
.super Ljava/lang/Object;
.source "ChartOptModel.java"


# instance fields
.field private backgroundColor:I

.field private circleColor:I

.field private doubleCount:I

.field private drawBackground:Z

.field private drawCircle:Z

.field private drawHightLine:Z

.field public drawLayout:I

.field private drawLine:Z

.field private info:Ljava/lang/String;

.field private infoColor:I

.field private smallCircleColor:I

.field private width:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-boolean v1, p0, Lcom/cai88/tools/chart/ChartOptModel;->drawCircle:Z

    .line 8
    iput-boolean v1, p0, Lcom/cai88/tools/chart/ChartOptModel;->drawLine:Z

    .line 9
    iput-boolean v1, p0, Lcom/cai88/tools/chart/ChartOptModel;->drawBackground:Z

    .line 10
    iput-boolean v1, p0, Lcom/cai88/tools/chart/ChartOptModel;->drawHightLine:Z

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/cai88/tools/chart/ChartOptModel;->width:F

    .line 15
    iput v1, p0, Lcom/cai88/tools/chart/ChartOptModel;->doubleCount:I

    .line 17
    const/16 v0, 0x11

    iput v0, p0, Lcom/cai88/tools/chart/ChartOptModel;->drawLayout:I

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IF)V
    .locals 2
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "infoColor"    # I
    .param p3, "width"    # F

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-boolean v1, p0, Lcom/cai88/tools/chart/ChartOptModel;->drawCircle:Z

    .line 8
    iput-boolean v1, p0, Lcom/cai88/tools/chart/ChartOptModel;->drawLine:Z

    .line 9
    iput-boolean v1, p0, Lcom/cai88/tools/chart/ChartOptModel;->drawBackground:Z

    .line 10
    iput-boolean v1, p0, Lcom/cai88/tools/chart/ChartOptModel;->drawHightLine:Z

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/cai88/tools/chart/ChartOptModel;->width:F

    .line 15
    iput v1, p0, Lcom/cai88/tools/chart/ChartOptModel;->doubleCount:I

    .line 17
    const/16 v0, 0x11

    iput v0, p0, Lcom/cai88/tools/chart/ChartOptModel;->drawLayout:I

    .line 22
    iput-object p1, p0, Lcom/cai88/tools/chart/ChartOptModel;->info:Ljava/lang/String;

    .line 23
    iput p2, p0, Lcom/cai88/tools/chart/ChartOptModel;->infoColor:I

    .line 24
    iput p3, p0, Lcom/cai88/tools/chart/ChartOptModel;->width:F

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IFZ)V
    .locals 2
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "infoColor"    # I
    .param p3, "width"    # F
    .param p4, "drawHightLine"    # Z

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-boolean v1, p0, Lcom/cai88/tools/chart/ChartOptModel;->drawCircle:Z

    .line 8
    iput-boolean v1, p0, Lcom/cai88/tools/chart/ChartOptModel;->drawLine:Z

    .line 9
    iput-boolean v1, p0, Lcom/cai88/tools/chart/ChartOptModel;->drawBackground:Z

    .line 10
    iput-boolean v1, p0, Lcom/cai88/tools/chart/ChartOptModel;->drawHightLine:Z

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/cai88/tools/chart/ChartOptModel;->width:F

    .line 15
    iput v1, p0, Lcom/cai88/tools/chart/ChartOptModel;->doubleCount:I

    .line 17
    const/16 v0, 0x11

    iput v0, p0, Lcom/cai88/tools/chart/ChartOptModel;->drawLayout:I

    .line 28
    iput-object p1, p0, Lcom/cai88/tools/chart/ChartOptModel;->info:Ljava/lang/String;

    .line 29
    iput p2, p0, Lcom/cai88/tools/chart/ChartOptModel;->infoColor:I

    .line 30
    iput p3, p0, Lcom/cai88/tools/chart/ChartOptModel;->width:F

    .line 31
    iput-boolean p4, p0, Lcom/cai88/tools/chart/ChartOptModel;->drawHightLine:Z

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZIF)V
    .locals 2
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "infoColor"    # I
    .param p3, "drawBackground"    # Z
    .param p4, "backgroundColor"    # I
    .param p5, "width"    # F

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-boolean v1, p0, Lcom/cai88/tools/chart/ChartOptModel;->drawCircle:Z

    .line 8
    iput-boolean v1, p0, Lcom/cai88/tools/chart/ChartOptModel;->drawLine:Z

    .line 9
    iput-boolean v1, p0, Lcom/cai88/tools/chart/ChartOptModel;->drawBackground:Z

    .line 10
    iput-boolean v1, p0, Lcom/cai88/tools/chart/ChartOptModel;->drawHightLine:Z

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/cai88/tools/chart/ChartOptModel;->width:F

    .line 15
    iput v1, p0, Lcom/cai88/tools/chart/ChartOptModel;->doubleCount:I

    .line 17
    const/16 v0, 0x11

    iput v0, p0, Lcom/cai88/tools/chart/ChartOptModel;->drawLayout:I

    .line 35
    iput-object p1, p0, Lcom/cai88/tools/chart/ChartOptModel;->info:Ljava/lang/String;

    .line 36
    iput p2, p0, Lcom/cai88/tools/chart/ChartOptModel;->infoColor:I

    .line 37
    iput-boolean p3, p0, Lcom/cai88/tools/chart/ChartOptModel;->drawBackground:Z

    .line 38
    iput p4, p0, Lcom/cai88/tools/chart/ChartOptModel;->backgroundColor:I

    .line 39
    iput p5, p0, Lcom/cai88/tools/chart/ChartOptModel;->width:F

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZZIF)V
    .locals 2
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "infoColor"    # I
    .param p3, "drawLine"    # Z
    .param p4, "drawCircle"    # Z
    .param p5, "circleColor"    # I
    .param p6, "width"    # F

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-boolean v1, p0, Lcom/cai88/tools/chart/ChartOptModel;->drawCircle:Z

    .line 8
    iput-boolean v1, p0, Lcom/cai88/tools/chart/ChartOptModel;->drawLine:Z

    .line 9
    iput-boolean v1, p0, Lcom/cai88/tools/chart/ChartOptModel;->drawBackground:Z

    .line 10
    iput-boolean v1, p0, Lcom/cai88/tools/chart/ChartOptModel;->drawHightLine:Z

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/cai88/tools/chart/ChartOptModel;->width:F

    .line 15
    iput v1, p0, Lcom/cai88/tools/chart/ChartOptModel;->doubleCount:I

    .line 17
    const/16 v0, 0x11

    iput v0, p0, Lcom/cai88/tools/chart/ChartOptModel;->drawLayout:I

    .line 43
    iput-object p1, p0, Lcom/cai88/tools/chart/ChartOptModel;->info:Ljava/lang/String;

    .line 44
    iput p2, p0, Lcom/cai88/tools/chart/ChartOptModel;->infoColor:I

    .line 45
    iput-boolean p3, p0, Lcom/cai88/tools/chart/ChartOptModel;->drawLine:Z

    .line 46
    iput-boolean p4, p0, Lcom/cai88/tools/chart/ChartOptModel;->drawCircle:Z

    .line 47
    iput p5, p0, Lcom/cai88/tools/chart/ChartOptModel;->circleColor:I

    .line 48
    iput p6, p0, Lcom/cai88/tools/chart/ChartOptModel;->width:F

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZZIFII)V
    .locals 2
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "infoColor"    # I
    .param p3, "drawLine"    # Z
    .param p4, "drawCircle"    # Z
    .param p5, "circleColor"    # I
    .param p6, "width"    # F
    .param p7, "doubleCount"    # I
    .param p8, "smallCircleColor"    # I

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-boolean v1, p0, Lcom/cai88/tools/chart/ChartOptModel;->drawCircle:Z

    .line 8
    iput-boolean v1, p0, Lcom/cai88/tools/chart/ChartOptModel;->drawLine:Z

    .line 9
    iput-boolean v1, p0, Lcom/cai88/tools/chart/ChartOptModel;->drawBackground:Z

    .line 10
    iput-boolean v1, p0, Lcom/cai88/tools/chart/ChartOptModel;->drawHightLine:Z

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/cai88/tools/chart/ChartOptModel;->width:F

    .line 15
    iput v1, p0, Lcom/cai88/tools/chart/ChartOptModel;->doubleCount:I

    .line 17
    const/16 v0, 0x11

    iput v0, p0, Lcom/cai88/tools/chart/ChartOptModel;->drawLayout:I

    .line 52
    iput-object p1, p0, Lcom/cai88/tools/chart/ChartOptModel;->info:Ljava/lang/String;

    .line 53
    iput p2, p0, Lcom/cai88/tools/chart/ChartOptModel;->infoColor:I

    .line 54
    iput-boolean p3, p0, Lcom/cai88/tools/chart/ChartOptModel;->drawLine:Z

    .line 55
    iput-boolean p4, p0, Lcom/cai88/tools/chart/ChartOptModel;->drawCircle:Z

    .line 56
    iput p5, p0, Lcom/cai88/tools/chart/ChartOptModel;->circleColor:I

    .line 57
    iput p6, p0, Lcom/cai88/tools/chart/ChartOptModel;->width:F

    .line 58
    iput p7, p0, Lcom/cai88/tools/chart/ChartOptModel;->doubleCount:I

    .line 59
    iput p8, p0, Lcom/cai88/tools/chart/ChartOptModel;->smallCircleColor:I

    .line 60
    return-void
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/cai88/tools/chart/ChartOptModel;->backgroundColor:I

    return v0
.end method

.method public getCircleColor()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/cai88/tools/chart/ChartOptModel;->circleColor:I

    return v0
.end method

.method public getDoubleCount()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/cai88/tools/chart/ChartOptModel;->doubleCount:I

    return v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/cai88/tools/chart/ChartOptModel;->info:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "-"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/cai88/tools/chart/ChartOptModel;->info:Ljava/lang/String;

    const-string v1, ","

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getInfoColor()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/cai88/tools/chart/ChartOptModel;->infoColor:I

    return v0
.end method

.method public getInfoOrg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cai88/tools/chart/ChartOptModel;->info:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "-"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/cai88/tools/chart/ChartOptModel;->info:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSmallCircleColor()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/cai88/tools/chart/ChartOptModel;->smallCircleColor:I

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/cai88/tools/chart/ChartOptModel;->width:F

    return v0
.end method

.method public isDrawBackground()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/cai88/tools/chart/ChartOptModel;->drawBackground:Z

    return v0
.end method

.method public isDrawCircle()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/cai88/tools/chart/ChartOptModel;->drawCircle:Z

    return v0
.end method

.method public isDrawHightLine()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/cai88/tools/chart/ChartOptModel;->drawHightLine:Z

    return v0
.end method

.method public isDrawLine()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/cai88/tools/chart/ChartOptModel;->drawLine:Z

    return v0
.end method
