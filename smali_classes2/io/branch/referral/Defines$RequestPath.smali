.class public final enum Lio/branch/referral/Defines$RequestPath;
.super Ljava/lang/Enum;
.source "Defines.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/referral/Defines;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestPath"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/branch/referral/Defines$RequestPath;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/branch/referral/Defines$RequestPath;

.field public static final enum CompletedAction:Lio/branch/referral/Defines$RequestPath;

.field public static final enum ContentEvent:Lio/branch/referral/Defines$RequestPath;

.field public static final enum GetApp:Lio/branch/referral/Defines$RequestPath;

.field public static final enum GetCPID:Lio/branch/referral/Defines$RequestPath;

.field public static final enum GetCreditHistory:Lio/branch/referral/Defines$RequestPath;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum GetCredits:Lio/branch/referral/Defines$RequestPath;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum GetLATD:Lio/branch/referral/Defines$RequestPath;

.field public static final enum GetURL:Lio/branch/referral/Defines$RequestPath;

.field public static final enum IdentifyUser:Lio/branch/referral/Defines$RequestPath;

.field public static final enum Logout:Lio/branch/referral/Defines$RequestPath;

.field public static final enum RedeemRewards:Lio/branch/referral/Defines$RequestPath;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum RegisterClose:Lio/branch/referral/Defines$RequestPath;

.field public static final enum RegisterInstall:Lio/branch/referral/Defines$RequestPath;

.field public static final enum RegisterOpen:Lio/branch/referral/Defines$RequestPath;

.field public static final enum TrackCustomEvent:Lio/branch/referral/Defines$RequestPath;

