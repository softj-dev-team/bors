.class public Lio/branch/indexing/BranchUniversalObject;
.super Ljava/lang/Object;
.source "BranchUniversalObject.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/indexing/BranchUniversalObject$LinkShareListenerWrapper;,
        Lio/branch/indexing/BranchUniversalObject$RegisterViewStatusListener;,
        Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private canonicalIdentifier_:Ljava/lang/String;

.field private canonicalUrl_:Ljava/lang/String;

.field private creationTimeStamp_:J

.field private description_:Ljava/lang/String;

.field private expirationInMilliSec_:J

.field private imageUrl_:Ljava/lang/String;

.field private indexMode_:Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;

.field private final keywords_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private localIndexMode_:Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;

.field private metadata_:Lio/branch/referral/util/ContentMetadata;

.field private title_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 904
    new-instance v0, Lio/branch/indexing/BranchUniversalObject$1;

    invoke-direct {v0}, Lio/branch/indexing/BranchUniversalObject$1;-><init>()V

    sput-object v0, Lio/branch/indexing/BranchUniversalObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lio/branch/referral/util/ContentMetadata;

    invoke-direct {v0}, Lio/branch/referral/util/ContentMetadata;-><init>()V

    iput-object v0, p0, Lio/branch/indexing/BranchUniversalObject;->metadata_:Lio/branch/referral/util/ContentMetadata;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/branch/indexing/BranchUniversalObject;->keywords_:Ljava/util/ArrayList;

    const-string v0, ""

    .line 84
    iput-object v0, p0, Lio/branch/indexing/BranchUniversalObject;->canonicalIdentifier_:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lio/branch/indexing/BranchUniversalObject;->canonicalUrl_:Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lio/branch/indexing/BranchUniversalObject;->title_:Ljava/lang/String;

    .line 87
    iput-object v0, p0, Lio/branch/indexing/BranchUniversalObject;->description_:Ljava/lang/String;

    .line 88
    sget-object v0, Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;->PUBLIC:Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;

    iput-object v0, p0, Lio/branch/indexing/BranchUniversalObject;->indexMode_:Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;

    .line 89
    sget-object v0, Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;->PUBLIC:Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;

    iput-object v0, p0, Lio/branch/indexing/BranchUniversalObject;->localIndexMode_:Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;

    const-wide/16 v0, 0x0

    .line 90
    iput-wide v0, p0, Lio/branch/indexing/BranchUniversalObject;->expirationInMilliSec_:J

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/branch/indexing/BranchUniversalObject;->creationTimeStamp_:J

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 930
    invoke-direct {p0}, Lio/branch/indexing/BranchUniversalObject;-><init>()V

    .line 931
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lio/branch/indexing/BranchUniversalObject;->creationTimeStamp_:J

    .line 932
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/branch/indexing/BranchUniversalObject;->canonicalIdentifier_:Ljava/lang/String;

    .line 933
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/branch/indexing/BranchUniversalObject;->canonicalUrl_:Ljava/lang/String;

    .line 934
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/branch/indexing/BranchUniversalObject;->title_:Ljava/lang/String;

    .line 935
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/branch/indexing/BranchUniversalObject;->description_:Ljava/lang/String;

    .line 936
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/branch/indexing/BranchUniversalObject;->imageUrl_:Ljava/lang/String;

    .line 937
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lio/branch/indexing/BranchUniversalObject;->expirationInMilliSec_:J

    .line 938
    invoke-static {}, Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;->values()[Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lio/branch/indexing/BranchUniversalObject;->indexMode_:Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;

    .line 940
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 942
    iget-object v1, p0, Lio/branch/indexing/BranchUniversalObject;->keywords_:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 944
    :cond_0
    const-class v0, Lio/branch/referral/util/ContentMetadata;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/branch/referral/util/ContentMetadata;

    iput-object v0, p0, Lio/branch/indexing/BranchUniversalObject;->metadata_:Lio/branch/referral/util/ContentMetadata;

    .line 945
    invoke-static {}, Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;->values()[Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    aget-object p1, v0, p1

    iput-object p1, p0, Lio/branch/indexing/BranchUniversalObject;->localIndexMode_:Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lio/branch/indexing/BranchUniversalObject$1;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lio/branch/indexing/BranchUniversalObject;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$100(Lio/branch/indexing/BranchUniversalObject;Lio/branch/referral/BranchShortLinkBuilder;Lio/branch/referral/util/LinkProperties;)Lio/branch/referral/BranchShortLinkBuilder;
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lio/branch/indexing/BranchUniversalObject;->getLinkBuilder(Lio/branch/referral/BranchShortLinkBuilder;Lio/branch/referral/util/LinkProperties;)Lio/branch/referral/BranchShortLinkBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static createInstance(Lorg/json/JSONObject;)Lio/branch/indexing/BranchUniversalObject;
    .locals 5

    const/4 v0, 0x0

    .line 801
    :try_start_0
    new-instance v1, Lio/branch/indexing/BranchUniversalObject;

    invoke-direct {v1}, Lio/branch/indexing/BranchUniversalObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 802
    :try_start_1
    new-instance v2, Lio/branch/referral/BranchUtil$JsonReader;

    invoke-direct {v2, p0}, Lio/branch/referral/BranchUtil$JsonReader;-><init>(Lorg/json/JSONObject;)V

    .line 803
    sget-object p0, Lio/branch/referral/Defines$Jsonkey;->ContentTitle:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {p0}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lio/branch/referral/BranchUtil$JsonReader;->readOutString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lio/branch/indexing/BranchUniversalObject;->title_:Ljava/lang/String;

    .line 804
    sget-object p0, Lio/branch/referral/Defines$Jsonkey;->CanonicalIdentifier:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {p0}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lio/branch/referral/BranchUtil$JsonReader;->readOutString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lio/branch/indexing/BranchUniversalObject;->canonicalIdentifier_:Ljava/lang/String;

    .line 805
    sget-object p0, Lio/branch/referral/Defines$Jsonkey;->CanonicalUrl:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {p0}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lio/branch/referral/BranchUtil$JsonReader;->readOutString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lio/branch/indexing/BranchUniversalObject;->canonicalUrl_:Ljava/lang/String;

    .line 806
    sget-object p0, Lio/branch/referral/Defines$Jsonkey;->ContentDesc:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {p0}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lio/branch/referral/BranchUtil$JsonReader;->readOutString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lio/branch/indexing/BranchUniversalObject;->description_:Ljava/lang/String;

    .line 807
    sget-object p0, Lio/branch/referral/Defines$Jsonkey;->ContentImgUrl:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {p0}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lio/branch/referral/BranchUtil$JsonReader;->readOutString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lio/branch/indexing/BranchUniversalObject;->imageUrl_:Ljava/lang/String;

    .line 808
    sget-object p0, Lio/branch/referral/Defines$Jsonkey;->ContentExpiryTime:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {p0}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lio/branch/referral/BranchUtil$JsonReader;->readOutLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v1, Lio/branch/indexing/BranchUniversalObject;->expirationInMilliSec_:J

    .line 810
    sget-object p0, Lio/branch/referral/Defines$Jsonkey;->ContentKeyWords:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {p0}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lio/branch/referral/BranchUtil$JsonReader;->readOut(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 811
    instance-of v3, p0, Lorg/json/JSONArray;

    if-eqz v3, :cond_0

    .line 812
    move-object v0, p0

    check-cast v0, Lorg/json/JSONArray;

    goto :goto_0

    .line 813
    :cond_0
    instance-of v3, p0, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 814
    new-instance v0, Lorg/json/JSONArray;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    const/4 p0, 0x0

    .line 817
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge p0, v3, :cond_2

    .line 818
    iget-object v3, v1, Lio/branch/indexing/BranchUniversalObject;->keywords_:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 821
    :cond_2
    sget-object p0, Lio/branch/referral/Defines$Jsonkey;->PublicallyIndexable:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {p0}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lio/branch/referral/BranchUtil$JsonReader;->readOut(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 822
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 823
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;->PUBLIC:Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;

    goto :goto_2

    :cond_3
    sget-object p0, Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;->PRIVATE:Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;

    :goto_2
    iput-object p0, v1, Lio/branch/indexing/BranchUniversalObject;->indexMode_:Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;

    goto :goto_4

    .line 824
    :cond_4
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 826
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_5

    sget-object p0, Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;->PUBLIC:Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;

    goto :goto_3

    :cond_5
    sget-object p0, Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;->PRIVATE:Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;

    :goto_3
    iput-object p0, v1, Lio/branch/indexing/BranchUniversalObject;->indexMode_:Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;

    .line 828
    :cond_6
    :goto_4
    sget-object p0, Lio/branch/referral/Defines$Jsonkey;->LocallyIndexable:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {p0}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lio/branch/referral/BranchUtil$JsonReader;->readOutBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    sget-object p0, Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;->PUBLIC:Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;

    goto :goto_5

    :cond_7
    sget-object p0, Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;->PRIVATE:Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;

    :goto_5
    iput-object p0, v1, Lio/branch/indexing/BranchUniversalObject;->localIndexMode_:Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;

    .line 829
    sget-object p0, Lio/branch/referral/Defines$Jsonkey;->CreationTimestamp:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {p0}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lio/branch/referral/BranchUtil$JsonReader;->readOutLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v1, Lio/branch/indexing/BranchUniversalObject;->creationTimeStamp_:J

    .line 831
    invoke-static {v2}, Lio/branch/referral/util/ContentMetadata;->createFromJson(Lio/branch/referral/BranchUtil$JsonReader;)Lio/branch/referral/util/ContentMetadata;

    move-result-object p0

    iput-object p0, v1, Lio/branch/indexing/BranchUniversalObject;->metadata_:Lio/branch/referral/util/ContentMetadata;

    .line 835
    invoke-virtual {v2}, Lio/branch/referral/BranchUtil$JsonReader;->getJsonObject()Lorg/json/JSONObject;

    move-result-object p0

    .line 836
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 837
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 838
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 839
    iget-object v3, v1, Lio/branch/indexing/BranchUniversalObject;->metadata_:Lio/branch/referral/util/ContentMetadata;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lio/branch/referral/util/ContentMetadata;->addCustomMetadata(Ljava/lang/String;Ljava/lang/String;)Lio/branch/referral/util/ContentMetadata;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-object v0, v1

    :catch_1
    move-object v1, v0

    :cond_8
    return-object v1
.end method

.method private getLinkBuilder(Landroid/content/Context;Lio/branch/referral/util/LinkProperties;)Lio/branch/referral/BranchShortLinkBuilder;
    .locals 1

    .line 699
    new-instance v0, Lio/branch/referral/BranchShortLinkBuilder;

    invoke-direct {v0, p1}, Lio/branch/referral/BranchShortLinkBuilder;-><init>(Landroid/content/Context;)V

    .line 700
    invoke-direct {p0, v0, p2}, Lio/branch/indexing/BranchUniversalObject;->getLinkBuilder(Lio/branch/referral/BranchShortLinkBuilder;Lio/branch/referral/util/LinkProperties;)Lio/branch/referral/BranchShortLinkBuilder;

    move-result-object p1

    return-object p1
.end method

.method private getLinkBuilder(Lio/branch/referral/BranchShortLinkBuilder;Lio/branch/referral/util/LinkProperties;)Lio/branch/referral/BranchShortLinkBuilder;
    .locals 6

    .line 704
    invoke-virtual {p2}, Lio/branch/referral/util/LinkProperties;->getTags()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 705
    invoke-virtual {p2}, Lio/branch/referral/util/LinkProperties;->getTags()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/branch/referral/BranchShortLinkBuilder;->addTags(Ljava/util/List;)Lio/branch/referral/BranchUrlBuilder;

    .line 707
    :cond_0
    invoke-virtual {p2}, Lio/branch/referral/util/LinkProperties;->getFeature()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 708
    invoke-virtual {p2}, Lio/branch/referral/util/LinkProperties;->getFeature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/branch/referral/BranchShortLinkBuilder;->setFeature(Ljava/lang/String;)Lio/branch/referral/BranchShortLinkBuilder;

    .line 710
    :cond_1
    invoke-virtual {p2}, Lio/branch/referral/util/LinkProperties;->getAlias()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 711
    invoke-virtual {p2}, Lio/branch/referral/util/LinkProperties;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/branch/referral/BranchShortLinkBuilder;->setAlias(Ljava/lang/String;)Lio/branch/referral/BranchShortLinkBuilder;

    .line 713
    :cond_2
    invoke-virtual {p2}, Lio/branch/referral/util/LinkProperties;->getChannel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 714
    invoke-virtual {p2}, Lio/branch/referral/util/LinkProperties;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/branch/referral/BranchShortLinkBuilder;->setChannel(Ljava/lang/String;)Lio/branch/referral/BranchShortLinkBuilder;

    .line 716
    :cond_3
    invoke-virtual {p2}, Lio/branch/referral/util/LinkProperties;->getStage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 717
    invoke-virtual {p2}, Lio/branch/referral/util/LinkProperties;->getStage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/branch/referral/BranchShortLinkBuilder;->setStage(Ljava/lang/String;)Lio/branch/referral/BranchShortLinkBuilder;

    .line 719
    :cond_4
    invoke-virtual {p2}, Lio/branch/referral/util/LinkProperties;->getCampaign()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 720
    invoke-virtual {p2}, Lio/branch/referral/util/LinkProperties;->getCampaign()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/branch/referral/BranchShortLinkBuilder;->setCampaign(Ljava/lang/String;)Lio/branch/referral/BranchShortLinkBuilder;

    .line 722
    :cond_5
    invoke-virtual {p2}, Lio/branch/referral/util/LinkProperties;->getMatchDuration()I

    move-result v0

    if-lez v0, :cond_6

    .line 723
    invoke-virtual {p2}, Lio/branch/referral/util/LinkProperties;->getMatchDuration()I

    move-result v0

    invoke-virtual {p1, v0}, Lio/branch/referral/BranchShortLinkBuilder;->setDuration(I)Lio/branch/referral/BranchShortLinkBuilder;

    .line 725
    :cond_6
    iget-object v0, p0, Lio/branch/indexing/BranchUniversalObject;->title_:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 726
    sget-object v0, Lio/branch/referral/Defines$Jsonkey;->ContentTitle:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v0}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/branch/indexing/BranchUniversalObject;->title_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lio/branch/referral/BranchShortLinkBuilder;->addParameters(Ljava/lang/String;Ljava/lang/Object;)Lio/branch/referral/BranchUrlBuilder;

    .line 728
    :cond_7
    iget-object v0, p0, Lio/branch/indexing/BranchUniversalObject;->canonicalIdentifier_:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 729
    sget-object v0, Lio/branch/referral/Defines$Jsonkey;->CanonicalIdentifier:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v0}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/branch/indexing/BranchUniversalObject;->canonicalIdentifier_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lio/branch/referral/BranchShortLinkBuilder;->addParameters(Ljava/lang/String;Ljava/lang/Object;)Lio/branch/referral/BranchUrlBuilder;

    .line 731
    :cond_8
    iget-object v0, p0, Lio/branch/indexing/BranchUniversalObject;->canonicalUrl_:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 732
    sget-object v0, Lio/branch/referral/Defines$Jsonkey;->CanonicalUrl:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v0}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/branch/indexing/BranchUniversalObject;->canonicalUrl_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lio/branch/referral/BranchShortLinkBuilder;->addParameters(Ljava/lang/String;Ljava/lang/Object;)Lio/branch/referral/BranchUrlBuilder;

    .line 734
    :cond_9
    invoke-virtual {p0}, Lio/branch/indexing/BranchUniversalObject;->getKeywordsJsonArray()Lorg/json/JSONArray;

    move-result-object v0

    .line 735
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_a

    .line 736
    sget-object v1, Lio/branch/referral/Defines$Jsonkey;->ContentKeyWords:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v1}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lio/branch/referral/BranchShortLinkBuilder;->addParameters(Ljava/lang/String;Ljava/lang/Object;)Lio/branch/referral/BranchUrlBuilder;

    .line 738
    :cond_a
    iget-object v0, p0, Lio/branch/indexing/BranchUniversalObject;->description_:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 739
    sget-object v0, Lio/branch/referral/Defines$Jsonkey;->ContentDesc:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v0}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/branch/indexing/BranchUniversalObject;->description_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lio/branch/referral/BranchShortLinkBuilder;->addParameters(Ljava/lang/String;Ljava/lang/Object;)Lio/branch/referral/BranchUrlBuilder;

    .line 741
    :cond_b
    iget-object v0, p0, Lio/branch/indexing/BranchUniversalObject;->imageUrl_:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 742
    sget-object v0, Lio/branch/referral/Defines$Jsonkey;->ContentImgUrl:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v0}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/branch/indexing/BranchUniversalObject;->imageUrl_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lio/branch/referral/BranchShortLinkBuilder;->addParameters(Ljava/lang/String;Ljava/lang/Object;)Lio/branch/referral/BranchUrlBuilder;

    .line 744
    :cond_c
    iget-wide v0, p0, Lio/branch/indexing/BranchUniversalObject;->expirationInMilliSec_:J

    const-wide/16 v2, 0x0

    const-string v4, ""

    cmp-long v5, v0, v2

    if-lez v5, :cond_d

    .line 745
    sget-object v0, Lio/branch/referral/Defines$Jsonkey;->ContentExpiryTime:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v0}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lio/branch/indexing/BranchUniversalObject;->expirationInMilliSec_:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lio/branch/referral/BranchShortLinkBuilder;->addParameters(Ljava/lang/String;Ljava/lang/Object;)Lio/branch/referral/BranchUrlBuilder;

    .line 747
    :cond_d
    sget-object v0, Lio/branch/referral/Defines$Jsonkey;->PublicallyIndexable:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v0}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/branch/indexing/BranchUniversalObject;->isPublicallyIndexable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lio/branch/referral/BranchShortLinkBuilder;->addParameters(Ljava/lang/String;Ljava/lang/Object;)Lio/branch/referral/BranchUrlBuilder;

    .line 748
    iget-object v0, p0, Lio/branch/indexing/BranchUniversalObject;->metadata_:Lio/branch/referral/util/ContentMetadata;

    invoke-virtual {v0}, Lio/branch/referral/util/ContentMetadata;->convertToJson()Lorg/json/JSONObject;

    move-result-object v0

    .line 750
    :try_start_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 751
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 752
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 753
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lio/branch/referral/BranchShortLinkBuilder;->addParameters(Ljava/lang/String;Ljava/lang/Object;)Lio/branch/referral/BranchUrlBuilder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 756
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 758
    :cond_e
    invoke-virtual {p2}, Lio/branch/referral/util/LinkProperties;->getControlParams()Ljava/util/HashMap;

    move-result-object p2

    .line 759
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 760
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lio/branch/referral/BranchShortLinkBuilder;->addParameters(Ljava/lang/String;Ljava/lang/Object;)Lio/branch/referral/BranchUrlBuilder;

    goto :goto_1

    :cond_f
    return-object p1
