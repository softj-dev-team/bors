.class Lzendesk/support/request/ActionUpdateNameEmail;
.super Ljava/lang/Object;
.source "ActionUpdateNameEmail.java"

# interfaces
.implements Lzendesk/support/request/AsyncMiddleware$AsyncAction;


# instance fields
.field private final authenticationProvider:Lzendesk/core/AuthenticationProvider;

.field private final email:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final zendesk:Lzendesk/core/Zendesk;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lzendesk/core/AuthenticationProvider;Lzendesk/core/Zendesk;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lzendesk/support/request/ActionUpdateNameEmail;->name:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lzendesk/support/request/ActionUpdateNameEmail;->email:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lzendesk/support/request/ActionUpdateNameEmail;->authenticationProvider:Lzendesk/core/AuthenticationProvider;

    .line 32
    iput-object p4, p0, Lzendesk/support/request/ActionUpdateNameEmail;->zendesk:Lzendesk/core/Zendesk;

    return-void
.end method


# virtual methods
.method public actionQueued(Lzendesk/support/suas/Dispatcher;Lzendesk/support/suas/GetState;)V
    .locals 0

    return-void
.end method

.method public execute(Lzendesk/support/suas/Dispatcher;Lzendesk/support/suas/GetState;Lzendesk/support/request/AsyncMiddleware$Callback;)V
    .locals 2

    .line 42
    iget-object p1, p0, Lzendesk/support/request/ActionUpdateNameEmail;->authenticationProvider:Lzendesk/core/AuthenticationProvider;

    invoke-interface {p1}, Lzendesk/core/AuthenticationProvider;->getIdentity()Lzendesk/core/Identity;

    move-result-object p1

    .line 44
    instance-of p2, p1, Lzendesk/core/AnonymousIdentity;

    if-eqz p2, :cond_2

    .line 45
    move-object p2, p1

    check-cast p2, Lzendesk/core/AnonymousIdentity;

    .line 47
    iget-object v0, p0, Lzendesk/support/request/ActionUpdateNameEmail;->email:Ljava/lang/String;

    invoke-static {v0}, Lcom/zendesk/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzendesk/support/request/ActionUpdateNameEmail;->email:Ljava/lang/String;

    invoke-virtual {p2}, Lzendesk/core/AnonymousIdentity;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lzendesk/core/AnonymousIdentity$Builder;

    invoke-direct {v0}, Lzendesk/core/AnonymousIdentity$Builder;-><init>()V

    iget-object v1, p0, Lzendesk/support/request/ActionUpdateNameEmail;->email:Ljava/lang/String;

    .line 49
    invoke-virtual {v0, v1}, Lzendesk/core/AnonymousIdentity$Builder;->withEmailIdentifier(Ljava/lang/String;)Lzendesk/core/AnonymousIdentity$Builder;

    move-result-object v0

    .line 50
    invoke-virtual {p2}, Lzendesk/core/AnonymousIdentity;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lzendesk/core/AnonymousIdentity$Builder;->withNameIdentifier(Ljava/lang/String;)Lzendesk/core/AnonymousIdentity$Builder;

    move-result-object p2

    .line 51
    invoke-virtual {p2}, Lzendesk/core/AnonymousIdentity$Builder;->build()Lzendesk/core/Identity;

    move-result-object p2

    check-cast p2, Lzendesk/core/AnonymousIdentity;

    .line 54
    :cond_0
    iget-object v0, p0, Lzendesk/support/request/ActionUpdateNameEmail;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/zendesk/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzendesk/support/request/ActionUpdateNameEmail;->name:Ljava/lang/String;

    invoke-virtual {p2}, Lzendesk/core/AnonymousIdentity;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    new-instance v0, Lzendesk/core/AnonymousIdentity$Builder;

    invoke-direct {v0}, Lzendesk/core/AnonymousIdentity$Builder;-><init>()V

    .line 56
    invoke-virtual {p2}, Lzendesk/core/AnonymousIdentity;->getEmail()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lzendesk/core/AnonymousIdentity$Builder;->withEmailIdentifier(Ljava/lang/String;)Lzendesk/core/AnonymousIdentity$Builder;

    move-result-object p2

    iget-object v0, p0, Lzendesk/support/request/ActionUpdateNameEmail;->name:Ljava/lang/String;

    .line 57
    invoke-virtual {p2, v0}, Lzendesk/core/AnonymousIdentity$Builder;->withNameIdentifier(Ljava/lang/String;)Lzendesk/core/AnonymousIdentity$Builder;

    move-result-object p2

    .line 58
    invoke-virtual {p2}, Lzendesk/core/AnonymousIdentity$Builder;->build()Lzendesk/core/Identity;

    move-result-object p2

    check-cast p2, Lzendesk/core/AnonymousIdentity;

    :cond_1
    if-eq p2, p1, :cond_2

    .line 62
    iget-object p1, p0, Lzendesk/support/request/ActionUpdateNameEmail;->zendesk:Lzendesk/core/Zendesk;

    invoke-virtual {p1, p2}, Lzendesk/core/Zendesk;->setIdentity(Lzendesk/core/Identity;)V

    .line 66
    :cond_2
    invoke-interface {p3}, Lzendesk/support/request/AsyncMiddleware$Callback;->done()V

    return-void
.end method
