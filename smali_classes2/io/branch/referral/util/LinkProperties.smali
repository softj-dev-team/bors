.class public Lio/branch/referral/util/LinkProperties;
.super Ljava/lang/Object;
.source "LinkProperties.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private alias_:Ljava/lang/String;

.field private campaign_:Ljava/lang/String;

.field private channel_:Ljava/lang/String;

.field private final controlParams_:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private feature_:Ljava/lang/String;

.field private matchDuration_:I

.field private stage_:Ljava/lang/String;

.field private final tags_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 236
    new-instance v0, Lio/branch/referral/util/LinkProperties$1;

    invoke-direct {v0}, Lio/branch/referral/util/LinkProperties$1;-><init>()V

    sput-object v0, Lio/branch/referral/util/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/branch/referral/util/LinkProperties;->tags_:Ljava/util/ArrayList;

    const-string v0, "Share"

    .line 43
    iput-object v0, p0, Lio/branch/referral/util/LinkProperties;->feature_:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/branch/referral/util/LinkProperties;->controlParams_:Ljava/util/HashMap;

    const-string v0, ""

    .line 45
    iput-object v0, p0, Lio/branch/referral/util/LinkProperties;->alias_:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lio/branch/referral/util/LinkProperties;->stage_:Ljava/lang/String;

    const/4 v1, 0x0

    .line 47
    iput v1, p0, Lio/branch/referral/util/LinkProperties;->matchDuration_:I

    .line 48
    iput-object v0, p0, Lio/branch/referral/util/LinkProperties;->channel_:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lio/branch/referral/util/LinkProperties;->campaign_:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 320
    invoke-direct {p0}, Lio/branch/referral/util/LinkProperties;-><init>()V

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/branch/referral/util/LinkProperties;->feature_:Ljava/lang/String;

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/branch/referral/util/LinkProperties;->alias_:Ljava/lang/String;

    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/branch/referral/util/LinkProperties;->stage_:Ljava/lang/String;

    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/branch/referral/util/LinkProperties;->channel_:Ljava/lang/String;

    .line 325
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/branch/referral/util/LinkProperties;->campaign_:Ljava/lang/String;

    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lio/branch/referral/util/LinkProperties;->matchDuration_:I

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 329
    iget-object v1, p0, Lio/branch/referral/util/LinkProperties;->tags_:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 333
    iget-object v2, p0, Lio/branch/referral/util/LinkProperties;->controlParams_:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lio/branch/referral/util/LinkProperties$1;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lio/branch/referral/util/LinkProperties;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static getReferredLinkProperties()Lio/branch/referral/util/LinkProperties;
    .locals 11

    const-string v0, "~tags"

    const-string v1, "$match_duration"

    const-string v2, "~duration"

    const-string v3, "~campaign"

    const-string v4, "~stage"

    const-string v5, "~feature"

    const-string v6, "~channel"

    const-string v7, "+clicked_branch_link"

    .line 253
    invoke-static {}, Lio/branch/referral/Branch;->getInstance()Lio/branch/referral/Branch;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v8, :cond_9

    .line 254
    invoke-virtual {v8}, Lio/branch/referral/Branch;->getLatestReferringParams()Lorg/json/JSONObject;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 255
    invoke-virtual {v8}, Lio/branch/referral/Branch;->getLatestReferringParams()Lorg/json/JSONObject;

    move-result-object v8

    .line 258
    :try_start_0
    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 259
    new-instance v7, Lio/branch/referral/util/LinkProperties;

    invoke-direct {v7}, Lio/branch/referral/util/LinkProperties;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 260
    :try_start_1
    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 261
    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lio/branch/referral/util/LinkProperties;->setChannel(Ljava/lang/String;)Lio/branch/referral/util/LinkProperties;

    .line 263
    :cond_0
    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 264
    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lio/branch/referral/util/LinkProperties;->setFeature(Ljava/lang/String;)Lio/branch/referral/util/LinkProperties;

    .line 266
    :cond_1
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 267
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lio/branch/referral/util/LinkProperties;->setStage(Ljava/lang/String;)Lio/branch/referral/util/LinkProperties;

    .line 269
    :cond_2
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 270
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lio/branch/referral/util/LinkProperties;->setCampaign(Ljava/lang/String;)Lio/branch/referral/util/LinkProperties;

    .line 272
    :cond_3
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 273
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v7, v2}, Lio/branch/referral/util/LinkProperties;->setDuration(I)Lio/branch/referral/util/LinkProperties;

    .line 275
    :cond_4
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 276
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v1}, Lio/branch/referral/util/LinkProperties;->setDuration(I)Lio/branch/referral/util/LinkProperties;

    .line 278
    :cond_5
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 279
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 280
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 281
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lio/branch/referral/util/LinkProperties;->addTag(Ljava/lang/String;)Lio/branch/referral/util/LinkProperties;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    :cond_6
    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 286
    :cond_7
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 287
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "$"

    .line 288
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 289
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Lio/branch/referral/util/LinkProperties;->addControlParameter(Ljava/lang/String;Ljava/lang/String;)Lio/branch/referral/util/LinkProperties;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    :cond_8
    move-object v9, v7

    :catch_1
    :cond_9
    return-object v9
