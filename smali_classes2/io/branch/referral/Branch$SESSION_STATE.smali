.class final enum Lio/branch/referral/Branch$SESSION_STATE;
.super Ljava/lang/Enum;
.source "Branch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/referral/Branch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SESSION_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/branch/referral/Branch$SESSION_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/branch/referral/Branch$SESSION_STATE;

.field public static final enum INITIALISED:Lio/branch/referral/Branch$SESSION_STATE;

.field public static final enum INITIALISING:Lio/branch/referral/Branch$SESSION_STATE;

.field public static final enum UNINITIALISED:Lio/branch/referral/Branch$SESSION_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 319
    new-instance v0, Lio/branch/referral/Branch$SESSION_STATE;

    const-string v1, "INITIALISED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/branch/referral/Branch$SESSION_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/branch/referral/Branch$SESSION_STATE;->INITIALISED:Lio/branch/referral/Branch$SESSION_STATE;

    new-instance v1, Lio/branch/referral/Branch$SESSION_STATE;

    const-string v3, "INITIALISING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/branch/referral/Branch$SESSION_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/branch/referral/Branch$SESSION_STATE;->INITIALISING:Lio/branch/referral/Branch$SESSION_STATE;

    new-instance v3, Lio/branch/referral/Branch$SESSION_STATE;

    const-string v5, "UNINITIALISED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/branch/referral/Branch$SESSION_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/branch/referral/Branch$SESSION_STATE;->UNINITIALISED:Lio/branch/referral/Branch$SESSION_STATE;

    const/4 v5, 0x3

    new-array v5, v5, [Lio/branch/referral/Branch$SESSION_STATE;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 318
    sput-object v5, Lio/branch/referral/Branch$SESSION_STATE;->$VALUES:[Lio/branch/referral/Branch$SESSION_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 318
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/branch/referral/Branch$SESSION_STATE;
    .locals 1

    .line 318
    const-class v0, Lio/branch/referral/Branch$SESSION_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/branch/referral/Branch$SESSION_STATE;

    return-object p0
.end method

.method public static values()[Lio/branch/referral/Branch$SESSION_STATE;
    .locals 1

    .line 318
    sget-object v0, Lio/branch/referral/Branch$SESSION_STATE;->$VALUES:[Lio/branch/referral/Branch$SESSION_STATE;

    invoke-virtual {v0}, [Lio/branch/referral/Branch$SESSION_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/branch/referral/Branch$SESSION_STATE;

    return-object v0
.end method
