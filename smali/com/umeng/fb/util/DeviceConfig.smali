.class public Lcom/umeng/fb/util/DeviceConfig;
.super Ljava/lang/Object;
.source "DeviceConfig.java"


# static fields
.field public static final DEFAULT_TIMEZONE:I = 0x8

.field protected static final LOG_TAG:Ljava/lang/String;

.field private static final MOBILE_NETWORK:Ljava/lang/String; = "2G/3G"

.field protected static final UNKNOW:Ljava/lang/String; = "Unknown"

.field private static final WIFI:Ljava/lang/String; = "Wi-Fi"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/umeng/fb/util/DeviceConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/fb/util/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 138
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    const/4 v1, 0x0

    .line 141
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static getAppLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 155
    .local v3, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 159
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    :goto_1
    check-cast v4, Ljava/lang/String;

    move-object v1, v4

    check-cast v1, Ljava/lang/String;

    .line 161
    .local v1, "applicationName":Ljava/lang/String;
    return-object v1

    .line 156
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "applicationName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 157
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .line 159
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const-string v4, ""

    goto :goto_1
.end method

.method public static getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 105
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 106
    .local v2, "version_code":I
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 108
    .end local v1    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "version_code":I
    :goto_0
    return-object v3

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "Unknown"

    goto :goto_0
.end method

.method public static getAppVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 122
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v1    # "pInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "Unknown"

    goto :goto_0
.end method

