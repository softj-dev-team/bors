.class public final enum Lcom/sdkbox/services/HttpRequestReadyState;
.super Ljava/lang/Enum;
.source "HttpRequestReadyState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sdkbox/services/HttpRequestReadyState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sdkbox/services/HttpRequestReadyState;

.field public static final enum DONE:Lcom/sdkbox/services/HttpRequestReadyState;

.field public static final enum HEADERS_RECEIVED:Lcom/sdkbox/services/HttpRequestReadyState;

.field public static final enum LOADING:Lcom/sdkbox/services/HttpRequestReadyState;

.field public static final enum OPENED:Lcom/sdkbox/services/HttpRequestReadyState;

.field public static final enum UNSENT:Lcom/sdkbox/services/HttpRequestReadyState;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 5
    new-instance v0, Lcom/sdkbox/services/HttpRequestReadyState;

    const-string v1, "UNSENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sdkbox/services/HttpRequestReadyState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sdkbox/services/HttpRequestReadyState;->UNSENT:Lcom/sdkbox/services/HttpRequestReadyState;

    .line 6
    new-instance v1, Lcom/sdkbox/services/HttpRequestReadyState;

    const-string v3, "OPENED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/sdkbox/services/HttpRequestReadyState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sdkbox/services/HttpRequestReadyState;->OPENED:Lcom/sdkbox/services/HttpRequestReadyState;

    .line 7
    new-instance v3, Lcom/sdkbox/services/HttpRequestReadyState;

    const-string v5, "HEADERS_RECEIVED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/sdkbox/services/HttpRequestReadyState;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/sdkbox/services/HttpRequestReadyState;->HEADERS_RECEIVED:Lcom/sdkbox/services/HttpRequestReadyState;

    .line 8
    new-instance v5, Lcom/sdkbox/services/HttpRequestReadyState;

    const-string v7, "LOADING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/sdkbox/services/HttpRequestReadyState;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/sdkbox/services/HttpRequestReadyState;->LOADING:Lcom/sdkbox/services/HttpRequestReadyState;

    .line 9
    new-instance v7, Lcom/sdkbox/services/HttpRequestReadyState;

    const-string v9, "DONE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/sdkbox/services/HttpRequestReadyState;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/sdkbox/services/HttpRequestReadyState;->DONE:Lcom/sdkbox/services/HttpRequestReadyState;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/sdkbox/services/HttpRequestReadyState;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 4
    sput-object v9, Lcom/sdkbox/services/HttpRequestReadyState;->$VALUES:[Lcom/sdkbox/services/HttpRequestReadyState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lcom/sdkbox/services/HttpRequestReadyState;->value:I

    .line 15
    iput p3, p0, Lcom/sdkbox/services/HttpRequestReadyState;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sdkbox/services/HttpRequestReadyState;
    .locals 1

    .line 4
    const-class v0, Lcom/sdkbox/services/HttpRequestReadyState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sdkbox/services/HttpRequestReadyState;

    return-object p0
.end method

.method public static values()[Lcom/sdkbox/services/HttpRequestReadyState;
    .locals 1

    .line 4
    sget-object v0, Lcom/sdkbox/services/HttpRequestReadyState;->$VALUES:[Lcom/sdkbox/services/HttpRequestReadyState;

    invoke-virtual {v0}, [Lcom/sdkbox/services/HttpRequestReadyState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sdkbox/services/HttpRequestReadyState;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/sdkbox/services/HttpRequestReadyState;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 24
    iget v0, p0, Lcom/sdkbox/services/HttpRequestReadyState;->value:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
