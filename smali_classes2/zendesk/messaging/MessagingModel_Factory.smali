.class public final Lzendesk/messaging/MessagingModel_Factory;
.super Ljava/lang/Object;
.source "MessagingModel_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/messaging/MessagingModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final conversationLogProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/MessagingConversationLog;",
            ">;"
        }
    .end annotation
.end field

.field private final enginesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/List<",
            "Lzendesk/messaging/Engine;",
            ">;>;"
        }
    .end annotation
.end field

.field private final messagingConfigurationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/MessagingConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final resourcesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/res/Resources;",
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
            "Landroid/content/res/Resources;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/List<",
            "Lzendesk/messaging/Engine;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/MessagingConfiguration;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/MessagingConversationLog;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lzendesk/messaging/MessagingModel_Factory;->resourcesProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p2, p0, Lzendesk/messaging/MessagingModel_Factory;->enginesProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p3, p0, Lzendesk/messaging/MessagingModel_Factory;->messagingConfigurationProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p4, p0, Lzendesk/messaging/MessagingModel_Factory;->conversationLogProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/messaging/MessagingModel_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/res/Resources;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/List<",
            "Lzendesk/messaging/Engine;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/MessagingConfiguration;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/MessagingConversationLog;",
            ">;)",
            "Lzendesk/messaging/MessagingModel_Factory;"
        }
    .end annotation

    .line 47
    new-instance v0, Lzendesk/messaging/MessagingModel_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lzendesk/messaging/MessagingModel_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/res/Resources;Ljava/util/List;Lzendesk/messaging/MessagingConfiguration;Ljava/lang/Object;)Lzendesk/messaging/MessagingModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/util/List<",
            "Lzendesk/messaging/Engine;",
            ">;",
            "Lzendesk/messaging/MessagingConfiguration;",
            "Ljava/lang/Object;",
            ")",
            "Lzendesk/messaging/MessagingModel;"
        }
    .end annotation

    .line 52
    new-instance v0, Lzendesk/messaging/MessagingModel;

    check-cast p3, Lzendesk/messaging/MessagingConversationLog;

    invoke-direct {v0, p0, p1, p2, p3}, Lzendesk/messaging/MessagingModel;-><init>(Landroid/content/res/Resources;Ljava/util/List;Lzendesk/messaging/MessagingConfiguration;Lzendesk/messaging/MessagingConversationLog;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lzendesk/messaging/MessagingModel_Factory;->get()Lzendesk/messaging/MessagingModel;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/messaging/MessagingModel;
    .locals 4

    .line 40
    iget-object v0, p0, Lzendesk/messaging/MessagingModel_Factory;->resourcesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    iget-object v1, p0, Lzendesk/messaging/MessagingModel_Factory;->enginesProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lzendesk/messaging/MessagingModel_Factory;->messagingConfigurationProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzendesk/messaging/MessagingConfiguration;

    iget-object v3, p0, Lzendesk/messaging/MessagingModel_Factory;->conversationLogProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lzendesk/messaging/MessagingModel_Factory;->newInstance(Landroid/content/res/Resources;Ljava/util/List;Lzendesk/messaging/MessagingConfiguration;Ljava/lang/Object;)Lzendesk/messaging/MessagingModel;

    move-result-object v0

    return-object v0
.end method
