.class public final enum Lzendesk/messaging/ConnectionState;
.super Ljava/lang/Enum;
.source "ConnectionState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lzendesk/messaging/ConnectionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lzendesk/messaging/ConnectionState;

.field public static final enum CONNECTED:Lzendesk/messaging/ConnectionState;

.field public static final enum CONNECTING:Lzendesk/messaging/ConnectionState;

.field public static final enum DISCONNECTED:Lzendesk/messaging/ConnectionState;

.field public static final enum FAILED:Lzendesk/messaging/ConnectionState;

.field public static final enum RECONNECTING:Lzendesk/messaging/ConnectionState;

.field public static final enum UNREACHABLE:Lzendesk/messaging/ConnectionState;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 8
    new-instance v0, Lzendesk/messaging/ConnectionState;

    const-string v1, "CONNECTING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzendesk/messaging/ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzendesk/messaging/ConnectionState;->CONNECTING:Lzendesk/messaging/ConnectionState;

    .line 10
    new-instance v1, Lzendesk/messaging/ConnectionState;

    const-string v3, "CONNECTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lzendesk/messaging/ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lzendesk/messaging/ConnectionState;->CONNECTED:Lzendesk/messaging/ConnectionState;

    .line 12
    new-instance v3, Lzendesk/messaging/ConnectionState;

    const-string v5, "RECONNECTING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lzendesk/messaging/ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lzendesk/messaging/ConnectionState;->RECONNECTING:Lzendesk/messaging/ConnectionState;

    .line 14
    new-instance v5, Lzendesk/messaging/ConnectionState;

    const-string v7, "FAILED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lzendesk/messaging/ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lzendesk/messaging/ConnectionState;->FAILED:Lzendesk/messaging/ConnectionState;

    .line 16
    new-instance v7, Lzendesk/messaging/ConnectionState;

    const-string v9, "DISCONNECTED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lzendesk/messaging/ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lzendesk/messaging/ConnectionState;->DISCONNECTED:Lzendesk/messaging/ConnectionState;

    .line 18
    new-instance v9, Lzendesk/messaging/ConnectionState;

    const-string v11, "UNREACHABLE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lzendesk/messaging/ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lzendesk/messaging/ConnectionState;->UNREACHABLE:Lzendesk/messaging/ConnectionState;

    const/4 v11, 0x6

    new-array v11, v11, [Lzendesk/messaging/ConnectionState;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 6
    sput-object v11, Lzendesk/messaging/ConnectionState;->$VALUES:[Lzendesk/messaging/ConnectionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lzendesk/messaging/ConnectionState;
    .locals 1

    .line 6
    const-class v0, Lzendesk/messaging/ConnectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lzendesk/messaging/ConnectionState;

    return-object p0
.end method

.method public static values()[Lzendesk/messaging/ConnectionState;
    .locals 1

    .line 6
    sget-object v0, Lzendesk/messaging/ConnectionState;->$VALUES:[Lzendesk/messaging/ConnectionState;

    invoke-virtual {v0}, [Lzendesk/messaging/ConnectionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzendesk/messaging/ConnectionState;

    return-object v0
.end method
