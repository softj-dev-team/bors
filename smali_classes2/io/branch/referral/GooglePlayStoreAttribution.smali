.class Lio/branch/referral/GooglePlayStoreAttribution;
.super Ljava/lang/Object;
.source "GooglePlayStoreAttribution.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/referral/GooglePlayStoreAttribution$IInstallReferrerEvents;
    }
.end annotation


# static fields
.field private static callback_:Lio/branch/referral/GooglePlayStoreAttribution$IInstallReferrerEvents; = null

.field static erroredOut:Z = false

.field static hasBeenUsed:Z = false

.field private static installID_:Ljava/lang/String; = "bnc_no_value"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;JJ)V
    .locals 0

    .line 20
    invoke-static/range {p0 .. p5}, Lio/branch/referral/GooglePlayStoreAttribution;->onReferrerClientFinished(Landroid/content/Context;Ljava/lang/String;JJ)V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .line 20
    invoke-static {}, Lio/branch/referral/GooglePlayStoreAttribution;->onReferrerClientError()V

    return-void
.end method

.method static synthetic access$200()V
    .locals 0

    .line 20
    invoke-static {}, Lio/branch/referral/GooglePlayStoreAttribution;->reportInstallReferrer()V

    return-void
.end method

.method public static getInstallationID()Ljava/lang/String;
    .locals 1

    .line 170
    sget-object v0, Lio/branch/referral/GooglePlayStoreAttribution;->installID_:Ljava/lang/String;

    return-object v0
.end method

