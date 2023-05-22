.class final enum Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;
.super Ljava/lang/Enum;
.source "ServerRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/referral/ServerRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PROCESS_WAIT_LOCK"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;

.field public static final enum FB_APP_LINK_WAIT_LOCK:Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;

.field public static final enum GAID_FETCH_WAIT_LOCK:Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;

.field public static final enum INSTALL_REFERRER_FETCH_WAIT_LOCK:Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;

.field public static final enum INTENT_PENDING_WAIT_LOCK:Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;

.field public static final enum SDK_INIT_WAIT_LOCK:Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;

.field public static final enum STRONG_MATCH_PENDING_WAIT_LOCK:Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;

.field public static final enum USER_SET_WAIT_LOCK:Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 46
    new-instance v0, Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;

    const-string v1, "SDK_INIT_WAIT_LOCK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;->SDK_INIT_WAIT_LOCK:Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;

    new-instance v1, Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;

    const-string v3, "FB_APP_LINK_WAIT_LOCK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;->FB_APP_LINK_WAIT_LOCK:Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;

    new-instance v3, Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;

    const-string v5, "GAID_FETCH_WAIT_LOCK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;->GAID_FETCH_WAIT_LOCK:Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;

    new-instance v5, Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;

    const-string v7, "INTENT_PENDING_WAIT_LOCK"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;->INTENT_PENDING_WAIT_LOCK:Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;

    .line 47
    new-instance v7, Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;

    const-string v9, "STRONG_MATCH_PENDING_WAIT_LOCK"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;->STRONG_MATCH_PENDING_WAIT_LOCK:Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;

    new-instance v9, Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;

    const-string v11, "INSTALL_REFERRER_FETCH_WAIT_LOCK"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;->INSTALL_REFERRER_FETCH_WAIT_LOCK:Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;

    new-instance v11, Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;

    const-string v13, "USER_SET_WAIT_LOCK"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;->USER_SET_WAIT_LOCK:Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;

    const/4 v13, 0x7

    new-array v13, v13, [Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 45
    sput-object v13, Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;->$VALUES:[Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;
    .locals 1

    .line 45
    const-class v0, Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;

    return-object p0
.end method

.method public static values()[Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;
    .locals 1

    .line 45
    sget-object v0, Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;->$VALUES:[Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;

    invoke-virtual {v0}, [Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;

    return-object v0
.end method
