.class Lio/branch/referral/BranchStrongMatchHelper;
.super Ljava/lang/Object;
.source "BranchStrongMatchHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/referral/BranchStrongMatchHelper$MockCustomTabServiceConnection;,
        Lio/branch/referral/BranchStrongMatchHelper$StrongMatchCheckEvents;
    }
.end annotation


# static fields
.field private static final STRONG_MATCH_CHECK_TIME_OUT:I = 0x1f4

.field private static final STRONG_MATCH_URL_HIT_DELAY:I = 0x2ee

.field private static StrongMatchUrlHitDelay:I = 0x2ee

.field private static final THIRTY_DAYS_EPOCH_MILLI_SEC:J = 0x9a7ec800L

.field private static branchStrongMatchHelper_:Lio/branch/referral/BranchStrongMatchHelper;


# instance fields
.field private CustomTabsCallbackClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private CustomTabsClientClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private CustomTabsSessionClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private ICustomTabsServiceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private isCustomTabsAvailable_:Z

.field private isStrongMatchUrlLaunched:Z

.field private mClient_:Ljava/lang/Object;

.field private final timeOutHandler_:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lio/branch/referral/BranchStrongMatchHelper;->mClient_:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lio/branch/referral/BranchStrongMatchHelper;->isCustomTabsAvailable_:Z

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lio/branch/referral/BranchStrongMatchHelper;->isStrongMatchUrlLaunched:Z

    :try_start_0
    const-string v1, "android.support.customtabs.CustomTabsClient"

    .line 45
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lio/branch/referral/BranchStrongMatchHelper;->CustomTabsClientClass:Ljava/lang/Class;

    const-string v1, "android.support.customtabs.CustomTabsCallback"

    .line 46
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lio/branch/referral/BranchStrongMatchHelper;->CustomTabsCallbackClass:Ljava/lang/Class;

    const-string v1, "android.support.customtabs.CustomTabsSession"

    .line 47
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lio/branch/referral/BranchStrongMatchHelper;->CustomTabsSessionClass:Ljava/lang/Class;

    const-string v1, "android.support.customtabs.ICustomTabsService"

    .line 48
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lio/branch/referral/BranchStrongMatchHelper;->ICustomTabsServiceClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    :catch_0
    iput-boolean v0, p0, Lio/branch/referral/BranchStrongMatchHelper;->isCustomTabsAvailable_:Z

    .line 56
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lio/branch/referral/BranchStrongMatchHelper;->timeOutHandler_:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lio/branch/referral/BranchStrongMatchHelper;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lio/branch/referral/BranchStrongMatchHelper;->isStrongMatchUrlLaunched:Z

    return p0
.end method

