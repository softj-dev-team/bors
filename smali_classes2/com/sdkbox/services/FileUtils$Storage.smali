.class final enum Lcom/sdkbox/services/FileUtils$Storage;
.super Ljava/lang/Enum;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sdkbox/services/FileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Storage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sdkbox/services/FileUtils$Storage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sdkbox/services/FileUtils$Storage;

.field public static final enum ASSETS:Lcom/sdkbox/services/FileUtils$Storage;

.field public static final enum EXTERNAL:Lcom/sdkbox/services/FileUtils$Storage;

.field public static final enum INTERNAL:Lcom/sdkbox/services/FileUtils$Storage;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 23
    new-instance v0, Lcom/sdkbox/services/FileUtils$Storage;

    const-string v1, "ASSETS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sdkbox/services/FileUtils$Storage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdkbox/services/FileUtils$Storage;->ASSETS:Lcom/sdkbox/services/FileUtils$Storage;

    .line 24
    new-instance v1, Lcom/sdkbox/services/FileUtils$Storage;

    const-string v3, "INTERNAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sdkbox/services/FileUtils$Storage;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sdkbox/services/FileUtils$Storage;->INTERNAL:Lcom/sdkbox/services/FileUtils$Storage;

    .line 25
    new-instance v3, Lcom/sdkbox/services/FileUtils$Storage;

    const-string v5, "EXTERNAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sdkbox/services/FileUtils$Storage;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sdkbox/services/FileUtils$Storage;->EXTERNAL:Lcom/sdkbox/services/FileUtils$Storage;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sdkbox/services/FileUtils$Storage;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 22
    sput-object v5, Lcom/sdkbox/services/FileUtils$Storage;->$VALUES:[Lcom/sdkbox/services/FileUtils$Storage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sdkbox/services/FileUtils$Storage;
    .locals 1

    .line 22
    const-class v0, Lcom/sdkbox/services/FileUtils$Storage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sdkbox/services/FileUtils$Storage;

    return-object p0
.end method

.method public static values()[Lcom/sdkbox/services/FileUtils$Storage;
    .locals 1

    .line 22
    sget-object v0, Lcom/sdkbox/services/FileUtils$Storage;->$VALUES:[Lcom/sdkbox/services/FileUtils$Storage;

    invoke-virtual {v0}, [Lcom/sdkbox/services/FileUtils$Storage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sdkbox/services/FileUtils$Storage;

    return-object v0
.end method
