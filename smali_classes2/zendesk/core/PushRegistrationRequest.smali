.class Lzendesk/core/PushRegistrationRequest;
.super Ljava/lang/Object;
.source "PushRegistrationRequest.java"


# instance fields
.field private final deviceType:Ljava/lang/String;

.field private identifier:Ljava/lang/String;

.field private locale:Ljava/lang/String;

.field private sdkGuid:Ljava/lang/String;

.field private tokenType:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "android"

    .line 10
    iput-object v0, p0, Lzendesk/core/PushRegistrationRequest;->deviceType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getIdentifier()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lzendesk/core/PushRegistrationRequest;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method getLocale()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lzendesk/core/PushRegistrationRequest;->locale:Ljava/lang/String;

    return-object v0
.end method

.method getSdkGuid()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lzendesk/core/PushRegistrationRequest;->sdkGuid:Ljava/lang/String;

    return-object v0
.end method

.method getTokenType()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lzendesk/core/PushRegistrationRequest;->tokenType:Ljava/lang/String;

    return-object v0
.end method

.method setIdentifier(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lzendesk/core/PushRegistrationRequest;->identifier:Ljava/lang/String;

    return-void
.end method

.method setLocale(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lzendesk/core/PushRegistrationRequest;->locale:Ljava/lang/String;

    return-void
.end method

.method setSdkGuid(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lzendesk/core/PushRegistrationRequest;->sdkGuid:Ljava/lang/String;

    return-void
.end method

.method setTokenType(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lzendesk/core/PushRegistrationRequest;->tokenType:Ljava/lang/String;

    return-void
.end method