.end method

.method public static getReferredBranchUniversalObject()Lio/branch/indexing/BranchUniversalObject;
    .locals 4

    const-string v0, "+clicked_branch_link"

    .line 774
    invoke-static {}, Lio/branch/referral/Branch;->getInstance()Lio/branch/referral/Branch;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 776
    :try_start_0
    invoke-virtual {v1}, Lio/branch/referral/Branch;->getLatestReferringParams()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 778
    invoke-virtual {v1}, Lio/branch/referral/Branch;->getLatestReferringParams()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lio/branch/referral/Branch;->getLatestReferringParams()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 779
    invoke-virtual {v1}, Lio/branch/referral/Branch;->getLatestReferringParams()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lio/branch/indexing/BranchUniversalObject;->createInstance(Lorg/json/JSONObject;)Lio/branch/indexing/BranchUniversalObject;

    move-result-object v0

    :goto_0
    move-object v2, v0

    goto :goto_1

    .line 782
    :cond_0
    invoke-virtual {v1}, Lio/branch/referral/Branch;->getDeeplinkDebugParams()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lio/branch/referral/Branch;->getDeeplinkDebugParams()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 783
    invoke-virtual {v1}, Lio/branch/referral/Branch;->getLatestReferringParams()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lio/branch/indexing/BranchUniversalObject;->createInstance(Lorg/json/JSONObject;)Lio/branch/indexing/BranchUniversalObject;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    :goto_1
    return-object v2
