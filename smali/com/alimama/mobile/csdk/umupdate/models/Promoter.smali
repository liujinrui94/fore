.class public Lcom/alimama/mobile/csdk/umupdate/models/Promoter;
.super Ljava/lang/Object;
.source "Promoter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alimama/mobile/csdk/umupdate/models/Promoter$a;,
        Lcom/alimama/mobile/csdk/umupdate/models/Promoter$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alimama/mobile/csdk/umupdate/models/Promoter;",
            ">;"
        }
    .end annotation
.end field

.field public static final LANDING_TYPE_ALIP4P:I = 0x5

.field public static final LANDING_TYPE_BROWSER:I = 0x3

.field public static final LANDING_TYPE_DIRECT_DOWNLOAD:I = 0x1

.field public static final LANDING_TYPE_POPUP:I = 0x0

.field public static final LANDING_TYPE_UMENGAPP:I = 0x6

.field public static final LANDING_TYPE_WAP_WEBVIEW:I = 0x4

.field public static final LANDING_TYPE_WEBVIEW:I = 0x2

.field public static final REPORT_CLICK_TO_LAUNCH:I = 0x4

.field public static final REPORT_CLICK_TO_LAUNCH_DETAIL_PAGE:I = 0x5

.field public static final REPORT_CLICK_TO_PROMOTE:I = 0x2

.field public static final REPORT_DOWNLOAD:I = 0x1

.field public static final REPORT_DOWNLOAD_CLICK:I = 0x3

.field public static final REPORT_DOWNLOAD_CLICK_DIRECT:I = 0x7

.field public static final REPORT_DOWNLOAD_FAILED:I = -0x2

.field public static final REPORT_ENTRANCE_CLICK:I = 0xf

.field public static final REPORT_ENTRANCE_IMPRESSION:I = 0xe

.field public static final REPORT_FEED_NOMATCH:I = -0x4

.field public static final REPORT_FEED_UNIMPRESSION:I = -0x3

.field public static final REPORT_FILTERED:I = -0x1

.field public static final REPORT_IMPRESSION:I

.field private static final a:Ljava/lang/String;


# instance fields
.field public ad_words:Ljava/lang/String;

.field public anim_in:I

.field public app_package_name:Ljava/lang/String;

.field public app_version_code:I

.field public app_version_name:Ljava/lang/String;

.field public bid:D

.field public category:I

.field public content_type:I

.field public description:Ljava/lang/String;

.field public display_type:I

.field public filterInstalledApp:Z

.field public icon:Ljava/lang/String;

.field public image_type:I

.field public img:Ljava/lang/String;

