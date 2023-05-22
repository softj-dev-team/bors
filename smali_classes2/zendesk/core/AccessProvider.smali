.class interface abstract Lzendesk/core/AccessProvider;
.super Ljava/lang/Object;
.source "AccessProvider.java"


# static fields
.field public static final NO_JWT_ERROR_MESSAGE:Ljava/lang/String; = "The jwt user identifier is null or empty. We cannot proceed to get an access token"


# virtual methods
.method public abstract getAuthTokenViaAnonymous(Lzendesk/core/AnonymousIdentity;)Lretrofit2/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/core/AnonymousIdentity;",
            ")",
            "Lretrofit2/Response<",
            "Lzendesk/core/AuthenticationResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAuthTokenViaJwt(Lzendesk/core/JwtIdentity;)Lretrofit2/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/core/JwtIdentity;",
            ")",
            "Lretrofit2/Response<",
            "Lzendesk/core/AuthenticationResponse;",
            ">;"
        }
    .end annotation
.end method
