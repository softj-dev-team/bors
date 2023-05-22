.class public final Lzendesk/messaging/EventFactory_Factory;
.super Ljava/lang/Object;
.source "EventFactory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/messaging/EventFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final dateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/DateProvider;",
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
            "Lzendesk/messaging/components/DateProvider;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lzendesk/messaging/EventFactory_Factory;->dateProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lzendesk/messaging/EventFactory_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/DateProvider;",
            ">;)",
            "Lzendesk/messaging/EventFactory_Factory;"
        }
    .end annotation

    .line 31
    new-instance v0, Lzendesk/messaging/EventFactory_Factory;

    invoke-direct {v0, p0}, Lzendesk/messaging/EventFactory_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lzendesk/messaging/components/DateProvider;)Lzendesk/messaging/EventFactory;
    .locals 1

    .line 35
    new-instance v0, Lzendesk/messaging/EventFactory;

    invoke-direct {v0, p0}, Lzendesk/messaging/EventFactory;-><init>(Lzendesk/messaging/components/DateProvider;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lzendesk/messaging/EventFactory_Factory;->get()Lzendesk/messaging/EventFactory;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/messaging/EventFactory;
    .locals 1

    .line 27
    iget-object v0, p0, Lzendesk/messaging/EventFactory_Factory;->dateProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/messaging/components/DateProvider;

    invoke-static {v0}, Lzendesk/messaging/EventFactory_Factory;->newInstance(Lzendesk/messaging/components/DateProvider;)Lzendesk/messaging/EventFactory;

    move-result-object v0

    return-object v0
.end method