.field public imgs:[Ljava/lang/String;

.field public landing_size:Ljava/lang/String;

.field public landing_type:I

.field public new_tip:I

.field public price:Ljava/lang/String;

.field public prom_act_pams:Ljava/lang/String;

.field public promoter:Ljava/lang/String;

.field public promoterPrice:Ljava/lang/String;

.field public provider:Ljava/lang/String;

.field public sell:I

.field public size:J

.field public slot_act_pams:Ljava/lang/String;

.field public text_color:Ljava/lang/String;

.field public text_font:Ljava/lang/String;

.field public text_size:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public url_in_app:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-class v0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->a:Ljava/lang/String;

    .line 288
    new-instance v0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter$1;

    invoke-direct {v0}, Lcom/alimama/mobile/csdk/umupdate/models/Promoter$1;-><init>()V

    sput-object v0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->app_package_name:Ljava/lang/String;

    .line 177
    iput v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->new_tip:I

    .line 179
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->prom_act_pams:Ljava/lang/String;

    .line 181
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->slot_act_pams:Ljava/lang/String;

    .line 194
    iput-boolean v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->filterInstalledApp:Z

    .line 392
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const-string v1, ""

    iput-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->app_package_name:Ljava/lang/String;

    .line 177
    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->new_tip:I

    .line 179
    const-string v1, ""

    iput-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->prom_act_pams:Ljava/lang/String;

    .line 181
    const-string v1, ""

    iput-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->slot_act_pams:Ljava/lang/String;

    .line 194
    iput-boolean v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->filterInstalledApp:Z

    .line 247
    if-eqz p1, :cond_1

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->promoter:Ljava/lang/String;

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->category:I

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->content_type:I

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->display_type:I

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->img:Ljava/lang/String;

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->image_type:I

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->anim_in:I

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->landing_type:I

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->text_font:Ljava/lang/String;

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->text_size:Ljava/lang/String;

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->text_color:Ljava/lang/String;

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->title:Ljava/lang/String;

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->provider:Ljava/lang/String;

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->ad_words:Ljava/lang/String;

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->description:Ljava/lang/String;

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->icon:Ljava/lang/String;

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->url:Ljava/lang/String;

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->app_version_code:I

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->url_in_app:Ljava/lang/String;

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->size:J

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->app_package_name:Ljava/lang/String;

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->app_version_name:Ljava/lang/String;

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->new_tip:I

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_2

    :goto_0
    iput-boolean v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->filterInstalledApp:Z

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 274
    new-array v1, v0, [Ljava/lang/String;

    .line 275
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 277
    if-lez v0, :cond_0

    .line 278
    iput-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->imgs:[Ljava/lang/String;

    .line 280
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->prom_act_pams:Ljava/lang/String;

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->price:Ljava/lang/String;

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->promoterPrice:Ljava/lang/String;

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->sell:I

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->landing_size:Ljava/lang/String;

    .line 286
    :cond_1
    return-void

    .line 271
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->app_package_name:Ljava/lang/String;

    .line 177
    iput v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->new_tip:I

    .line 179
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->prom_act_pams:Ljava/lang/String;

    .line 181
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->slot_act_pams:Ljava/lang/String;

    .line 194
    iput-boolean v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->filterInstalledApp:Z

    .line 395
    invoke-direct {p0, p1}, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->a(Lorg/json/JSONObject;)V

    .line 396
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alimama/mobile/csdk/umupdate/models/Promoter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 579
    .line 581
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 586
    :goto_0
    return-object v0

    .line 582
    :catch_0
    move-exception v0

    .line 583
    sget-object v0, Lcom/alimama/mobile/csdk/umupdate/a/e;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can`t found the class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const-class v0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;

    goto :goto_0
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 399
    if-nez p1, :cond_1

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    const-string v0, "promoter"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->promoter:Ljava/lang/String;

    .line 405
    const-string v0, "category"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->category:I

    .line 406
    const-string v0, "content_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->content_type:I

    .line 407
    const-string v0, "display_type"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->display_type:I

    .line 410
    const-string v0, "img_type"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->image_type:I

    .line 413
    const-string v0, "img"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->img:Ljava/lang/String;

    .line 415
    const-string v0, "anim_in"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->anim_in:I

    .line 417
    const-string v0, "landing_type"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->landing_type:I

    .line 421
    const-string v0, "text_size"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->text_size:Ljava/lang/String;

    .line 422
    const-string v0, "text_color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->text_color:Ljava/lang/String;

    .line 423
    const-string v0, "text_font"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->text_font:Ljava/lang/String;

    .line 425
    const-string v0, "title"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->title:Ljava/lang/String;

    .line 426
    const-string v0, "provider"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->provider:Ljava/lang/String;

    .line 428
    const-string v0, "ad_words"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->ad_words:Ljava/lang/String;

    .line 429
    const-string v0, "description"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->description:Ljava/lang/String;

    .line 432
    const-string v0, "filter"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->filterInstalledApp:Z

    .line 435
    const-string v0, "icon"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->icon:Ljava/lang/String;

    .line 437
    const-string v0, "url"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->url:Ljava/lang/String;

    .line 439
    const-string v0, "new"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->new_tip:I

    .line 441
    const-string v0, "app_version_code"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->app_version_code:I

    .line 443
    const-string v0, "url_in_app"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->url_in_app:Ljava/lang/String;

    .line 445
    const-string v0, "size"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->size:J

    .line 447
    const-string v0, "app_package_name"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->app_package_name:Ljava/lang/String;

    .line 450
    const-string v0, "app_version_name"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->app_version_name:Ljava/lang/String;

    .line 453
    const-string v0, "act_pams"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->prom_act_pams:Ljava/lang/String;

    .line 457
    const-string v0, "price"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->price:Ljava/lang/String;

    .line 458
    const-string v0, "promoprice"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->promoterPrice:Ljava/lang/String;

    .line 459
    const-string v0, "sell"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->sell:I

    .line 460
    const-string v0, "bid"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->bid:D

    .line 461
    const-string v0, "landing_size"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->landing_size:Ljava/lang/String;

    .line 464
    :try_start_0
    const-string v0, "imgs"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    const-string v0, "imgs"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 466
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 467
    const-string v1, "\\,"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 468
    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->imgs:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 471
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 432
    :cond_2
    const/4 v0, 0x1

    goto/16 :goto_1
.end method

.method public static buildMockPromoter()Lcom/alimama/mobile/csdk/umupdate/models/Promoter;
    .locals 1

    .prologue
    .line 560
    new-instance v0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;

    invoke-direct {v0}, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;-><init>()V

    return-object v0
.end method

.method public static getAdapterPromoterClz(Lcom/alimama/mobile/csdk/umupdate/models/f;Lcom/alimama/mobile/csdk/umupdate/models/e;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alimama/mobile/csdk/umupdate/models/f;",
            "Lcom/alimama/mobile/csdk/umupdate/models/e;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alimama/mobile/csdk/umupdate/models/Promoter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 565
    const-string v0, "com.taobao.newxp.TBItemPromoter"

    .line 566
    const-string v1, "com.taobao.newxp.view.handler.UMTuanPromoter"

    .line 568
    sget-object v2, Lcom/alimama/mobile/csdk/umupdate/models/e;->b:Lcom/alimama/mobile/csdk/umupdate/models/e;

    if-ne v2, p1, :cond_0

    .line 569
    invoke-static {v0}, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 574
    :goto_0
    return-object v0

    .line 570
    :cond_0
    sget-object v0, Lcom/alimama/mobile/csdk/umupdate/models/e;->c:Lcom/alimama/mobile/csdk/umupdate/models/e;

    if-ne v0, p1, :cond_1

    .line 571
    invoke-static {v1}, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 574
    :cond_1
    const-class v0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;

    goto :goto_0
.end method

.method public static getPromoterFromJson(Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/alimama/mobile/csdk/umupdate/models/Promoter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/alimama/mobile/csdk/umupdate/models/Promoter;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 484
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lorg/json/JSONObject;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 486
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5

    .line 500
    :goto_0
    return-object v0

    .line 487
    :catch_0
    move-exception v0

    .line 488
    const-string v1, "SecurityException"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/alimama/mobile/csdk/umupdate/a/g;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 500
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 489
    :catch_1
    move-exception v0

    .line 490
    const-string v1, "NoSuchMethodException"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/alimama/mobile/csdk/umupdate/a/g;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 491
    :catch_2
    move-exception v0

    .line 492
    const-string v1, "IllegalArgumentException"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/alimama/mobile/csdk/umupdate/a/g;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 493
    :catch_3
    move-exception v0

    .line 494
    const-string v1, "InstantiationException"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/alimama/mobile/csdk/umupdate/a/g;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 495
    :catch_4
    move-exception v0

    .line 496
    const-string v1, "IllegalAccessException"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/alimama/mobile/csdk/umupdate/a/g;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 497
    :catch_5
    move-exception v0

    .line 498
    const-string v1, "InvocationTargetException"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/alimama/mobile/csdk/umupdate/a/g;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 504
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 506
    :try_start_0
    const-string v1, "promoter"

    iget-object v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->promoter:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 507
    const-string v1, "category"

    iget v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->category:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 508
    const-string v1, "content_type"

    iget v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->content_type:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 510
    const-string v1, "display_type"

    iget v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->display_type:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 511
    const-string v1, "img"

    iget-object v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->img:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 512
    const-string v1, "img_type"

    iget v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->image_type:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 513
    const-string v1, "anim_in"

    iget v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->anim_in:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 515
    const-string v1, "display_type"

    iget v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->display_type:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 516
    const-string v1, "img"

    iget-object v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->img:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 517
    const-string v1, "landing_type"

    iget v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->landing_type:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 519
    const-string v1, "text_size"

    iget-object v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->text_size:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 520
    const-string v1, "text_color"

    iget-object v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->text_color:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 521
    const-string v1, "text_font"

    iget-object v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->text_font:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 523
    const-string v1, "title"

    iget-object v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 524
    const-string v1, "provider"

    iget-object v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->provider:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 525
    const-string v1, "ad_words"

    iget-object v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->ad_words:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 527
    const-string v1, "description"

    iget-object v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 528
    const-string v1, "icon"

    iget-object v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 529
    const-string v1, "url"

    iget-object v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 531
    const-string v1, "new"

    iget v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->new_tip:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 532
    const-string v1, "app_version_code"

    iget v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->app_version_code:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 534
    const-string v1, "url_in_app"

    iget-object v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->url_in_app:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 536
    const-string v1, "size"

    iget-wide v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->size:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 537
    const-string v1, "app_package_name"

    iget-object v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->app_package_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 539
    const-string v1, "app_version_name"

    iget-object v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->app_version_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 542
    const-string v1, "price"

    iget-object v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->price:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 543
    const-string v1, "promoprice"

    iget-object v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->promoterPrice:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 544
    const-string v1, "sell"

    iget v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->sell:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 545
    const-string v1, "bid"

    iget-wide v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->bid:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 546
    const-string v1, "landing_size"

    iget-object v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->landing_size:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 548
    iget-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->imgs:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->imgs:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 549
    iget-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->imgs:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 550
    const-string v2, "imgs"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    :cond_0
    :goto_0
    return-object v0

    .line 554
    :catch_0
    move-exception v0

    .line 556
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 213
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->promoter:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    iget v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->category:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    iget v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->content_type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    iget v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->display_type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->img:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    iget v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->image_type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->anim_in:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    iget v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->landing_type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->text_font:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->text_size:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->text_color:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->provider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->ad_words:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->icon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    iget v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->app_version_code:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->url_in_app:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    iget-wide v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->size:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 233
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->app_package_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->app_version_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 235
    iget v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->new_tip:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    iget-boolean v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->filterInstalledApp:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->imgs:[Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->imgs:[Ljava/lang/String;

    if-nez v0, :cond_2

    new-array v0, v1, [Ljava/lang/String;

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->prom_act_pams:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->price:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->promoterPrice:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 242
    iget v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->sell:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->landing_size:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    return-void

    :cond_0
    move v0, v1

    .line 236
    goto :goto_0

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->imgs:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 238
    :cond_2
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->imgs:[Ljava/lang/String;

    goto :goto_2
.end method
