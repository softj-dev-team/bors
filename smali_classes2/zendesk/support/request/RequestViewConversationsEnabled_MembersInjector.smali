.class public final Lzendesk/support/request/RequestViewConversationsEnabled_MembersInjector;
.super Ljava/lang/Object;
.source "RequestViewConversationsEnabled_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lzendesk/support/request/RequestViewConversationsEnabled;",
        ">;"
    }
.end annotation


# instance fields
.field private final afProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/request/ActionFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final cellFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/request/CellFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final picassoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/squareup/picasso/Picasso;",
            ">;"
        }
    .end annotation
.end field

.field private final storeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/suas/Store;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/suas/Store;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/request/ActionFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/request/CellFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/squareup/picasso/Picasso;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lzendesk/support/request/RequestViewConversationsEnabled_MembersInjector;->storeProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p2, p0, Lzendesk/support/request/RequestViewConversationsEnabled_MembersInjector;->afProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p3, p0, Lzendesk/support/request/RequestViewConversationsEnabled_MembersInjector;->cellFactoryProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p4, p0, Lzendesk/support/request/RequestViewConversationsEnabled_MembersInjector;->picassoProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/suas/Store;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/request/ActionFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/request/CellFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/squareup/picasso/Picasso;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lzendesk/support/request/RequestViewConversationsEnabled;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Lzendesk/support/request/RequestViewConversationsEnabled_MembersInjector;

    invoke-direct {v0, p0, p1, p2, p3}, Lzendesk/support/request/RequestViewConversationsEnabled_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectAf(Lzendesk/support/request/RequestViewConversationsEnabled;Ljava/lang/Object;)V
    .locals 0

    .line 57
    check-cast p1, Lzendesk/support/request/ActionFactory;

    iput-object p1, p0, Lzendesk/support/request/RequestViewConversationsEnabled;->af:Lzendesk/support/request/ActionFactory;

    return-void
.end method

.method public static injectCellFactory(Lzendesk/support/request/RequestViewConversationsEnabled;Ljava/lang/Object;)V
    .locals 0

    .line 63
    check-cast p1, Lzendesk/support/request/CellFactory;

    iput-object p1, p0, Lzendesk/support/request/RequestViewConversationsEnabled;->cellFactory:Lzendesk/support/request/CellFactory;

    return-void
.end method

.method public static injectPicasso(Lzendesk/support/request/RequestViewConversationsEnabled;Lcom/squareup/picasso/Picasso;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lzendesk/support/request/RequestViewConversationsEnabled;->picasso:Lcom/squareup/picasso/Picasso;

    return-void
.end method

.method public static injectStore(Lzendesk/support/request/RequestViewConversationsEnabled;Lzendesk/support/suas/Store;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lzendesk/support/request/RequestViewConversationsEnabled;->store:Lzendesk/support/suas/Store;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Lzendesk/support/request/RequestViewConversationsEnabled;

    invoke-virtual {p0, p1}, Lzendesk/support/request/RequestViewConversationsEnabled_MembersInjector;->injectMembers(Lzendesk/support/request/RequestViewConversationsEnabled;)V

    return-void
.end method

.method public injectMembers(Lzendesk/support/request/RequestViewConversationsEnabled;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lzendesk/support/request/RequestViewConversationsEnabled_MembersInjector;->storeProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/support/suas/Store;

    invoke-static {p1, v0}, Lzendesk/support/request/RequestViewConversationsEnabled_MembersInjector;->injectStore(Lzendesk/support/request/RequestViewConversationsEnabled;Lzendesk/support/suas/Store;)V

    .line 45
    iget-object v0, p0, Lzendesk/support/request/RequestViewConversationsEnabled_MembersInjector;->afProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/support/request/RequestViewConversationsEnabled_MembersInjector;->injectAf(Lzendesk/support/request/RequestViewConversationsEnabled;Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lzendesk/support/request/RequestViewConversationsEnabled_MembersInjector;->cellFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/support/request/RequestViewConversationsEnabled_MembersInjector;->injectCellFactory(Lzendesk/support/request/RequestViewConversationsEnabled;Ljava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lzendesk/support/request/RequestViewConversationsEnabled_MembersInjector;->picassoProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/Picasso;

    invoke-static {p1, v0}, Lzendesk/support/request/RequestViewConversationsEnabled_MembersInjector;->injectPicasso(Lzendesk/support/request/RequestViewConversationsEnabled;Lcom/squareup/picasso/Picasso;)V

    return-void
.end method
