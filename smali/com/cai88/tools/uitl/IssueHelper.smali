.class public Lcom/cai88/tools/uitl/IssueHelper;
.super Ljava/lang/Object;
.source "IssueHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMaxIssue(Ljava/lang/String;)I
    .locals 2
    .param p0, "gamecode"    # Ljava/lang/String;

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 40
    .local v0, "maxno":I
    const-string v1, "018"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    const/16 v0, 0x78

    .line 45
    :cond_0
    :goto_0
    return v0

    .line 42
    :cond_1
    const-string v1, "006"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    const/16 v0, 0x54

    goto :goto_0
.end method

.method public static getNextIssue(ILjava/lang/String;)I
    .locals 5
    .param p0, "issue"    # I
    .param p1, "gamecode"    # Ljava/lang/String;

    .prologue
    .line 27
    const/4 v1, 0x1

    .line 29
    .local v1, "nextIssue":I
    add-int/lit8 v1, p0, 0x1

    .line 30
    :try_start_0
    invoke-static {p1}, Lcom/cai88/tools/uitl/IssueHelper;->getMaxIssue(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-le v1, v2, :cond_0

    .line 31
    const/4 v1, 0x1

    .line 36
    :cond_0
    :goto_0
    return v1

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "iws"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getNextIssue e:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static shortIssue(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "issueStr"    # Ljava/lang/String;
    .param p1, "gamecode"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x9

    .line 9
    const/4 v1, 0x1

    .line 11
    .local v1, "sortiss":I
    :try_start_0
    const-string v2, ""

    .line 12
    .local v2, "tempStr":Ljava/lang/String;
    const-string v4, "018"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 13
    const/4 v3, 0x2

    .line 14
    .local v3, "yearCount":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v5, :cond_0

    const/4 v3, 0x4

    .line 15
    :cond_0
    add-int/lit8 v4, v3, 0x4

    add-int/lit8 v5, v3, 0x7

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 19
    .end local v3    # "yearCount":I
    :cond_1
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 23
    .end local v2    # "tempStr":Ljava/lang/String;
    :goto_1
    return v1

    .line 16
    .restart local v2    # "tempStr":Ljava/lang/String;
    :cond_2
    const-string v4, "006"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 17
    const/4 v4, 0x7

    const/16 v5, 0x9

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 20
    .end local v2    # "tempStr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 21
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "iws"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "shortIssue e:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static shortIssueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "issueStr"    # Ljava/lang/String;
    .param p1, "gameCode"    # Ljava/lang/String;

    .prologue
    .line 55
    move-object v0, p0

    .line 56
    .local v0, "issue":Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/cai88/tools/uitl/IssueHelper;->shortIssue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 57
    .local v1, "tmpIssueNum":I
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    const-string v2, "00"

    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u671f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    return-object v0

    .line 57
    :cond_0
    const/16 v2, 0x9

    if-le v1, v2, :cond_1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_1

    const-string v2, "0"

    goto :goto_0

    :cond_1
    const-string v2, ""

    goto :goto_0
.end method