.method static synthetic access$002(Lio/branch/referral/BranchStrongMatchHelper;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lio/branch/referral/BranchStrongMatchHelper;->isStrongMatchUrlLaunched:Z

    return p1
.end method

.method static synthetic access$100(Lio/branch/referral/BranchStrongMatchHelper;Lio/branch/referral/BranchStrongMatchHelper$StrongMatchCheckEvents;Z)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lio/branch/referral/BranchStrongMatchHelper;->updateStrongMatchCheckFinished(Lio/branch/referral/BranchStrongMatchHelper$StrongMatchCheckEvents;Z)V

    return-void
.end method

.method static synthetic access$200(Lio/branch/referral/BranchStrongMatchHelper;)Ljava/lang/Object;
    .locals 0

    .line 25
    iget-object p0, p0, Lio/branch/referral/BranchStrongMatchHelper;->mClient_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$202(Lio/branch/referral/BranchStrongMatchHelper;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    iput-object p1, p0, Lio/branch/referral/BranchStrongMatchHelper;->mClient_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$300(Lio/branch/referral/BranchStrongMatchHelper;)Ljava/lang/Class;
    .locals 0

    .line 25
    iget-object p0, p0, Lio/branch/referral/BranchStrongMatchHelper;->CustomTabsClientClass:Ljava/lang/Class;

    return-object p0
.end method

.method static synthetic access$400(Lio/branch/referral/BranchStrongMatchHelper;)Ljava/lang/Class;
    .locals 0

    .line 25
    iget-object p0, p0, Lio/branch/referral/BranchStrongMatchHelper;->ICustomTabsServiceClass:Ljava/lang/Class;

    return-object p0
.end method

.method private buildStrongMatchUrl(Ljava/lang/String;Lio/branch/referral/DeviceInfo;Lio/branch/referral/PrefHelper;Landroid/content/Context;)Landroid/net/Uri;
    .locals 4

    .line 156
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/_strong_match?os="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lio/branch/referral/DeviceInfo;->getOsName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lio/branch/referral/Defines$Jsonkey;->HardwareID:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v1}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lio/branch/referral/DeviceInfo;->getHardwareID()Lio/branch/referral/SystemObserver$UniqueId;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-virtual {p2}, Lio/branch/referral/DeviceInfo;->getHardwareID()Lio/branch/referral/SystemObserver$UniqueId;

    move-result-object v2

    .line 162
    invoke-virtual {v2}, Lio/branch/referral/SystemObserver$UniqueId;->isReal()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lio/branch/referral/Defines$Jsonkey;->HardwareIDTypeVendor:Lio/branch/referral/Defines$Jsonkey;

    goto :goto_0

    :cond_0
    sget-object v2, Lio/branch/referral/Defines$Jsonkey;->HardwareIDTypeRandom:Lio/branch/referral/Defines$Jsonkey;

    :goto_0
    invoke-virtual {v2}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lio/branch/referral/Defines$Jsonkey;->HardwareIDType:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v0}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-virtual {p2}, Lio/branch/referral/DeviceInfo;->getSystemObserver()Lio/branch/referral/SystemObserver;

    move-result-object v2

    invoke-virtual {v2}, Lio/branch/referral/SystemObserver;->getAID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 167
    invoke-static {p4}, Lio/branch/referral/BranchUtil;->checkTestMode(Landroid/content/Context;)Z

    move-result p4

    if-nez p4, :cond_1

    .line 168
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lio/branch/referral/Defines$Jsonkey;->GoogleAdvertisingID:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v0}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    :cond_1
    invoke-virtual {p3}, Lio/branch/referral/PrefHelper;->getRandomizedDeviceToken()Ljava/lang/String;

    move-result-object p4

    const-string v2, "bnc_no_value"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_2

    .line 172
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lio/branch/referral/Defines$Jsonkey;->RandomizedDeviceToken:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v0}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lio/branch/referral/PrefHelper;->getRandomizedDeviceToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    :cond_2
    invoke-virtual {p2}, Lio/branch/referral/DeviceInfo;->getAppVersion()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_3

    .line 176
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lio/branch/referral/Defines$Jsonkey;->AppVersion:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v0}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lio/branch/referral/DeviceInfo;->getAppVersion()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    :cond_3
    invoke-virtual {p3}, Lio/branch/referral/PrefHelper;->hasValidBranchKey()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 180
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lio/branch/referral/Defines$Jsonkey;->BranchKey:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {p1}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lio/branch/referral/PrefHelper;->getBranchKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&sdk=android"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lio/branch/referral/Branch;->getSdkVersionNumber()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 185
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public static getInstance()Lio/branch/referral/BranchStrongMatchHelper;
    .locals 1

    .line 60
    sget-object v0, Lio/branch/referral/BranchStrongMatchHelper;->branchStrongMatchHelper_:Lio/branch/referral/BranchStrongMatchHelper;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lio/branch/referral/BranchStrongMatchHelper;

    invoke-direct {v0}, Lio/branch/referral/BranchStrongMatchHelper;-><init>()V

    sput-object v0, Lio/branch/referral/BranchStrongMatchHelper;->branchStrongMatchHelper_:Lio/branch/referral/BranchStrongMatchHelper;

    .line 63
    :cond_0
    sget-object v0, Lio/branch/referral/BranchStrongMatchHelper;->branchStrongMatchHelper_:Lio/branch/referral/BranchStrongMatchHelper;

    return-object v0
.end method

