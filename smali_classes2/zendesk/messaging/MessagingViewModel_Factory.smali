.class public final Lzendesk/messaging/MessagingViewModel_Factory;
.super Ljava/lang/Object;
.source "MessagingViewModel_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/messaging/MessagingViewModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final messagingModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/MessagingModel;",
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
            "Lzendesk/messaging/MessagingModel;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lzendesk/messaging/MessagingViewModel_Factory;->messagingModelProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lzendesk/messaging/MessagingViewModel_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/MessagingModel;",
            ">;)",
            "Lzendesk/messaging/MessagingViewModel_Factory;"
        }
    .end annotation

    .line 30
    new-instance v0, Lzendesk/messaging/MessagingViewModel_Factory;

    invoke-direct {v0, p0}, Lzendesk/messaging/MessagingViewModel_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Ljava/lang/Object;)Lzendesk/messaging/MessagingViewModel;
    .locals 1

    .line 34
    new-instance v0, Lzendesk/messaging/MessagingViewModel;

    check-cast p0, Lzendesk/messaging/MessagingModel;

    invoke-direct {v0, p0}, Lzendesk/messaging/MessagingViewModel;-><init>(Lzendesk/messaging/MessagingModel;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lzendesk/messaging/MessagingViewModel_Factory;->get()Lzendesk/messaging/MessagingViewModel;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/messaging/MessagingViewModel;
    .locals 1

    .line 26
    iget-object v0, p0, Lzendesk/messaging/MessagingViewModel_Factory;->messagingModelProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lzendesk/messaging/MessagingViewModel_Factory;->newInstance(Ljava/lang/Object;)Lzendesk/messaging/MessagingViewModel;

    move-result-object v0

    return-object v0
.end method
