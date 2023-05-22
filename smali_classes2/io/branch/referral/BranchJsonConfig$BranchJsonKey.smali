.class public final enum Lio/branch/referral/BranchJsonConfig$BranchJsonKey;
.super Ljava/lang/Enum;
.source "BranchJsonConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/referral/BranchJsonConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BranchJsonKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/branch/referral/BranchJsonConfig$BranchJsonKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/branch/referral/BranchJsonConfig$BranchJsonKey;

.field public static final enum branchKey:Lio/branch/referral/BranchJsonConfig$BranchJsonKey;

.field public static final enum enableFacebookLinkCheck:Lio/branch/referral/BranchJsonConfig$BranchJsonKey;

.field public static final enum enableLogging:Lio/branch/referral/BranchJsonConfig$BranchJsonKey;

.field public static final enum liveKey:Lio/branch/referral/BranchJsonConfig$BranchJsonKey;

.field public static final enum testKey:Lio/branch/referral/BranchJsonConfig$BranchJsonKey;

.field public static final enum useTestInstance:Lio/branch/referral/BranchJsonConfig$BranchJsonKey;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 27
    new-instance v0, Lio/branch/referral/BranchJsonConfig$BranchJsonKey;

    const-string v1, "branchKey"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/branch/referral/BranchJsonConfig$BranchJsonKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/branch/referral/BranchJsonConfig$BranchJsonKey;->branchKey:Lio/branch/referral/BranchJsonConfig$BranchJsonKey;

    .line 28
    new-instance v1, Lio/branch/referral/BranchJsonConfig$BranchJsonKey;

    const-string v3, "testKey"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/branch/referral/BranchJsonConfig$BranchJsonKey;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/branch/referral/BranchJsonConfig$BranchJsonKey;->testKey:Lio/branch/referral/BranchJsonConfig$BranchJsonKey;

    .line 29
    new-instance v3, Lio/branch/referral/BranchJsonConfig$BranchJsonKey;

    const-string v5, "liveKey"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/branch/referral/BranchJsonConfig$BranchJsonKey;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/branch/referral/BranchJsonConfig$BranchJsonKey;->liveKey:Lio/branch/referral/BranchJsonConfig$BranchJsonKey;

    .line 30
    new-instance v5, Lio/branch/referral/BranchJsonConfig$BranchJsonKey;

    const-string v7, "useTestInstance"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/branch/referral/BranchJsonConfig$BranchJsonKey;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/branch/referral/BranchJsonConfig$BranchJsonKey;->useTestInstance:Lio/branch/referral/BranchJsonConfig$BranchJsonKey;

    .line 31
    new-instance v7, Lio/branch/referral/BranchJsonConfig$BranchJsonKey;

    const-string v9, "enableFacebookLinkCheck"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lio/branch/referral/BranchJsonConfig$BranchJsonKey;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/branch/referral/BranchJsonConfig$BranchJsonKey;->enableFacebookLinkCheck:Lio/branch/referral/BranchJsonConfig$BranchJsonKey;

    .line 32
    new-instance v9, Lio/branch/referral/BranchJsonConfig$BranchJsonKey;

    const-string v11, "enableLogging"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lio/branch/referral/BranchJsonConfig$BranchJsonKey;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lio/branch/referral/BranchJsonConfig$BranchJsonKey;->enableLogging:Lio/branch/referral/BranchJsonConfig$BranchJsonKey;

    const/4 v11, 0x6

    new-array v11, v11, [Lio/branch/referral/BranchJsonConfig$BranchJsonKey;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 26
    sput-object v11, Lio/branch/referral/BranchJsonConfig$BranchJsonKey;->$VALUES:[Lio/branch/referral/BranchJsonConfig$BranchJsonKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/branch/referral/BranchJsonConfig$BranchJsonKey;
    .locals 1

    .line 26
    const-class v0, Lio/branch/referral/BranchJsonConfig$BranchJsonKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/branch/referral/BranchJsonConfig$BranchJsonKey;

    return-object p0
.end method

.method public static values()[Lio/branch/referral/BranchJsonConfig$BranchJsonKey;
    .locals 1

    .line 26
    sget-object v0, Lio/branch/referral/BranchJsonConfig$BranchJsonKey;->$VALUES:[Lio/branch/referral/BranchJsonConfig$BranchJsonKey;

    invoke-virtual {v0}, [Lio/branch/referral/BranchJsonConfig$BranchJsonKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/branch/referral/BranchJsonConfig$BranchJsonKey;

    return-object v0
.end method
