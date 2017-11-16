.class public Lcom/umeng/fb/util/Res;
.super Ljava/lang/Object;
.source "Res.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static R_anim:Ljava/lang/Class;

.field private static R_array:Ljava/lang/Class;

.field private static R_drawable:Ljava/lang/Class;

.field private static R_id:Ljava/lang/Class;

.field private static R_layout:Ljava/lang/Class;

.field private static R_string:Ljava/lang/Class;

.field private static R_style:Ljava/lang/Class;

.field private static instance:Lcom/umeng/fb/util/Res;

.field private static packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11
    const-class v0, Lcom/umeng/fb/util/Res;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/fb/util/Res;->LOG_TAG:Ljava/lang/String;

    .line 13
    sput-object v1, Lcom/umeng/fb/util/Res;->instance:Lcom/umeng/fb/util/Res;

    .line 14
    sput-object v1, Lcom/umeng/fb/util/Res;->packageName:Ljava/lang/String;

    .line 17
    sput-object v1, Lcom/umeng/fb/util/Res;->R_id:Ljava/lang/Class;

    .line 20
    sput-object v1, Lcom/umeng/fb/util/Res;->R_drawable:Ljava/lang/Class;

    .line 23
    sput-object v1, Lcom/umeng/fb/util/Res;->R_layout:Ljava/lang/Class;

    .line 26
    sput-object v1, Lcom/umeng/fb/util/Res;->R_anim:Ljava/lang/Class;

    .line 29
    sput-object v1, Lcom/umeng/fb/util/Res;->R_style:Ljava/lang/Class;

    .line 32
    sput-object v1, Lcom/umeng/fb/util/Res;->R_string:Ljava/lang/Class;

    .line 35
    sput-object v1, Lcom/umeng/fb/util/Res;->R_array:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".R$drawable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/umeng/fb/util/Res;->R_drawable:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".R$layout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/umeng/fb/util/Res;->R_layout:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 50
    :goto_1
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".R$id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/umeng/fb/util/Res;->R_id:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 55
    :goto_2
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".R$anim"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/umeng/fb/util/Res;->R_anim:Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 60
    :goto_3
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".R$style"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/umeng/fb/util/Res;->R_style:Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    .line 65
    :goto_4
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".R$string"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/umeng/fb/util/Res;->R_string:Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    .line 70
    :goto_5
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".R$array"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/umeng/fb/util/Res;->R_array:Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    .line 74
    :goto_6
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    sget-object v1, Lcom/umeng/fb/util/Res;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/fb/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 46
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 47
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    sget-object v1, Lcom/umeng/fb/util/Res;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/fb/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 51
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v0

    .line 52
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    sget-object v1, Lcom/umeng/fb/util/Res;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/fb/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 56
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_3
    move-exception v0

    .line 57
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    sget-object v1, Lcom/umeng/fb/util/Res;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/fb/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 61
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_4
    move-exception v0

    .line 62
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    sget-object v1, Lcom/umeng/fb/util/Res;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/fb/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 66
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_5
    move-exception v0

    .line 67
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    sget-object v1, Lcom/umeng/fb/util/Res;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/fb/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 71
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_6
    move-exception v0

    .line 72
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    sget-object v1, Lcom/umeng/fb/util/Res;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/fb/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/umeng/fb/util/Res;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    const-class v1, Lcom/umeng/fb/util/Res;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/umeng/fb/util/Res;->instance:Lcom/umeng/fb/util/Res;

    if-nez v0, :cond_0

    .line 81
    sget-object v0, Lcom/umeng/fb/util/Res;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/umeng/fb/util/Res;->packageName:Ljava/lang/String;

    :goto_0
    sput-object v0, Lcom/umeng/fb/util/Res;->packageName:Ljava/lang/String;

    .line 83
    new-instance v0, Lcom/umeng/fb/util/Res;

    sget-object v2, Lcom/umeng/fb/util/Res;->packageName:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/umeng/fb/util/Res;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/fb/util/Res;->instance:Lcom/umeng/fb/util/Res;

    .line 85
    :cond_0
    sget-object v0, Lcom/umeng/fb/util/Res;->instance:Lcom/umeng/fb/util/Res;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 81
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getRes(Ljava/lang/Class;Ljava/lang/String;)I
    .locals 6
    .param p2, "field"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, "ResClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p1, :cond_0

    .line 187
    sget-object v3, Lcom/umeng/fb/util/Res;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRes(null,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/umeng/fb/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ResClass is not initialized. Please make sure you have added necessary resources. Also make sure you have "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/umeng/fb/util/Res;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".R$* configured in obfuscation. field="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 195
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 196
    .local v2, "idField":Ljava/lang/reflect/Field;
    invoke-virtual {v2, p2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 204
    .end local v2    # "idField":Ljava/lang/reflect/Field;
    :goto_0
    return v1

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/umeng/fb/util/Res;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRes("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/umeng/fb/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    sget-object v3, Lcom/umeng/fb/util/Res;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Error getting resource. Make sure you have copied all resources (res/) from SDK to your project. "

    invoke-static {v3, v4}, Lcom/umeng/fb/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    sget-object v3, Lcom/umeng/fb/util/Res;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/umeng/fb/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p0, "pn"    # Ljava/lang/String;

    .prologue
    .line 98
    sput-object p0, Lcom/umeng/fb/util/Res;->packageName:Ljava/lang/String;

    .line 99
    return-void
.end method


# virtual methods
.method public anim(Ljava/lang/String;)I
    .locals 1
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 109
    sget-object v0, Lcom/umeng/fb/util/Res;->R_anim:Ljava/lang/Class;

    invoke-direct {p0, v0, p1}, Lcom/umeng/fb/util/Res;->getRes(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public array(Ljava/lang/String;)I
    .locals 1
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 175
    sget-object v0, Lcom/umeng/fb/util/Res;->R_array:Ljava/lang/Class;

    invoke-direct {p0, v0, p1}, Lcom/umeng/fb/util/Res;->getRes(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public drawable(Ljava/lang/String;)I
    .locals 1
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 131
    sget-object v0, Lcom/umeng/fb/util/Res;->R_drawable:Ljava/lang/Class;

    invoke-direct {p0, v0, p1}, Lcom/umeng/fb/util/Res;->getRes(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public id(Ljava/lang/String;)I
    .locals 1
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 120
    sget-object v0, Lcom/umeng/fb/util/Res;->R_id:Ljava/lang/Class;

    invoke-direct {p0, v0, p1}, Lcom/umeng/fb/util/Res;->getRes(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public layout(Ljava/lang/String;)I
    .locals 1
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 142
    sget-object v0, Lcom/umeng/fb/util/Res;->R_layout:Ljava/lang/Class;

    invoke-direct {p0, v0, p1}, Lcom/umeng/fb/util/Res;->getRes(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public string(Ljava/lang/String;)I
    .locals 1
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 164
    sget-object v0, Lcom/umeng/fb/util/Res;->R_string:Ljava/lang/Class;

    invoke-direct {p0, v0, p1}, Lcom/umeng/fb/util/Res;->getRes(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public style(Ljava/lang/String;)I
    .locals 1
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 153
    sget-object v0, Lcom/umeng/fb/util/Res;->R_style:Ljava/lang/Class;

    invoke-direct {p0, v0, p1}, Lcom/umeng/fb/util/Res;->getRes(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
