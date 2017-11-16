.class public Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;
.super Lcom/cai88/tools/chart/TrendChartsActivity;
.source "TrendChartsShiShiCaiActivity.java"


# instance fields
.field private lineCount:I

.field private specialTabStr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/cai88/tools/chart/TrendChartsActivity;-><init>()V

    .line 15
    const-string v0, "\u5f00\u5956"

    iput-object v0, p0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->specialTabStr:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->lineCount:I

    .line 14
    return-void
.end method

.method private generateDataList(Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 34
    .param p2, "pc"    # Ljava/lang/String;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cai88/tools/model/OmissionModel;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cai88/tools/chart/ChartOptModel;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, "omissionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cai88/tools/model/OmissionModel;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v18, "dlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/cai88/tools/chart/ChartOptModel;>;>;"
    const-string v27, ""

    .line 168
    .local v27, "preOmissionStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->specialTabStr:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->tabArray:[Ljava/lang/String;

    aget-object v5, v5, p3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 169
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v23

    if-lt v0, v4, :cond_1

    .line 312
    :cond_0
    return-object v18

    .line 170
    :cond_1
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/cai88/tools/model/OmissionModel;

    .line 172
    .local v24, "item":Lcom/cai88/tools/model/OmissionModel;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v16, "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cai88/tools/chart/ChartOptModel;>;"
    new-instance v2, Lcom/cai88/tools/chart/ChartOptModel;

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/cai88/tools/model/OmissionModel;->code:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->textColorBlack:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->lineCount:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->widthRight:I

    mul-int/2addr v6, v7

    int-to-float v6, v6

    const/4 v7, 0x1

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/cai88/tools/chart/ChartOptModel;-><init>(Ljava/lang/String;IFZ)V

    .line 174
    .local v2, "model":Lcom/cai88/tools/chart/ChartOptModel;
    const/4 v4, 0x3

    iput v4, v2, Lcom/cai88/tools/chart/ChartOptModel;->drawLayout:I

    .line 175
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->issueList:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/cai88/tools/model/OmissionModel;->issue:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->gameCode:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/cai88/tools/uitl/IssueHelper;->shortIssueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    .line 181
    .end local v2    # "model":Lcom/cai88/tools/chart/ChartOptModel;
    .end local v16    # "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cai88/tools/chart/ChartOptModel;>;"
    .end local v23    # "i":I
    .end local v24    # "item":Lcom/cai88/tools/model/OmissionModel;
    :cond_2
    const/4 v4, 0x1

    move/from16 v0, p3

    if-ne v0, v4, :cond_5

    .line 182
    move-object/from16 v0, p0

    iget v4, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->circleColorBlue:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->circleColor1:I

    .line 188
    :goto_1
    const/4 v13, -0x1

    .local v13, "begin1":I
    const/4 v14, -0x1

    .local v14, "begin2":I
    const/4 v15, -0x3

    .local v15, "begin3":I
    const/16 v20, -0x1

    .local v20, "end1":I
    const/16 v21, -0x1

    .local v21, "end2":I
    const/16 v22, -0x1

    .line 189
    .local v22, "end3":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->gameCode:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v4, v0}, Lcom/cai88/tools/uitl/PlayCodeHelper;->isShishicai_2X_ZuXuan(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 190
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->gameCode:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v4, v0}, Lcom/cai88/tools/uitl/PlayCodeHelper;->isShishicai_Dxds(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 191
    :cond_3
    const/16 v13, 0x1e

    const/16 v20, 0x27

    const/16 v14, 0x28

    const/16 v21, 0x31

    .line 215
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->gameCode:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v4, v0}, Lcom/cai88/tools/uitl/PlayCodeHelper;->isShishicai_Dxds(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 216
    const/16 v23, 0x0

    .restart local v23    # "i":I
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v23

    if-ge v0, v4, :cond_0

    .line 217
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/cai88/tools/model/OmissionModel;

    .line 218
    .restart local v24    # "item":Lcom/cai88/tools/model/OmissionModel;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .restart local v16    # "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cai88/tools/chart/ChartOptModel;>;"
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/cai88/tools/model/OmissionModel;->c:Ljava/lang/String;

    move/from16 v0, v20

    invoke-static {v4, v13, v0}, Lcom/cai88/tools/uitl/Common;->getStrArrByPosition(Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v31

    .line 220
    .local v31, "tmp":[Ljava/lang/String;
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/cai88/tools/model/OmissionModel;->c:Ljava/lang/String;

    move/from16 v0, v21

    invoke-static {v4, v14, v0}, Lcom/cai88/tools/uitl/Common;->getStrArrByPosition(Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v32

    .line 221
    .local v32, "tmp2":[Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/cai88/tools/uitl/Common;->strIsBlank(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11

    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-static {v0, v13, v1}, Lcom/cai88/tools/uitl/Common;->getStrArrByPosition(Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v28

    .line 222
    .local v28, "preTmp":[Ljava/lang/String;
    :goto_4
    invoke-static/range {v27 .. v27}, Lcom/cai88/tools/uitl/Common;->strIsBlank(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_12

    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-static {v0, v13, v1}, Lcom/cai88/tools/uitl/Common;->getStrArrByPosition(Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v29

    .line 223
    .local v29, "preTmp2":[Ljava/lang/String;
    :goto_5
    const/16 v4, 0x8

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v33, v0

    const/4 v4, 0x0

    .line 224
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x5

    aget-object v7, v31, v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x6

    aget-object v7, v31, v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x7

    aget-object v7, v31, v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const/16 v7, 0x8

    aget-object v7, v31, v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const/16 v7, 0x9

    aget-object v7, v31, v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/cai88/tools/uitl/Common;->sortStringNumber([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const-string v6, "0"

    const-string v7, "\u5927"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v33, v4

    const/4 v4, 0x1

    .line 225
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    aget-object v7, v31, v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x1

    aget-object v7, v31, v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x2

    aget-object v7, v31, v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const/4 v7, 0x3

    aget-object v7, v31, v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const/4 v7, 0x4

    aget-object v7, v31, v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/cai88/tools/uitl/Common;->sortStringNumber([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const-string v6, "0"

    const-string v7, "\u5c0f"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v33, v4

    const/4 v4, 0x2

    .line 226
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    aget-object v7, v31, v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x2

    aget-object v7, v31, v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x4

    aget-object v7, v31, v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const/4 v7, 0x6

    aget-object v7, v31, v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const/16 v7, 0x8

    aget-object v7, v31, v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/cai88/tools/uitl/Common;->sortStringNumber([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const-string v6, "0"

    const-string v7, "\u5355"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v33, v4

    const/4 v4, 0x3

    .line 227
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x1

    aget-object v7, v31, v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x3

    aget-object v7, v31, v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x5

    aget-object v7, v31, v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const/4 v7, 0x7

    aget-object v7, v31, v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const/16 v7, 0x9

    aget-object v7, v31, v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/cai88/tools/uitl/Common;->sortStringNumber([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const-string v6, "0"

    const-string v7, "\u53cc"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v33, v4

    const/4 v4, 0x4

    .line 228
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x5

    aget-object v7, v32, v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x6

    aget-object v7, v32, v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x7

    aget-object v7, v32, v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const/16 v7, 0x8

    aget-object v7, v32, v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const/16 v7, 0x9

    aget-object v7, v32, v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/cai88/tools/uitl/Common;->sortStringNumber([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const-string v6, "0"

    const-string v7, "\u5927"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v33, v4

    const/4 v4, 0x5

    .line 229
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    aget-object v7, v32, v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x1

    aget-object v7, v32, v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x2

    aget-object v7, v32, v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const/4 v7, 0x3

    aget-object v7, v32, v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const/4 v7, 0x4

    aget-object v7, v32, v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/cai88/tools/uitl/Common;->sortStringNumber([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const-string v6, "0"

    const-string v7, "\u5c0f"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v33, v4

    const/4 v4, 0x6

    .line 230
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    aget-object v7, v32, v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x2

    aget-object v7, v32, v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x4

    aget-object v7, v32, v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const/4 v7, 0x6

    aget-object v7, v32, v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const/16 v7, 0x8

    aget-object v7, v32, v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/cai88/tools/uitl/Common;->sortStringNumber([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const-string v6, "0"

    const-string v7, "\u5355"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v33, v4

    const/4 v4, 0x7

    .line 231
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x1

    aget-object v7, v32, v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x3

    aget-object v7, v32, v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x5

    aget-object v7, v32, v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const/4 v7, 0x7

    aget-object v7, v32, v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const/16 v7, 0x9

    aget-object v7, v32, v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/cai88/tools/uitl/Common;->sortStringNumber([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const-string v6, "0"

    const-string v7, "\u53cc"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v33, v4

    .line 233
    .local v33, "tmpArr":[Ljava/lang/String;
    const/16 v4, 0x8

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v30, v0

    const/4 v4, 0x0

    .line 234
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x5

    aget-object v7, v28, v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x6

    aget-object v7, v28, v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x7

    aget-object v7, v28, v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const/16 v7, 0x8

    aget-object v7, v28, v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const/16 v7, 0x9

    aget-object v7, v28, v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/cai88/tools/uitl/Common;->sortStringNumber([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    aput-object v5, v30, v4

    const/4 v4, 0x1

    .line 235
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    aget-object v7, v28, v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x1

    aget-object v7, v28, v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x2

    aget-object v7, v28, v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const/4 v7, 0x3

    aget-object v7, v28, v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const/4 v7, 0x4

    aget-object v7, v28, v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/cai88/tools/uitl/Common;->sortStringNumber([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    aput-object v5, v30, v4

    const/4 v4, 0x2

    .line 236
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    aget-object v7, v28, v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x2

    aget-object v7, v28, v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x4

    aget-object v7, v28, v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const/4 v7, 0x6

    aget-object v7, v28, v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const/16 v7, 0x8

    aget-object v7, v28, v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/cai88/tools/uitl/Common;->sortStringNumber([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    aput-object v5, v30, v4

    const/4 v4, 0x3

    .line 237
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x1

    aget-object v7, v28, v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x3

    aget-object v7, v28, v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x5

    aget-object v7, v28, v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const/4 v7, 0x7

    aget-object v7, v28, v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const/16 v7, 0x9

    aget-object v7, v28, v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/cai88/tools/uitl/Common;->sortStringNumber([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    aput-object v5, v30, v4

    const/4 v4, 0x4

    .line 238
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x5

    aget-object v7, v29, v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x6

    aget-object v7, v29, v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x7

    aget-object v7, v29, v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const/16 v7, 0x8

    aget-object v7, v29, v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const/16 v7, 0x9

    aget-object v7, v29, v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/cai88/tools/uitl/Common;->sortStringNumber([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    aput-object v5, v30, v4

    const/4 v4, 0x5

    .line 239
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    aget-object v7, v29, v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x1

    aget-object v7, v29, v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x2

    aget-object v7, v29, v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const/4 v7, 0x3

    aget-object v7, v29, v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const/4 v7, 0x4

    aget-object v7, v29, v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/cai88/tools/uitl/Common;->sortStringNumber([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    aput-object v5, v30, v4

    const/4 v4, 0x6

    .line 240
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    aget-object v7, v29, v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x2

    aget-object v7, v29, v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x4

    aget-object v7, v29, v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const/4 v7, 0x6

    aget-object v7, v29, v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const/16 v7, 0x8

    aget-object v7, v29, v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/cai88/tools/uitl/Common;->sortStringNumber([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    aput-object v5, v30, v4

    const/4 v4, 0x7

    .line 241
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x1

    aget-object v7, v29, v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x3

    aget-object v7, v29, v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x5

    aget-object v7, v29, v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const/4 v7, 0x7

    aget-object v7, v29, v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const/16 v7, 0x9

    aget-object v7, v29, v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/cai88/tools/uitl/Common;->sortStringNumber([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    aput-object v5, v30, v4

    .line 244
    .local v30, "preTmpArr":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 245
    .restart local v2    # "model":Lcom/cai88/tools/chart/ChartOptModel;
    const/16 v25, 0x0

    .local v25, "j":I
    :goto_6
    move-object/from16 v0, v33

    array-length v4, v0

    move/from16 v0, v25

    if-lt v0, v4, :cond_13

    .line 256
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->issueList:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/cai88/tools/model/OmissionModel;->issue:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->gameCode:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/cai88/tools/uitl/IssueHelper;->shortIssueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/cai88/tools/model/OmissionModel;->c:Ljava/lang/String;

    move-object/from16 v27, v0

    .line 216
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_3

    .line 183
    .end local v2    # "model":Lcom/cai88/tools/chart/ChartOptModel;
    .end local v13    # "begin1":I
    .end local v14    # "begin2":I
    .end local v15    # "begin3":I
    .end local v16    # "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cai88/tools/chart/ChartOptModel;>;"
    .end local v20    # "end1":I
    .end local v21    # "end2":I
    .end local v22    # "end3":I
    .end local v23    # "i":I
    .end local v24    # "item":Lcom/cai88/tools/model/OmissionModel;
    .end local v25    # "j":I
    .end local v28    # "preTmp":[Ljava/lang/String;
    .end local v29    # "preTmp2":[Ljava/lang/String;
    .end local v30    # "preTmpArr":[Ljava/lang/String;
    .end local v31    # "tmp":[Ljava/lang/String;
    .end local v32    # "tmp2":[Ljava/lang/String;
    .end local v33    # "tmpArr":[Ljava/lang/String;
    :cond_5
    const/4 v4, 0x2

    move/from16 v0, p3

    if-ne v0, v4, :cond_6

    .line 184
    move-object/from16 v0, p0

    iget v4, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->circleColorBrown:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->circleColor1:I

    goto/16 :goto_1

    .line 186
    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->circleColorRed:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->circleColor1:I

    goto/16 :goto_1

    .line 192
    .restart local v13    # "begin1":I
    .restart local v14    # "begin2":I
    .restart local v15    # "begin3":I
    .restart local v20    # "end1":I
    .restart local v21    # "end2":I
    .restart local v22    # "end3":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->gameCode:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v4, v0}, Lcom/cai88/tools/uitl/PlayCodeHelper;->isShishicai_3X_ZuLiu(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 193
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->gameCode:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v4, v0}, Lcom/cai88/tools/uitl/PlayCodeHelper;->isShishicai_3X_ZuSan(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 194
    :cond_8
    const/16 v13, 0x14

    const/16 v20, 0x1d

    const/16 v14, 0x1e

    const/16 v21, 0x27

    const/16 v15, 0x28

    const/16 v22, 0x31

    .line 195
    goto/16 :goto_2

    .line 196
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->gameCode:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v4, v0}, Lcom/cai88/tools/uitl/PlayCodeHelper;->isShishicai_3X_ZhiXuan_D_F(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 197
    add-int/lit8 p3, p3, 0x2

    .line 203
    :cond_a
    :goto_7
    if-nez p3, :cond_d

    .line 204
    const/4 v13, 0x0

    const/16 v20, 0x9

    .line 205
    goto/16 :goto_2

    .line 198
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->gameCode:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v4, v0}, Lcom/cai88/tools/uitl/PlayCodeHelper;->isShishicai_2X_ZhiXuan(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 199
    add-int/lit8 p3, p3, 0x3

    .line 200
    goto :goto_7

    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->gameCode:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v4, v0}, Lcom/cai88/tools/uitl/PlayCodeHelper;->isShishicai_1X(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 201
    add-int/lit8 p3, p3, 0x4

    goto :goto_7

    .line 205
    :cond_d
    const/4 v4, 0x1

    move/from16 v0, p3

    if-ne v0, v4, :cond_e

    .line 206
    const/16 v13, 0xa

    const/16 v20, 0x13

    .line 207
    goto/16 :goto_2

    :cond_e
    const/4 v4, 0x2

    move/from16 v0, p3

    if-ne v0, v4, :cond_f

    .line 208
    const/16 v13, 0x14

    const/16 v20, 0x1d

    .line 209
    goto/16 :goto_2

    :cond_f
    const/4 v4, 0x3

    move/from16 v0, p3

    if-ne v0, v4, :cond_10

    .line 210
    const/16 v13, 0x1e

    const/16 v20, 0x27

    .line 211
    goto/16 :goto_2

    :cond_10
    const/4 v4, 0x4

    move/from16 v0, p3

    if-ne v0, v4, :cond_4

    .line 212
    const/16 v13, 0x28

    const/16 v20, 0x31

    goto/16 :goto_2

    .line 221
    .restart local v16    # "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cai88/tools/chart/ChartOptModel;>;"
    .restart local v23    # "i":I
    .restart local v24    # "item":Lcom/cai88/tools/model/OmissionModel;
    .restart local v31    # "tmp":[Ljava/lang/String;
    .restart local v32    # "tmp2":[Ljava/lang/String;
    :cond_11
    move-object/from16 v0, v31

    array-length v4, v0

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v28, v0

    goto/16 :goto_4

    .line 222
    .restart local v28    # "preTmp":[Ljava/lang/String;
    :cond_12
    move-object/from16 v0, v32

    array-length v4, v0

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v29, v0

    goto/16 :goto_5

    .line 246
    .restart local v2    # "model":Lcom/cai88/tools/chart/ChartOptModel;
    .restart local v25    # "j":I
    .restart local v29    # "preTmp2":[Ljava/lang/String;
    .restart local v30    # "preTmpArr":[Ljava/lang/String;
    .restart local v33    # "tmpArr":[Ljava/lang/String;
    :cond_13
    aget-object v3, v33, v25

    .line 247
    .local v3, "str":Ljava/lang/String;
    const-string v4, "\u5927"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string v4, "\u5c0f"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string v4, "\u5355"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string v4, "\u53cc"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 248
    :cond_14
    new-instance v2, Lcom/cai88/tools/chart/ChartOptModel;

    .end local v2    # "model":Lcom/cai88/tools/chart/ChartOptModel;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->textColorWhite:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "0"

    aget-object v8, v30, v25

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    move-object/from16 v0, p0

    iget v7, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->circleColor2:I

    :goto_8
    move-object/from16 v0, p0

    iget v8, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->widthRight:I

    int-to-float v8, v8

    invoke-direct/range {v2 .. v8}, Lcom/cai88/tools/chart/ChartOptModel;-><init>(Ljava/lang/String;IZZIF)V

    .line 252
    .restart local v2    # "model":Lcom/cai88/tools/chart/ChartOptModel;
    :goto_9
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    aget-object v4, v31, v25

    const-string v5, "\u5927"

    const-string v6, "0"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u5c0f"

    const-string v6, "0"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u5355"

    const-string v6, "0"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u53cc"

    const-string v6, "0"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    aget-object v5, v28, v25

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v4, v5, v1, v6}, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->setCalculationData(Ljava/lang/String;Ljava/lang/String;II)V

    .line 245
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_6

    .line 248
    .end local v2    # "model":Lcom/cai88/tools/chart/ChartOptModel;
    :cond_15
    move-object/from16 v0, p0

    iget v7, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->circleColor1:I

    goto :goto_8

    .line 250
    .restart local v2    # "model":Lcom/cai88/tools/chart/ChartOptModel;
    :cond_16
    new-instance v2, Lcom/cai88/tools/chart/ChartOptModel;

    .end local v2    # "model":Lcom/cai88/tools/chart/ChartOptModel;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->textColorGray:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->widthRight:I

    int-to-float v5, v5

    invoke-direct {v2, v3, v4, v5}, Lcom/cai88/tools/chart/ChartOptModel;-><init>(Ljava/lang/String;IF)V

    .restart local v2    # "model":Lcom/cai88/tools/chart/ChartOptModel;
    goto :goto_9

    .line 264
    .end local v2    # "model":Lcom/cai88/tools/chart/ChartOptModel;
    .end local v3    # "str":Ljava/lang/String;
    .end local v16    # "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cai88/tools/chart/ChartOptModel;>;"
    .end local v23    # "i":I
    .end local v24    # "item":Lcom/cai88/tools/model/OmissionModel;
    .end local v25    # "j":I
    .end local v28    # "preTmp":[Ljava/lang/String;
    .end local v29    # "preTmp2":[Ljava/lang/String;
    .end local v30    # "preTmpArr":[Ljava/lang/String;
    .end local v31    # "tmp":[Ljava/lang/String;
    .end local v32    # "tmp2":[Ljava/lang/String;
    .end local v33    # "tmpArr":[Ljava/lang/String;
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->gameCode:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v4, v0}, Lcom/cai88/tools/uitl/PlayCodeHelper;->isShishicai_1X(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 265
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->gameCode:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v4, v0}, Lcom/cai88/tools/uitl/PlayCodeHelper;->isShishicai_2X_ZhiXuan(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 266
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->gameCode:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v4, v0}, Lcom/cai88/tools/uitl/PlayCodeHelper;->isShishicai_3X_ZhiXuan_D_F(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 267
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->gameCode:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v4, v0}, Lcom/cai88/tools/uitl/PlayCodeHelper;->isShishicai_5X_TongXuan_D_F(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 268
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->gameCode:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v4, v0}, Lcom/cai88/tools/uitl/PlayCodeHelper;->isShishicai_5X_ZhiXuan_D_F(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 264
    const/16 v26, 0x0

    .line 269
    .local v26, "needDrawLine":Z
    :goto_a
    const/16 v23, 0x0

    .restart local v23    # "i":I
    :goto_b
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v23

    if-ge v0, v4, :cond_0

    .line 270
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/cai88/tools/model/OmissionModel;

    .line 271
    .restart local v24    # "item":Lcom/cai88/tools/model/OmissionModel;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .restart local v16    # "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cai88/tools/chart/ChartOptModel;>;"
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/cai88/tools/model/OmissionModel;->c:Ljava/lang/String;

    move/from16 v0, v20

    invoke-static {v4, v13, v0}, Lcom/cai88/tools/uitl/Common;->getStrArrByPosition(Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v31

    .line 274
    .restart local v31    # "tmp":[Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/cai88/tools/uitl/Common;->strIsBlank(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1c

    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-static {v0, v13, v1}, Lcom/cai88/tools/uitl/Common;->getStrArrByPosition(Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v28

    .line 275
    .restart local v28    # "preTmp":[Ljava/lang/String;
    :goto_c
    if-ltz v14, :cond_18

    .line 276
    const/4 v4, 0x2

    new-array v4, v4, [[Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v31, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, v24

    iget-object v6, v0, Lcom/cai88/tools/model/OmissionModel;->c:Ljava/lang/String;

    move/from16 v0, v21

    invoke-static {v6, v14, v0}, Lcom/cai88/tools/uitl/Common;->getStrArrByPosition(Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->getMinNum([[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    .line 277
    const/4 v4, 0x2

    new-array v5, v4, [[Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v28, v5, v4

    const/4 v6, 0x1

    invoke-static/range {v27 .. v27}, Lcom/cai88/tools/uitl/Common;->strIsBlank(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1d

    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-static {v0, v14, v1}, Lcom/cai88/tools/uitl/Common;->getStrArrByPosition(Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v4

    :goto_d
    aput-object v4, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->getMinNum([[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 279
    :cond_18
    if-ltz v15, :cond_19

    .line 280
    const/4 v4, 0x2

    new-array v4, v4, [[Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v31, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, v24

    iget-object v6, v0, Lcom/cai88/tools/model/OmissionModel;->c:Ljava/lang/String;

    move/from16 v0, v22

    invoke-static {v6, v15, v0}, Lcom/cai88/tools/uitl/Common;->getStrArrByPosition(Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->getMinNum([[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    .line 281
    const/4 v4, 0x2

    new-array v5, v4, [[Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v28, v5, v4

    const/4 v6, 0x1

    invoke-static/range {v27 .. v27}, Lcom/cai88/tools/uitl/Common;->strIsBlank(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1e

    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-static {v0, v15, v1}, Lcom/cai88/tools/uitl/Common;->getStrArrByPosition(Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v4

    :goto_e
    aput-object v4, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->getMinNum([[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 284
    :cond_19
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/cai88/tools/model/OmissionModel;->code:Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 285
    .local v17, "codes":[Ljava/lang/String;
    const/4 v4, 0x2

    aget-object v4, v17, v4

    const/4 v5, 0x3

    aget-object v5, v17, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    const/4 v4, 0x2

    aget-object v4, v17, v4

    const/4 v5, 0x4

    aget-object v5, v17, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    :cond_1a
    const/4 v4, 0x2

    aget-object v4, v17, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 286
    .local v19, "doubleStr":I
    :goto_f
    const/4 v2, 0x0

    .line 287
    .restart local v2    # "model":Lcom/cai88/tools/chart/ChartOptModel;
    const/16 v25, 0x0

    .restart local v25    # "j":I
    :goto_10
    move-object/from16 v0, v31

    array-length v4, v0

    move/from16 v0, v25

    if-lt v0, v4, :cond_21

    .line 303
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->issueList:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/cai88/tools/model/OmissionModel;->issue:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->gameCode:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/cai88/tools/uitl/IssueHelper;->shortIssueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/cai88/tools/model/OmissionModel;->c:Ljava/lang/String;

    move-object/from16 v27, v0

    .line 269
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_b

    .line 264
    .end local v2    # "model":Lcom/cai88/tools/chart/ChartOptModel;
    .end local v16    # "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cai88/tools/chart/ChartOptModel;>;"
    .end local v17    # "codes":[Ljava/lang/String;
    .end local v19    # "doubleStr":I
    .end local v23    # "i":I
    .end local v24    # "item":Lcom/cai88/tools/model/OmissionModel;
    .end local v25    # "j":I
    .end local v26    # "needDrawLine":Z
    .end local v28    # "preTmp":[Ljava/lang/String;
    .end local v31    # "tmp":[Ljava/lang/String;
    :cond_1b
    const/16 v26, 0x1

    goto/16 :goto_a

    .line 274
    .restart local v16    # "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cai88/tools/chart/ChartOptModel;>;"
    .restart local v23    # "i":I
    .restart local v24    # "item":Lcom/cai88/tools/model/OmissionModel;
    .restart local v26    # "needDrawLine":Z
    .restart local v31    # "tmp":[Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, v31

    array-length v4, v0

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v28, v0

    goto/16 :goto_c

    .line 277
    .restart local v28    # "preTmp":[Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, v31

    array-length v4, v0

    new-array v4, v4, [Ljava/lang/String;

    goto/16 :goto_d

    .line 281
    :cond_1e
    move-object/from16 v0, v31

    array-length v4, v0

    new-array v4, v4, [Ljava/lang/String;

    goto :goto_e

    .line 285
    .restart local v17    # "codes":[Ljava/lang/String;
    :cond_1f
    const/4 v4, 0x3

    aget-object v4, v17, v4

    const/4 v5, 0x4

    aget-object v5, v17, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    const/4 v4, 0x3

    aget-object v4, v17, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v19

    goto :goto_f

    :cond_20
    const/16 v19, -0x1

    goto :goto_f

    .line 288
    .restart local v2    # "model":Lcom/cai88/tools/chart/ChartOptModel;
    .restart local v19    # "doubleStr":I
    .restart local v25    # "j":I
    :cond_21
    const-string v4, "0"

    aget-object v5, v31, v25

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 289
    move/from16 v0, v25

    move/from16 v1, v19

    if-ne v0, v1, :cond_24

    if-nez v26, :cond_24

    .line 290
    const/4 v4, 0x2

    aget-object v4, v17, v4

    const/4 v5, 0x3

    aget-object v5, v17, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    const/4 v4, 0x2

    aget-object v4, v17, v4

    const/4 v5, 0x4

    aget-object v5, v17, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    const/4 v4, 0x3

    aget-object v4, v17, v4

    const/4 v5, 0x4

    aget-object v5, v17, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    const/4 v11, 0x3

    .line 291
    .local v11, "count":I
    :goto_11
    new-instance v2, Lcom/cai88/tools/chart/ChartOptModel;

    .end local v2    # "model":Lcom/cai88/tools/chart/ChartOptModel;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->textColorWhite:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v4, "0"

    aget-object v9, v28, v25

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    move-object/from16 v0, p0

    iget v9, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->circleColor2:I

    :goto_12
    move-object/from16 v0, p0

    iget v4, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->widthRight:I

    int-to-float v10, v4

    const v12, -0x2c40c6

    move-object v4, v2

    invoke-direct/range {v4 .. v12}, Lcom/cai88/tools/chart/ChartOptModel;-><init>(Ljava/lang/String;IZZIFII)V

    .line 298
    .end local v11    # "count":I
    .restart local v2    # "model":Lcom/cai88/tools/chart/ChartOptModel;
    :goto_13
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    aget-object v4, v31, v25

    aget-object v5, v28, v25

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v4, v5, v1, v6}, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->setCalculationData(Ljava/lang/String;Ljava/lang/String;II)V

    .line 287
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_10

    .line 290
    :cond_22
    const/4 v11, 0x2

    goto :goto_11

    .line 291
    .end local v2    # "model":Lcom/cai88/tools/chart/ChartOptModel;
    .restart local v11    # "count":I
    :cond_23
    move-object/from16 v0, p0

    iget v9, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->circleColor1:I

    goto :goto_12

    .line 293
    .end local v11    # "count":I
    .restart local v2    # "model":Lcom/cai88/tools/chart/ChartOptModel;
    :cond_24
    new-instance v2, Lcom/cai88/tools/chart/ChartOptModel;

    .end local v2    # "model":Lcom/cai88/tools/chart/ChartOptModel;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->textColorWhite:I

    const/4 v8, 0x1

    const-string v4, "0"

    aget-object v7, v28, v25

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    move-object/from16 v0, p0

    iget v9, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->circleColor2:I

    :goto_14
    move-object/from16 v0, p0

    iget v4, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->widthRight:I

    int-to-float v10, v4

    move-object v4, v2

    move/from16 v7, v26

    invoke-direct/range {v4 .. v10}, Lcom/cai88/tools/chart/ChartOptModel;-><init>(Ljava/lang/String;IZZIF)V

    .line 295
    .restart local v2    # "model":Lcom/cai88/tools/chart/ChartOptModel;
    goto :goto_13

    .line 293
    .end local v2    # "model":Lcom/cai88/tools/chart/ChartOptModel;
    :cond_25
    move-object/from16 v0, p0

    iget v9, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->circleColor1:I

    goto :goto_14

    .line 296
    .restart local v2    # "model":Lcom/cai88/tools/chart/ChartOptModel;
    :cond_26
    new-instance v2, Lcom/cai88/tools/chart/ChartOptModel;

    .end local v2    # "model":Lcom/cai88/tools/chart/ChartOptModel;
    aget-object v4, v31, v25

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->textColorGray:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->widthRight:I

    int-to-float v6, v6

    invoke-direct {v2, v4, v5, v6}, Lcom/cai88/tools/chart/ChartOptModel;-><init>(Ljava/lang/String;IF)V

    .restart local v2    # "model":Lcom/cai88/tools/chart/ChartOptModel;
    goto :goto_13
.end method


# virtual methods
.method protected BroadcastReceive(Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 317
    const-string v0, "charts_update"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->reloadData()V

    .line 321
    :cond_0
    return-void
.end method

.method protected dealRecordTypeChoose(I)V
    .locals 21
    .param p1, "type"    # I

    .prologue
    .line 34
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->changePlayCode:Z

    if-eqz v14, :cond_3

    .line 35
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->changePlayCode:Z

    .line 36
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->dataChooseList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 37
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->dataChooseDisplayList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 39
    const-string v13, "0,1,2,3,4,5,6,7,8,9"

    .line 40
    .local v13, "tmpDataChooseDisplay":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->gameCode:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->playCode:Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/cai88/tools/uitl/PlayCodeHelper;->isShishicai_Dxds(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 41
    const-string v13, "\u5927,\u5c0f,\u5355,\u53cc,\u5927,\u5c0f,\u5355,\u53cc"

    .line 43
    :cond_0
    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    array-length v5, v14

    .line 44
    .local v5, "dataLength":I
    const/4 v4, 0x0

    .line 45
    .local v4, "count":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->gameCode:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->playCode:Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/cai88/tools/uitl/PlayCodeHelper;->isShishicai_1X(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 46
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->gameCode:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->playCode:Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/cai88/tools/uitl/PlayCodeHelper;->isShishicai_Dxds(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 47
    :cond_1
    const/4 v4, 0x1

    .line 59
    :cond_2
    :goto_0
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-lt v8, v4, :cond_b

    .line 65
    .end local v4    # "count":I
    .end local v5    # "dataLength":I
    .end local v8    # "i":I
    .end local v13    # "tmpDataChooseDisplay":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->resetChoosePnl()V

    .line 67
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->gameCode:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->playCode:Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/cai88/tools/uitl/PlayCodeHelper;->isShishicai_Dxds(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    const/16 v14, 0x8

    :goto_2
    move-object/from16 v0, p0

    iput v14, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->lineCount:I

    .line 69
    move-object/from16 v0, p0

    iget v14, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->lineCount:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->resetCalculationData(I)V

    .line 71
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->context:Landroid/content/Context;

    invoke-static {v14}, Lcom/cai88/tools/uitl/Common;->GetW(Landroid/content/Context;)I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->widthLeft:I

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->lineCount:I

    div-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->widthRight:I

    .line 72
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->rightLp:Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->widthRight:I

    iput v15, v14, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 75
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->specialTabStr:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->tabArray:[Ljava/lang/String;

    aget-object v15, v15, p1

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 76
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->generateTopScrollView([Ljava/lang/String;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 83
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->omissionList:Ljava/util/ArrayList;

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->omissionList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-gtz v14, :cond_f

    .line 161
    :cond_4
    :goto_4
    return-void

    .line 48
    .restart local v4    # "count":I
    .restart local v5    # "dataLength":I
    .restart local v13    # "tmpDataChooseDisplay":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->gameCode:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->playCode:Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/cai88/tools/uitl/PlayCodeHelper;->isShishicai_2X_ZhiXuan(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 49
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->gameCode:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->playCode:Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/cai88/tools/uitl/PlayCodeHelper;->isShishicai_2X_ZuXuan(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 50
    :cond_6
    const/4 v4, 0x2

    .line 51
    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->gameCode:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->playCode:Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/cai88/tools/uitl/PlayCodeHelper;->isShishicai_3X_ZhiXuan_D_F(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 52
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->gameCode:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->playCode:Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/cai88/tools/uitl/PlayCodeHelper;->isShishicai_3X_ZuLiu(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 53
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->gameCode:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->playCode:Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/cai88/tools/uitl/PlayCodeHelper;->isShishicai_3X_ZuSan(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 54
    :cond_8
    const/4 v4, 0x3

    .line 55
    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->gameCode:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->playCode:Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/cai88/tools/uitl/PlayCodeHelper;->isShishicai_5X_TongXuan_D_F(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 56
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->gameCode:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->playCode:Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/cai88/tools/uitl/PlayCodeHelper;->isShishicai_5X_ZhiXuan_D_F(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 57
    :cond_a
    const/4 v4, 0x5

    goto/16 :goto_0

    .line 60
    .restart local v8    # "i":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->dataChooseList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->initChooseData(I)[Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->dataChooseDisplayList:Ljava/util/ArrayList;

    const-string v15, ","

    invoke-virtual {v13, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 67
    .end local v4    # "count":I
    .end local v5    # "dataLength":I
    .end local v8    # "i":I
    .end local v13    # "tmpDataChooseDisplay":Ljava/lang/String;
    :cond_c
    const/16 v14, 0xa

    goto/16 :goto_2

    .line 77
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->gameCode:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->playCode:Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/cai88/tools/uitl/PlayCodeHelper;->isShishicai_Dxds(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 78
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "\u5341\u4f4d\u53f7\u7801\u8d70\u52bf"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "\u4e2a\u4f4d\u53f7\u7801\u8d70\u52bf"

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->widthRight:I

    mul-int/lit8 v15, v15, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->generateTopScrollView([Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 80
    :cond_e
    const/16 v14, 0xa

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "0"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "1"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "2"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const-string v16, "3"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const-string v16, "4"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    const-string v16, "5"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    const-string v16, "6"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    const-string v16, "7"

    aput-object v16, v14, v15

    const/16 v15, 0x8

    const-string v16, "8"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    const-string v16, "9"

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->rightLp:Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->generateTopScrollView([Ljava/lang/String;Landroid/widget/LinearLayout$LayoutParams;)V

    goto/16 :goto_3

    .line 87
    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->issueList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 89
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->omissionList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->playCode:Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v14, v15, v1}, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->generateDataList(Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v6

    .line 92
    .local v6, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/cai88/tools/chart/ChartOptModel;>;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->calDataList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 93
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->showAnalysis:Z

    if-eqz v14, :cond_10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->specialTabStr:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->tabArray:[Ljava/lang/String;

    aget-object v15, v15, p1

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_10

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->setCalData()V

    .line 99
    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->issueList:Ljava/util/ArrayList;

    if-eqz v14, :cond_11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->issueList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_11

    .line 100
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->issueList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->issueList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v16, v14, -0x1

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->issueList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->issueList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v17

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "\u65b0"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->needOpeningTips()Z

    move-result v14

    if-eqz v14, :cond_12

    .line 103
    const-wide/16 v9, 0x0

    .line 105
    .local v9, "nowIssueInt":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->nowIssue:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v9

    .line 109
    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->issueList:Ljava/util/ArrayList;

    new-instance v15, Ljava/lang/StringBuilder;

    const-wide/16 v16, 0x1

    sub-long v16, v9, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->gameCode:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/cai88/tools/uitl/IssueHelper;->shortIssueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .end local v9    # "nowIssueInt":J
    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->issueList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->calDataList:Ljava/util/ArrayList;

    if-eqz v14, :cond_13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->calDataList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_13

    const/4 v14, 0x4

    :goto_6
    add-int v11, v15, v14

    .line 114
    .local v11, "rowNum":I
    invoke-virtual/range {p0 .. p0}, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->needOpeningTips()Z

    move-result v12

    .line 117
    .local v12, "showOpeningTips":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->chartRightViewLp:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->lineCount:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->widthRight:I

    move/from16 v16, v0

    mul-int v15, v15, v16

    iput v15, v14, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 118
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->chartRightViewLp:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->height:I

    mul-int/2addr v15, v11

    iput v15, v14, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 119
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->drawView:Lcom/cai88/tools/view/DrawTrendChartsView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->chartRightViewLp:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v14, v15}, Lcom/cai88/tools/view/DrawTrendChartsView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->drawView:Lcom/cai88/tools/view/DrawTrendChartsView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->calDataList:Ljava/util/ArrayList;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->showLine:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->showMissNumber:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v12, v3}, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->generateParam(ZZZZ)Lorg/json/JSONObject;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v6, v15, v0, v1}, Lcom/cai88/tools/view/DrawTrendChartsView;->addAllView(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/json/JSONObject;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->chartLeftViewLp:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->widthLeft:I

    iput v15, v14, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 124
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->chartLeftViewLp:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->height:I

    mul-int/2addr v15, v11

    iput v15, v14, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 125
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->drawLeftView:Lcom/cai88/tools/view/DrawTrendChartsView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->chartLeftViewLp:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v14, v15}, Lcom/cai88/tools/view/DrawTrendChartsView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->drawLeftView:Lcom/cai88/tools/view/DrawTrendChartsView;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->calDataList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->issueList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v12, v3}, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->generateParam(ZZZZ)Lorg/json/JSONObject;

    move-result-object v18

    invoke-virtual/range {v14 .. v18}, Lcom/cai88/tools/view/DrawTrendChartsView;->addAllView(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/json/JSONObject;)V

    goto/16 :goto_4

    .line 106
    .end local v11    # "rowNum":I
    .end local v12    # "showOpeningTips":Z
    .restart local v9    # "nowIssueInt":J
    :catch_0
    move-exception v7

    .line 107
    .local v7, "e2":Ljava/lang/NumberFormatException;
    const-string v14, "iws"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "dealOpeningTips parseint e:"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 113
    .end local v7    # "e2":Ljava/lang/NumberFormatException;
    .end local v9    # "nowIssueInt":J
    :cond_13
    const/4 v14, 0x0

    goto/16 :goto_6
.end method

.method protected initTabInfo()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->gameCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->playCode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cai88/tools/uitl/PlayCodeHelper;->isShishicai_5X_ZhiXuan_D_F(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->gameCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->playCode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cai88/tools/uitl/PlayCodeHelper;->isShishicai_5X_TongXuan_D_F(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    :cond_0
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u7b2c\u4e00\u7403"

    aput-object v1, v0, v2

    const-string v1, "\u7b2c\u4e8c\u7403"

    aput-object v1, v0, v3

    const-string v1, "\u7b2c\u4e09\u7403"

    aput-object v1, v0, v4

    const-string v1, "\u7b2c\u56db\u7403"

    aput-object v1, v0, v5

    const-string v1, "\u7b2c\u4e94\u7403"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->specialTabStr:Ljava/lang/String;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->tabArray:[Ljava/lang/String;

    .line 30
    :goto_0
    return-void

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->gameCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->playCode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cai88/tools/uitl/PlayCodeHelper;->isShishicai_3X_ZhiXuan_D_F(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 24
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "\u767e\u4f4d"

    aput-object v1, v0, v2

    const-string v1, "\u5341\u4f4d"

    aput-object v1, v0, v3

    const-string v1, "\u4e2a\u4f4d"

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->specialTabStr:Ljava/lang/String;

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->tabArray:[Ljava/lang/String;

    goto :goto_0

    .line 25
    :cond_2
    iget-object v0, p0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->gameCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->playCode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cai88/tools/uitl/PlayCodeHelper;->isShishicai_2X_ZhiXuan(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 26
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "\u5341\u4f4d"

    aput-object v1, v0, v2

    const-string v1, "\u4e2a\u4f4d"

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->specialTabStr:Ljava/lang/String;

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->tabArray:[Ljava/lang/String;

    goto :goto_0

    .line 28
    :cond_3
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "\u53f7\u7801\u5206\u5e03"

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->specialTabStr:Ljava/lang/String;

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/cai88/tools/chart/TrendChartsShiShiCaiActivity;->tabArray:[Ljava/lang/String;

    goto :goto_0
.end method
