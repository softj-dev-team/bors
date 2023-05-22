.class public final enum Lzendesk/support/guide/UiUtils$ScreenSize;
.super Ljava/lang/Enum;
.source "UiUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/guide/UiUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScreenSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lzendesk/support/guide/UiUtils$ScreenSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lzendesk/support/guide/UiUtils$ScreenSize;

.field public static final enum LARGE:Lzendesk/support/guide/UiUtils$ScreenSize;

.field public static final enum NORMAL:Lzendesk/support/guide/UiUtils$ScreenSize;

.field public static final enum SMALL:Lzendesk/support/guide/UiUtils$ScreenSize;

.field public static final enum UNDEFINED:Lzendesk/support/guide/UiUtils$ScreenSize;

.field public static final enum UNKNOWN:Lzendesk/support/guide/UiUtils$ScreenSize;

.field public static final enum X_LARGE:Lzendesk/support/guide/UiUtils$ScreenSize;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 33
    new-instance v0, Lzendesk/support/guide/UiUtils$ScreenSize;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzendesk/support/guide/UiUtils$ScreenSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzendesk/support/guide/UiUtils$ScreenSize;->UNKNOWN:Lzendesk/support/guide/UiUtils$ScreenSize;

    new-instance v1, Lzendesk/support/guide/UiUtils$ScreenSize;

    const-string v3, "UNDEFINED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lzendesk/support/guide/UiUtils$ScreenSize;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lzendesk/support/guide/UiUtils$ScreenSize;->UNDEFINED:Lzendesk/support/guide/UiUtils$ScreenSize;

    new-instance v3, Lzendesk/support/guide/UiUtils$ScreenSize;

    const-string v5, "X_LARGE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lzendesk/support/guide/UiUtils$ScreenSize;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lzendesk/support/guide/UiUtils$ScreenSize;->X_LARGE:Lzendesk/support/guide/UiUtils$ScreenSize;

    new-instance v5, Lzendesk/support/guide/UiUtils$ScreenSize;

    const-string v7, "LARGE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lzendesk/support/guide/UiUtils$ScreenSize;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lzendesk/support/guide/UiUtils$ScreenSize;->LARGE:Lzendesk/support/guide/UiUtils$ScreenSize;

    new-instance v7, Lzendesk/support/guide/UiUtils$ScreenSize;

    const-string v9, "NORMAL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lzendesk/support/guide/UiUtils$ScreenSize;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lzendesk/support/guide/UiUtils$ScreenSize;->NORMAL:Lzendesk/support/guide/UiUtils$ScreenSize;

    new-instance v9, Lzendesk/support/guide/UiUtils$ScreenSize;

    const-string v11, "SMALL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lzendesk/support/guide/UiUtils$ScreenSize;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lzendesk/support/guide/UiUtils$ScreenSize;->SMALL:Lzendesk/support/guide/UiUtils$ScreenSize;

    const/4 v11, 0x6

    new-array v11, v11, [Lzendesk/support/guide/UiUtils$ScreenSize;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 32
    sput-object v11, Lzendesk/support/guide/UiUtils$ScreenSize;->$VALUES:[Lzendesk/support/guide/UiUtils$ScreenSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lzendesk/support/guide/UiUtils$ScreenSize;
    .locals 1

    .line 32
    const-class v0, Lzendesk/support/guide/UiUtils$ScreenSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lzendesk/support/guide/UiUtils$ScreenSize;

    return-object p0
.end method

.method public static values()[Lzendesk/support/guide/UiUtils$ScreenSize;
    .locals 1

    .line 32
    sget-object v0, Lzendesk/support/guide/UiUtils$ScreenSize;->$VALUES:[Lzendesk/support/guide/UiUtils$ScreenSize;

    invoke-virtual {v0}, [Lzendesk/support/guide/UiUtils$ScreenSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzendesk/support/guide/UiUtils$ScreenSize;

    return-object v0
.end method
