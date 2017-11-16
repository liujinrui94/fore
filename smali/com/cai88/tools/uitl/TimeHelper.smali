.class public Lcom/cai88/tools/uitl/TimeHelper;
.super Ljava/lang/Object;
.source "TimeHelper.java"


# static fields
.field private static baseDateFm:Ljava/text/SimpleDateFormat; = null

.field private static dateFm1:Ljava/text/SimpleDateFormat; = null

.field private static dateFm2:Ljava/text/SimpleDateFormat; = null

.field private static final datePattern:Ljava/lang/String; = "yyyy-MM-dd"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/cai88/tools/uitl/TimeHelper;->baseDateFm:Ljava/text/SimpleDateFormat;

    .line 14
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/cai88/tools/uitl/TimeHelper;->dateFm1:Ljava/text/SimpleDateFormat;

    .line 15
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/cai88/tools/uitl/TimeHelper;->dateFm2:Ljava/text/SimpleDateFormat;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CommonDateToStr(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "formatStr"    # Ljava/lang/String;

    .prologue
    .line 30
    const-string v1, ""

    .line 31
    .local v1, "retStr":Ljava/lang/String;
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 32
    .local v0, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 33
    return-object v1
.end method

.method public static CommonStrToDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .param p0, "dStr"    # Ljava/lang/String;
    .param p1, "formatStr"    # Ljava/lang/String;

    .prologue
    .line 20
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 21
    .local v0, "date":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 23
    .local v2, "format":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 27
    :goto_0
    return-object v0

    .line 24
    :catch_0
    move-exception v1

    .line 25
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public static GetRemainTime(J)Ljava/lang/String;
    .locals 14
    .param p0, "remain"    # J

    .prologue
    .line 48
    const-wide/16 v10, 0x3e8

    mul-long/2addr p0, v10

    .line 49
    const-string v7, "\u83b7\u53d6\u4e2d.."

    .line 50
    .local v7, "retStr":Ljava/lang/String;
    const-wide/16 v10, 0x0

    cmp-long v10, p0, v10

    if-lez v10, :cond_0

    .line 52
    const-wide/16 v10, 0x3e8

    :try_start_0
    div-long v10, p0, v10

    const-wide/16 v12, 0x3c

    div-long/2addr v10, v12

    const-wide/16 v12, 0x3c

    div-long/2addr v10, v12

    const-wide/16 v12, 0x18

    div-long v0, v10, v12

    .line 53
    .local v0, "d":J
    const-wide/16 v10, 0x3e8

    div-long v10, p0, v10

    const-wide/16 v12, 0x3c

    div-long/2addr v10, v12

    const-wide/16 v12, 0x3c

    div-long/2addr v10, v12

    const-wide/16 v12, 0x18

    rem-long v3, v10, v12

    .line 54
    .local v3, "h":J
    const-wide/16 v10, 0x3e8

    div-long v10, p0, v10

    const-wide/16 v12, 0x3c

    div-long/2addr v10, v12

    const-wide/16 v12, 0x3c

    rem-long v5, v10, v12

    .line 55
    .local v5, "m":J
    const-wide/16 v10, 0x3e8

    div-long v10, p0, v10

    const-wide/16 v12, 0x3c

    rem-long v8, v10, v12

    .line 57
    .local v8, "s":J
    new-instance v11, Ljava/lang/StringBuilder;

    const-wide/16 v12, 0x0

    cmp-long v10, v0, v12

    if-lez v10, :cond_1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "\u5929"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_0
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v12, 0x0

    cmp-long v10, v3, v12

    if-lez v10, :cond_2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ":"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_1
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-wide/16 v12, 0xa

    cmp-long v10, v5, v12

    if-ltz v10, :cond_3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    :goto_2
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-wide/16 v12, 0xa

    cmp-long v10, v8, v12

    if-ltz v10, :cond_4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    :goto_3
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 62
    .end local v0    # "d":J
    .end local v3    # "h":J
    .end local v5    # "m":J
    .end local v8    # "s":J
    :cond_0
    :goto_4
    return-object v7

    .line 57
    .restart local v0    # "d":J
    .restart local v3    # "h":J
    .restart local v5    # "m":J
    .restart local v8    # "s":J
    :cond_1
    const-string v10, ""

    goto :goto_0

    :cond_2
    const-string v10, ""

    goto :goto_1

    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "0"

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "0"

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    goto :goto_3

    .line 58
    .end local v0    # "d":J
    .end local v3    # "h":J
    .end local v5    # "m":J
    .end local v8    # "s":J
    :catch_0
    move-exception v2

    .line 59
    .local v2, "e":Ljava/lang/Exception;
    const-string v10, "iws"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "GetRemainTime e:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public static GetRemainTime4MaxHour(J)Ljava/lang/String;
    .locals 16
    .param p0, "remain"    # J

    .prologue
    .line 66
    const-string v7, "\u83b7\u53d6\u4e2d.."

    .line 67
    .local v7, "retStr":Ljava/lang/String;
    const-wide/16 v10, 0x0

    cmp-long v10, p0, v10

    if-lez v10, :cond_0

    .line 69
    const-wide/16 v10, 0x3e8

    :try_start_0
    div-long v10, p0, v10

    const-wide/16 v12, 0x3c

    div-long/2addr v10, v12

    const-wide/16 v12, 0x3c

    div-long/2addr v10, v12

    const-wide/16 v12, 0x18

    div-long v0, v10, v12

    .line 70
    .local v0, "d":J
    const-wide/16 v10, 0x18

    mul-long/2addr v10, v0

    const-wide/16 v12, 0x3e8

    div-long v12, p0, v12

    const-wide/16 v14, 0x3c

    div-long/2addr v12, v14

    const-wide/16 v14, 0x3c

    div-long/2addr v12, v14

    const-wide/16 v14, 0x18

    rem-long/2addr v12, v14

    add-long v3, v10, v12

    .line 71
    .local v3, "h":J
    const-wide/16 v10, 0x3e8

    div-long v10, p0, v10

    const-wide/16 v12, 0x3c

    div-long/2addr v10, v12

    const-wide/16 v12, 0x3c

    rem-long v5, v10, v12

    .line 72
    .local v5, "m":J
    const-wide/16 v10, 0x3e8

    div-long v10, p0, v10

    const-wide/16 v12, 0x3c

    rem-long v8, v10, v12

    .line 73
    .local v8, "s":J
    new-instance v11, Ljava/lang/StringBuilder;

    const-wide/16 v12, 0x0

    cmp-long v10, v3, v12

    if-lez v10, :cond_1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ":"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_0
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v12, 0xa

    cmp-long v10, v5, v12

    if-ltz v10, :cond_2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    :goto_1
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-wide/16 v12, 0xa

    cmp-long v10, v8, v12

    if-ltz v10, :cond_3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    :goto_2
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 78
    .end local v0    # "d":J
    .end local v3    # "h":J
    .end local v5    # "m":J
    .end local v8    # "s":J
    :cond_0
    :goto_3
    return-object v7

    .line 73
    .restart local v0    # "d":J
    .restart local v3    # "h":J
    .restart local v5    # "m":J
    .restart local v8    # "s":J
    :cond_1
    const-string v10, ""

    goto :goto_0

    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "0"

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "0"

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    goto :goto_2

    .line 74
    .end local v0    # "d":J
    .end local v3    # "h":J
    .end local v5    # "m":J
    .end local v8    # "s":J
    :catch_0
    move-exception v2

    .line 75
    .local v2, "e":Ljava/lang/Exception;
    const-string v10, "iws"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "GetRemainTime4MaxHour e:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public static GetRemainTimeInChiness(JLjava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "remain"    # J
    .param p2, "remainStr"    # Ljava/lang/String;

    .prologue
    .line 151
    const-wide/16 v10, 0x3e8

    mul-long/2addr p0, v10

    .line 152
    const-string v7, "\u83b7\u53d6\u4e2d.."

    .line 153
    .local v7, "retStr":Ljava/lang/String;
    const-wide/16 v10, 0x0

    cmp-long v10, p0, v10

    if-lez v10, :cond_0

    .line 155
    const-wide/16 v10, 0x3e8

    :try_start_0
    div-long v10, p0, v10

    const-wide/16 v12, 0x3c

    div-long/2addr v10, v12

    const-wide/16 v12, 0x3c

    div-long/2addr v10, v12

    const-wide/16 v12, 0x18

    div-long v0, v10, v12

    .line 156
    .local v0, "d":J
    const-wide/16 v10, 0x3e8

    div-long v10, p0, v10

    const-wide/16 v12, 0x3c

    div-long/2addr v10, v12

    const-wide/16 v12, 0x3c

    div-long/2addr v10, v12

    const-wide/16 v12, 0x18

    rem-long v3, v10, v12

    .line 157
    .local v3, "h":J
    const-wide/16 v10, 0x3e8

    div-long v10, p0, v10

    const-wide/16 v12, 0x3c

    div-long/2addr v10, v12

    const-wide/16 v12, 0x3c

    rem-long v5, v10, v12

    .line 158
    .local v5, "m":J
    const-wide/16 v10, 0x3e8

    div-long v10, p0, v10

    const-wide/16 v12, 0x3c

    rem-long v8, v10, v12

    .line 160
    .local v8, "s":J
    const-wide/16 v10, 0x0

    cmp-long v10, v0, v10

    if-gtz v10, :cond_3

    const-wide/16 v10, 0x0

    cmp-long v10, v3, v10

    if-gtz v10, :cond_3

    .line 162
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v12, 0xa

    cmp-long v10, v5, v12

    if-ltz v10, :cond_1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    :goto_0
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-wide/16 v12, 0xa

    cmp-long v10, v8, v12

    if-ltz v10, :cond_2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    :goto_1
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " \u540e\u5f00\u5956"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 170
    .end local v0    # "d":J
    .end local v3    # "h":J
    .end local v5    # "m":J
    .end local v8    # "s":J
    :cond_0
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "<font color=\"#898989\">"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "</font>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 162
    .restart local v0    # "d":J
    .restart local v3    # "h":J
    .restart local v5    # "m":J
    .restart local v8    # "s":J
    :cond_1
    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "0"

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "0"

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    goto :goto_1

    .line 164
    :cond_3
    move-object/from16 v7, p2

    goto :goto_2

    .line 166
    .end local v0    # "d":J
    .end local v3    # "h":J
    .end local v5    # "m":J
    .end local v8    # "s":J
    :catch_0
    move-exception v2

    .line 167
    .local v2, "e":Ljava/lang/Exception;
    const-string v10, "iws"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "GetRemainTime e:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static convertStringToDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .param p0, "strDate"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 173
    const/4 v0, 0x0

    .line 176
    .local v0, "aDate":Ljava/util/Date;
    :try_start_0
    invoke-static {p0}, Lcom/cai88/tools/uitl/Common;->strIsBlank(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 177
    const-string v2, "yyyy-MM-dd"

    invoke-static {v2, p0}, Lcom/cai88/tools/uitl/TimeHelper;->convertStringToDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 184
    :cond_0
    return-object v0

    .line 178
    :catch_0
    move-exception v1

    .line 179
    .local v1, "pe":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 180
    new-instance v2, Ljava/text/ParseException;

    invoke-virtual {v1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/text/ParseException;->getErrorOffset()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public static final convertStringToDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 6
    .param p0, "aMask"    # Ljava/lang/String;
    .param p1, "strDate"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 188
    const/4 v1, 0x0

    .line 189
    .local v1, "df":Ljava/text/SimpleDateFormat;
    const/4 v0, 0x0

    .line 190
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    .end local v1    # "df":Ljava/text/SimpleDateFormat;
    invoke-direct {v1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 193
    .restart local v1    # "df":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 198
    return-object v0

    .line 194
    :catch_0
    move-exception v2

    .line 195
    .local v2, "pe":Ljava/text/ParseException;
    new-instance v3, Ljava/text/ParseException;

    invoke-virtual {v2}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/text/ParseException;->getErrorOffset()I

    move-result v5

    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method

.method public static getBaseFormationTime(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 82
    sget-object v1, Lcom/cai88/tools/uitl/TimeHelper;->baseDateFm:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "retStr":Ljava/lang/String;
    return-object v0
.end method

.method public static getDaysOfWeek(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "dateStr"    # Ljava/lang/String;

    .prologue
    .line 89
    :try_start_0
    sget-object v2, Lcom/cai88/tools/uitl/TimeHelper;->dateFm1:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 90
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getDay()I
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 98
    const-string v2, ""

    .line 103
    .end local v0    # "date":Ljava/util/Date;
    :goto_0
    return-object v2

    .line 91
    .restart local v0    # "date":Ljava/util/Date;
    :pswitch_0
    const-string v2, "\u661f\u671f\u65e5"

    goto :goto_0

    .line 92
    :pswitch_1
    const-string v2, "\u661f\u671f\u4e00"

    goto :goto_0

    .line 93
    :pswitch_2
    const-string v2, "\u661f\u671f\u4e8c"

    goto :goto_0

    .line 94
    :pswitch_3
    const-string v2, "\u661f\u671f\u4e09"

    goto :goto_0

    .line 95
    :pswitch_4
    const-string v2, "\u661f\u671f\u56db"

    goto :goto_0

    .line 96
    :pswitch_5
    const-string v2, "\u661f\u671f\u4e94"

    goto :goto_0

    .line 97
    :pswitch_6
    const-string v2, "\u661f\u671f\u516d"

    goto :goto_0

    .line 100
    .end local v0    # "date":Ljava/util/Date;
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 103
    const-string v2, ""

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static getDaysOfWeek2(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "dateStr"    # Ljava/lang/String;

    .prologue
    .line 109
    :try_start_0
    sget-object v2, Lcom/cai88/tools/uitl/TimeHelper;->dateFm1:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 110
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getDay()I
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 118
    const-string v2, ""

    .line 123
    .end local v0    # "date":Ljava/util/Date;
    :goto_0
    return-object v2

    .line 111
    .restart local v0    # "date":Ljava/util/Date;
    :pswitch_0
    const-string v2, "\u5468\u65e5"

    goto :goto_0

    .line 112
    :pswitch_1
    const-string v2, "\u5468\u4e00"

    goto :goto_0

    .line 113
    :pswitch_2
    const-string v2, "\u5468\u4e8c"

    goto :goto_0

    .line 114
    :pswitch_3
    const-string v2, "\u5468\u4e09"

    goto :goto_0

    .line 115
    :pswitch_4
    const-string v2, "\u5468\u56db"

    goto :goto_0

    .line 116
    :pswitch_5
    const-string v2, "\u5468\u4e94"

    goto :goto_0

    .line 117
    :pswitch_6
    const-string v2, "\u5468\u516d"

    goto :goto_0

    .line 120
    .end local v0    # "date":Ljava/util/Date;
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 123
    const-string v2, ""

    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static getUTCStringToDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 18
    .param p0, "date"    # Ljava/lang/String;

    .prologue
    .line 127
    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    .line 129
    .local v14, "resultDate":Ljava/util/Date;
    const/4 v2, 0x0

    const/4 v3, 0x4

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 130
    .local v17, "year":Ljava/lang/String;
    const/4 v2, 0x5

    const/4 v3, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 131
    .local v13, "month":Ljava/lang/String;
    const/16 v2, 0x8

    const/16 v3, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 132
    .local v8, "day":Ljava/lang/String;
    const/16 v2, 0xb

    const/16 v3, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 133
    .local v10, "hour":Ljava/lang/String;
    const/16 v2, 0xe

    const/16 v3, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 134
    .local v12, "minute":Ljava/lang/String;
    const/16 v2, 0x11

    const/16 v3, 0x13

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 135
    .local v16, "second":Ljava/lang/String;
    const/16 v2, 0x14

    const/16 v3, 0x17

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 137
    .local v11, "millisecond":I
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 138
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 139
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 140
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 137
    invoke-direct/range {v1 .. v7}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    .line 141
    .local v1, "result":Ljava/util/Calendar;
    const/16 v2, 0xe

    invoke-virtual {v1, v2, v11}, Ljava/util/Calendar;->set(II)V

    .line 142
    const-string v2, "Etc/UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 143
    new-instance v15, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v15, v2, v3}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v14    # "resultDate":Ljava/util/Date;
    .local v15, "resultDate":Ljava/util/Date;
    move-object v14, v15

    .line 147
    .end local v1    # "result":Ljava/util/Calendar;
    .end local v8    # "day":Ljava/lang/String;
    .end local v10    # "hour":Ljava/lang/String;
    .end local v11    # "millisecond":I
    .end local v12    # "minute":Ljava/lang/String;
    .end local v13    # "month":Ljava/lang/String;
    .end local v15    # "resultDate":Ljava/util/Date;
    .end local v16    # "second":Ljava/lang/String;
    .end local v17    # "year":Ljava/lang/String;
    .restart local v14    # "resultDate":Ljava/util/Date;
    :goto_0
    return-object v14

    .line 144
    :catch_0
    move-exception v9

    .line 145
    .local v9, "e":Ljava/lang/Exception;
    const-string v2, "iws"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getUTCStringToDate e:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static stringToBaseTime(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .param p0, "dStr"    # Ljava/lang/String;

    .prologue
    .line 37
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 39
    .local v0, "date":Ljava/util/Date;
    :try_start_0
    sget-object v2, Lcom/cai88/tools/uitl/TimeHelper;->baseDateFm:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 44
    :goto_0
    return-object v0

    .line 40
    :catch_0
    move-exception v1

    .line 42
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method
