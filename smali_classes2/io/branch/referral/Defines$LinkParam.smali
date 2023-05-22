.class public final enum Lio/branch/referral/Defines$LinkParam;
.super Ljava/lang/Enum;
.source "Defines.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/referral/Defines;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LinkParam"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/branch/referral/Defines$LinkParam;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/branch/referral/Defines$LinkParam;

.field public static final enum Alias:Lio/branch/referral/Defines$LinkParam;

.field public static final enum Campaign:Lio/branch/referral/Defines$LinkParam;

.field public static final enum Channel:Lio/branch/referral/Defines$LinkParam;

.field public static final enum Data:Lio/branch/referral/Defines$LinkParam;

.field public static final enum Duration:Lio/branch/referral/Defines$LinkParam;

.field public static final enum Feature:Lio/branch/referral/Defines$LinkParam;

.field public static final enum Stage:Lio/branch/referral/Defines$LinkParam;

.field public static final enum Tags:Lio/branch/referral/Defines$LinkParam;

.field public static final enum Type:Lio/branch/referral/Defines$LinkParam;

.field public static final enum URL:Lio/branch/referral/Defines$LinkParam;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 270
    new-instance v0, Lio/branch/referral/Defines$LinkParam;

    const-string v1, "Tags"

    const/4 v2, 0x0

    const-string v3, "tags"

    invoke-direct {v0, v1, v2, v3}, Lio/branch/referral/Defines$LinkParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/branch/referral/Defines$LinkParam;->Tags:Lio/branch/referral/Defines$LinkParam;

    .line 271
    new-instance v1, Lio/branch/referral/Defines$LinkParam;

    const-string v3, "Alias"

    const/4 v4, 0x1

    const-string v5, "alias"

    invoke-direct {v1, v3, v4, v5}, Lio/branch/referral/Defines$LinkParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lio/branch/referral/Defines$LinkParam;->Alias:Lio/branch/referral/Defines$LinkParam;

    .line 272
    new-instance v3, Lio/branch/referral/Defines$LinkParam;

    const-string v5, "Type"

    const/4 v6, 0x2

    const-string v7, "type"

    invoke-direct {v3, v5, v6, v7}, Lio/branch/referral/Defines$LinkParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lio/branch/referral/Defines$LinkParam;->Type:Lio/branch/referral/Defines$LinkParam;

    .line 273
    new-instance v5, Lio/branch/referral/Defines$LinkParam;

    const-string v7, "Duration"

    const/4 v8, 0x3

    const-string v9, "duration"

    invoke-direct {v5, v7, v8, v9}, Lio/branch/referral/Defines$LinkParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lio/branch/referral/Defines$LinkParam;->Duration:Lio/branch/referral/Defines$LinkParam;

    .line 274
    new-instance v7, Lio/branch/referral/Defines$LinkParam;

    const-string v9, "Channel"

    const/4 v10, 0x4

    const-string v11, "channel"

    invoke-direct {v7, v9, v10, v11}, Lio/branch/referral/Defines$LinkParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lio/branch/referral/Defines$LinkParam;->Channel:Lio/branch/referral/Defines$LinkParam;

    .line 275
    new-instance v9, Lio/branch/referral/Defines$LinkParam;

    const-string v11, "Feature"

    const/4 v12, 0x5

    const-string v13, "feature"

    invoke-direct {v9, v11, v12, v13}, Lio/branch/referral/Defines$LinkParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lio/branch/referral/Defines$LinkParam;->Feature:Lio/branch/referral/Defines$LinkParam;

    .line 276
    new-instance v11, Lio/branch/referral/Defines$LinkParam;

    const-string v13, "Stage"

    const/4 v14, 0x6

    const-string v15, "stage"

    invoke-direct {v11, v13, v14, v15}, Lio/branch/referral/Defines$LinkParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lio/branch/referral/Defines$LinkParam;->Stage:Lio/branch/referral/Defines$LinkParam;

    .line 277
    new-instance v13, Lio/branch/referral/Defines$LinkParam;

    const-string v15, "Campaign"

    const/4 v14, 0x7

    const-string v12, "campaign"

    invoke-direct {v13, v15, v14, v12}, Lio/branch/referral/Defines$LinkParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lio/branch/referral/Defines$LinkParam;->Campaign:Lio/branch/referral/Defines$LinkParam;

    .line 278
    new-instance v12, Lio/branch/referral/Defines$LinkParam;

    const-string v15, "Data"

    const/16 v14, 0x8

    const-string v10, "data"

    invoke-direct {v12, v15, v14, v10}, Lio/branch/referral/Defines$LinkParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lio/branch/referral/Defines$LinkParam;->Data:Lio/branch/referral/Defines$LinkParam;

    .line 279
    new-instance v10, Lio/branch/referral/Defines$LinkParam;

    const-string v15, "URL"

    const/16 v14, 0x9

    const-string v8, "url"

    invoke-direct {v10, v15, v14, v8}, Lio/branch/referral/Defines$LinkParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lio/branch/referral/Defines$LinkParam;->URL:Lio/branch/referral/Defines$LinkParam;

    const/16 v8, 0xa

    new-array v8, v8, [Lio/branch/referral/Defines$LinkParam;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    aput-object v3, v8, v6

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v12, v8, v0

    aput-object v10, v8, v14

    .line 269
    sput-object v8, Lio/branch/referral/Defines$LinkParam;->$VALUES:[Lio/branch/referral/Defines$LinkParam;

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

    .line 283
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 284
    iput-object p3, p0, Lio/branch/referral/Defines$LinkParam;->key:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/branch/referral/Defines$LinkParam;
    .locals 1

    .line 269
    const-class v0, Lio/branch/referral/Defines$LinkParam;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/branch/referral/Defines$LinkParam;

    return-object p0
.end method

.method public static values()[Lio/branch/referral/Defines$LinkParam;
    .locals 1

    .line 269
    sget-object v0, Lio/branch/referral/Defines$LinkParam;->$VALUES:[Lio/branch/referral/Defines$LinkParam;

    invoke-virtual {v0}, [Lio/branch/referral/Defines$LinkParam;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/branch/referral/Defines$LinkParam;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 288
    iget-object v0, p0, Lio/branch/referral/Defines$LinkParam;->key:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 293
    iget-object v0, p0, Lio/branch/referral/Defines$LinkParam;->key:Ljava/lang/String;

    return-object v0
.end method
