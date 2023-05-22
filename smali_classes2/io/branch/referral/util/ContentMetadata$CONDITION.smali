.class public final enum Lio/branch/referral/util/ContentMetadata$CONDITION;
.super Ljava/lang/Enum;
.source "ContentMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/referral/util/ContentMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CONDITION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/branch/referral/util/ContentMetadata$CONDITION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/branch/referral/util/ContentMetadata$CONDITION;

.field public static final enum EXCELLENT:Lio/branch/referral/util/ContentMetadata$CONDITION;

.field public static final enum FAIR:Lio/branch/referral/util/ContentMetadata$CONDITION;

.field public static final enum GOOD:Lio/branch/referral/util/ContentMetadata$CONDITION;

.field public static final enum NEW:Lio/branch/referral/util/ContentMetadata$CONDITION;

.field public static final enum OTHER:Lio/branch/referral/util/ContentMetadata$CONDITION;

.field public static final enum POOR:Lio/branch/referral/util/ContentMetadata$CONDITION;

.field public static final enum REFURBISHED:Lio/branch/referral/util/ContentMetadata$CONDITION;

.field public static final enum USED:Lio/branch/referral/util/ContentMetadata$CONDITION;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 117
    new-instance v0, Lio/branch/referral/util/ContentMetadata$CONDITION;

    const-string v1, "OTHER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/branch/referral/util/ContentMetadata$CONDITION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/branch/referral/util/ContentMetadata$CONDITION;->OTHER:Lio/branch/referral/util/ContentMetadata$CONDITION;

    new-instance v1, Lio/branch/referral/util/ContentMetadata$CONDITION;

    const-string v3, "NEW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/branch/referral/util/ContentMetadata$CONDITION;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/branch/referral/util/ContentMetadata$CONDITION;->NEW:Lio/branch/referral/util/ContentMetadata$CONDITION;

    new-instance v3, Lio/branch/referral/util/ContentMetadata$CONDITION;

    const-string v5, "GOOD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/branch/referral/util/ContentMetadata$CONDITION;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/branch/referral/util/ContentMetadata$CONDITION;->GOOD:Lio/branch/referral/util/ContentMetadata$CONDITION;

    new-instance v5, Lio/branch/referral/util/ContentMetadata$CONDITION;

    const-string v7, "FAIR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/branch/referral/util/ContentMetadata$CONDITION;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/branch/referral/util/ContentMetadata$CONDITION;->FAIR:Lio/branch/referral/util/ContentMetadata$CONDITION;

    new-instance v7, Lio/branch/referral/util/ContentMetadata$CONDITION;

    const-string v9, "POOR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lio/branch/referral/util/ContentMetadata$CONDITION;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/branch/referral/util/ContentMetadata$CONDITION;->POOR:Lio/branch/referral/util/ContentMetadata$CONDITION;

    new-instance v9, Lio/branch/referral/util/ContentMetadata$CONDITION;

    const-string v11, "USED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lio/branch/referral/util/ContentMetadata$CONDITION;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lio/branch/referral/util/ContentMetadata$CONDITION;->USED:Lio/branch/referral/util/ContentMetadata$CONDITION;

    new-instance v11, Lio/branch/referral/util/ContentMetadata$CONDITION;

    const-string v13, "REFURBISHED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lio/branch/referral/util/ContentMetadata$CONDITION;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lio/branch/referral/util/ContentMetadata$CONDITION;->REFURBISHED:Lio/branch/referral/util/ContentMetadata$CONDITION;

    new-instance v13, Lio/branch/referral/util/ContentMetadata$CONDITION;

    const-string v15, "EXCELLENT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lio/branch/referral/util/ContentMetadata$CONDITION;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lio/branch/referral/util/ContentMetadata$CONDITION;->EXCELLENT:Lio/branch/referral/util/ContentMetadata$CONDITION;

    const/16 v15, 0x8

    new-array v15, v15, [Lio/branch/referral/util/ContentMetadata$CONDITION;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 116
    sput-object v15, Lio/branch/referral/util/ContentMetadata$CONDITION;->$VALUES:[Lio/branch/referral/util/ContentMetadata$CONDITION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getValue(Ljava/lang/String;)Lio/branch/referral/util/ContentMetadata$CONDITION;
    .locals 5

    .line 121
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    invoke-static {}, Lio/branch/referral/util/ContentMetadata$CONDITION;->values()[Lio/branch/referral/util/ContentMetadata$CONDITION;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 123
    invoke-virtual {v3}, Lio/branch/referral/util/ContentMetadata$CONDITION;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    return-object v3
.end method

.method public static valueOf(Ljava/lang/String;)Lio/branch/referral/util/ContentMetadata$CONDITION;
    .locals 1

    .line 116
    const-class v0, Lio/branch/referral/util/ContentMetadata$CONDITION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/branch/referral/util/ContentMetadata$CONDITION;

    return-object p0
.end method

.method public static values()[Lio/branch/referral/util/ContentMetadata$CONDITION;
    .locals 1

    .line 116
    sget-object v0, Lio/branch/referral/util/ContentMetadata$CONDITION;->$VALUES:[Lio/branch/referral/util/ContentMetadata$CONDITION;

    invoke-virtual {v0}, [Lio/branch/referral/util/ContentMetadata$CONDITION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/branch/referral/util/ContentMetadata$CONDITION;

    return-object v0
.end method
