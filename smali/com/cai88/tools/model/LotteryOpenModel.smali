.class public Lcom/cai88/tools/model/LotteryOpenModel;
.super Ljava/lang/Object;
.source "LotteryOpenModel.java"


# instance fields
.field public cn:Ljava/lang/String;

.field public code:Ljava/lang/String;

.field private codeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public date:Ljava/lang/String;

.field public issue:Ljava/lang/String;

.field private longhu:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field private qzhSan:[Ljava/lang/String;

.field private sum:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/cai88/tools/model/LotteryOpenModel;->n:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/cai88/tools/model/LotteryOpenModel;->cn:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/cai88/tools/model/LotteryOpenModel;->issue:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/cai88/tools/model/LotteryOpenModel;->code:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/cai88/tools/model/LotteryOpenModel;->date:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lcom/cai88/tools/model/LotteryOpenModel;->codeList:Ljava/util/ArrayList;

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/cai88/tools/model/LotteryOpenModel;->sum:I

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/cai88/tools/model/LotteryOpenModel;->longhu:Ljava/lang/String;

    .line 20
    iput-object v1, p0, Lcom/cai88/tools/model/LotteryOpenModel;->qzhSan:[Ljava/lang/String;

    .line 9
    return-void
.end method

.method private getSanType(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v5, 0x9

    .line 155
    const-string v1, ""

    .line 157
    .local v1, "retString":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 158
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 159
    .local v0, "one":I
    const/4 v4, 0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 160
    .local v3, "two":I
    const/4 v4, 0x2

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 162
    .local v2, "three":I
    if-ne v0, v3, :cond_1

    .line 163
    if-ne v3, v2, :cond_0

    .line 164
    const-string v1, "\u8c79\u5b50"

    .line 189
    .end local v0    # "one":I
    .end local v2    # "three":I
    .end local v3    # "two":I
    :goto_0
    return-object v1

    .line 166
    .restart local v0    # "one":I
    .restart local v2    # "three":I
    .restart local v3    # "two":I
    :cond_0
    const-string v1, "\u5bf9\u5b50"

    .line 168
    goto :goto_0

    .line 169
    :cond_1
    if-ne v3, v2, :cond_2

    .line 170
    const-string v1, "\u5bf9\u5b50"

    .line 171
    goto :goto_0

    .line 172
    :cond_2
    add-int/lit8 v4, v3, -0x1

    if-ne v0, v4, :cond_5

    .line 173
    add-int/lit8 v4, v2, -0x1

    if-eq v3, v4, :cond_3

    if-nez v0, :cond_4

    if-ne v2, v5, :cond_4

    .line 174
    :cond_3
    const-string v1, "\u987a\u5b50"

    .line 175
    goto :goto_0

    .line 176
    :cond_4
    const-string v1, "\u534a\u987a"

    .line 178
    goto :goto_0

    .line 179
    :cond_5
    add-int/lit8 v4, v2, -0x1

    if-eq v3, v4, :cond_6

    if-nez v0, :cond_7

    if-ne v2, v5, :cond_7

    .line 180
    :cond_6
    const-string v1, "\u534a\u987a"

    .line 181
    goto :goto_0

    .line 182
    :cond_7
    const-string v1, "\u6742\u516d"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 187
    .end local v0    # "one":I
    .end local v2    # "three":I
    .end local v3    # "two":I
    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public getCodeList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v2, p0, Lcom/cai88/tools/model/LotteryOpenModel;->codeList:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 27
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/cai88/tools/model/LotteryOpenModel;->codeList:Ljava/util/ArrayList;

    .line 29
    :try_start_0
    iget-object v2, p0, Lcom/cai88/tools/model/LotteryOpenModel;->code:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, "tempArr":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v0, v2, :cond_1

    .line 36
    .end local v0    # "i":I
    .end local v1    # "tempArr":[Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/cai88/tools/model/LotteryOpenModel;->codeList:Ljava/util/ArrayList;

    return-object v2

    .line 31
    .restart local v0    # "i":I
    .restart local v1    # "tempArr":[Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/cai88/tools/model/LotteryOpenModel;->codeList:Ljava/util/ArrayList;

    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    .end local v0    # "i":I
    .end local v1    # "tempArr":[Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public getLonghu()Ljava/lang/String;
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/cai88/tools/model/LotteryOpenModel;->longhu:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_0

    .line 105
    :try_start_0
    invoke-virtual {p0}, Lcom/cai88/tools/model/LotteryOpenModel;->getCodeList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/cai88/tools/model/LotteryOpenModel;->getCodeList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cai88/tools/model/LotteryOpenModel;->getCodeList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v1, v0, :cond_1

    .line 106
    const-string v0, "\u9f99"

    iput-object v0, p0, Lcom/cai88/tools/model/LotteryOpenModel;->longhu:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cai88/tools/model/LotteryOpenModel;->longhu:Ljava/lang/String;

    return-object v0

    .line 107
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/cai88/tools/model/LotteryOpenModel;->getCodeList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/cai88/tools/model/LotteryOpenModel;->getCodeList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cai88/tools/model/LotteryOpenModel;->getCodeList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 108
    const-string v0, "\u864e"

    iput-object v0, p0, Lcom/cai88/tools/model/LotteryOpenModel;->longhu:Ljava/lang/String;

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    goto :goto_0

    .line 110
    :cond_2
    const-string v0, "\u548c"

    iput-object v0, p0, Lcom/cai88/tools/model/LotteryOpenModel;->longhu:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public getQzhSanArr()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x3

    .line 122
    iget-object v1, p0, Lcom/cai88/tools/model/LotteryOpenModel;->qzhSan:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 123
    new-array v1, v2, [Ljava/lang/String;

    iput-object v1, p0, Lcom/cai88/tools/model/LotteryOpenModel;->qzhSan:[Ljava/lang/String;

    .line 125
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/cai88/tools/model/LotteryOpenModel;->getCodeList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-virtual {p0}, Lcom/cai88/tools/model/LotteryOpenModel;->getCodeList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-virtual {p0}, Lcom/cai88/tools/model/LotteryOpenModel;->getCodeList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v1, p0, Lcom/cai88/tools/model/LotteryOpenModel;->qzhSan:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0}, Lcom/cai88/tools/model/LotteryOpenModel;->getSanType(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 130
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 131
    invoke-virtual {p0}, Lcom/cai88/tools/model/LotteryOpenModel;->getCodeList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-virtual {p0}, Lcom/cai88/tools/model/LotteryOpenModel;->getCodeList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-virtual {p0}, Lcom/cai88/tools/model/LotteryOpenModel;->getCodeList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v1, p0, Lcom/cai88/tools/model/LotteryOpenModel;->qzhSan:[Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0, v0}, Lcom/cai88/tools/model/LotteryOpenModel;->getSanType(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 135
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 136
    invoke-virtual {p0}, Lcom/cai88/tools/model/LotteryOpenModel;->getCodeList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-virtual {p0}, Lcom/cai88/tools/model/LotteryOpenModel;->getCodeList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-virtual {p0}, Lcom/cai88/tools/model/LotteryOpenModel;->getCodeList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v1, p0, Lcom/cai88/tools/model/LotteryOpenModel;->qzhSan:[Ljava/lang/String;

    const/4 v2, 0x2

    invoke-direct {p0, v0}, Lcom/cai88/tools/model/LotteryOpenModel;->getSanType(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/cai88/tools/model/LotteryOpenModel;->qzhSan:[Ljava/lang/String;

    return-object v1

    .line 140
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getQzhSanString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/cai88/tools/model/LotteryOpenModel;->getQzhSanArr()[Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "sanArr":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSigleBallBigSmall(I)Ljava/lang/String;
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/cai88/tools/model/LotteryOpenModel;->getCodeList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 83
    const-string v0, "\u5927"

    .line 85
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\u5c0f"

    goto :goto_0
.end method

.method public getSigleBallDanShuang(I)Ljava/lang/String;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/cai88/tools/model/LotteryOpenModel;->getCodeList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 90
    const-string v0, "\u53cc"

    .line 92
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\u5355"

    goto :goto_0
.end method

.method public getSum()I
    .locals 4

    .prologue
    .line 43
    iget v2, p0, Lcom/cai88/tools/model/LotteryOpenModel;->sum:I

    if-nez v2, :cond_0

    .line 45
    :try_start_0
    invoke-virtual {p0}, Lcom/cai88/tools/model/LotteryOpenModel;->getCodeList()Ljava/util/ArrayList;

    move-result-object v0

    .line 46
    .local v0, "cList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lt v1, v2, :cond_1

    .line 52
    .end local v0    # "cList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v1    # "i":I
    :cond_0
    :goto_1
    iget v2, p0, Lcom/cai88/tools/model/LotteryOpenModel;->sum:I

    return v2

    .line 47
    .restart local v0    # "cList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v1    # "i":I
    :cond_1
    :try_start_1
    iget v3, p0, Lcom/cai88/tools/model/LotteryOpenModel;->sum:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v3

    iput v2, p0, Lcom/cai88/tools/model/LotteryOpenModel;->sum:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    .end local v0    # "cList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v1    # "i":I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public getSumBigSmall()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/cai88/tools/model/LotteryOpenModel;->getSum()I

    move-result v0

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 60
    const-string v0, "\u5927"

    .line 62
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\u5c0f"

    goto :goto_0
.end method

.method public getSumDanShuang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/cai88/tools/model/LotteryOpenModel;->getSum()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 71
    const-string v0, "\u53cc"

    .line 73
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\u5355"

    goto :goto_0
.end method

.method public getSunString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/cai88/tools/model/LotteryOpenModel;->getSum()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cai88/tools/model/LotteryOpenModel;->getSumBigSmall()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cai88/tools/model/LotteryOpenModel;->getSumDanShuang()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