.end method


# virtual methods
.method public addContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lio/branch/indexing/BranchUniversalObject;
    .locals 1

    .line 177
    iget-object v0, p0, Lio/branch/indexing/BranchUniversalObject;->metadata_:Lio/branch/referral/util/ContentMetadata;

    invoke-virtual {v0, p1, p2}, Lio/branch/referral/util/ContentMetadata;->addCustomMetadata(Ljava/lang/String;Ljava/lang/String;)Lio/branch/referral/util/ContentMetadata;

    return-object p0
.end method

.method public addContentMetadata(Ljava/util/HashMap;)Lio/branch/indexing/BranchUniversalObject;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/branch/indexing/BranchUniversalObject;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 164
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 165
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 167
    iget-object v2, p0, Lio/branch/indexing/BranchUniversalObject;->metadata_:Lio/branch/referral/util/ContentMetadata;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lio/branch/referral/util/ContentMetadata;->addCustomMetadata(Ljava/lang/String;Ljava/lang/String;)Lio/branch/referral/util/ContentMetadata;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public addKeyWord(Ljava/lang/String;)Lio/branch/indexing/BranchUniversalObject;
    .locals 1

    .line 251
    iget-object v0, p0, Lio/branch/indexing/BranchUniversalObject;->keywords_:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addKeyWords(Ljava/util/ArrayList;)Lio/branch/indexing/BranchUniversalObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/branch/indexing/BranchUniversalObject;"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lio/branch/indexing/BranchUniversalObject;->keywords_:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public convertToJson()Lorg/json/JSONObject;
    .locals 6

    .line 855
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 858
    :try_start_0
    iget-object v1, p0, Lio/branch/indexing/BranchUniversalObject;->metadata_:Lio/branch/referral/util/ContentMetadata;

    invoke-virtual {v1}, Lio/branch/referral/util/ContentMetadata;->convertToJson()Lorg/json/JSONObject;

    move-result-object v1

    .line 859
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 860
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 861
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 862
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 864
    :cond_0
    iget-object v1, p0, Lio/branch/indexing/BranchUniversalObject;->title_:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 865
    sget-object v1, Lio/branch/referral/Defines$Jsonkey;->ContentTitle:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v1}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/branch/indexing/BranchUniversalObject;->title_:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 867
    :cond_1
    iget-object v1, p0, Lio/branch/indexing/BranchUniversalObject;->canonicalIdentifier_:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 868
    sget-object v1, Lio/branch/referral/Defines$Jsonkey;->CanonicalIdentifier:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v1}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/branch/indexing/BranchUniversalObject;->canonicalIdentifier_:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 870
    :cond_2
    iget-object v1, p0, Lio/branch/indexing/BranchUniversalObject;->canonicalUrl_:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 871
    sget-object v1, Lio/branch/referral/Defines$Jsonkey;->CanonicalUrl:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v1}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/branch/indexing/BranchUniversalObject;->canonicalUrl_:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 873
    :cond_3
    iget-object v1, p0, Lio/branch/indexing/BranchUniversalObject;->keywords_:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 874
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 875
    iget-object v2, p0, Lio/branch/indexing/BranchUniversalObject;->keywords_:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 876
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 878
    :cond_4
    sget-object v2, Lio/branch/referral/Defines$Jsonkey;->ContentKeyWords:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v2}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 880
    :cond_5
    iget-object v1, p0, Lio/branch/indexing/BranchUniversalObject;->description_:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 881
    sget-object v1, Lio/branch/referral/Defines$Jsonkey;->ContentDesc:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v1}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/branch/indexing/BranchUniversalObject;->description_:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 883
    :cond_6
    iget-object v1, p0, Lio/branch/indexing/BranchUniversalObject;->imageUrl_:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 884
    sget-object v1, Lio/branch/referral/Defines$Jsonkey;->ContentImgUrl:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v1}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/branch/indexing/BranchUniversalObject;->imageUrl_:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 886
    :cond_7
    iget-wide v1, p0, Lio/branch/indexing/BranchUniversalObject;->expirationInMilliSec_:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_8

    .line 887
    sget-object v1, Lio/branch/referral/Defines$Jsonkey;->ContentExpiryTime:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v1}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lio/branch/indexing/BranchUniversalObject;->expirationInMilliSec_:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 889
    :cond_8
    sget-object v1, Lio/branch/referral/Defines$Jsonkey;->PublicallyIndexable:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v1}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/branch/indexing/BranchUniversalObject;->isPublicallyIndexable()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 890
    sget-object v1, Lio/branch/referral/Defines$Jsonkey;->LocallyIndexable:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v1}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/branch/indexing/BranchUniversalObject;->isLocallyIndexable()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 891
    sget-object v1, Lio/branch/referral/Defines$Jsonkey;->CreationTimestamp:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v1}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lio/branch/indexing/BranchUniversalObject;->creationTimeStamp_:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public generateShortUrl(Landroid/content/Context;Lio/branch/referral/util/LinkProperties;Lio/branch/referral/Branch$BranchLinkCreateListener;)V
    .locals 1

    .line 625
    invoke-static {p1}, Lio/branch/referral/TrackingController;->isTrackingDisabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 626
    invoke-direct {p0, p1, p2}, Lio/branch/indexing/BranchUniversalObject;->getLinkBuilder(Landroid/content/Context;Lio/branch/referral/util/LinkProperties;)Lio/branch/referral/BranchShortLinkBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lio/branch/referral/BranchShortLinkBuilder;->getShortUrl()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p3, p1, p2}, Lio/branch/referral/Branch$BranchLinkCreateListener;->onLinkCreate(Ljava/lang/String;Lio/branch/referral/BranchError;)V

    goto :goto_0

    .line 628
    :cond_0
    invoke-direct {p0, p1, p2}, Lio/branch/indexing/BranchUniversalObject;->getLinkBuilder(Landroid/content/Context;Lio/branch/referral/util/LinkProperties;)Lio/branch/referral/BranchShortLinkBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lio/branch/referral/BranchShortLinkBuilder;->generateShortUrl(Lio/branch/referral/Branch$BranchLinkCreateListener;)V

    :goto_0
    return-void
