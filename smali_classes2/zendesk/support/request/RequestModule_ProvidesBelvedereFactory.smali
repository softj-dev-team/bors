.class public final Lzendesk/support/request/RequestModule_ProvidesBelvedereFactory;
.super Ljava/lang/Object;
.source "RequestModule_ProvidesBelvedereFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/belvedere/Belvedere;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lzendesk/support/request/RequestModule_ProvidesBelvedereFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lzendesk/support/request/RequestModule_ProvidesBelvedereFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lzendesk/support/request/RequestModule_ProvidesBelvedereFactory;"
        }
    .end annotation

    .line 33
    new-instance v0, Lzendesk/support/request/RequestModule_ProvidesBelvedereFactory;

    invoke-direct {v0, p0}, Lzendesk/support/request/RequestModule_ProvidesBelvedereFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providesBelvedere(Landroid/content/Context;)Lzendesk/belvedere/Belvedere;
    .locals 0

    .line 37
    invoke-static {p0}, Lzendesk/support/request/RequestModule;->providesBelvedere(Landroid/content/Context;)Lzendesk/belvedere/Belvedere;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/belvedere/Belvedere;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lzendesk/support/request/RequestModule_ProvidesBelvedereFactory;->get()Lzendesk/belvedere/Belvedere;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/belvedere/Belvedere;
    .locals 1

    .line 29
    iget-object v0, p0, Lzendesk/support/request/RequestModule_ProvidesBelvedereFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lzendesk/support/request/RequestModule_ProvidesBelvedereFactory;->providesBelvedere(Landroid/content/Context;)Lzendesk/belvedere/Belvedere;

    move-result-object v0

    return-object v0
.end method