.field public static final enum TrackStandardEvent:Lio/branch/referral/Defines$RequestPath;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 231
    new-instance v0, Lio/branch/referral/Defines$RequestPath;

    const-string v1, "RedeemRewards"

    const/4 v2, 0x0

    const-string v3, "v1/redeem"

    invoke-direct {v0, v1, v2, v3}, Lio/branch/referral/Defines$RequestPath;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/branch/referral/Defines$RequestPath;->RedeemRewards:Lio/branch/referral/Defines$RequestPath;

    .line 232
    new-instance v1, Lio/branch/referral/Defines$RequestPath;

    const-string v3, "GetURL"

    const/4 v4, 0x1

    const-string v5, "v1/url"

    invoke-direct {v1, v3, v4, v5}, Lio/branch/referral/Defines$RequestPath;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lio/branch/referral/Defines$RequestPath;->GetURL:Lio/branch/referral/Defines$RequestPath;

    .line 233
    new-instance v3, Lio/branch/referral/Defines$RequestPath;

    const-string v5, "GetApp"

    const/4 v6, 0x2

    const-string v7, "v1/app-link-settings"

    invoke-direct {v3, v5, v6, v7}, Lio/branch/referral/Defines$RequestPath;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lio/branch/referral/Defines$RequestPath;->GetApp:Lio/branch/referral/Defines$RequestPath;

    .line 234
    new-instance v5, Lio/branch/referral/Defines$RequestPath;

    const-string v7, "RegisterInstall"

    const/4 v8, 0x3

    const-string v9, "v1/install"

    invoke-direct {v5, v7, v8, v9}, Lio/branch/referral/Defines$RequestPath;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lio/branch/referral/Defines$RequestPath;->RegisterInstall:Lio/branch/referral/Defines$RequestPath;

    .line 235
    new-instance v7, Lio/branch/referral/Defines$RequestPath;

    const-string v9, "RegisterClose"

    const/4 v10, 0x4

    const-string v11, "v1/close"

    invoke-direct {v7, v9, v10, v11}, Lio/branch/referral/Defines$RequestPath;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lio/branch/referral/Defines$RequestPath;->RegisterClose:Lio/branch/referral/Defines$RequestPath;

    .line 236
    new-instance v9, Lio/branch/referral/Defines$RequestPath;

    const-string v11, "RegisterOpen"

    const/4 v12, 0x5

    const-string v13, "v1/open"

    invoke-direct {v9, v11, v12, v13}, Lio/branch/referral/Defines$RequestPath;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lio/branch/referral/Defines$RequestPath;->RegisterOpen:Lio/branch/referral/Defines$RequestPath;

    .line 237
    new-instance v11, Lio/branch/referral/Defines$RequestPath;

    const-string v13, "GetCredits"

    const/4 v14, 0x6

    const-string v15, "v1/credits/"

    invoke-direct {v11, v13, v14, v15}, Lio/branch/referral/Defines$RequestPath;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lio/branch/referral/Defines$RequestPath;->GetCredits:Lio/branch/referral/Defines$RequestPath;

    .line 238
    new-instance v13, Lio/branch/referral/Defines$RequestPath;

    const-string v15, "GetCreditHistory"

    const/4 v14, 0x7

    const-string v12, "v1/credithistory"

    invoke-direct {v13, v15, v14, v12}, Lio/branch/referral/Defines$RequestPath;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lio/branch/referral/Defines$RequestPath;->GetCreditHistory:Lio/branch/referral/Defines$RequestPath;

    .line 239
    new-instance v12, Lio/branch/referral/Defines$RequestPath;

    const-string v15, "CompletedAction"

    const/16 v14, 0x8

    const-string v10, "v1/event"

    invoke-direct {v12, v15, v14, v10}, Lio/branch/referral/Defines$RequestPath;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lio/branch/referral/Defines$RequestPath;->CompletedAction:Lio/branch/referral/Defines$RequestPath;

    .line 240
    new-instance v10, Lio/branch/referral/Defines$RequestPath;

    const-string v15, "IdentifyUser"

    const/16 v14, 0x9

    const-string v8, "v1/profile"

    invoke-direct {v10, v15, v14, v8}, Lio/branch/referral/Defines$RequestPath;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lio/branch/referral/Defines$RequestPath;->IdentifyUser:Lio/branch/referral/Defines$RequestPath;

    .line 241
    new-instance v8, Lio/branch/referral/Defines$RequestPath;

    const-string v15, "Logout"

    const/16 v14, 0xa

    const-string v6, "v1/logout"

    invoke-direct {v8, v15, v14, v6}, Lio/branch/referral/Defines$RequestPath;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lio/branch/referral/Defines$RequestPath;->Logout:Lio/branch/referral/Defines$RequestPath;

    .line 242
    new-instance v6, Lio/branch/referral/Defines$RequestPath;

    const-string v15, "ContentEvent"

    const/16 v14, 0xb

    const-string v4, "v1/content-events"

    invoke-direct {v6, v15, v14, v4}, Lio/branch/referral/Defines$RequestPath;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lio/branch/referral/Defines$RequestPath;->ContentEvent:Lio/branch/referral/Defines$RequestPath;

    .line 243
    new-instance v4, Lio/branch/referral/Defines$RequestPath;

    const-string v15, "TrackStandardEvent"

    const/16 v14, 0xc

    const-string v2, "v2/event/standard"

    invoke-direct {v4, v15, v14, v2}, Lio/branch/referral/Defines$RequestPath;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lio/branch/referral/Defines$RequestPath;->TrackStandardEvent:Lio/branch/referral/Defines$RequestPath;

    .line 244
    new-instance v2, Lio/branch/referral/Defines$RequestPath;

    const-string v15, "TrackCustomEvent"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const-string v4, "v2/event/custom"

    invoke-direct {v2, v15, v14, v4}, Lio/branch/referral/Defines$RequestPath;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lio/branch/referral/Defines$RequestPath;->TrackCustomEvent:Lio/branch/referral/Defines$RequestPath;

    .line 245
    new-instance v4, Lio/branch/referral/Defines$RequestPath;

    const-string v15, "GetCPID"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const-string v2, "v1/cpid"

    invoke-direct {v4, v15, v14, v2}, Lio/branch/referral/Defines$RequestPath;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lio/branch/referral/Defines$RequestPath;->GetCPID:Lio/branch/referral/Defines$RequestPath;

    .line 246
    new-instance v2, Lio/branch/referral/Defines$RequestPath;

    const-string v15, "GetLATD"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const-string v4, "v1/cpid/latd"

    invoke-direct {v2, v15, v14, v4}, Lio/branch/referral/Defines$RequestPath;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lio/branch/referral/Defines$RequestPath;->GetLATD:Lio/branch/referral/Defines$RequestPath;

    const/16 v4, 0x10

    new-array v4, v4, [Lio/branch/referral/Defines$RequestPath;

    const/4 v15, 0x0

    aput-object v0, v4, v15

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v10, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    const/16 v0, 0xb

    aput-object v6, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    aput-object v2, v4, v14

    .line 230
    sput-object v4, Lio/branch/referral/Defines$RequestPath;->$VALUES:[Lio/branch/referral/Defines$RequestPath;

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

    .line 250
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 251
    iput-object p3, p0, Lio/branch/referral/Defines$RequestPath;->key:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/branch/referral/Defines$RequestPath;
    .locals 1

    .line 230
    const-class v0, Lio/branch/referral/Defines$RequestPath;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/branch/referral/Defines$RequestPath;

    return-object p0
.end method

.method public static values()[Lio/branch/referral/Defines$RequestPath;
    .locals 1

    .line 230
    sget-object v0, Lio/branch/referral/Defines$RequestPath;->$VALUES:[Lio/branch/referral/Defines$RequestPath;

    invoke-virtual {v0}, [Lio/branch/referral/Defines$RequestPath;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/branch/referral/Defines$RequestPath;

    return-object v0
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    .line 255
    iget-object v0, p0, Lio/branch/referral/Defines$RequestPath;->key:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 260
    iget-object v0, p0, Lio/branch/referral/Defines$RequestPath;->key:Ljava/lang/String;

    return-object v0
.end method