.end method


# virtual methods
.method public addControlParameter(Ljava/lang/String;Ljava/lang/String;)Lio/branch/referral/util/LinkProperties;
    .locals 1

    .line 90
    iget-object v0, p0, Lio/branch/referral/util/LinkProperties;->controlParams_:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addTag(Ljava/lang/String;)Lio/branch/referral/util/LinkProperties;
    .locals 1

    .line 76
    iget-object v0, p0, Lio/branch/referral/util/LinkProperties;->tags_:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lio/branch/referral/util/LinkProperties;->alias_:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaign()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lio/branch/referral/util/LinkProperties;->campaign_:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lio/branch/referral/util/LinkProperties;->channel_:Ljava/lang/String;

    return-object v0
.end method

.method public getControlParams()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lio/branch/referral/util/LinkProperties;->controlParams_:Ljava/util/HashMap;

    return-object v0
.end method

.method public getFeature()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lio/branch/referral/util/LinkProperties;->feature_:Ljava/lang/String;

    return-object v0
.end method

.method public getMatchDuration()I
    .locals 1

    .line 181
    iget v0, p0, Lio/branch/referral/util/LinkProperties;->matchDuration_:I

    return v0
.end method

.method public getStage()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lio/branch/referral/util/LinkProperties;->stage_:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lio/branch/referral/util/LinkProperties;->tags_:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setAlias(Ljava/lang/String;)Lio/branch/referral/util/LinkProperties;
    .locals 0

    .line 64
    iput-object p1, p0, Lio/branch/referral/util/LinkProperties;->alias_:Ljava/lang/String;

    return-object p0
.end method

.method public setCampaign(Ljava/lang/String;)Lio/branch/referral/util/LinkProperties;
    .locals 0

    .line 150
    iput-object p1, p0, Lio/branch/referral/util/LinkProperties;->campaign_:Ljava/lang/String;

    return-object p0
.end method

.method public setChannel(Ljava/lang/String;)Lio/branch/referral/util/LinkProperties;
    .locals 0

    .line 138
    iput-object p1, p0, Lio/branch/referral/util/LinkProperties;->channel_:Ljava/lang/String;

    return-object p0
.end method

.method public setDuration(I)Lio/branch/referral/util/LinkProperties;
    .locals 0

    .line 114
    iput p1, p0, Lio/branch/referral/util/LinkProperties;->matchDuration_:I

    return-object p0
.end method

.method public setFeature(Ljava/lang/String;)Lio/branch/referral/util/LinkProperties;
    .locals 0

    .line 102
    iput-object p1, p0, Lio/branch/referral/util/LinkProperties;->feature_:Ljava/lang/String;

    return-object p0
.end method

.method public setStage(Ljava/lang/String;)Lio/branch/referral/util/LinkProperties;
    .locals 0

    .line 126
    iput-object p1, p0, Lio/branch/referral/util/LinkProperties;->stage_:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 302
    iget-object p2, p0, Lio/branch/referral/util/LinkProperties;->feature_:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 303
    iget-object p2, p0, Lio/branch/referral/util/LinkProperties;->alias_:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 304
    iget-object p2, p0, Lio/branch/referral/util/LinkProperties;->stage_:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 305
    iget-object p2, p0, Lio/branch/referral/util/LinkProperties;->channel_:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 306
    iget-object p2, p0, Lio/branch/referral/util/LinkProperties;->campaign_:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 307
    iget p2, p0, Lio/branch/referral/util/LinkProperties;->matchDuration_:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    iget-object p2, p0, Lio/branch/referral/util/LinkProperties;->tags_:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 310
    iget-object p2, p0, Lio/branch/referral/util/LinkProperties;->controlParams_:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p2

    .line 311
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    iget-object p2, p0, Lio/branch/referral/util/LinkProperties;->controlParams_:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 313
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 314
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
