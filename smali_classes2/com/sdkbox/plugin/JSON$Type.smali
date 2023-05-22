.class public final enum Lcom/sdkbox/plugin/JSON$Type;
.super Ljava/lang/Enum;
.source "JSON.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sdkbox/plugin/JSON;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sdkbox/plugin/JSON$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sdkbox/plugin/JSON$Type;

.field public static final enum T_ARRAY:Lcom/sdkbox/plugin/JSON$Type;

.field public static final enum T_BOOLEAN:Lcom/sdkbox/plugin/JSON$Type;

.field public static final enum T_NULL:Lcom/sdkbox/plugin/JSON$Type;

.field public static final enum T_NUMBER:Lcom/sdkbox/plugin/JSON$Type;

.field public static final enum T_OBJECT:Lcom/sdkbox/plugin/JSON$Type;

.field public static final enum T_STRING:Lcom/sdkbox/plugin/JSON$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 17
    new-instance v0, Lcom/sdkbox/plugin/JSON$Type;

    const-string v1, "T_NULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sdkbox/plugin/JSON$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdkbox/plugin/JSON$Type;->T_NULL:Lcom/sdkbox/plugin/JSON$Type;

    .line 18
    new-instance v1, Lcom/sdkbox/plugin/JSON$Type;

    const-string v3, "T_OBJECT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sdkbox/plugin/JSON$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sdkbox/plugin/JSON$Type;->T_OBJECT:Lcom/sdkbox/plugin/JSON$Type;

    .line 19
    new-instance v3, Lcom/sdkbox/plugin/JSON$Type;

    const-string v5, "T_ARRAY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sdkbox/plugin/JSON$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sdkbox/plugin/JSON$Type;->T_ARRAY:Lcom/sdkbox/plugin/JSON$Type;

    .line 20
    new-instance v5, Lcom/sdkbox/plugin/JSON$Type;

    const-string v7, "T_BOOLEAN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sdkbox/plugin/JSON$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sdkbox/plugin/JSON$Type;->T_BOOLEAN:Lcom/sdkbox/plugin/JSON$Type;

    .line 21
    new-instance v7, Lcom/sdkbox/plugin/JSON$Type;

    const-string v9, "T_NUMBER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sdkbox/plugin/JSON$Type;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sdkbox/plugin/JSON$Type;->T_NUMBER:Lcom/sdkbox/plugin/JSON$Type;

    .line 22
    new-instance v9, Lcom/sdkbox/plugin/JSON$Type;

    const-string v11, "T_STRING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sdkbox/plugin/JSON$Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sdkbox/plugin/JSON$Type;->T_STRING:Lcom/sdkbox/plugin/JSON$Type;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/sdkbox/plugin/JSON$Type;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 16
    sput-object v11, Lcom/sdkbox/plugin/JSON$Type;->$VALUES:[Lcom/sdkbox/plugin/JSON$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sdkbox/plugin/JSON$Type;
    .locals 1

    .line 16
    const-class v0, Lcom/sdkbox/plugin/JSON$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sdkbox/plugin/JSON$Type;

    return-object p0
.end method

.method public static values()[Lcom/sdkbox/plugin/JSON$Type;
    .locals 1

    .line 16
    sget-object v0, Lcom/sdkbox/plugin/JSON$Type;->$VALUES:[Lcom/sdkbox/plugin/JSON$Type;

    invoke-virtual {v0}, [Lcom/sdkbox/plugin/JSON$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sdkbox/plugin/JSON$Type;

    return-object v0
.end method
