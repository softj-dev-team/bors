.class Lzendesk/core/AuthenticationResponse;
.super Ljava/lang/Object;
.source "AuthenticationResponse.java"


# instance fields
.field private authentication:Lzendesk/core/AccessToken;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getAuthentication()Lzendesk/core/AccessToken;
    .locals 1

    .line 18
    iget-object v0, p0, Lzendesk/core/AuthenticationResponse;->authentication:Lzendesk/core/AccessToken;

    return-object v0
.end method
