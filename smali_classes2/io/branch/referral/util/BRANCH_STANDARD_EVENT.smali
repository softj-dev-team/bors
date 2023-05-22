.class public final enum Lio/branch/referral/util/BRANCH_STANDARD_EVENT;
.super Ljava/lang/Enum;
.source "BRANCH_STANDARD_EVENT.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/branch/referral/util/BRANCH_STANDARD_EVENT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

.field public static final enum ACHIEVE_LEVEL:Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

.field public static final enum ADD_PAYMENT_INFO:Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

.field public static final enum ADD_TO_CART:Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

.field public static final enum ADD_TO_WISHLIST:Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

.field public static final enum CLICK_AD:Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

.field public static final enum COMPLETE_REGISTRATION:Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

.field public static final enum COMPLETE_STREAM:Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

.field public static final enum COMPLETE_TUTORIAL:Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

.field public static final enum INITIATE_PURCHASE:Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

.field public static final enum INITIATE_STREAM:Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

.field public static final enum INVITE:Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

.field public static final enum LOGIN:Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

.field public static final enum PURCHASE:Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

.field public static final enum RATE:Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

.field public static final enum RESERVE:Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

.field public static final enum SEARCH:Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

.field public static final enum SHARE:Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

.field public static final enum SPEND_CREDITS:Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

.field public static final enum START_TRIAL:Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

.field public static final enum SUBSCRIBE:Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

.field public static final enum UNLOCK_ACHIEVEMENT:Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

.field public static final enum VIEW_AD:Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

.field public static final enum VIEW_CART:Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

.field public static final enum VIEW_ITEM:Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