.method private static onReferrerClientError()V
    .locals 1

    const-string v0, "onReferrerClientError()"

    .line 102
    invoke-static {v0}, Lio/branch/referral/PrefHelper;->Debug(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 103
    sput-boolean v0, Lio/branch/referral/GooglePlayStoreAttribution;->erroredOut:Z

    .line 104
    invoke-static {}, Lio/branch/referral/GooglePlayStoreAttribution;->reportInstallReferrer()V

    return-void
.end method

.method private static onReferrerClientFinished(Landroid/content/Context;Ljava/lang/String;JJ)V
    .locals 1

    const-string v0, "onReferrerClientFinished()"

    .line 96
    invoke-static {v0}, Lio/branch/referral/PrefHelper;->Debug(Ljava/lang/String;)V

    .line 97
    invoke-static/range {p0 .. p5}, Lio/branch/referral/GooglePlayStoreAttribution;->processReferrerInfo(Landroid/content/Context;Ljava/lang/String;JJ)V

    .line 98
    invoke-static {}, Lio/branch/referral/GooglePlayStoreAttribution;->reportInstallReferrer()V

    return-void
.end method

.method private static processReferrerInfo(Landroid/content/Context;Ljava/lang/String;JJ)V
    .locals 6

    const-string v0, "="

    const-string v1, "UTF-8"

    .line 108
    invoke-static {p0}, Lio/branch/referral/PrefHelper;->getInstance(Landroid/content/Context;)Lio/branch/referral/PrefHelper;

    move-result-object v2

    const-wide/16 v3, 0x0

    cmp-long v5, p2, v3

    if-lez v5, :cond_0

    const-string v5, "bnc_referrer_click_ts"

    .line 110
    invoke-virtual {v2, v5, p2, p3}, Lio/branch/referral/PrefHelper;->setLong(Ljava/lang/String;J)V

    :cond_0
    cmp-long p2, p4, v3

    if-lez p2, :cond_1

    const-string p2, "bnc_install_begin_ts"

    .line 113
    invoke-virtual {v2, p2, p4, p5}, Lio/branch/referral/PrefHelper;->setLong(Ljava/lang/String;J)V

    :cond_1
    if-eqz p1, :cond_9

    .line 117
    :try_start_0
    invoke-static {p1, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 118
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string p3, "&"

    .line 119
    invoke-virtual {p1, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 122
    invoke-virtual {v2, p1}, Lio/branch/referral/PrefHelper;->setGooglePlayReferrer(Ljava/lang/String;)V

    .line 124
    array-length p1, p3

    const/4 p4, 0x0

    const/4 p5, 0x0

    :goto_0
    if-ge p5, p1, :cond_4

    aget-object v3, p3, p5

    .line 125
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 127
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "-"

    if-nez v4, :cond_2

    :try_start_1
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move-object v5, v0

    .line 130
    :goto_1
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 131
    array-length v4, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_3

    .line 132
    aget-object v4, v3, p4

    invoke-static {v4, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aget-object v3, v3, v5

    invoke-static {v3, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    .line 136
    :cond_4
    sget-object p1, Lio/branch/referral/Defines$Jsonkey;->LinkClickID:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {p1}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 137
    sget-object p1, Lio/branch/referral/Defines$Jsonkey;->LinkClickID:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {p1}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sput-object p1, Lio/branch/referral/GooglePlayStoreAttribution;->installID_:Ljava/lang/String;

    .line 138
    invoke-virtual {v2, p1}, Lio/branch/referral/PrefHelper;->setLinkClickIdentifier(Ljava/lang/String;)V

    .line 142
    :cond_5
    sget-object p1, Lio/branch/referral/Defines$Jsonkey;->IsFullAppConv:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {p1}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lio/branch/referral/Defines$Jsonkey;->ReferringLink:Lio/branch/referral/Defines$Jsonkey;

    .line 143
    invoke-virtual {p1}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 144
    sget-object p1, Lio/branch/referral/Defines$Jsonkey;->IsFullAppConv:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {p1}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v2, p1}, Lio/branch/referral/PrefHelper;->setIsFullAppConversion(Z)V

    .line 145
    sget-object p1, Lio/branch/referral/Defines$Jsonkey;->ReferringLink:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {p1}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Lio/branch/referral/PrefHelper;->setAppLink(Ljava/lang/String;)V

    .line 148
    :cond_6
    sget-object p1, Lio/branch/referral/Defines$Jsonkey;->GoogleSearchInstallReferrer:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {p1}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 149
    sget-object p1, Lio/branch/referral/Defines$Jsonkey;->GoogleSearchInstallReferrer:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {p1}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Lio/branch/referral/PrefHelper;->setGoogleSearchInstallIdentifier(Ljava/lang/String;)V

    .line 152
    :cond_7
    sget-object p1, Lio/branch/referral/Defines$Jsonkey;->PlayAutoInstalls:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {p1}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 153
    invoke-static {p0, p2}, Lio/branch/referral/BranchPreinstall;->setBranchPreInstallGoogleReferrer(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 155
    :cond_8
    sget-object p0, Lio/branch/referral/Defines$Jsonkey;->ReferrerExtraGclidParam:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {p0}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 156
    sget-object p0, Lio/branch/referral/Defines$Jsonkey;->ReferrerExtraGclidParam:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {p0}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v2, p0}, Lio/branch/referral/PrefHelper;->setReferrerGclid(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 162
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const-string p0, "Illegal characters in url encoded string"

    .line 163
    invoke-static {p0}, Lio/branch/referral/PrefHelper;->Debug(Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception p0

    .line 160
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_9
    :goto_2
    return-void
.end method

.method private static reportInstallReferrer()V
    .locals 1

    .line 174
    sget-object v0, Lio/branch/referral/GooglePlayStoreAttribution;->callback_:Lio/branch/referral/GooglePlayStoreAttribution$IInstallReferrerEvents;

    if-eqz v0, :cond_0

    .line 175
    invoke-interface {v0}, Lio/branch/referral/GooglePlayStoreAttribution$IInstallReferrerEvents;->onInstallReferrerEventsFinished()V

    const/4 v0, 0x0

    .line 176
    sput-object v0, Lio/branch/referral/GooglePlayStoreAttribution;->callback_:Lio/branch/referral/GooglePlayStoreAttribution$IInstallReferrerEvents;

    :cond_0
    return-void
.end method


# virtual methods
.method captureInstallReferrer(Landroid/content/Context;JLio/branch/referral/GooglePlayStoreAttribution$IInstallReferrerEvents;)V
    .locals 1

    const/4 v0, 0x1

    .line 33
    sput-boolean v0, Lio/branch/referral/GooglePlayStoreAttribution;->hasBeenUsed:Z

    .line 34
    sput-object p4, Lio/branch/referral/GooglePlayStoreAttribution;->callback_:Lio/branch/referral/GooglePlayStoreAttribution$IInstallReferrerEvents;

    .line 37
    :try_start_0
    invoke-static {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->newBuilder(Landroid/content/Context;)Lcom/android/installreferrer/api/InstallReferrerClient$Builder;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/installreferrer/api/InstallReferrerClient$Builder;->build()Lcom/android/installreferrer/api/InstallReferrerClient;

    move-result-object p4

    .line 38
    new-instance v0, Lio/branch/referral/GooglePlayStoreAttribution$1;

    invoke-direct {v0, p0, p4, p1}, Lio/branch/referral/GooglePlayStoreAttribution$1;-><init>(Lio/branch/referral/GooglePlayStoreAttribution;Lcom/android/installreferrer/api/InstallReferrerClient;Landroid/content/Context;)V

    invoke-virtual {p4, v0}, Lcom/android/installreferrer/api/InstallReferrerClient;->startConnection(Lcom/android/installreferrer/api/InstallReferrerStateListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 83
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ReferrerClientWrapper Exception: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/branch/referral/PrefHelper;->Debug(Ljava/lang/String;)V

    .line 88
    :goto_0
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    new-instance p4, Lio/branch/referral/GooglePlayStoreAttribution$2;

    invoke-direct {p4, p0}, Lio/branch/referral/GooglePlayStoreAttribution$2;-><init>(Lio/branch/referral/GooglePlayStoreAttribution;)V

    invoke-virtual {p1, p4, p2, p3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
