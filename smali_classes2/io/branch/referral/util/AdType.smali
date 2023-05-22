.class public final enum Lio/branch/referral/util/AdType;
.super Ljava/lang/Enum;
.source "AdType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/branch/referral/util/AdType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/branch/referral/util/AdType;

.field public static final enum BANNER:Lio/branch/referral/util/AdType;

.field public static final enum INTERSTITIAL:Lio/branch/referral/util/AdType;

.field public static final enum NATIVE:Lio/branch/referral/util/AdType;

.field public static final enum REWARDED_VIDEO:Lio/branch/referral/util/AdType;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 7
    new-instance v0, Lio/branch/referral/util/AdType;

    const-string v1, "BANNER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lio/branch/referral/util/AdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/branch/referral/util/AdType;->BANNER:Lio/branch/referral/util/AdType;

    .line 8
    new-instance v1, Lio/branch/referral/util/AdType;

    const-string v3, "INTERSTITIAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lio/branch/referral/util/AdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lio/branch/referral/util/AdType;->INTERSTITIAL:Lio/branch/referral/util/AdType;

    .line 9
    new-instance v3, Lio/branch/referral/util/AdType;

    const-string v5, "REWARDED_VIDEO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Lio/branch/referral/util/AdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lio/branch/referral/util/AdType;->REWARDED_VIDEO:Lio/branch/referral/util/AdType;

    .line 10
    new-instance v5, Lio/branch/referral/util/AdType;

    const-string v7, "NATIVE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v7}, Lio/branch/referral/util/AdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lio/branch/referral/util/AdType;->NATIVE:Lio/branch/referral/util/AdType;

    const/4 v7, 0x4

    new-array v7, v7, [Lio/branch/referral/util/AdType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 6
    sput-object v7, Lio/branch/referral/util/AdType;->$VALUES:[Lio/branch/referral/util/AdType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p3, p0, Lio/branch/referral/util/AdType;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/branch/referral/util/AdType;
    .locals 1

    .line 6
    const-class v0, Lio/branch/referral/util/AdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/branch/referral/util/AdType;

    return-object p0
.end method

.method public static values()[Lio/branch/referral/util/AdType;
    .locals 1

    .line 6
    sget-object v0, Lio/branch/referral/util/AdType;->$VALUES:[Lio/branch/referral/util/AdType;

    invoke-virtual {v0}, [Lio/branch/referral/util/AdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/branch/referral/util/AdType;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lio/branch/referral/util/AdType;->name:Ljava/lang/String;

    return-object v0
.end method