.method private updateStrongMatchCheckFinished(Lio/branch/referral/BranchStrongMatchHelper$StrongMatchCheckEvents;Z)V
    .locals 3

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 142
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lio/branch/referral/BranchStrongMatchHelper$3;

    invoke-direct {v0, p0, p1}, Lio/branch/referral/BranchStrongMatchHelper$3;-><init>(Lio/branch/referral/BranchStrongMatchHelper;Lio/branch/referral/BranchStrongMatchHelper$StrongMatchCheckEvents;)V

    sget p1, Lio/branch/referral/BranchStrongMatchHelper;->StrongMatchUrlHitDelay:I

    int-to-long v1, p1

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 149
    :cond_0
    invoke-interface {p1}, Lio/branch/referral/BranchStrongMatchHelper$StrongMatchCheckEvents;->onStrongMatchCheckFinished()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method checkForStrongMatch(Landroid/content/Context;Ljava/lang/String;Lio/branch/referral/DeviceInfo;Lio/branch/referral/PrefHelper;Lio/branch/referral/BranchStrongMatchHelper$StrongMatchCheckEvents;)V
    .locals 10

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lio/branch/referral/BranchStrongMatchHelper;->isStrongMatchUrlLaunched:Z

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p4}, Lio/branch/referral/PrefHelper;->getLastStrongMatchTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide v3, 0x9a7ec800L

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    .line 74
    iget-boolean p1, p0, Lio/branch/referral/BranchStrongMatchHelper;->isStrongMatchUrlLaunched:Z

    invoke-direct {p0, p5, p1}, Lio/branch/referral/BranchStrongMatchHelper;->updateStrongMatchCheckFinished(Lio/branch/referral/BranchStrongMatchHelper$StrongMatchCheckEvents;Z)V

    goto/16 :goto_0

    .line 75
    :cond_0
    iget-boolean v1, p0, Lio/branch/referral/BranchStrongMatchHelper;->isCustomTabsAvailable_:Z

    if-nez v1, :cond_1

    .line 76
    iget-boolean p1, p0, Lio/branch/referral/BranchStrongMatchHelper;->isStrongMatchUrlLaunched:Z

    invoke-direct {p0, p5, p1}, Lio/branch/referral/BranchStrongMatchHelper;->updateStrongMatchCheckFinished(Lio/branch/referral/BranchStrongMatchHelper$StrongMatchCheckEvents;Z)V

    goto/16 :goto_0

    .line 79
    :cond_1
    :try_start_0
    invoke-virtual {p3}, Lio/branch/referral/DeviceInfo;->getHardwareID()Lio/branch/referral/SystemObserver$UniqueId;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 80
    invoke-direct {p0, p2, p3, p4, p1}, Lio/branch/referral/BranchStrongMatchHelper;->buildStrongMatchUrl(Ljava/lang/String;Lio/branch/referral/DeviceInfo;Lio/branch/referral/PrefHelper;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 82
    iget-object p2, p0, Lio/branch/referral/BranchStrongMatchHelper;->timeOutHandler_:Landroid/os/Handler;

    new-instance p3, Lio/branch/referral/BranchStrongMatchHelper$1;

    invoke-direct {p3, p0, p5}, Lio/branch/referral/BranchStrongMatchHelper$1;-><init>(Lio/branch/referral/BranchStrongMatchHelper;Lio/branch/referral/BranchStrongMatchHelper$StrongMatchCheckEvents;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p2, p3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 89
    iget-object p2, p0, Lio/branch/referral/BranchStrongMatchHelper;->CustomTabsClientClass:Ljava/lang/Class;

    const-string p3, "warmup"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v0

    invoke-virtual {p2, p3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 90
    iget-object p2, p0, Lio/branch/referral/BranchStrongMatchHelper;->CustomTabsClientClass:Ljava/lang/Class;

    const-string p3, "newSession"

    new-array v2, v1, [Ljava/lang/Class;

    iget-object v3, p0, Lio/branch/referral/BranchStrongMatchHelper;->CustomTabsCallbackClass:Ljava/lang/Class;

    aput-object v3, v2, v0

    invoke-virtual {p2, p3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 91
    iget-object p2, p0, Lio/branch/referral/BranchStrongMatchHelper;->CustomTabsSessionClass:Ljava/lang/Class;

    const-string p3, "mayLaunchUrl"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/net/Uri;

    aput-object v3, v2, v0

    const-class v0, Landroid/os/Bundle;

    aput-object v0, v2, v1

    const/4 v0, 0x2

    const-class v1, Ljava/util/List;

    aput-object v1, v2, v0

    invoke-virtual {p2, p3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 95
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.support.customtabs.action.CustomTabsService"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p3, "com.android.chrome"

    .line 96
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    new-instance p3, Lio/branch/referral/BranchStrongMatchHelper$2;

    move-object v2, p3

    move-object v3, p0

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v2 .. v9}, Lio/branch/referral/BranchStrongMatchHelper$2;-><init>(Lio/branch/referral/BranchStrongMatchHelper;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Landroid/net/Uri;Ljava/lang/reflect/Method;Lio/branch/referral/PrefHelper;Lio/branch/referral/BranchStrongMatchHelper$StrongMatchCheckEvents;)V

    const/16 p4, 0x21

    invoke-virtual {p1, p2, p3, p4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    .line 127
    :cond_2
    iget-boolean p1, p0, Lio/branch/referral/BranchStrongMatchHelper;->isStrongMatchUrlLaunched:Z

    invoke-direct {p0, p5, p1}, Lio/branch/referral/BranchStrongMatchHelper;->updateStrongMatchCheckFinished(Lio/branch/referral/BranchStrongMatchHelper$StrongMatchCheckEvents;Z)V

    goto :goto_0

    .line 130
    :cond_3
    iget-boolean p1, p0, Lio/branch/referral/BranchStrongMatchHelper;->isStrongMatchUrlLaunched:Z

    invoke-direct {p0, p5, p1}, Lio/branch/referral/BranchStrongMatchHelper;->updateStrongMatchCheckFinished(Lio/branch/referral/BranchStrongMatchHelper$StrongMatchCheckEvents;Z)V

    const-string p1, "Cannot use cookie-based matching since device id is not available"

    .line 131
    invoke-static {p1}, Lio/branch/referral/PrefHelper;->Debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    iget-boolean p1, p0, Lio/branch/referral/BranchStrongMatchHelper;->isStrongMatchUrlLaunched:Z

    invoke-direct {p0, p5, p1}, Lio/branch/referral/BranchStrongMatchHelper;->updateStrongMatchCheckFinished(Lio/branch/referral/BranchStrongMatchHelper$StrongMatchCheckEvents;Z)V

    :goto_0
    return-void
.end method

.method setStrongMatchUrlHitDelay(I)V
    .locals 0

    .line 67
    sput p1, Lio/branch/referral/BranchStrongMatchHelper;->StrongMatchUrlHitDelay:I

    return-void
.end method