.end method

.method public generateShortUrl(Landroid/content/Context;Lio/branch/referral/util/LinkProperties;Lio/branch/referral/Branch$BranchLinkCreateListener;Z)V
    .locals 0

    .line 642
    invoke-direct {p0, p1, p2}, Lio/branch/indexing/BranchUniversalObject;->getLinkBuilder(Landroid/content/Context;Lio/branch/referral/util/LinkProperties;)Lio/branch/referral/BranchShortLinkBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Lio/branch/referral/BranchShortLinkBuilder;->setDefaultToLongUrl(Z)Lio/branch/referral/BranchUrlBuilder;

    move-result-object p1

    check-cast p1, Lio/branch/referral/BranchShortLinkBuilder;

    invoke-virtual {p1, p3}, Lio/branch/referral/BranchShortLinkBuilder;->generateShortUrl(Lio/branch/referral/Branch$BranchLinkCreateListener;)V

    return-void
.end method

.method public getCanonicalIdentifier()Ljava/lang/String;
    .locals 1

    .line 448
    iget-object v0, p0, Lio/branch/indexing/BranchUniversalObject;->canonicalIdentifier_:Ljava/lang/String;

    return-object v0
.end method

.method public getCanonicalUrl()Ljava/lang/String;
    .locals 1

    .line 459
    iget-object v0, p0, Lio/branch/indexing/BranchUniversalObject;->canonicalUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getContentMetadata()Lio/branch/referral/util/ContentMetadata;
    .locals 1

    .line 426
    iget-object v0, p0, Lio/branch/indexing/BranchUniversalObject;->metadata_:Lio/branch/referral/util/ContentMetadata;

    return-object v0
