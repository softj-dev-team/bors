.class public final enum Lcom/sdkbox/reflect/AdActionType;
.super Ljava/lang/Enum;
.source "AdActionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sdkbox/reflect/AdActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sdkbox/reflect/AdActionType;

.field public static final enum AD_CANCELED:Lcom/sdkbox/reflect/AdActionType;

.field public static final enum AD_ENDED:Lcom/sdkbox/reflect/AdActionType;

.field public static final enum AD_STARTED:Lcom/sdkbox/reflect/AdActionType;

.field public static final enum CLICKED:Lcom/sdkbox/reflect/AdActionType;

.field public static final enum LOADED:Lcom/sdkbox/reflect/AdActionType;

.field public static final enum LOAD_FAILED:Lcom/sdkbox/reflect/AdActionType;

.field public static final enum REWARD_CANCELED:Lcom/sdkbox/reflect/AdActionType;

.field public static final enum REWARD_ENDED:Lcom/sdkbox/reflect/AdActionType;

.field public static final enum REWARD_STARTED:Lcom/sdkbox/reflect/AdActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 5
    new-instance v0, Lcom/sdkbox/reflect/AdActionType;

    const-string v1, "LOADED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sdkbox/reflect/AdActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdkbox/reflect/AdActionType;->LOADED:Lcom/sdkbox/reflect/AdActionType;

    .line 6
    new-instance v1, Lcom/sdkbox/reflect/AdActionType;

    const-string v3, "LOAD_FAILED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sdkbox/reflect/AdActionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sdkbox/reflect/AdActionType;->LOAD_FAILED:Lcom/sdkbox/reflect/AdActionType;

    .line 7
    new-instance v3, Lcom/sdkbox/reflect/AdActionType;

    const-string v5, "CLICKED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sdkbox/reflect/AdActionType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sdkbox/reflect/AdActionType;->CLICKED:Lcom/sdkbox/reflect/AdActionType;

    .line 8
    new-instance v5, Lcom/sdkbox/reflect/AdActionType;

    const-string v7, "REWARD_STARTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sdkbox/reflect/AdActionType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sdkbox/reflect/AdActionType;->REWARD_STARTED:Lcom/sdkbox/reflect/AdActionType;

    .line 9
    new-instance v7, Lcom/sdkbox/reflect/AdActionType;

    const-string v9, "REWARD_ENDED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sdkbox/reflect/AdActionType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sdkbox/reflect/AdActionType;->REWARD_ENDED:Lcom/sdkbox/reflect/AdActionType;

    .line 10
    new-instance v9, Lcom/sdkbox/reflect/AdActionType;

    const-string v11, "REWARD_CANCELED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sdkbox/reflect/AdActionType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sdkbox/reflect/AdActionType;->REWARD_CANCELED:Lcom/sdkbox/reflect/AdActionType;

    .line 11
    new-instance v11, Lcom/sdkbox/reflect/AdActionType;

    const-string v13, "AD_STARTED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sdkbox/reflect/AdActionType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sdkbox/reflect/AdActionType;->AD_STARTED:Lcom/sdkbox/reflect/AdActionType;

    .line 12
    new-instance v13, Lcom/sdkbox/reflect/AdActionType;

    const-string v15, "AD_CANCELED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/sdkbox/reflect/AdActionType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/sdkbox/reflect/AdActionType;->AD_CANCELED:Lcom/sdkbox/reflect/AdActionType;

    .line 13
    new-instance v15, Lcom/sdkbox/reflect/AdActionType;

    const-string v14, "AD_ENDED"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/sdkbox/reflect/AdActionType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/sdkbox/reflect/AdActionType;->AD_ENDED:Lcom/sdkbox/reflect/AdActionType;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/sdkbox/reflect/AdActionType;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    .line 4
    sput-object v14, Lcom/sdkbox/reflect/AdActionType;->$VALUES:[Lcom/sdkbox/reflect/AdActionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sdkbox/reflect/AdActionType;
    .locals 1

    .line 4
    const-class v0, Lcom/sdkbox/reflect/AdActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sdkbox/reflect/AdActionType;

    return-object p0
.end method

.method public static values()[Lcom/sdkbox/reflect/AdActionType;
    .locals 1

    .line 4
    sget-object v0, Lcom/sdkbox/reflect/AdActionType;->$VALUES:[Lcom/sdkbox/reflect/AdActionType;

    invoke-virtual {v0}, [Lcom/sdkbox/reflect/AdActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sdkbox/reflect/AdActionType;

    return-object v0
.end method
