.class public final Lzendesk/messaging/BelvedereMediaResolverCallback_Factory;
.super Ljava/lang/Object;
.source "BelvedereMediaResolverCallback_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/messaging/BelvedereMediaResolverCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private final eventFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/EventFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final eventListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/EventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/EventListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/EventFactory;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lzendesk/messaging/BelvedereMediaResolverCallback_Factory;->eventListenerProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p2, p0, Lzendesk/messaging/BelvedereMediaResolverCallback_Factory;->eventFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/messaging/BelvedereMediaResolverCallback_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/EventListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/EventFactory;",
            ">;)",
            "Lzendesk/messaging/BelvedereMediaResolverCallback_Factory;"
        }
    .end annotation

    .line 35
    new-instance v0, Lzendesk/messaging/BelvedereMediaResolverCallback_Factory;

    invoke-direct {v0, p0, p1}, Lzendesk/messaging/BelvedereMediaResolverCallback_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lzendesk/messaging/EventListener;Lzendesk/messaging/EventFactory;)Lzendesk/messaging/BelvedereMediaResolverCallback;
    .locals 1

    .line 40
    new-instance v0, Lzendesk/messaging/BelvedereMediaResolverCallback;

    invoke-direct {v0, p0, p1}, Lzendesk/messaging/BelvedereMediaResolverCallback;-><init>(Lzendesk/messaging/EventListener;Lzendesk/messaging/EventFactory;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lzendesk/messaging/BelvedereMediaResolverCallback_Factory;->get()Lzendesk/messaging/BelvedereMediaResolverCallback;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/messaging/BelvedereMediaResolverCallback;
    .locals 2

    .line 30
    iget-object v0, p0, Lzendesk/messaging/BelvedereMediaResolverCallback_Factory;->eventListenerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/messaging/EventListener;

    iget-object v1, p0, Lzendesk/messaging/BelvedereMediaResolverCallback_Factory;->eventFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/messaging/EventFactory;

    invoke-static {v0, v1}, Lzendesk/messaging/BelvedereMediaResolverCallback_Factory;->newInstance(Lzendesk/messaging/EventListener;Lzendesk/messaging/EventFactory;)Lzendesk/messaging/BelvedereMediaResolverCallback;

    move-result-object v0

    return-object v0
.end method