.end method

.method public getCurrencyType()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 470
    iget-object v0, p0, Lio/branch/indexing/BranchUniversalObject;->description_:Ljava/lang/String;

    return-object v0
.end method

.method public getExpirationTime()J
    .locals 2

    .line 437
    iget-wide v0, p0, Lio/branch/indexing/BranchUniversalObject;->expirationInMilliSec_:J

    return-wide v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 481
    iget-object v0, p0, Lio/branch/indexing/BranchUniversalObject;->imageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getKeywords()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 546
    iget-object v0, p0, Lio/branch/indexing/BranchUniversalObject;->keywords_:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getKeywordsJsonArray()Lorg/json/JSONArray;
    .locals 3

    .line 532
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 533
    iget-object v1, p0, Lio/branch/indexing/BranchUniversalObject;->keywords_:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 534
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getMetadata()Ljava/util/HashMap;
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

    .line 417
    iget-object v0, p0, Lio/branch/indexing/BranchUniversalObject;->metadata_:Lio/branch/referral/util/ContentMetadata;

    invoke-virtual {v0}, Lio/branch/referral/util/ContentMetadata;->getCustomMetadata()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getPrice()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getShortUrl(Landroid/content/Context;Lio/branch/referral/util/LinkProperties;)Ljava/lang/String;
    .locals 0

    .line 601
    invoke-direct {p0, p1, p2}, Lio/branch/indexing/BranchUniversalObject;->getLinkBuilder(Landroid/content/Context;Lio/branch/referral/util/LinkProperties;)Lio/branch/referral/BranchShortLinkBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lio/branch/referral/BranchShortLinkBuilder;->getShortUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getShortUrl(Landroid/content/Context;Lio/branch/referral/util/LinkProperties;Z)Ljava/lang/String;
    .locals 0

    .line 614
    invoke-direct {p0, p1, p2}, Lio/branch/indexing/BranchUniversalObject;->getLinkBuilder(Landroid/content/Context;Lio/branch/referral/util/LinkProperties;)Lio/branch/referral/BranchShortLinkBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lio/branch/referral/BranchShortLinkBuilder;->setDefaultToLongUrl(Z)Lio/branch/referral/BranchUrlBuilder;

    move-result-object p1

    check-cast p1, Lio/branch/referral/BranchShortLinkBuilder;

    invoke-virtual {p1}, Lio/branch/referral/BranchShortLinkBuilder;->getShortUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 492
    iget-object v0, p0, Lio/branch/indexing/BranchUniversalObject;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isLocallyIndexable()Z
    .locals 2

    .line 410
    iget-object v0, p0, Lio/branch/indexing/BranchUniversalObject;->localIndexMode_:Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;

    sget-object v1, Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;->PUBLIC:Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPublicallyIndexable()Z
    .locals 2

    .line 399
    iget-object v0, p0, Lio/branch/indexing/BranchUniversalObject;->indexMode_:Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;

    sget-object v1, Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;->PUBLIC:Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public listOnGoogleSearch(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 291
    invoke-static {p1, p0, v0}, Lio/branch/indexing/AppIndexingHelper;->addToAppIndex(Landroid/content/Context;Lio/branch/indexing/BranchUniversalObject;Lio/branch/referral/util/LinkProperties;)V

    return-void
.end method

.method public listOnGoogleSearch(Landroid/content/Context;Lio/branch/referral/util/LinkProperties;)V
    .locals 0

    .line 303
    invoke-static {p1, p0, p2}, Lio/branch/indexing/AppIndexingHelper;->addToAppIndex(Landroid/content/Context;Lio/branch/indexing/BranchUniversalObject;Lio/branch/referral/util/LinkProperties;)V

    return-void
.end method

.method public registerView()V
    .locals 1

    const/4 v0, 0x0

    .line 555
    invoke-virtual {p0, v0}, Lio/branch/indexing/BranchUniversalObject;->registerView(Lio/branch/indexing/BranchUniversalObject$RegisterViewStatusListener;)V

    return-void
.end method

.method public registerView(Lio/branch/indexing/BranchUniversalObject$RegisterViewStatusListener;)V
    .locals 4

    .line 564
    invoke-static {}, Lio/branch/referral/Branch;->getInstance()Lio/branch/referral/Branch;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 565
    invoke-static {}, Lio/branch/referral/Branch;->getInstance()Lio/branch/referral/Branch;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lio/branch/referral/Branch;->registerView(Lio/branch/indexing/BranchUniversalObject;Lio/branch/indexing/BranchUniversalObject$RegisterViewStatusListener;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 568
    new-instance v1, Lio/branch/referral/BranchError;

    const/16 v2, -0x6d

    const-string v3, "Register view error"

    invoke-direct {v1, v3, v2}, Lio/branch/referral/BranchError;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v0, v1}, Lio/branch/indexing/BranchUniversalObject$RegisterViewStatusListener;->onRegisterViewFinished(ZLio/branch/referral/BranchError;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public removeFromLocalIndexing(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 313
    invoke-static {p1, p0, v0}, Lio/branch/indexing/AppIndexingHelper;->removeFromFirebaseLocalIndex(Landroid/content/Context;Lio/branch/indexing/BranchUniversalObject;Lio/branch/referral/util/LinkProperties;)V

    return-void
.end method

.method public removeFromLocalIndexing(Landroid/content/Context;Lio/branch/referral/util/LinkProperties;)V
    .locals 0

    .line 325
    invoke-static {p1, p0, p2}, Lio/branch/indexing/AppIndexingHelper;->removeFromFirebaseLocalIndex(Landroid/content/Context;Lio/branch/indexing/BranchUniversalObject;Lio/branch/referral/util/LinkProperties;)V

    return-void
.end method

.method public setCanonicalIdentifier(Ljava/lang/String;)Lio/branch/indexing/BranchUniversalObject;
    .locals 0

    .line 103
    iput-object p1, p0, Lio/branch/indexing/BranchUniversalObject;->canonicalIdentifier_:Ljava/lang/String;

    return-object p0
.end method

.method public setCanonicalUrl(Ljava/lang/String;)Lio/branch/indexing/BranchUniversalObject;
    .locals 0

    .line 116
    iput-object p1, p0, Lio/branch/indexing/BranchUniversalObject;->canonicalUrl_:Ljava/lang/String;

    return-object p0
.end method

.method public setContentDescription(Ljava/lang/String;)Lio/branch/indexing/BranchUniversalObject;
    .locals 0

    .line 142
    iput-object p1, p0, Lio/branch/indexing/BranchUniversalObject;->description_:Ljava/lang/String;

    return-object p0
.end method

.method public setContentExpiration(Ljava/util/Date;)Lio/branch/indexing/BranchUniversalObject;
    .locals 2

    .line 264
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lio/branch/indexing/BranchUniversalObject;->expirationInMilliSec_:J

    return-object p0
.end method

.method public setContentImageUrl(Ljava/lang/String;)Lio/branch/indexing/BranchUniversalObject;
    .locals 0

    .line 155
    iput-object p1, p0, Lio/branch/indexing/BranchUniversalObject;->imageUrl_:Ljava/lang/String;

    return-object p0
.end method

.method public setContentIndexingMode(Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;)Lio/branch/indexing/BranchUniversalObject;
    .locals 0

    .line 209
    iput-object p1, p0, Lio/branch/indexing/BranchUniversalObject;->indexMode_:Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;

    return-object p0
.end method

.method public setContentMetadata(Lio/branch/referral/util/ContentMetadata;)Lio/branch/indexing/BranchUniversalObject;
    .locals 0

    .line 188
    iput-object p1, p0, Lio/branch/indexing/BranchUniversalObject;->metadata_:Lio/branch/referral/util/ContentMetadata;

    return-object p0
.end method

.method public setContentType(Ljava/lang/String;)Lio/branch/indexing/BranchUniversalObject;
    .locals 0

    return-object p0
.end method

.method public setLocalIndexMode(Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;)Lio/branch/indexing/BranchUniversalObject;
    .locals 0

    .line 224
    iput-object p1, p0, Lio/branch/indexing/BranchUniversalObject;->localIndexMode_:Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;

    return-object p0
.end method

.method public setPrice(DLio/branch/referral/util/CurrencyType;)Lio/branch/indexing/BranchUniversalObject;
    .locals 0

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lio/branch/indexing/BranchUniversalObject;
    .locals 0

    .line 129
    iput-object p1, p0, Lio/branch/indexing/BranchUniversalObject;->title_:Ljava/lang/String;

    return-object p0
.end method

.method public showShareSheet(Landroid/app/Activity;Lio/branch/referral/util/LinkProperties;Lio/branch/referral/util/ShareSheetStyle;Lio/branch/referral/Branch$BranchLinkShareListener;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 649
    invoke-virtual/range {v0 .. v5}, Lio/branch/indexing/BranchUniversalObject;->showShareSheet(Landroid/app/Activity;Lio/branch/referral/util/LinkProperties;Lio/branch/referral/util/ShareSheetStyle;Lio/branch/referral/Branch$BranchLinkShareListener;Lio/branch/referral/Branch$IChannelProperties;)V

    return-void
.end method

.method public showShareSheet(Landroid/app/Activity;Lio/branch/referral/util/LinkProperties;Lio/branch/referral/util/ShareSheetStyle;Lio/branch/referral/Branch$BranchLinkShareListener;Lio/branch/referral/Branch$IChannelProperties;)V
    .locals 2

    .line 653
    invoke-static {}, Lio/branch/referral/Branch;->getInstance()Lio/branch/referral/Branch;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    .line 655
    new-instance p1, Lio/branch/referral/BranchError;

    const/16 p2, -0x6d

    const-string p3, "Trouble sharing link. "

    invoke-direct {p1, p3, p2}, Lio/branch/referral/BranchError;-><init>(Ljava/lang/String;I)V

    const/4 p2, 0x0

    invoke-interface {p4, p2, p2, p1}, Lio/branch/referral/Branch$BranchLinkShareListener;->onLinkShareResponse(Ljava/lang/String;Ljava/lang/String;Lio/branch/referral/BranchError;)V

    goto/16 :goto_0

    :cond_0
    const-string p1, "Sharing error. Branch instance is not created yet. Make sure you have initialised Branch."

    .line 657
    invoke-static {p1}, Lio/branch/referral/PrefHelper;->Debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 660
    :cond_1
    new-instance v0, Lio/branch/referral/BranchShareSheetBuilder;

    invoke-direct {p0, p1, p2}, Lio/branch/indexing/BranchUniversalObject;->getLinkBuilder(Landroid/content/Context;Lio/branch/referral/util/LinkProperties;)Lio/branch/referral/BranchShortLinkBuilder;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lio/branch/referral/BranchShareSheetBuilder;-><init>(Landroid/app/Activity;Lio/branch/referral/BranchShortLinkBuilder;)V

    .line 661
    new-instance p1, Lio/branch/indexing/BranchUniversalObject$LinkShareListenerWrapper;

    invoke-direct {p1, p0, p4, v0, p2}, Lio/branch/indexing/BranchUniversalObject$LinkShareListenerWrapper;-><init>(Lio/branch/indexing/BranchUniversalObject;Lio/branch/referral/Branch$BranchLinkShareListener;Lio/branch/referral/BranchShareSheetBuilder;Lio/branch/referral/util/LinkProperties;)V

    invoke-virtual {v0, p1}, Lio/branch/referral/BranchShareSheetBuilder;->setCallback(Lio/branch/referral/Branch$BranchLinkShareListener;)Lio/branch/referral/BranchShareSheetBuilder;

    move-result-object p1

    .line 662
    invoke-virtual {p1, p5}, Lio/branch/referral/BranchShareSheetBuilder;->setChannelProperties(Lio/branch/referral/Branch$IChannelProperties;)Lio/branch/referral/BranchShareSheetBuilder;

    move-result-object p1

    .line 663
    invoke-virtual {p3}, Lio/branch/referral/util/ShareSheetStyle;->getMessageTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/branch/referral/BranchShareSheetBuilder;->setSubject(Ljava/lang/String;)Lio/branch/referral/BranchShareSheetBuilder;

    move-result-object p1

    .line 664
    invoke-virtual {p3}, Lio/branch/referral/util/ShareSheetStyle;->getMessageBody()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/branch/referral/BranchShareSheetBuilder;->setMessage(Ljava/lang/String;)Lio/branch/referral/BranchShareSheetBuilder;

    .line 666
    invoke-virtual {p3}, Lio/branch/referral/util/ShareSheetStyle;->getCopyUrlIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 667
    invoke-virtual {p3}, Lio/branch/referral/util/ShareSheetStyle;->getCopyUrlIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p3}, Lio/branch/referral/util/ShareSheetStyle;->getCopyURlText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Lio/branch/referral/util/ShareSheetStyle;->getUrlCopiedMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p1, p2, p4}, Lio/branch/referral/BranchShareSheetBuilder;->setCopyUrlStyle(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)Lio/branch/referral/BranchShareSheetBuilder;

    .line 669
    :cond_2
    invoke-virtual {p3}, Lio/branch/referral/util/ShareSheetStyle;->getMoreOptionIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 670
    invoke-virtual {p3}, Lio/branch/referral/util/ShareSheetStyle;->getMoreOptionIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p3}, Lio/branch/referral/util/ShareSheetStyle;->getMoreOptionText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lio/branch/referral/BranchShareSheetBuilder;->setMoreOptionStyle(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Lio/branch/referral/BranchShareSheetBuilder;

    .line 672
    :cond_3
    invoke-virtual {p3}, Lio/branch/referral/util/ShareSheetStyle;->getDefaultURL()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 673
    invoke-virtual {p3}, Lio/branch/referral/util/ShareSheetStyle;->getDefaultURL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/branch/referral/BranchShareSheetBuilder;->setDefaultURL(Ljava/lang/String;)Lio/branch/referral/BranchShareSheetBuilder;

    .line 675
    :cond_4
    invoke-virtual {p3}, Lio/branch/referral/util/ShareSheetStyle;->getPreferredOptions()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 676
    invoke-virtual {p3}, Lio/branch/referral/util/ShareSheetStyle;->getPreferredOptions()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/branch/referral/BranchShareSheetBuilder;->addPreferredSharingOptions(Ljava/util/ArrayList;)Lio/branch/referral/BranchShareSheetBuilder;

    .line 678
    :cond_5
    invoke-virtual {p3}, Lio/branch/referral/util/ShareSheetStyle;->getStyleResourceID()I

    move-result p1

    if-lez p1, :cond_6

    .line 679
    invoke-virtual {p3}, Lio/branch/referral/util/ShareSheetStyle;->getStyleResourceID()I

    move-result p1

    invoke-virtual {v0, p1}, Lio/branch/referral/BranchShareSheetBuilder;->setStyleResourceID(I)V

    .line 681
    :cond_6
    invoke-virtual {p3}, Lio/branch/referral/util/ShareSheetStyle;->getDividerHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Lio/branch/referral/BranchShareSheetBuilder;->setDividerHeight(I)Lio/branch/referral/BranchShareSheetBuilder;

    .line 682
    invoke-virtual {p3}, Lio/branch/referral/util/ShareSheetStyle;->getIsFullWidthStyle()Z

    move-result p1

    invoke-virtual {v0, p1}, Lio/branch/referral/BranchShareSheetBuilder;->setAsFullWidthStyle(Z)Lio/branch/referral/BranchShareSheetBuilder;

    .line 683
    invoke-virtual {p3}, Lio/branch/referral/util/ShareSheetStyle;->getDialogThemeResourceID()I

    move-result p1

    invoke-virtual {v0, p1}, Lio/branch/referral/BranchShareSheetBuilder;->setDialogThemeResourceID(I)Lio/branch/referral/BranchShareSheetBuilder;

    .line 684
    invoke-virtual {p3}, Lio/branch/referral/util/ShareSheetStyle;->getSharingTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/branch/referral/BranchShareSheetBuilder;->setSharingTitle(Ljava/lang/String;)Lio/branch/referral/BranchShareSheetBuilder;

    .line 685
    invoke-virtual {p3}, Lio/branch/referral/util/ShareSheetStyle;->getSharingTitleView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/branch/referral/BranchShareSheetBuilder;->setSharingTitle(Landroid/view/View;)Lio/branch/referral/BranchShareSheetBuilder;

    .line 686
    invoke-virtual {p3}, Lio/branch/referral/util/ShareSheetStyle;->getIconSize()I

    move-result p1

    invoke-virtual {v0, p1}, Lio/branch/referral/BranchShareSheetBuilder;->setIconSize(I)Lio/branch/referral/BranchShareSheetBuilder;

    .line 688
    invoke-virtual {p3}, Lio/branch/referral/util/ShareSheetStyle;->getIncludedInShareSheet()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p3}, Lio/branch/referral/util/ShareSheetStyle;->getIncludedInShareSheet()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_7

    .line 689
    invoke-virtual {p3}, Lio/branch/referral/util/ShareSheetStyle;->getIncludedInShareSheet()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/branch/referral/BranchShareSheetBuilder;->includeInShareSheet(Ljava/util/List;)Lio/branch/referral/BranchShareSheetBuilder;

    .line 691
    :cond_7
    invoke-virtual {p3}, Lio/branch/referral/util/ShareSheetStyle;->getExcludedFromShareSheet()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p3}, Lio/branch/referral/util/ShareSheetStyle;->getExcludedFromShareSheet()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_8

    .line 692
    invoke-virtual {p3}, Lio/branch/referral/util/ShareSheetStyle;->getExcludedFromShareSheet()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/branch/referral/BranchShareSheetBuilder;->excludeFromShareSheet(Ljava/util/List;)Lio/branch/referral/BranchShareSheetBuilder;

    .line 694
    :cond_8
    invoke-virtual {v0}, Lio/branch/referral/BranchShareSheetBuilder;->shareLink()V

    :goto_0
    return-void
