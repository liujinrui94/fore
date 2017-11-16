.class public Lcom/alimama/mobile/csdk/umupdate/models/a;
.super Ljava/lang/Object;
.source "BaseMMEntity.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field public appkey:Ljava/lang/String;

.field public autofill:I

.field public filterPromoter:Ljava/lang/String;

.field public keywords:Ljava/lang/String;

.field public landing_type:I

.field public layoutType:I

.field public page_index:I

.field public psid:Ljava/lang/String;

.field public resType:Lcom/alimama/mobile/csdk/umupdate/models/e;

.field public sid:Ljava/lang/String;

.field public slotId:Ljava/lang/String;

.field public slot_act_params:Ljava/lang/String;

.field public tabId:Ljava/lang/String;

.field public tag:Ljava/lang/String;

.field public template:Lcom/alimama/mobile/csdk/umupdate/models/f;

.field public templateAttrs:Ljava/lang/String;

.field public urlParams:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->autofill:I

    .line 29
    iput v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->layoutType:I

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->keywords:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->tabId:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->filterPromoter:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->tag:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->landing_type:I

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->sid:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->psid:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->slot_act_params:Ljava/lang/String;

    .line 62
    iput v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->page_index:I

    .line 123
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->autofill:I

    .line 29
    iput v3, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->layoutType:I

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->keywords:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->tabId:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->filterPromoter:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->tag:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->landing_type:I

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->sid:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->psid:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->slot_act_params:Ljava/lang/String;

    .line 62
    iput v3, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->page_index:I

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->slotId:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->appkey:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->autofill:I

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->layoutType:I

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->keywords:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->tabId:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->filterPromoter:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->tag:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->landing_type:I

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->sid:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->psid:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 138
    if-ne v0, v3, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->resType:Lcom/alimama/mobile/csdk/umupdate/models/e;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 140
    if-ne v0, v3, :cond_1

    :goto_1
    iput-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->template:Lcom/alimama/mobile/csdk/umupdate/models/f;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->templateAttrs:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->urlParams:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->slot_act_params:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->page_index:I

    .line 145
    return-void

    .line 138
    :cond_0
    invoke-static {}, Lcom/alimama/mobile/csdk/umupdate/models/e;->values()[Lcom/alimama/mobile/csdk/umupdate/models/e;

    move-result-object v2

    aget-object v0, v2, v0

    goto :goto_0

    .line 140
    :cond_1
    invoke-static {}, Lcom/alimama/mobile/csdk/umupdate/models/f;->values()[Lcom/alimama/mobile/csdk/umupdate/models/f;

    move-result-object v1

    aget-object v1, v1, v0

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->psid:Ljava/lang/String;

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->sid:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->resType:Lcom/alimama/mobile/csdk/umupdate/models/e;

    .line 67
    iput-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->template:Lcom/alimama/mobile/csdk/umupdate/models/f;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->slot_act_params:Ljava/lang/String;

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->urlParams:Ljava/lang/String;

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->templateAttrs:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public warp(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 73
    :try_start_0
    const-string v0, "sid"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->sid:Ljava/lang/String;

    .line 74
    const-string v0, "psid"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->psid:Ljava/lang/String;

    .line 75
    const-string v0, "url_params"

    iget-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->urlParams:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->urlParams:Ljava/lang/String;

    .line 77
    const-string v0, "template"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "template"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v0}, Lcom/alimama/mobile/csdk/umupdate/models/f;->a(Ljava/lang/String;)Lcom/alimama/mobile/csdk/umupdate/models/f;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->template:Lcom/alimama/mobile/csdk/umupdate/models/f;

    .line 82
    :cond_0
    const-string v0, "resource_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    const-string v0, "resource_type"

    sget-object v1, Lcom/alimama/mobile/csdk/umupdate/models/e;->a:Lcom/alimama/mobile/csdk/umupdate/models/e;

    invoke-virtual {v1}, Lcom/alimama/mobile/csdk/umupdate/models/e;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v0}, Lcom/alimama/mobile/csdk/umupdate/models/e;->a(Ljava/lang/String;)Lcom/alimama/mobile/csdk/umupdate/models/e;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_2

    :goto_0
    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->resType:Lcom/alimama/mobile/csdk/umupdate/models/e;

    .line 89
    :cond_1
    const-string v0, "act_pams"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->slot_act_params:Ljava/lang/String;

    .line 93
    :goto_1
    return-void

    .line 86
    :cond_2
    sget-object v0, Lcom/alimama/mobile/csdk/umupdate/models/e;->a:Lcom/alimama/mobile/csdk/umupdate/models/e;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    const-string v1, "Parse json error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/alimama/mobile/csdk/umupdate/a/g;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 103
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->slotId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->appkey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->autofill:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->layoutType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->keywords:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->tabId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->filterPromoter:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->landing_type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->sid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->psid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->resType:Lcom/alimama/mobile/csdk/umupdate/models/e;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->template:Lcom/alimama/mobile/csdk/umupdate/models/f;

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->templateAttrs:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->urlParams:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->slot_act_params:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->page_index:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->resType:Lcom/alimama/mobile/csdk/umupdate/models/e;

    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/models/e;->ordinal()I

    move-result v0

    goto :goto_0

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->template:Lcom/alimama/mobile/csdk/umupdate/models/f;

    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/models/f;->ordinal()I

    move-result v1

    goto :goto_1
.end method
