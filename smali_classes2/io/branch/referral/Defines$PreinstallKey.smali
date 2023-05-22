.class public final enum Lio/branch/referral/Defines$PreinstallKey;
.super Ljava/lang/Enum;
.source "Defines.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/referral/Defines;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PreinstallKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/branch/referral/Defines$PreinstallKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/branch/referral/Defines$PreinstallKey;

.field public static final enum campaign:Lio/branch/referral/Defines$PreinstallKey;

.field public static final enum partner:Lio/branch/referral/Defines$PreinstallKey;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 304
    new-instance v0, Lio/branch/referral/Defines$PreinstallKey;

    const-string v1, "campaign"

    const/4 v2, 0x0

    const-string v3, "preinstall_campaign"

    invoke-direct {v0, v1, v2, v3}, Lio/branch/referral/Defines$PreinstallKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/branch/referral/Defines$PreinstallKey;->campaign:Lio/branch/referral/Defines$PreinstallKey;

    .line 305
    new-instance v1, Lio/branch/referral/Defines$PreinstallKey;

    const-string v3, "partner"

    const/4 v4, 0x1

    const-string v5, "preinstall_partner"

    invoke-direct {v1, v3, v4, v5}, Lio/branch/referral/Defines$PreinstallKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lio/branch/referral/Defines$PreinstallKey;->partner:Lio/branch/referral/Defines$PreinstallKey;

    const/4 v3, 0x2

    new-array v3, v3, [Lio/branch/referral/Defines$PreinstallKey;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 303
    sput-object v3, Lio/branch/referral/Defines$PreinstallKey;->$VALUES:[Lio/branch/referral/Defines$PreinstallKey;

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

    .line 309
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 310
    iput-object p3, p0, Lio/branch/referral/Defines$PreinstallKey;->key:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/branch/referral/Defines$PreinstallKey;
    .locals 1

    .line 303
    const-class v0, Lio/branch/referral/Defines$PreinstallKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/branch/referral/Defines$PreinstallKey;

    return-object p0
.end method

.method public static values()[Lio/branch/referral/Defines$PreinstallKey;
    .locals 1

    .line 303
    sget-object v0, Lio/branch/referral/Defines$PreinstallKey;->$VALUES:[Lio/branch/referral/Defines$PreinstallKey;

    invoke-virtual {v0}, [Lio/branch/referral/Defines$PreinstallKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/branch/referral/Defines$PreinstallKey;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 314
    iget-object v0, p0, Lio/branch/referral/Defines$PreinstallKey;->key:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 319
    iget-object v0, p0, Lio/branch/referral/Defines$PreinstallKey;->key:Ljava/lang/String;

    return-object v0
.end method
