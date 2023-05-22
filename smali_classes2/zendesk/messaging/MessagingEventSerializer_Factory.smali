.class public final Lzendesk/messaging/MessagingEventSerializer_Factory;
.super Ljava/lang/Object;
.source "MessagingEventSerializer_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/messaging/MessagingEventSerializer;",
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

.field private final timestampFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/TimestampFactory;",
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
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/TimestampFactory;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lzendesk/messaging/MessagingEventSerializer_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p2, p0, Lzendesk/messaging/MessagingEventSerializer_Factory;->timestampFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/messaging/MessagingEventSerializer_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/TimestampFactory;",
            ">;)",
            "Lzendesk/messaging/MessagingEventSerializer_Factory;"
        }
    .end annotation

    .line 36
    new-instance v0, Lzendesk/messaging/MessagingEventSerializer_Factory;

    invoke-direct {v0, p0, p1}, Lzendesk/messaging/MessagingEventSerializer_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Ljava/lang/Object;)Lzendesk/messaging/MessagingEventSerializer;
    .locals 1

    .line 40
    new-instance v0, Lzendesk/messaging/MessagingEventSerializer;

    check-cast p1, Lzendesk/messaging/TimestampFactory;

    invoke-direct {v0, p0, p1}, Lzendesk/messaging/MessagingEventSerializer;-><init>(Landroid/content/Context;Lzendesk/messaging/TimestampFactory;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lzendesk/messaging/MessagingEventSerializer_Factory;->get()Lzendesk/messaging/MessagingEventSerializer;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/messaging/MessagingEventSerializer;
    .locals 2

    .line 31
    iget-object v0, p0, Lzendesk/messaging/MessagingEventSerializer_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lzendesk/messaging/MessagingEventSerializer_Factory;->timestampFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lzendesk/messaging/MessagingEventSerializer_Factory;->newInstance(Landroid/content/Context;Ljava/lang/Object;)Lzendesk/messaging/MessagingEventSerializer;

    move-result-object v0

    return-object v0
.end method
