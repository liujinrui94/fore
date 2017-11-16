.class public Lcom/umeng/update/UmengUpdateAgent;
.super Ljava/lang/Object;
.source "UmengUpdateAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/update/UmengUpdateAgent$a;
    }
.end annotation


# static fields
.field private static a:Lcom/umeng/update/UmengUpdateListener;

.field private static b:Lcom/umeng/update/UmengDialogButtonListener;

.field private static c:Lcom/umeng/update/UmengDownloadListener;

.field private static d:Landroid/content/Context;

.field private static e:Lcom/umeng/update/c;

.field private static f:Landroid/os/Handler;

.field private static g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    sput-object v0, Lcom/umeng/update/UmengUpdateAgent;->a:Lcom/umeng/update/UmengUpdateListener;

    .line 29
    sput-object v0, Lcom/umeng/update/UmengUpdateAgent;->b:Lcom/umeng/update/UmengDialogButtonListener;

    .line 30
    sput-object v0, Lcom/umeng/update/UmengUpdateAgent;->c:Lcom/umeng/update/UmengDownloadListener;

    .line 33
    new-instance v0, Lcom/umeng/update/c;

    invoke-direct {v0}, Lcom/umeng/update/c;-><init>()V

    sput-object v0, Lcom/umeng/update/UmengUpdateAgent;->e:Lcom/umeng/update/c;

    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/update/UmengUpdateAgent;->g:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 693
    return-void
.end method

.method static synthetic a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/umeng/update/UmengUpdateAgent;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .prologue
    .line 27
    sput-object p0, Lcom/umeng/update/UmengUpdateAgent;->d:Landroid/content/Context;

    return-object p0
.end method