.end method

.method public userCompletedAction(Lio/branch/referral/util/BRANCH_STANDARD_EVENT;)V
    .locals 1

    .line 348
    invoke-virtual {p1}, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/branch/indexing/BranchUniversalObject;->userCompletedAction(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public userCompletedAction(Lio/branch/referral/util/BRANCH_STANDARD_EVENT;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/referral/util/BRANCH_STANDARD_EVENT;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 388
    invoke-virtual {p1}, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lio/branch/indexing/BranchUniversalObject;->userCompletedAction(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public userCompletedAction(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 337
    invoke-virtual {p0, p1, v0}, Lio/branch/indexing/BranchUniversalObject;->userCompletedAction(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public userCompletedAction(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 361
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 363
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 364
    iget-object v2, p0, Lio/branch/indexing/BranchUniversalObject;->canonicalIdentifier_:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 365
    iget-object v1, p0, Lio/branch/indexing/BranchUniversalObject;->canonicalIdentifier_:Ljava/lang/String;

    invoke-virtual {p0}, Lio/branch/indexing/BranchUniversalObject;->convertToJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    .line 367
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 368
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 371
    :cond_0
    invoke-static {}, Lio/branch/referral/Branch;->getInstance()Lio/branch/referral/Branch;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 372
    invoke-static {}, Lio/branch/referral/Branch;->getInstance()Lio/branch/referral/Branch;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lio/branch/referral/Branch;->userCompletedAction(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 916
    iget-wide v0, p0, Lio/branch/indexing/BranchUniversalObject;->creationTimeStamp_:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 917
    iget-object v0, p0, Lio/branch/indexing/BranchUniversalObject;->canonicalIdentifier_:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 918
    iget-object v0, p0, Lio/branch/indexing/BranchUniversalObject;->canonicalUrl_:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 919
    iget-object v0, p0, Lio/branch/indexing/BranchUniversalObject;->title_:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 920
    iget-object v0, p0, Lio/branch/indexing/BranchUniversalObject;->description_:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 921
    iget-object v0, p0, Lio/branch/indexing/BranchUniversalObject;->imageUrl_:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 922
    iget-wide v0, p0, Lio/branch/indexing/BranchUniversalObject;->expirationInMilliSec_:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 923
    iget-object v0, p0, Lio/branch/indexing/BranchUniversalObject;->indexMode_:Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;

    invoke-virtual {v0}, Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 924
    iget-object v0, p0, Lio/branch/indexing/BranchUniversalObject;->keywords_:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 925
    iget-object v0, p0, Lio/branch/indexing/BranchUniversalObject;->metadata_:Lio/branch/referral/util/ContentMetadata;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 926
    iget-object p2, p0, Lio/branch/indexing/BranchUniversalObject;->localIndexMode_:Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;

    invoke-virtual {p2}, Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
