.class public final Lzendesk/support/requestlist/RequestListViewModule_ViewFactory;
.super Ljava/lang/Object;
.source "RequestListViewModule_ViewFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/support/requestlist/RequestListView;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lzendesk/support/requestlist/RequestListViewModule;

.field private final picassoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/squareup/picasso/Picasso;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lzendesk/support/requestlist/RequestListViewModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/requestlist/RequestListViewModule;",
            "Ljavax/inject/Provider<",
            "Lcom/squareup/picasso/Picasso;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lzendesk/support/requestlist/RequestListViewModule_ViewFactory;->module:Lzendesk/support/requestlist/RequestListViewModule;

    .line 27
    iput-object p2, p0, Lzendesk/support/requestlist/RequestListViewModule_ViewFactory;->picassoProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lzendesk/support/requestlist/RequestListViewModule;Ljavax/inject/Provider;)Lzendesk/support/requestlist/RequestListViewModule_ViewFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/requestlist/RequestListViewModule;",
            "Ljavax/inject/Provider<",
            "Lcom/squareup/picasso/Picasso;",
            ">;)",
            "Lzendesk/support/requestlist/RequestListViewModule_ViewFactory;"
        }
    .end annotation

    .line 37
    new-instance v0, Lzendesk/support/requestlist/RequestListViewModule_ViewFactory;

    invoke-direct {v0, p0, p1}, Lzendesk/support/requestlist/RequestListViewModule_ViewFactory;-><init>(Lzendesk/support/requestlist/RequestListViewModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static view(Lzendesk/support/requestlist/RequestListViewModule;Lcom/squareup/picasso/Picasso;)Lzendesk/support/requestlist/RequestListView;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lzendesk/support/requestlist/RequestListViewModule;->view(Lcom/squareup/picasso/Picasso;)Lzendesk/support/requestlist/RequestListView;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/support/requestlist/RequestListView;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lzendesk/support/requestlist/RequestListViewModule_ViewFactory;->get()Lzendesk/support/requestlist/RequestListView;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/support/requestlist/RequestListView;
    .locals 2

    .line 32
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListViewModule_ViewFactory;->module:Lzendesk/support/requestlist/RequestListViewModule;

    iget-object v1, p0, Lzendesk/support/requestlist/RequestListViewModule_ViewFactory;->picassoProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/picasso/Picasso;

    invoke-static {v0, v1}, Lzendesk/support/requestlist/RequestListViewModule_ViewFactory;->view(Lzendesk/support/requestlist/RequestListViewModule;Lcom/squareup/picasso/Picasso;)Lzendesk/support/requestlist/RequestListView;

    move-result-object v0

    return-object v0
.end method