.method static a(ILandroid/content/Context;Lcom/umeng/update/UpdateResponse;Ljava/io/File;)V
    .locals 1

    .prologue
    .line 457
    packed-switch p0, :pswitch_data_0

    .line 467
    :goto_0
    :pswitch_0
    sget-object v0, Lcom/umeng/update/UmengUpdateAgent;->b:Lcom/umeng/update/UmengDialogButtonListener;

    if-eqz v0, :cond_0

    .line 468
    sget-object v0, Lcom/umeng/update/UmengUpdateAgent;->b:Lcom/umeng/update/UmengDialogButtonListener;

    invoke-interface {v0, p0}, Lcom/umeng/update/UmengDialogButtonListener;->onClick(I)V

    .line 470
    :cond_0
    return-void

    .line 459
    :pswitch_1
    invoke-static {p1, p2, p3}, Lcom/umeng/update/UmengUpdateAgent;->a(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;Ljava/io/File;)V

    goto :goto_0

    .line 462
    :pswitch_2
    invoke-static {p1, p2}, Lcom/umeng/update/UmengUpdateAgent;->ignoreUpdate(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;)V

    goto :goto_0

    .line 457
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(ILcom/umeng/update/UpdateResponse;)V
    .locals 0

    .prologue
    .line 27
    invoke-static {p0, p1}, Lcom/umeng/update/UmengUpdateAgent;->b(ILcom/umeng/update/UpdateResponse;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 27
    invoke-static {p0, p1}, Lcom/umeng/update/UmengUpdateAgent;->b(Landroid/content/Context;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;I)V
    .locals 0

    .prologue
    .line 27
    invoke-static {p0, p1, p2}, Lcom/umeng/update/UmengUpdateAgent;->b(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;I)V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 484
    if-nez p2, :cond_0

    .line 485
    invoke-static {p0, p1}, Lcom/umeng/update/UmengUpdateAgent;->startDownload(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;)V

    .line 489
    :goto_0
    return-void

    .line 487
    :cond_0
    invoke-static {p0, p2}, Lcom/umeng/update/UmengUpdateAgent;->startInstall(Landroid/content/Context;Ljava/io/File;)V

    goto :goto_0
.end method

.method static synthetic b()Lcom/umeng/update/UmengUpdateListener;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/umeng/update/UmengUpdateAgent;->a:Lcom/umeng/update/UmengUpdateListener;

    return-object v0
.end method

.method private static b(ILcom/umeng/update/UpdateResponse;)V
    .locals 2

    .prologue
    .line 189
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 190
    iput p0, v0, Landroid/os/Message;->what:I

    .line 191
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 193
    sget-object v1, Lcom/umeng/update/UmengUpdateAgent;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 194
    return-void
.end method

.method private static b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 252
    if-nez p0, :cond_0

    .line 253
    :try_start_0
    const-string v0, "update"

    const-string v1, "unexpected null context in update"

    invoke-static {v0, v1}, Lu/upd/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :goto_0
    return-void

    .line 256
    :cond_0
    new-instance v0, Lcom/umeng/update/UmengUpdateAgent$1;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/umeng/update/UmengUpdateAgent$1;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    sput-object v0, Lcom/umeng/update/UmengUpdateAgent;->f:Landroid/os/Handler;

    .line 276
    invoke-static {p0}, Lcom/umeng/update/UmengUpdateAgent;->c(Landroid/content/Context;)Z

    .line 277
    invoke-static {p0}, Lu/upd/a;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 278
    invoke-static {}, Lcom/umeng/update/UpdateConfig;->isSilentDownload()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/update/UmengUpdateAgent;->b(ILcom/umeng/update/UpdateResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    .line 309
    const-string v1, "update"

    const-string v2, "Exception occurred in Mobclick.update(). "

    invoke-static {v1, v2, v0}, Lu/upd/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 282
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/umeng/update/UpdateConfig;->isUpdateOnlyWifi()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 283
    invoke-static {}, Lcom/umeng/update/UpdateConfig;->isUpdateForce()Z

    move-result v0

    if-nez v0, :cond_2

    .line 284
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/update/UmengUpdateAgent;->b(ILcom/umeng/update/UpdateResponse;)V

    goto :goto_0

    .line 289
    :cond_2
    sget-object v0, Lcom/umeng/update/UmengUpdateAgent;->e:Lcom/umeng/update/c;

    invoke-virtual {v0}, Lcom/umeng/update/c;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 290
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/update/UmengUpdateAgent;->b(ILcom/umeng/update/UpdateResponse;)V

    .line 291
    const-string v0, "update"

    const-string v1, "Is updating now."

    invoke-static {v0, v1}, Lu/upd/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    sget-object v0, Lcom/umeng/update/UmengUpdateAgent;->f:Landroid/os/Handler;

    new-instance v1, Lcom/umeng/update/UmengUpdateAgent$2;

    invoke-direct {v1, p0}, Lcom/umeng/update/UmengUpdateAgent$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 305
    :cond_3
    sput-object p0, Lcom/umeng/update/UmengUpdateAgent;->d:Landroid/content/Context;

    .line 307
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/umeng/update/UmengUpdateAgent$a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/umeng/update/UmengUpdateAgent$a;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 680
    invoke-static {}, Lcom/umeng/update/UmengUpdateAgent;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/umeng/update/UmengUpdateAgent;->getUpdateFromPushMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 682
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 683
    const-string v0, "UpdateStatus"

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 684
    const-string v3, "UpdateResponse"

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/umeng/update/UpdateResponse;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 685
    const-string v0, "UpdateListener"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 686
    const-string v0, "com.umeng.message.action.autoupdate"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 687
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 688
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/umeng/update/UmengUpdateAgent;->setUpdateFromPushMessage(Z)V

    .line 689
    const-string v0, "UmengUpdateAgent"

    const-string v1, "UpdateFromPushMessage"

    invoke-static {v0, v1}, Lu/upd/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    :cond_0
    return-void
.end method

.method private static b(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;I)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 329
    :try_start_0
    invoke-static {p0, p1}, Lcom/umeng/update/UmengUpdateAgent;->isIgnore(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    :goto_0
    return-void

    .line 332
    :cond_0
    invoke-static {p0, p1}, Lcom/umeng/update/UmengUpdateAgent;->downloadedFile(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;)Ljava/io/File;

    move-result-object v2

    .line 333
    if-eqz v2, :cond_2

    const/4 v0, 0x1

    move v1, v0

    .line 334
    :goto_1
    if-nez v1, :cond_1

    invoke-static {}, Lcom/umeng/update/UpdateConfig;->isSilentDownload()Z

    move-result v0

    if-nez v0, :cond_3

    .line 335
    :cond_1
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 337
    :pswitch_0
    sget-object v0, Lcom/umeng/update/UmengUpdateAgent;->e:Lcom/umeng/update/c;

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/umeng/update/c;->a(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;ZLjava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 353
    :catch_0
    move-exception v0

    .line 354
    const-string v1, "update"

    const-string v2, "Fail to create update dialog box."

    invoke-static {v1, v2, v0}, Lu/upd/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    move v1, v0

    .line 333
    goto :goto_1

    .line 340
    :pswitch_1
    :try_start_1
    const-string v0, "notification"

    .line 341
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 342
    const/4 v3, 0x0

    sget-object v4, Lcom/umeng/update/UmengUpdateAgent;->e:Lcom/umeng/update/c;

    .line 344
    invoke-virtual {v4, p0, p1, v1, v2}, Lcom/umeng/update/c;->b(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;ZLjava/io/File;)Lcom/umeng/update/c$a;

    move-result-object v1

    .line 345
    invoke-virtual {v1}, Lcom/umeng/update/c$a;->a()Landroid/app/Notification;

    move-result-object v1

    .line 342
    invoke-virtual {v0, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 350
    :cond_3
    invoke-static {p0, p1}, Lcom/umeng/update/UmengUpdateAgent;->startDownload(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 335
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static c()Z
    .locals 2

    .prologue
    .line 52
    const/4 v1, 0x0

    .line 55
    :try_start_0
    const-string v0, "com.umeng.message.PushAgent"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 61
    :goto_0
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 56
    :catch_0
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 61
    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 536
    invoke-static {}, Lcom/umeng/update/UpdateConfig;->isUpdateCheck()Z

    move-result v0

    if-nez v0, :cond_1

    .line 676
    :cond_0
    :goto_0
    return v1

    .line 540
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".BuildConfig"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 542
    const-string v2, "DEBUG"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    .line 543
    if-eqz v0, :cond_0

    .line 552
    :try_start_1
    invoke-static {p0}, Lcom/umeng/update/UpdateConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 553
    sget-object v0, Lcom/umeng/update/UmengUpdateAgent;->f:Landroid/os/Handler;

    new-instance v1, Lcom/umeng/update/UmengUpdateAgent$3;

    invoke-direct {v1, p0}, Lcom/umeng/update/UmengUpdateAgent$3;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v1, v4

    .line 562
    goto :goto_0

    .line 564
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 566
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1005

    .line 565
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 570
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_4

    move v2, v4

    move v0, v4

    .line 571
    :goto_1
    :try_start_2
    iget-object v3, v6, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 572
    const-string v3, "com.umeng.update.UpdateDialogActivity"

    iget-object v5, v6, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    aget-object v5, v5, v2

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 573
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    .line 571
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v0, v4

    .line 578
    :cond_5
    if-nez v0, :cond_6

    .line 579
    sget-object v1, Lcom/umeng/update/UmengUpdateAgent;->f:Landroid/os/Handler;

    new-instance v2, Lcom/umeng/update/UmengUpdateAgent$4;

    invoke-direct {v2, p0}, Lcom/umeng/update/UmengUpdateAgent$4;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move v1, v4

    .line 589
    goto :goto_0

    .line 592
    :cond_6
    :try_start_3
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v0, :cond_8

    move v2, v4

    move v0, v4

    .line 593
    :goto_2
    :try_start_4
    iget-object v3, v6, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_9

    .line 594
    const-string v3, "com.umeng.update.net.DownloadingService"

    iget-object v5, v6, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    aget-object v5, v5, v2

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 595
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v0, v1

    .line 593
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    move v0, v4

    .line 600
    :cond_9
    if-nez v0, :cond_a

    .line 601
    sget-object v1, Lcom/umeng/update/UmengUpdateAgent;->f:Landroid/os/Handler;

    new-instance v2, Lcom/umeng/update/UmengUpdateAgent$5;

    invoke-direct {v2, p0}, Lcom/umeng/update/UmengUpdateAgent$5;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move v1, v4

    .line 611
    goto/16 :goto_0

    .line 617
    :cond_a
    :try_start_5
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_e

    move v5, v4

    move v0, v4

    move v2, v4

    move v3, v4

    .line 618
    :goto_3
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v7, v7

    if-ge v5, v7, :cond_f

    .line 619
    const-string v7, "android.permission.WRITE_EXTERNAL_STORAGE"

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v8, v8, v5

    .line 620
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    move v3, v1

    .line 618
    :cond_b
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 622
    :cond_c
    const-string v7, "android.permission.ACCESS_NETWORK_STATE"

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v8, v8, v5

    .line 623
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    move v2, v1

    .line 624
    goto :goto_4

    .line 625
    :cond_d
    const-string v7, "android.permission.INTERNET"

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v8, v8, v5

    .line 626
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result v7

    if-eqz v7, :cond_b

    move v0, v1

    .line 627
    goto :goto_4

    :cond_e
    move v0, v4

    move v2, v4

    move v3, v4

    .line 631
    :cond_f
    if-eqz v3, :cond_10

    if-eqz v2, :cond_10

    if-eqz v0, :cond_10

    move v0, v1

    .line 633
    :goto_5
    if-nez v0, :cond_11

    .line 634
    :try_start_6
    sget-object v1, Lcom/umeng/update/UmengUpdateAgent;->f:Landroid/os/Handler;

    new-instance v2, Lcom/umeng/update/UmengUpdateAgent$6;

    invoke-direct {v2, p0}, Lcom/umeng/update/UmengUpdateAgent$6;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move v1, v4

    .line 644
    goto/16 :goto_0

    :cond_10
    move v0, v4

    .line 631
    goto :goto_5

    .line 648
    :cond_11
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 649
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".R$string"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 648
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 650
    const-string v2, "UMUpdateCheck"

    .line 651
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 652
    const-string v2, "2.6.0.20150211"

    .line 653
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 652
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-result v0

    if-eqz v0, :cond_12

    move v0, v1

    .line 656
    :goto_6
    if-nez v0, :cond_0

    .line 662
    :goto_7
    :try_start_8
    sget-object v1, Lcom/umeng/update/UmengUpdateAgent;->f:Landroid/os/Handler;

    new-instance v2, Lcom/umeng/update/UmengUpdateAgent$7;

    invoke-direct {v2, p0}, Lcom/umeng/update/UmengUpdateAgent$7;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :goto_8
    move v1, v0

    .line 676
    goto/16 :goto_0

    .line 659
    :catch_0
    move-exception v0

    move v0, v4

    goto :goto_7

    .line 673
    :catch_1
    move-exception v0

    move v0, v4

    goto :goto_8

    :catch_2
    move-exception v1

    goto :goto_8

    .line 546
    :catch_3
    move-exception v0

    goto/16 :goto_0

    :cond_12
    move v0, v4

    goto :goto_6
.end method

.method public static downloadedFile(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;)Ljava/io/File;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/umeng/update/UpdateResponse;->new_md5:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".apk"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 398
    :try_start_0
    const-string v0, "/apk"

    const/4 v3, 0x1

    new-array v3, v3, [Z

    invoke-static {v0, p0, v3}, Lcom/umeng/update/net/j;->a(Ljava/lang/String;Landroid/content/Context;[Z)Ljava/io/File;

    move-result-object v3

    .line 399
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 400
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/umeng/update/UpdateResponse;->new_md5:Ljava/lang/String;

    .line 402
    invoke-static {v0}, Lu/upd/n;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 401
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 409
    :goto_0
    return-object v0

    .line 405
    :catch_0
    move-exception v0

    .line 406
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 407
    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 409
    goto :goto_0
.end method

.method public static forceUpdate(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/umeng/update/UpdateConfig;->setUpdateForce(Z)V

    .line 216
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/umeng/update/UpdateConfig;->setSilentDownload(Z)V

    .line 217
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/update/UmengUpdateAgent;->b(Landroid/content/Context;)V

    .line 218
    return-void
.end method

.method public static getUpdateFromPushMessage()Z
    .locals 1

    .prologue
    .line 69
    sget-boolean v0, Lcom/umeng/update/UmengUpdateAgent;->g:Z

    return v0
.end method

.method public static ignoreUpdate(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;)V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p1, Lcom/umeng/update/UpdateResponse;->new_md5:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/umeng/update/UpdateConfig;->saveIgnoreMd5(Landroid/content/Context;Ljava/lang/String;)V

    .line 438
    return-void
.end method

.method public static isIgnore(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;)Z
    .locals 2

    .prologue
    .line 422
    iget-object v0, p1, Lcom/umeng/update/UpdateResponse;->new_md5:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/umeng/update/UpdateResponse;->new_md5:Ljava/lang/String;

    .line 424
    invoke-static {p0}, Lcom/umeng/update/UpdateConfig;->getIgnoreMd5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 423
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    invoke-static {}, Lcom/umeng/update/UpdateConfig;->isUpdateForce()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setAppkey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    invoke-static {p0}, Lcom/umeng/update/UpdateConfig;->setAppkey(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public static setChannel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 144
    invoke-static {p0}, Lcom/umeng/update/UpdateConfig;->setChannel(Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public static setDefault()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 39
    invoke-static {v1}, Lcom/umeng/update/UmengUpdateAgent;->setDeltaUpdate(Z)V

    .line 40
    invoke-static {v1}, Lcom/umeng/update/UmengUpdateAgent;->setUpdateAutoPopup(Z)V

    .line 41
    invoke-static {v1}, Lcom/umeng/update/UmengUpdateAgent;->setUpdateOnlyWifi(Z)V

    .line 42
    invoke-static {v1}, Lcom/umeng/update/UmengUpdateAgent;->setRichNotification(Z)V

    .line 43
    invoke-static {v0}, Lcom/umeng/update/UmengUpdateAgent;->setDialogListener(Lcom/umeng/update/UmengDialogButtonListener;)V

    .line 44
    invoke-static {v0}, Lcom/umeng/update/UmengUpdateAgent;->setDownloadListener(Lcom/umeng/update/UmengDownloadListener;)V

    .line 45
    invoke-static {v0}, Lcom/umeng/update/UmengUpdateAgent;->setUpdateListener(Lcom/umeng/update/UmengUpdateListener;)V

    .line 46
    invoke-static {v0}, Lcom/umeng/update/UmengUpdateAgent;->setAppkey(Ljava/lang/String;)V

    .line 47
    invoke-static {v0}, Lcom/umeng/update/UmengUpdateAgent;->setChannel(Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/umeng/update/UmengUpdateAgent;->setUpdateUIStyle(I)V

    .line 49
    return-void
.end method

.method public static setDeltaUpdate(Z)V
    .locals 0

    .prologue
    .line 115
    invoke-static {p0}, Lcom/umeng/update/UpdateConfig;->setDeltaUpdate(Z)V

    .line 116
    return-void
.end method

.method public static setDialogListener(Lcom/umeng/update/UmengDialogButtonListener;)V
    .locals 0

    .prologue
    .line 174
    sput-object p0, Lcom/umeng/update/UmengUpdateAgent;->b:Lcom/umeng/update/UmengDialogButtonListener;

    .line 175
    return-void
.end method

.method public static setDownloadListener(Lcom/umeng/update/UmengDownloadListener;)V
    .locals 0

    .prologue
    .line 185
    sput-object p0, Lcom/umeng/update/UmengUpdateAgent;->c:Lcom/umeng/update/UmengDownloadListener;

    .line 186
    return-void
.end method

.method public static setRichNotification(Z)V
    .locals 0

    .prologue
    .line 153
    invoke-static {p0}, Lcom/umeng/update/UpdateConfig;->setRichNotification(Z)V

    .line 154
    return-void
.end method

.method public static setSlotId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 134
    invoke-static {p0}, Lcom/umeng/update/UpdateConfig;->setSlotId(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public static setUpdateAutoPopup(Z)V
    .locals 0

    .prologue
    .line 93
    invoke-static {p0}, Lcom/umeng/update/UpdateConfig;->setUpdateAutoPopup(Z)V

    .line 94
    return-void
.end method

.method public static setUpdateCheckConfig(Z)V
    .locals 0

    .prologue
    .line 73
    invoke-static {p0}, Lcom/umeng/update/UpdateConfig;->setUpdateCheck(Z)V

    .line 74
    return-void
.end method

.method public static setUpdateFromPushMessage(Z)V
    .locals 0

    .prologue
    .line 65
    sput-boolean p0, Lcom/umeng/update/UmengUpdateAgent;->g:Z

    .line 66
    return-void
.end method

.method public static setUpdateListener(Lcom/umeng/update/UmengUpdateListener;)V
    .locals 0

    .prologue
    .line 163
    sput-object p0, Lcom/umeng/update/UmengUpdateAgent;->a:Lcom/umeng/update/UmengUpdateListener;

    .line 164
    return-void
.end method

.method public static setUpdateOnlyWifi(Z)V
    .locals 0

    .prologue
    .line 83
    invoke-static {p0}, Lcom/umeng/update/UpdateConfig;->setUpdateOnlyWifi(Z)V

    .line 84
    return-void
.end method

.method public static setUpdateUIStyle(I)V
    .locals 0

    .prologue
    .line 105
    invoke-static {p0}, Lcom/umeng/update/UpdateConfig;->setStyle(I)V

    .line 106
    return-void
.end method

.method public static showUpdateDialog(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;)V
    .locals 1

    .prologue
    .line 368
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/umeng/update/UmengUpdateAgent;->b(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;I)V

    .line 369
    return-void
.end method

.method public static showUpdateNotification(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;)V
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/umeng/update/UmengUpdateAgent;->b(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;I)V

    .line 382
    return-void
.end method

.method public static silentUpdate(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/umeng/update/UpdateConfig;->setUpdateForce(Z)V

    .line 204
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/umeng/update/UpdateConfig;->setSilentDownload(Z)V

    .line 205
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/update/UmengUpdateAgent;->b(Landroid/content/Context;)V

    .line 206
    return-void
.end method

.method public static startDownload(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 517
    iget-boolean v0, p1, Lcom/umeng/update/UpdateResponse;->delta:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/umeng/update/UpdateConfig;->isDeltaUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    sget-object v0, Lcom/umeng/update/UmengUpdateAgent;->e:Lcom/umeng/update/c;

    iget-object v2, p1, Lcom/umeng/update/UpdateResponse;->origin:Ljava/lang/String;

    iget-object v3, p1, Lcom/umeng/update/UpdateResponse;->new_md5:Ljava/lang/String;

    iget-object v4, p1, Lcom/umeng/update/UpdateResponse;->path:Ljava/lang/String;

    iget-object v5, p1, Lcom/umeng/update/UpdateResponse;->patch_md5:Ljava/lang/String;

    sget-object v6, Lcom/umeng/update/UmengUpdateAgent;->c:Lcom/umeng/update/UmengDownloadListener;

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/umeng/update/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/update/UmengDownloadListener;)V

    .line 520
    sget-object v0, Lcom/umeng/update/UmengUpdateAgent;->e:Lcom/umeng/update/c;

    invoke-virtual {v0}, Lcom/umeng/update/c;->b()V

    .line 526
    :goto_0
    return-void

    .line 522
    :cond_0
    sget-object v0, Lcom/umeng/update/UmengUpdateAgent;->e:Lcom/umeng/update/c;

    iget-object v2, p1, Lcom/umeng/update/UpdateResponse;->path:Ljava/lang/String;

    iget-object v3, p1, Lcom/umeng/update/UpdateResponse;->new_md5:Ljava/lang/String;

    sget-object v6, Lcom/umeng/update/UmengUpdateAgent;->c:Lcom/umeng/update/UmengDownloadListener;

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/umeng/update/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/update/UmengDownloadListener;)V

    .line 524
    sget-object v0, Lcom/umeng/update/UmengUpdateAgent;->e:Lcom/umeng/update/c;

    invoke-virtual {v0}, Lcom/umeng/update/c;->c()V

    goto :goto_0
.end method

.method public static startInstall(Landroid/content/Context;Ljava/io/File;)V
    .locals 3

    .prologue
    .line 500
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 501
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 502
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 505
    return-void
.end method

.method public static update(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 227
    invoke-static {v0}, Lcom/umeng/update/UpdateConfig;->setUpdateForce(Z)V

    .line 228
    invoke-static {v0}, Lcom/umeng/update/UpdateConfig;->setSilentDownload(Z)V

    .line 229
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/update/UmengUpdateAgent;->b(Landroid/content/Context;)V

    .line 230
    return-void
.end method

.method public static update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 244
    invoke-static {p1}, Lcom/umeng/update/UpdateConfig;->setAppkey(Ljava/lang/String;)V

    .line 245
    invoke-static {p2}, Lcom/umeng/update/UpdateConfig;->setChannel(Ljava/lang/String;)V

    .line 247
    invoke-static {p0}, Lcom/umeng/update/UmengUpdateAgent;->update(Landroid/content/Context;)V

    .line 248
    return-void
.end method
