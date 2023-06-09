.class public Lio/branch/referral/util/BranchEvent;
.super Ljava/lang/Object;
.source "BranchEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/referral/util/BranchEvent$ServerRequestLogEvent;
    }
.end annotation


# instance fields
.field private final buoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/branch/indexing/BranchUniversalObject;",
            ">;"
        }
    .end annotation
.end field

.field private final customProperties:Lorg/json/JSONObject;

.field private final eventName:Ljava/lang/String;

.field private final isStandardEvent:Z

.field private final standardProperties:Lorg/json/JSONObject;

.field private final topLevelProperties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/branch/referral/util/BRANCH_STANDARD_EVENT;)V
    .locals 0

    .line 42
    invoke-virtual {p1}, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/branch/referral/util/BranchEvent;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/branch/referral/util/BranchEvent;->topLevelProperties:Ljava/util/HashMap;

    .line 53
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lio/branch/referral/util/BranchEvent;->standardProperties:Lorg/json/JSONObject;

    .line 54
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lio/branch/referral/util/BranchEvent;->customProperties:Lorg/json/JSONObject;

    .line 55
    iput-object p1, p0, Lio/branch/referral/util/BranchEvent;->eventName:Ljava/lang/String;

    .line 58
    invoke-static {}, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;->values()[Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 59
    invoke-virtual {v4}, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 65
    :cond_1
    :goto_1
    iput-boolean v2, p0, Lio/branch/referral/util/BranchEvent;->isStandardEvent:Z

    .line 66
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/branch/referral/util/BranchEvent;->buoList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lio/branch/referral/util/BranchEvent;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lio/branch/referral/util/BranchEvent;->eventName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lio/branch/referral/util/BranchEvent;)Lorg/json/JSONObject;
    .locals 0

    .line 29
    iget-object p0, p0, Lio/branch/referral/util/BranchEvent;->customProperties:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic access$200(Lio/branch/referral/util/BranchEvent;)Lorg/json/JSONObject;
    .locals 0

    .line 29
    iget-object p0, p0, Lio/branch/referral/util/BranchEvent;->standardProperties:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic access$300(Lio/branch/referral/util/BranchEvent;)Ljava/util/HashMap;
    .locals 0

    .line 29
    iget-object p0, p0, Lio/branch/referral/util/BranchEvent;->topLevelProperties:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$400(Lio/branch/referral/util/BranchEvent;)Ljava/util/List;
    .locals 0

    .line 29
    iget-object p0, p0, Lio/branch/referral/util/BranchEvent;->buoList:Ljava/util/List;

    return-object p0
.end method

.method private addStandardProperty(Ljava/lang/String;Ljava/lang/Object;)Lio/branch/referral/util/BranchEvent;
    .locals 1

    if-eqz p2, :cond_0

    .line 179
    :try_start_0
    iget-object v0, p0, Lio/branch/referral/util/BranchEvent;->standardProperties:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 181
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 184
    :cond_0
    iget-object p2, p0, Lio/branch/referral/util/BranchEvent;->standardProperties:Lorg/json/JSONObject;

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method private addTopLevelProperty(Ljava/lang/String;Ljava/lang/Object;)Lio/branch/referral/util/BranchEvent;
    .locals 1

    .line 190
    iget-object v0, p0, Lio/branch/referral/util/BranchEvent;->topLevelProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lio/branch/referral/util/BranchEvent;->topLevelProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 193
    :cond_0
    iget-object p2, p0, Lio/branch/referral/util/BranchEvent;->topLevelProperties:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public addContentItems(Ljava/util/List;)Lio/branch/referral/util/BranchEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/indexing/BranchUniversalObject;",
            ">;)",
            "Lio/branch/referral/util/BranchEvent;"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lio/branch/referral/util/BranchEvent;->buoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs addContentItems([Lio/branch/indexing/BranchUniversalObject;)Lio/branch/referral/util/BranchEvent;
    .locals 1

    .line 222
    iget-object v0, p0, Lio/branch/referral/util/BranchEvent;->buoList:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addCustomDataProperty(Ljava/lang/String;Ljava/lang/String;)Lio/branch/referral/util/BranchEvent;
    .locals 1

    .line 207
    :try_start_0
    iget-object v0, p0, Lio/branch/referral/util/BranchEvent;->customProperties:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 209
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    .line 240
    iget-object v0, p0, Lio/branch/referral/util/BranchEvent;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method public logEvent(Landroid/content/Context;)Z
    .locals 3

    .line 251
    iget-boolean v0, p0, Lio/branch/referral/util/BranchEvent;->isStandardEvent:Z

    if-eqz v0, :cond_0

    sget-object v0, Lio/branch/referral/Defines$RequestPath;->TrackStandardEvent:Lio/branch/referral/Defines$RequestPath;

    goto :goto_0

    :cond_0
    sget-object v0, Lio/branch/referral/Defines$RequestPath;->TrackCustomEvent:Lio/branch/referral/Defines$RequestPath;

    .line 252
    :goto_0
    invoke-static {}, Lio/branch/referral/Branch;->getInstance()Lio/branch/referral/Branch;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 253
    invoke-static {}, Lio/branch/referral/Branch;->getInstance()Lio/branch/referral/Branch;

    move-result-object v1

    new-instance v2, Lio/branch/referral/util/BranchEvent$ServerRequestLogEvent;

    invoke-direct {v2, p0, p1, v0}, Lio/branch/referral/util/BranchEvent$ServerRequestLogEvent;-><init>(Lio/branch/referral/util/BranchEvent;Landroid/content/Context;Lio/branch/referral/Defines$RequestPath;)V

    invoke-virtual {v1, v2}, Lio/branch/referral/Branch;->handleNewRequest(Lio/branch/referral/ServerRequest;)V

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public setAdType(Lio/branch/referral/util/AdType;)Lio/branch/referral/util/BranchEvent;
    .locals 1

    .line 84
    sget-object v0, Lio/branch/referral/Defines$Jsonkey;->AdType:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v0}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/branch/referral/util/AdType;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lio/branch/referral/util/BranchEvent;->addStandardProperty(Ljava/lang/String;Ljava/lang/Object;)Lio/branch/referral/util/BranchEvent;

    move-result-object p1

    return-object p1