.method public static getAppkey(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 507
    const/4 v0, 0x0

    .line 509
    .local v0, "appkey":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 510
    .local v4, "manager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 513
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_1

    .line 514
    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "UMENG_APPKEY"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 515
    .local v2, "id":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 516
    move-object v0, v2

    .line 517
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 529
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "manager":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v5

    .line 519
    .restart local v2    # "id":Ljava/lang/String;
    .restart local v3    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "manager":Landroid/content/pm/PackageManager;
    :cond_0
    sget-object v5, Lcom/umeng/fb/util/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Could not read UMENG_APPKEY meta-data from AndroidManifest.xml."

    invoke-static {v5, v6}, Lcom/umeng/fb/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "manager":Landroid/content/pm/PackageManager;
    :cond_1
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 524
    :catch_0
    move-exception v1

    .line 525
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/umeng/fb/util/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Could not read UMENG_APPKEY meta-data from AndroidManifest.xml."

    invoke-static {v5, v6, v1}, Lcom/umeng/fb/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public static getApplicationLable(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 734
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCPU()Ljava/lang/String;
    .locals 9

    .prologue
    .line 191
    const/4 v0, 0x0

    .line 193
    .local v0, "cpuInfo":Ljava/lang/String;
    const/4 v2, 0x0

    .line 194
    .local v2, "fstream":Ljava/io/FileReader;
    const/4 v4, 0x0

    .line 197
    .local v4, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    const-string v7, "/proc/cpuinfo"

    invoke-direct {v3, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 198
    .end local v2    # "fstream":Ljava/io/FileReader;
    .local v3, "fstream":Ljava/io/FileReader;
    if-eqz v3, :cond_0

    .line 200
    :try_start_1
    new-instance v5, Ljava/io/BufferedReader;

    const/16 v7, 0x400

    invoke-direct {v5, v3, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 201
    .end local v4    # "in":Ljava/io/BufferedReader;
    .local v5, "in":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 203
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    move-object v2, v3

    .line 213
    .end local v3    # "fstream":Ljava/io/FileReader;
    .restart local v2    # "fstream":Ljava/io/FileReader;
    :goto_1
    if-eqz v0, :cond_1

    .line 214
    const/16 v7, 0x3a

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/lit8 v6, v7, 0x1

    .line 215
    .local v6, "start":I
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 217
    .end local v6    # "start":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 204
    .end local v2    # "fstream":Ljava/io/FileReader;
    .restart local v3    # "fstream":Ljava/io/FileReader;
    :catch_0
    move-exception v1

    .line 205
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    sget-object v7, Lcom/umeng/fb/util/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Could not read from file /proc/cpuinfo"

    invoke-static {v7, v8, v1}, Lcom/umeng/fb/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 209
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    move-object v2, v3

    .line 210
    .end local v3    # "fstream":Ljava/io/FileReader;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "fstream":Ljava/io/FileReader;
    :goto_3
    sget-object v7, Lcom/umeng/fb/util/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Could not open file /proc/cpuinfo"

    invoke-static {v7, v8, v1}, Lcom/umeng/fb/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 209
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v1

    goto :goto_3

    .end local v2    # "fstream":Ljava/io/FileReader;
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "fstream":Ljava/io/FileReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :catch_3
    move-exception v1

    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    move-object v2, v3

    .end local v3    # "fstream":Ljava/io/FileReader;
    .restart local v2    # "fstream":Ljava/io/FileReader;
    goto :goto_3

    .line 204
    .end local v2    # "fstream":Ljava/io/FileReader;
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "fstream":Ljava/io/FileReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :catch_4
    move-exception v1

    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public static getChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 691
    const-string v0, "Unknown"

    .line 693
    .local v0, "channel":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 694
    .local v5, "manager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 697
    .local v4, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_0

    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_0

    .line 698
    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "UMENG_CHANNEL"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 699
    .local v3, "idObject":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 700
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 701
    .local v2, "id":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 702
    move-object v0, v2

    .line 714
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "idObject":Ljava/lang/Object;
    .end local v4    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "manager":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-object v0

    .line 704
    .restart local v2    # "id":Ljava/lang/String;
    .restart local v3    # "idObject":Ljava/lang/Object;
    .restart local v4    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "manager":Landroid/content/pm/PackageManager;
    :cond_1
    sget-object v6, Lcom/umeng/fb/util/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Could not read UMENG_CHANNEL meta-data from AndroidManifest.xml."

    invoke-static {v6, v7}, Lcom/umeng/fb/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 709
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "idObject":Ljava/lang/Object;
    .end local v4    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "manager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 710
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/umeng/fb/util/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Could not read UMENG_CHANNEL meta-data from AndroidManifest.xml."

    invoke-static {v6, v7}, Lcom/umeng/fb/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 228
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 231
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    if-nez v3, :cond_0

    .line 232
    sget-object v4, Lcom/umeng/fb/util/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    const-string v5, "No IMEI."

    invoke-static {v4, v5}, Lcom/umeng/fb/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_0
    const-string v1, ""

    .line 237
    .local v1, "imei":Ljava/lang/String;
    :try_start_0
    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v4}, Lcom/umeng/fb/util/DeviceConfig;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 238
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 244
    :cond_1
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 245
    sget-object v4, Lcom/umeng/fb/util/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    const-string v5, "No IMEI."

    invoke-static {v4, v5}, Lcom/umeng/fb/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-static {p0}, Lcom/umeng/fb/util/DeviceConfig;->getMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 248
    sget-object v4, Lcom/umeng/fb/util/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Failed to take mac as IMEI. Try to use Secure.ANDROID_ID instead."

    invoke-static {v4, v5}, Lcom/umeng/fb/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "android_id"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 252
    sget-object v4, Lcom/umeng/fb/util/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDeviceId: Secure.ANDROID_ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/umeng/fb/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    .line 256
    .end local v1    # "imei":Ljava/lang/String;
    .local v2, "imei":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 240
    .end local v2    # "imei":Ljava/lang/String;
    .restart local v1    # "imei":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 241
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v4, Lcom/umeng/fb/util/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    const-string v5, "No IMEI."

    invoke-static {v4, v5, v0}, Lcom/umeng/fb/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_2
    move-object v2, v1

    .line 256
    .end local v1    # "imei":Ljava/lang/String;
    .restart local v2    # "imei":Ljava/lang/String;
    goto :goto_1
.end method

.method public static getDeviceIdUmengMD5(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 266
    invoke-static {p0}, Lcom/umeng/fb/util/DeviceConfig;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/fb/util/Helper;->getUmengMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayResolution(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 298
    :try_start_0
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 299
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    const-string v7, "window"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    move-object v0, v7

    check-cast v0, Landroid/view/WindowManager;

    move-object v6, v0

    .line 301
    .local v6, "wm":Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 303
    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 304
    .local v5, "width":I
    iget v2, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 306
    .local v2, "height":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 311
    .end local v2    # "height":I
    .end local v3    # "metrics":Landroid/util/DisplayMetrics;
    .end local v5    # "width":I
    .end local v6    # "wm":Landroid/view/WindowManager;
    :goto_0
    return-object v4

    .line 309
    :catch_0
    move-exception v1

    .line 310
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 311
    const-string v4, "Unknown"

    goto :goto_0
.end method

.method public static getGPU(Ljavax/microedition/khronos/opengles/GL10;)[Ljava/lang/String;
    .locals 7
    .param p0, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v6, 0x0

    .line 173
    const/4 v4, 0x2

    :try_start_0
    new-array v2, v4, [Ljava/lang/String;

    .line 174
    .local v2, "res":[Ljava/lang/String;
    const/16 v4, 0x1f00

    invoke-interface {p0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v3

    .line 175
    .local v3, "vendor":Ljava/lang/String;
    const/16 v4, 0x1f01

    invoke-interface {p0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "renderer":Ljava/lang/String;
    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 177
    const/4 v4, 0x1

    aput-object v1, v2, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .end local v1    # "renderer":Ljava/lang/String;
    .end local v2    # "res":[Ljava/lang/String;
    .end local v3    # "vendor":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/umeng/fb/util/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Could not read gpu infor:"

    invoke-static {v4, v5, v0}, Lcom/umeng/fb/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 181
    new-array v2, v6, [Ljava/lang/String;

    goto :goto_0
.end method

.method public static getIntervalSeconds(Ljava/util/Date;Ljava/util/Date;)I
    .locals 9
    .param p0, "startTime"    # Ljava/util/Date;
    .param p1, "endTime"    # Ljava/util/Date;

    .prologue
    .line 673
    invoke-virtual {p0, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 674
    move-object v0, p0

    .line 675
    .local v0, "cal":Ljava/util/Date;
    move-object p0, p1

    .line 676
    move-object p1, v0

    .line 678
    .end local v0    # "cal":Ljava/util/Date;
    :cond_0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    .line 679
    .local v5, "sl":J
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 680
    .local v3, "el":J
    sub-long v1, v3, v5

    .line 681
    .local v1, "ei":J
    const-wide/16 v7, 0x3e8

    div-long v7, v1, v7

    long-to-int v7, v7

    return v7
.end method

.method private static getLocale(Landroid/content/Context;)Ljava/util/Locale;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 481
    const/4 v1, 0x0

    .line 483
    .local v1, "locale":Ljava/util/Locale;
    :try_start_0
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    .line 484
    .local v2, "userConfig":Landroid/content/res/Configuration;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/provider/Settings$System;->getConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V

    .line 486
    if-eqz v2, :cond_0

    .line 487
    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    .end local v2    # "userConfig":Landroid/content/res/Configuration;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 494
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 497
    :cond_1
    return-object v1

    .line 489
    :catch_0
    move-exception v0

    .line 490
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/umeng/fb/util/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    const-string v4, "fail to read user config locale"

    invoke-static {v3, v4}, Lcom/umeng/fb/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getLocaleInfo(Landroid/content/Context;)[Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 450
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    .line 453
    .local v0, "cl":[Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/umeng/fb/util/DeviceConfig;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v2

    .line 455
    .local v2, "locale":Ljava/util/Locale;
    if-eqz v2, :cond_0

    .line 456
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 457
    const/4 v3, 0x1

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 460
    :cond_0
    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 461
    const/4 v3, 0x0

    const-string v4, "Unknown"

    aput-object v4, v0, v3

    .line 462
    :cond_1
    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 463
    const/4 v3, 0x1

    const-string v4, "Unknown"

    aput-object v4, v0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    .end local v2    # "locale":Ljava/util/Locale;
    :cond_2
    :goto_0
    return-object v0

    .line 466
    :catch_0
    move-exception v1

    .line 467
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/umeng/fb/util/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    const-string v4, "error in getLocaleInfo"

    invoke-static {v3, v4, v1}, Lcom/umeng/fb/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static getLocation(Landroid/content/Context;)Landroid/location/Location;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 381
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getMac(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 540
    :try_start_0
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 542
    .local v2, "wifi":Landroid/net/wifi/WifiManager;
    const-string v3, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v3}, Lcom/umeng/fb/util/DeviceConfig;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 543
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 544
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    .line 552
    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    .end local v2    # "wifi":Landroid/net/wifi/WifiManager;
    :goto_0
    return-object v3

    .line 546
    .restart local v2    # "wifi":Landroid/net/wifi/WifiManager;
    :cond_0
    sget-object v3, Lcom/umeng/fb/util/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Could not get mac address.[no permission android.permission.ACCESS_WIFI_STATE"

    invoke-static {v3, v4}, Lcom/umeng/fb/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    .end local v2    # "wifi":Landroid/net/wifi/WifiManager;
    :goto_1
    const-string v3, ""

    goto :goto_0

    .line 549
    :catch_0
    move-exception v0

    .line 550
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/umeng/fb/util/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not get mac address."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/umeng/fb/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getNetworkAccessMode(Landroid/content/Context;)[Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 324
    const/4 v6, 0x2

    new-array v4, v6, [Ljava/lang/String;

    const-string v6, "Unknown"

    aput-object v6, v4, v7

    const-string v6, "Unknown"

    aput-object v6, v4, v8

    .line 327
    .local v4, "res":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 328
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const-string v6, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_1

    .line 330
    const/4 v6, 0x0

    const-string v7, "Unknown"

    aput-object v7, v4, v6

    .line 358
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-object v4

    .line 334
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 336
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_2

    .line 337
    const/4 v6, 0x0

    const-string v7, "Unknown"

    aput-object v7, v4, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 354
    .end local v0    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 355
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 340
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "connectivity":Landroid/net/ConnectivityManager;
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    const/4 v6, 0x1

    :try_start_1
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 342
    .local v5, "wifi_network":Landroid/net/NetworkInfo;
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v6, v7, :cond_3

    .line 343
    const/4 v6, 0x0

    const-string v7, "Wi-Fi"

    aput-object v7, v4, v6

    goto :goto_0

    .line 346
    :cond_3
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 348
    .local v2, "mobile_network":Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v6, v7, :cond_0

    .line 349
    const/4 v6, 0x0

    const-string v7, "2G/3G"

    aput-object v7, v4, v6

    .line 350
    const/4 v6, 0x1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static getNetworkOperatorName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 277
    :try_start_0
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 280
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-nez v1, :cond_0

    .line 281
    const-string v2, "Unknown"

    .line 286
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v2

    .line 283
    .restart local v1    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 284
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 286
    const-string v2, "Unknown"

    goto :goto_0
.end method

.method public static getOperator(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 613
    :try_start_0
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 619
    :goto_0
    return-object v1

    .line 616
    :catch_0
    move-exception v0

    .line 617
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/umeng/fb/util/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    const-string v2, "read carrier fail"

    invoke-static {v1, v2, v0}, Lcom/umeng/fb/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 619
    const-string v1, "Unknown"

    goto :goto_0
.end method

.method public static getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 724
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getResolution(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, -0x1

    .line 563
    :try_start_0
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 564
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    const-string v7, "window"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    move-object v0, v7

    check-cast v0, Landroid/view/WindowManager;

    move-object v6, v0

    .line 566
    .local v6, "wm":Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 568
    const/4 v5, -0x1

    .local v5, "width":I
    const/4 v2, -0x1

    .line 570
    .local v2, "height":I
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x2000

    if-nez v7, :cond_0

    .line 571
    const-string v7, "noncompatWidthPixels"

    invoke-static {v3, v7}, Lcom/umeng/fb/util/DeviceConfig;->reflectMetrics(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v5

    .line 572
    const-string v7, "noncompatHeightPixels"

    invoke-static {v3, v7}, Lcom/umeng/fb/util/DeviceConfig;->reflectMetrics(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v2

    .line 575
    :cond_0
    if-eq v5, v8, :cond_1

    if-ne v2, v8, :cond_2

    .line 576
    :cond_1
    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 577
    iget v2, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 580
    :cond_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 581
    .local v4, "msb":Ljava/lang/StringBuffer;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 582
    const-string v7, "*"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 583
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 585
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 589
    .end local v2    # "height":I
    .end local v3    # "metrics":Landroid/util/DisplayMetrics;
    .end local v4    # "msb":Ljava/lang/StringBuffer;
    .end local v5    # "width":I
    .end local v6    # "wm":Landroid/view/WindowManager;
    :goto_0
    return-object v7

    .line 586
    :catch_0
    move-exception v1

    .line 587
    .local v1, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/umeng/fb/util/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    const-string v8, "read resolution fail"

    invoke-static {v7, v8, v1}, Lcom/umeng/fb/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 589
    const-string v7, "Unknown"

    goto :goto_0
.end method

.method public static getTimeString(Ljava/util/Date;)Ljava/lang/String;
    .locals 3
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 629
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 630
    .local v0, "df":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 631
    .local v1, "time":Ljava/lang/String;
    return-object v1
.end method

.method public static getTimeZone(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 430
    :try_start_0
    invoke-static {p0}, Lcom/umeng/fb/util/DeviceConfig;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v2

    .line 431
    .local v2, "locale":Ljava/util/Locale;
    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 432
    .local v0, "calendar":Ljava/util/Calendar;
    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    const v4, 0x36ee80

    div-int/2addr v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v2    # "locale":Ljava/util/Locale;
    :goto_0
    return v3

    .line 435
    :catch_0
    move-exception v1

    .line 436
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/umeng/fb/util/DeviceConfig;->LOG_TAG:Ljava/lang/String;

    const-string v4, "error in getTimeZone"

    invoke-static {v3, v4, v1}, Lcom/umeng/fb/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 439
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/16 v3, 0x8

    goto :goto_0
.end method

.method public static getToday()Ljava/lang/String;
    .locals 4

    .prologue
    .line 640
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 641
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 642
    .local v1, "df":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 643
    .local v2, "time":Ljava/lang/String;
    return-object v2
.end method

.method public static isAppInstalled(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 4
    .param p0, "packageInfo"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 59
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 61
    .local v1, "installed":Z
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v2, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    const/4 v1, 0x1

    .line 66
    :goto_0
    return v1

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isChinese(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 78
    .local v0, "locale":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isDebug(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 746
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 748
    :cond_0
    :goto_0
    return v1

    .line 747
    :catch_0
    move-exception v0

    .line 748
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static isOnline(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 395
    :try_start_0
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 397
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 398
    .local v2, "ni":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 399
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 403
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "ni":Landroid/net/NetworkInfo;
    :goto_0
    return v3

    .line 401
    .restart local v0    # "cm":Landroid/net/ConnectivityManager;
    .restart local v2    # "ni":Landroid/net/NetworkInfo;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 402
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "ni":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    .line 403
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static isScreenPortrait(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    .line 91
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSdCardWrittenable()Z
    .locals 2

    .prologue
    .line 413
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    const/4 v0, 0x1

    .line 417
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWiFiAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 362
    const-string v0, "Wi-Fi"

    invoke-static {p0}, Lcom/umeng/fb/util/DeviceConfig;->getNetworkAccessMode(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static reflectMetrics(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 3
    .param p0, "metrics"    # Ljava/lang/Object;
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 595
    :try_start_0
    const-class v2, Landroid/util/DisplayMetrics;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 596
    .local v1, "f":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 597
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 601
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :goto_0
    return v2

    .line 598
    :catch_0
    move-exception v0

    .line 599
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 601
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static toTime(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .param p0, "strDay"    # Ljava/lang/String;

    .prologue
    .line 655
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 656
    .local v2, "sf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 659
    .end local v2    # "sf":Ljava/text/SimpleDateFormat;
    :goto_0
    return-object v0

    .line 658
    :catch_0
    move-exception v1

    .line 659
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_0
.end method
