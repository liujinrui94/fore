.class public Lcom/cai88/tools/shishicai/SplashActivity;
.super Landroid/app/Activity;
.source "SplashActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initM()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x3e8

    .line 33
    invoke-virtual {p0}, Lcom/cai88/tools/shishicai/SplashActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cai88/tools/shishicai/SplashActivity;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/cai88/tools/shishicai/SplashActivity$1;

    invoke-direct {v1, p0}, Lcom/cai88/tools/shishicai/SplashActivity$1;-><init>(Lcom/cai88/tools/shishicai/SplashActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 96
    :goto_0
    return-void

    .line 46
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/cai88/tools/shishicai/SplashActivity$2;

    invoke-direct {v1, p0}, Lcom/cai88/tools/shishicai/SplashActivity$2;-><init>(Lcom/cai88/tools/shishicai/SplashActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 100
    const-string v8, "connectivity"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 102
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_1

    .line 103
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v5

    .line 105
    .local v5, "networks":[Landroid/net/Network;
    array-length v9, v5

    move v8, v7

    :goto_0
    if-ge v8, v9, :cond_3

    aget-object v3, v5, v8

    .line 106
    .local v3, "mNetwork":Landroid/net/Network;
    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 107
    .local v4, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v10

    sget-object v11, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v10, v11}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 125
    .end local v3    # "mNetwork":Landroid/net/Network;
    .end local v4    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v5    # "networks":[Landroid/net/Network;
    :goto_1
    return v6

    .line 105
    .restart local v3    # "mNetwork":Landroid/net/Network;
    .restart local v4    # "networkInfo":Landroid/net/NetworkInfo;
    .restart local v5    # "networks":[Landroid/net/Network;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 113
    .end local v3    # "mNetwork":Landroid/net/Network;
    .end local v4    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v5    # "networks":[Landroid/net/Network;
    :cond_1
    if-eqz v1, :cond_3

    .line 114
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 115
    .local v2, "info":[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_3

    .line 116
    array-length v9, v2

    move v8, v7

    :goto_2
    if-ge v8, v9, :cond_3

    aget-object v0, v2, v8

    .line 117
    .local v0, "anInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v10

    sget-object v11, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v10, v11, :cond_2

    .line 118
    const-string v7, "Network"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NETWORKNAME: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 116
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .end local v0    # "anInfo":Landroid/net/NetworkInfo;
    .end local v2    # "info":[Landroid/net/NetworkInfo;
    :cond_3
    move v6, v7

    .line 125
    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lcom/cai88/tools/shishicai/SplashActivity;->setContentView(I)V

    .line 27
    const-string v0, "AAAA"

    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->getRegistrationID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-direct {p0}, Lcom/cai88/tools/shishicai/SplashActivity;->initM()V

    .line 29
    return-void
.end method
