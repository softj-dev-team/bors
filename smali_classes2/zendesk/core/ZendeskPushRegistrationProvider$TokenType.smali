.class final enum Lzendesk/core/ZendeskPushRegistrationProvider$TokenType;
.super Ljava/lang/Enum;
.source "ZendeskPushRegistrationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/core/ZendeskPushRegistrationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "TokenType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lzendesk/core/ZendeskPushRegistrationProvider$TokenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lzendesk/core/ZendeskPushRegistrationProvider$TokenType;

.field public static final enum Identifier:Lzendesk/core/ZendeskPushRegistrationProvider$TokenType;

.field public static final enum UrbanAirshipChannelId:Lzendesk/core/ZendeskPushRegistrationProvider$TokenType;


# instance fields
.field final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 227
    new-instance v0, Lzendesk/core/ZendeskPushRegistrationProvider$TokenType;

    const-string v1, "Identifier"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lzendesk/core/ZendeskPushRegistrationProvider$TokenType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lzendesk/core/ZendeskPushRegistrationProvider$TokenType;->Identifier:Lzendesk/core/ZendeskPushRegistrationProvider$TokenType;

    .line 228
    new-instance v1, Lzendesk/core/ZendeskPushRegistrationProvider$TokenType;

    const-string v3, "UrbanAirshipChannelId"

    const/4 v4, 0x1

    const-string v5, "urban_airship_channel_id"

    invoke-direct {v1, v3, v4, v5}, Lzendesk/core/ZendeskPushRegistrationProvider$TokenType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lzendesk/core/ZendeskPushRegistrationProvider$TokenType;->UrbanAirshipChannelId:Lzendesk/core/ZendeskPushRegistrationProvider$TokenType;

    const/4 v3, 0x2

    new-array v3, v3, [Lzendesk/core/ZendeskPushRegistrationProvider$TokenType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 226
    sput-object v3, Lzendesk/core/ZendeskPushRegistrationProvider$TokenType;->$VALUES:[Lzendesk/core/ZendeskPushRegistrationProvider$TokenType;

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

    .line 232
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 233
    iput-object p3, p0, Lzendesk/core/ZendeskPushRegistrationProvider$TokenType;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lzendesk/core/ZendeskPushRegistrationProvider$TokenType;
    .locals 1

    .line 226
    const-class v0, Lzendesk/core/ZendeskPushRegistrationProvider$TokenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lzendesk/core/ZendeskPushRegistrationProvider$TokenType;

    return-object p0
.end method

.method public static values()[Lzendesk/core/ZendeskPushRegistrationProvider$TokenType;
    .locals 1

    .line 226
    sget-object v0, Lzendesk/core/ZendeskPushRegistrationProvider$TokenType;->$VALUES:[Lzendesk/core/ZendeskPushRegistrationProvider$TokenType;

    invoke-virtual {v0}, [Lzendesk/core/ZendeskPushRegistrationProvider$TokenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzendesk/core/ZendeskPushRegistrationProvider$TokenType;

    return-object v0
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .locals 1

    .line 237
    iget-object v0, p0, Lzendesk/core/ZendeskPushRegistrationProvider$TokenType;->name:Ljava/lang/String;

    return-object v0
.end method