.field public static final enum VIEW_ITEMS:Lio/branch/referral/util/BRANCH_STANDARD_EVENT;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 28

    .line 11
    new-instance v0, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    const-string v1, "ADD_TO_CART"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;->ADD_TO_CART:Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    .line 12
    new-instance v1, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    const-string v3, "ADD_TO_WISHLIST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;->ADD_TO_WISHLIST:Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    .line 13
    new-instance v3, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    const-string v5, "VIEW_CART"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;->VIEW_CART:Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    .line 14
    new-instance v5, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    const-string v7, "INITIATE_PURCHASE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v7}, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;->INITIATE_PURCHASE:Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    .line 15
    new-instance v7, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    const-string v9, "ADD_PAYMENT_INFO"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v9}, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;->ADD_PAYMENT_INFO:Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    .line 16
    new-instance v9, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    const-string v11, "PURCHASE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v11}, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;->PURCHASE:Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    .line 17
    new-instance v11, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    const-string v13, "SPEND_CREDITS"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v13}, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;->SPEND_CREDITS:Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    .line 20
    new-instance v13, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    const-string v15, "SEARCH"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v15}, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;->SEARCH:Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    .line 21
    new-instance v15, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    const-string v14, "VIEW_ITEM"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v14}, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;->VIEW_ITEM:Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    .line 22
    new-instance v14, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    const-string v12, "VIEW_ITEMS"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v12}, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;->VIEW_ITEMS:Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    .line 23
    new-instance v12, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    const-string v10, "RATE"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v10}, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;->RATE:Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    .line 24
    new-instance v10, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    const-string v8, "SHARE"

    const/16 v6, 0xb

    const-string v4, "SHARE"

    invoke-direct {v10, v8, v6, v4}, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;->SHARE:Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    .line 25
    new-instance v4, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    const-string v6, "INITIATE_STREAM"

    const/16 v8, 0xc

    const-string v2, "INITIATE_STREAM"

    invoke-direct {v4, v6, v8, v2}, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;->INITIATE_STREAM:Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    .line 26
    new-instance v2, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    const-string v6, "COMPLETE_STREAM"

    const/16 v8, 0xd

    move-object/from16 v16, v4

    const-string v4, "COMPLETE_STREAM"

    invoke-direct {v2, v6, v8, v4}, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;->COMPLETE_STREAM:Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    .line 29
    new-instance v4, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    const-string v6, "COMPLETE_REGISTRATION"

    const/16 v8, 0xe

    move-object/from16 v17, v2

    const-string v2, "COMPLETE_REGISTRATION"

    invoke-direct {v4, v6, v8, v2}, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;->COMPLETE_REGISTRATION:Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    .line 30
    new-instance v2, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    const-string v6, "COMPLETE_TUTORIAL"

    const/16 v8, 0xf

    move-object/from16 v18, v4

    const-string v4, "COMPLETE_TUTORIAL"

    invoke-direct {v2, v6, v8, v4}, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;->COMPLETE_TUTORIAL:Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    .line 31
    new-instance v4, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    const-string v6, "ACHIEVE_LEVEL"

    const/16 v8, 0x10

    move-object/from16 v19, v2

    const-string v2, "ACHIEVE_LEVEL"

    invoke-direct {v4, v6, v8, v2}, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;->ACHIEVE_LEVEL:Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    .line 32
    new-instance v2, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    const-string v6, "UNLOCK_ACHIEVEMENT"

    const/16 v8, 0x11

    move-object/from16 v20, v4

    const-string v4, "UNLOCK_ACHIEVEMENT"

    invoke-direct {v2, v6, v8, v4}, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;->UNLOCK_ACHIEVEMENT:Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    .line 35
    new-instance v4, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    const-string v6, "INVITE"

    const/16 v8, 0x12

    move-object/from16 v21, v2

    const-string v2, "INVITE"

    invoke-direct {v4, v6, v8, v2}, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;->INVITE:Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    .line 36
    new-instance v2, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    const-string v6, "LOGIN"

    const/16 v8, 0x13

    move-object/from16 v22, v4

    const-string v4, "LOGIN"

    invoke-direct {v2, v6, v8, v4}, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;->LOGIN:Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    .line 37
    new-instance v4, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    const-string v6, "RESERVE"

    const/16 v8, 0x14

    move-object/from16 v23, v2

    const-string v2, "RESERVE"

    invoke-direct {v4, v6, v8, v2}, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;->RESERVE:Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    .line 38
    new-instance v2, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    const-string v6, "SUBSCRIBE"

    const/16 v8, 0x15

    move-object/from16 v24, v4

    const-string v4, "SUBSCRIBE"

    invoke-direct {v2, v6, v8, v4}, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;->SUBSCRIBE:Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    .line 39
    new-instance v4, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    const-string v6, "START_TRIAL"

    const/16 v8, 0x16

    move-object/from16 v25, v2

    const-string v2, "START_TRIAL"

    invoke-direct {v4, v6, v8, v2}, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;->START_TRIAL:Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    .line 40
    new-instance v2, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    const-string v6, "CLICK_AD"

    const/16 v8, 0x17

    move-object/from16 v26, v4

    const-string v4, "CLICK_AD"

    invoke-direct {v2, v6, v8, v4}, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;->CLICK_AD:Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    .line 41
    new-instance v4, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    const-string v6, "VIEW_AD"

    const/16 v8, 0x18

    move-object/from16 v27, v2

    const-string v2, "VIEW_AD"

    invoke-direct {v4, v6, v8, v2}, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;->VIEW_AD:Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    const/16 v2, 0x19

    new-array v2, v2, [Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    const/4 v6, 0x0

    aput-object v0, v2, v6

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v22, v2, v0

    const/16 v0, 0x13

    aput-object v23, v2, v0

    const/16 v0, 0x14

    aput-object v24, v2, v0

    const/16 v0, 0x15

    aput-object v25, v2, v0

    const/16 v0, 0x16

    aput-object v26, v2, v0

    const/16 v0, 0x17

    aput-object v27, v2, v0

    const/16 v0, 0x18

    aput-object v4, v2, v0

    .line 9
    sput-object v2, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;->$VALUES:[Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

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

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput-object p3, p0, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/branch/referral/util/BRANCH_STANDARD_EVENT;
    .locals 1

    .line 9
    const-class v0, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    return-object p0
.end method

.method public static values()[Lio/branch/referral/util/BRANCH_STANDARD_EVENT;
    .locals 1

    .line 9
    sget-object v0, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;->$VALUES:[Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    invoke-virtual {v0}, [Lio/branch/referral/util/BRANCH_STANDARD_EVENT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;->name:Ljava/lang/String;

    return-object v0
.end method
