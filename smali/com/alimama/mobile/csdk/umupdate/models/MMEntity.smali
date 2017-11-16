.class public Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;
.super Lcom/alimama/mobile/csdk/umupdate/models/a;
.source "MMEntity.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:I

.field protected b:J

.field protected c:Z

.field public cache:I

.field public displayStyle:I

.field public displayType:Ljava/lang/String;

.field public ecomparms:Ljava/util/HashMap;
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

.field public entryStr:Ljava/lang/String;

.field public expire:J

.field public filterInstalledApp:Z

.field public image_type:I

.field public iscache:Ljava/lang/String;

.field public ispreload:Ljava/lang/String;

.field public landingUrl:Ljava/lang/String;

.field public landing_image:Ljava/lang/String;

.field public landing_size:Ljava/lang/String;

.field public module:Lcom/alimama/mobile/csdk/umupdate/models/d;

.field public newTips:I

.field public new_image:Ljava/lang/String;

.field public opensize:Ljava/lang/String;

.field public preload:I

.field public sid_expired:I

.field public timeline:[J

.field public wallSwitch:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity$1;

    invoke-direct {v0}, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity$1;-><init>()V

    sput-object v0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 121
    invoke-direct {p0, p1}, Lcom/alimama/mobile/csdk/umupdate/models/a;-><init>(Landroid/os/Parcel;)V

    .line 45
    sget-object v0, Lcom/alimama/mobile/csdk/umupdate/models/d;->a:Lcom/alimama/mobile/csdk/umupdate/models/d;

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->module:Lcom/alimama/mobile/csdk/umupdate/models/d;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->opensize:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->landing_image:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->landingUrl:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->new_image:Ljava/lang/String;

    .line 59
    iput v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->image_type:I

    .line 63
    iput v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->displayStyle:I

    .line 64
    const-string v0, "bigImg"

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->displayType:Ljava/lang/String;

    .line 68
    iput v5, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->newTips:I

    .line 73
    iput v5, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->cache:I

    .line 78
    iput-boolean v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->filterInstalledApp:Z

    .line 79
    iput-boolean v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->wallSwitch:Z

    .line 83
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->expire:J

    .line 84
    iput v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->sid_expired:I

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->entryStr:Ljava/lang/String;

    .line 92
    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->timeline:[J

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->ecomparms:Ljava/util/HashMap;

    .line 97
    iput v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->a:I

    .line 101
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->b:J

    .line 105
    iput-boolean v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->c:Z

    .line 107
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->ispreload:Ljava/lang/String;

    .line 108
    iput v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->preload:I

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->iscache:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 123
    if-ne v0, v5, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->module:Lcom/alimama/mobile/csdk/umupdate/models/d;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->opensize:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->landing_image:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->landingUrl:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->new_image:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->image_type:I

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->displayStyle:I

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->displayType:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->newTips:I

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->cache:I

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->filterInstalledApp:Z

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->wallSwitch:Z

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->a:I

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->b:J

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    iput-boolean v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->c:Z

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->expire:J

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->sid_expired:I

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->entryStr:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->ispreload:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->preload:I

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->iscache:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->landing_size:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->timeline:[J

    .line 146
    const-class v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->ecomparms:Ljava/util/HashMap;

    .line 147
    return-void

    .line 123
    :cond_0
    invoke-static {}, Lcom/alimama/mobile/csdk/umupdate/models/d;->values()[Lcom/alimama/mobile/csdk/umupdate/models/d;

    move-result-object v3

    aget-object v0, v3, v0

    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 133
    goto :goto_1

    :cond_2
    move v0, v2

    .line 134
    goto :goto_2

    :cond_3
    move v1, v2

    .line 137
    goto :goto_3
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alimama/mobile/csdk/umupdate/models/MMEntity$1;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 115
    invoke-direct {p0}, Lcom/alimama/mobile/csdk/umupdate/models/a;-><init>()V

    .line 45
    sget-object v0, Lcom/alimama/mobile/csdk/umupdate/models/d;->a:Lcom/alimama/mobile/csdk/umupdate/models/d;

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->module:Lcom/alimama/mobile/csdk/umupdate/models/d;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->opensize:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->landing_image:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->landingUrl:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->new_image:Ljava/lang/String;

    .line 59
    iput v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->image_type:I

    .line 63
    iput v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->displayStyle:I

    .line 64
    const-string v0, "bigImg"

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->displayType:Ljava/lang/String;

    .line 68
    iput v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->newTips:I

    .line 73
    iput v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->cache:I

    .line 78
    iput-boolean v3, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->filterInstalledApp:Z

    .line 79
    iput-boolean v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->wallSwitch:Z

    .line 83
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->expire:J

    .line 84
    iput v3, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->sid_expired:I

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->entryStr:Ljava/lang/String;

    .line 92
    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->timeline:[J

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->ecomparms:Ljava/util/HashMap;

    .line 97
    iput v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->a:I

    .line 101
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->b:J

    .line 105
    iput-boolean v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->c:Z

    .line 107
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->ispreload:Ljava/lang/String;

    .line 108
    iput v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->preload:I

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->iscache:Ljava/lang/String;

    .line 116
    iput-object p1, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->slotId:Ljava/lang/String;

    .line 117
    const/16 v0, 0x11

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->layoutType:I

    .line 118
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 233
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    return v0
.end method

.method public extendFields(Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;)V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p1, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->tabId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->tabId:Ljava/lang/String;

    .line 227
    iget-object v0, p1, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->slot_act_params:Ljava/lang/String;

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->slot_act_params:Ljava/lang/String;

    .line 228
    iget-object v0, p1, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->urlParams:Ljava/lang/String;

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->urlParams:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public getTimeConsuming()Ljava/lang/String;
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    .line 155
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->timeline:[J

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->timeline:[J

    array-length v0, v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->timeline:[J

    aget-wide v0, v0, v2

    cmp-long v0, v0, v8

    if-lez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->timeline:[J

    aget-wide v0, v0, v2

    .line 157
    iget-object v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->timeline:[J

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    .line 158
    iget-object v4, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->timeline:[J

    const/4 v5, 0x2

    aget-wide v4, v4, v5

    .line 159
    iget-object v6, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->timeline:[J

    const/4 v7, 0x3

    aget-wide v6, v6, v7

    .line 160
    sub-long v0, v2, v0

    .line 161
    sub-long v2, v6, v4

    .line 162
    cmp-long v4, v0, v8

    if-lez v4, :cond_0

    .line 163
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public warp(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 170
    invoke-super {p0, p1}, Lcom/alimama/mobile/csdk/umupdate/models/a;->warp(Lorg/json/JSONObject;)V

    .line 172
    const-string v0, "landing_size"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->landing_size:Ljava/lang/String;

    .line 173
    const-string v0, "filter"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 174
    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->filterInstalledApp:Z

    .line 176
    const-string v0, "cache"

    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->cache:I

    .line 178
    const-string v0, "sid_expire"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->sid_expired:I

    .line 179
    const-string v0, "expire"

    const-wide/16 v3, 0x0

    invoke-virtual {p1, v0, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->expire:J

    .line 180
    const-string v0, "landing_image"

    const-string v3, ""

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->landing_image:Ljava/lang/String;

    .line 181
    const-string v0, "landing_url"

    const-string v3, ""

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->landingUrl:Ljava/lang/String;

    .line 182
    const-string v0, "new_img"

    const-string v3, ""

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->new_image:Ljava/lang/String;

    .line 183
    const-string v0, "display_type"

    const-string v3, "bigImg"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->displayType:Ljava/lang/String;

    .line 185
    const-string v0, "module"

    const-string v3, ""

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 187
    invoke-static {v0}, Lcom/alimama/mobile/csdk/umupdate/models/d;->a(Ljava/lang/String;)Lcom/alimama/mobile/csdk/umupdate/models/d;

    move-result-object v0

    .line 188
    if-nez v0, :cond_0

    sget-object v0, Lcom/alimama/mobile/csdk/umupdate/models/d;->a:Lcom/alimama/mobile/csdk/umupdate/models/d;

    :cond_0
    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->module:Lcom/alimama/mobile/csdk/umupdate/models/d;

    .line 190
    :cond_1
    const-string v0, "img_type"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->image_type:I

    .line 192
    const-string v0, "walls"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 194
    iput-boolean v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->wallSwitch:Z

    .line 198
    :cond_2
    const-string v0, "opensize"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 200
    :try_start_0
    const-string v0, "opensize"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->opensize:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :cond_3
    :goto_1
    const-string v0, "dm"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 207
    if-eqz v0, :cond_5

    .line 208
    const-string v1, "on"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->a:I

    .line 209
    const-string v1, "tm"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->b:J

    .line 215
    :goto_2
    const-string v0, "new_num"

    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->newTips:I

    .line 217
    const-string v0, "landing_text"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->entryStr:Ljava/lang/String;

    .line 219
    const-string v0, "ispreload"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->ispreload:Ljava/lang/String;

    .line 220
    const-string v0, "preload"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->preload:I

    .line 221
    const-string v0, "iscache"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->iscache:Ljava/lang/String;

    .line 223
    return-void

    :cond_4
    move v0, v2

    .line 174
    goto/16 :goto_0

    .line 211
    :cond_5
    iput v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->a:I

    .line 212
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->b:J

    goto :goto_2

    .line 202
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 243
    invoke-super {p0, p1, p2}, Lcom/alimama/mobile/csdk/umupdate/models/a;->writeToParcel(Landroid/os/Parcel;I)V

    .line 244
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->module:Lcom/alimama/mobile/csdk/umupdate/models/d;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->opensize:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->landing_image:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->landingUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->new_image:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    iget v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->image_type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    iget v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->displayStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->displayType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 252
    iget v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->newTips:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    iget v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->cache:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    iget-boolean v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->filterInstalledApp:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 255
    iget-boolean v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->wallSwitch:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 256
    iget v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    iget-wide v3, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->b:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 258
    iget-boolean v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->c:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 259
    iget-wide v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->expire:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 260
    iget v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->sid_expired:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->entryStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->ispreload:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 263
    iget v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->preload:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->iscache:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->landing_size:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->timeline:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 267
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->ecomparms:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 268
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->module:Lcom/alimama/mobile/csdk/umupdate/models/d;

    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/models/d;->ordinal()I

    move-result v0

    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 254
    goto :goto_1

    :cond_2
    move v0, v2

    .line 255
    goto :goto_2

    :cond_3
    move v1, v2

    .line 258
    goto :goto_3
.end method
