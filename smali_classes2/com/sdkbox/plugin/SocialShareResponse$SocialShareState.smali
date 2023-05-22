.class public final enum Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;
.super Ljava/lang/Enum;
.source "SocialShareResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sdkbox/plugin/SocialShareResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SocialShareState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

.field public static final enum SocialShareStateBegin:Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

.field public static final enum SocialShareStateCancelled:Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

.field public static final enum SocialShareStateFail:Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

.field public static final enum SocialShareStateNone:Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

.field public static final enum SocialShareStateSelectCancelled:Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

.field public static final enum SocialShareStateSelectShow:Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

.field public static final enum SocialShareStateSelected:Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

.field public static final enum SocialShareStateSuccess:Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

.field public static final enum SocialShareStateUnkonw:Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 11
    new-instance v0, Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

    const-string v1, "SocialShareStateNone"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;->SocialShareStateNone:Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

    .line 12
    new-instance v1, Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

    const-string v3, "SocialShareStateUnkonw"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;->SocialShareStateUnkonw:Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

    .line 13
    new-instance v3, Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

    const-string v5, "SocialShareStateBegin"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;->SocialShareStateBegin:Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

    .line 14
    new-instance v5, Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

    const-string v7, "SocialShareStateSuccess"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;->SocialShareStateSuccess:Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

    .line 15
    new-instance v7, Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

    const-string v9, "SocialShareStateFail"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;->SocialShareStateFail:Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

    .line 16
    new-instance v9, Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

    const-string v11, "SocialShareStateCancelled"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;->SocialShareStateCancelled:Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

    .line 17
    new-instance v11, Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

    const-string v13, "SocialShareStateSelectShow"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;->SocialShareStateSelectShow:Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

    .line 18
    new-instance v13, Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

    const-string v15, "SocialShareStateSelected"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;->SocialShareStateSelected:Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

    .line 19
    new-instance v15, Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

    const-string v14, "SocialShareStateSelectCancelled"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;->SocialShareStateSelectCancelled:Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

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

    .line 10
    sput-object v14, Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;->$VALUES:[Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;
    .locals 1

    .line 10
    const-class v0, Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

    return-object p0
.end method

.method public static values()[Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;
    .locals 1

    .line 10
    sget-object v0, Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;->$VALUES:[Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

    invoke-virtual {v0}, [Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

    return-object v0
.end method