.end method

.method public setAffiliation(Ljava/lang/String;)Lio/branch/referral/util/BranchEvent;
    .locals 1

    .line 153
    sget-object v0, Lio/branch/referral/Defines$Jsonkey;->Affiliation:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v0}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lio/branch/referral/util/BranchEvent;->addStandardProperty(Ljava/lang/String;Ljava/lang/Object;)Lio/branch/referral/util/BranchEvent;

    move-result-object p1

    return-object p1
.end method

.method public setCoupon(Ljava/lang/String;)Lio/branch/referral/util/BranchEvent;
    .locals 1

    .line 143
    sget-object v0, Lio/branch/referral/Defines$Jsonkey;->Coupon:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v0}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lio/branch/referral/util/BranchEvent;->addStandardProperty(Ljava/lang/String;Ljava/lang/Object;)Lio/branch/referral/util/BranchEvent;

    move-result-object p1

    return-object p1
.end method

.method public setCurrency(Lio/branch/referral/util/CurrencyType;)Lio/branch/referral/util/BranchEvent;
    .locals 1

    .line 103
    sget-object v0, Lio/branch/referral/Defines$Jsonkey;->Currency:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v0}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/branch/referral/util/CurrencyType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lio/branch/referral/util/BranchEvent;->addStandardProperty(Ljava/lang/String;Ljava/lang/Object;)Lio/branch/referral/util/BranchEvent;

    move-result-object p1

    return-object p1
.end method

.method public setCustomerEventAlias(Ljava/lang/String;)Lio/branch/referral/util/BranchEvent;
    .locals 1

    .line 75
    sget-object v0, Lio/branch/referral/Defines$Jsonkey;->CustomerEventAlias:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v0}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lio/branch/referral/util/BranchEvent;->addTopLevelProperty(Ljava/lang/String;Ljava/lang/Object;)Lio/branch/referral/util/BranchEvent;

    move-result-object p1

    return-object p1
.end method

.method public setDescription(Ljava/lang/String;)Lio/branch/referral/util/BranchEvent;
    .locals 1

    .line 163
    sget-object v0, Lio/branch/referral/Defines$Jsonkey;->Description:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v0}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lio/branch/referral/util/BranchEvent;->addStandardProperty(Ljava/lang/String;Ljava/lang/Object;)Lio/branch/referral/util/BranchEvent;

    move-result-object p1

    return-object p1
.end method

.method public setRevenue(D)Lio/branch/referral/util/BranchEvent;
    .locals 1

    .line 113
    sget-object v0, Lio/branch/referral/Defines$Jsonkey;->Revenue:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v0}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lio/branch/referral/util/BranchEvent;->addStandardProperty(Ljava/lang/String;Ljava/lang/Object;)Lio/branch/referral/util/BranchEvent;

    move-result-object p1

    return-object p1
.end method

.method public setSearchQuery(Ljava/lang/String;)Lio/branch/referral/util/BranchEvent;
    .locals 1

    .line 173
    sget-object v0, Lio/branch/referral/Defines$Jsonkey;->SearchQuery:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v0}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lio/branch/referral/util/BranchEvent;->addStandardProperty(Ljava/lang/String;Ljava/lang/Object;)Lio/branch/referral/util/BranchEvent;

    move-result-object p1

    return-object p1
.end method

.method public setShipping(D)Lio/branch/referral/util/BranchEvent;
    .locals 1

    .line 123
    sget-object v0, Lio/branch/referral/Defines$Jsonkey;->Shipping:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v0}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lio/branch/referral/util/BranchEvent;->addStandardProperty(Ljava/lang/String;Ljava/lang/Object;)Lio/branch/referral/util/BranchEvent;

    move-result-object p1

    return-object p1
.end method

.method public setTax(D)Lio/branch/referral/util/BranchEvent;
    .locals 1

    .line 133
    sget-object v0, Lio/branch/referral/Defines$Jsonkey;->Tax:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v0}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lio/branch/referral/util/BranchEvent;->addStandardProperty(Ljava/lang/String;Ljava/lang/Object;)Lio/branch/referral/util/BranchEvent;

    move-result-object p1

    return-object p1
.end method

.method public setTransactionID(Ljava/lang/String;)Lio/branch/referral/util/BranchEvent;
    .locals 1

    .line 93
    sget-object v0, Lio/branch/referral/Defines$Jsonkey;->TransactionID:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v0}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lio/branch/referral/util/BranchEvent;->addStandardProperty(Ljava/lang/String;Ljava/lang/Object;)Lio/branch/referral/util/BranchEvent;

    move-result-object p1

    return-object p1
.end method
