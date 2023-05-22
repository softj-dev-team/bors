.class public final Lzendesk/messaging/MessagingConversationLog_Factory;
.super Ljava/lang/Object;
.source "MessagingConversationLog_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/messaging/MessagingConversationLog;",
        ">;"
    }
.end annotation


# instance fields
.field private final messagingEventSerializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/MessagingEventSerializer;",
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
            "Lzendesk/messaging/MessagingEventSerializer;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lzendesk/messaging/MessagingConversationLog_Factory;->messagingEventSerializerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lzendesk/messaging/MessagingConversationLog_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/MessagingEventSerializer;",
            ">;)",
            "Lzendesk/messaging/MessagingConversationLog_Factory;"
        }
    .end annotation

    .line 32
    new-instance v0, Lzendesk/messaging/MessagingConversationLog_Factory;

    invoke-direct {v0, p0}, Lzendesk/messaging/MessagingConversationLog_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Ljava/lang/Object;)Lzendesk/messaging/MessagingConversationLog;
    .locals 1

    .line 36
    new-instance v0, Lzendesk/messaging/MessagingConversationLog;

    check-cast p0, Lzendesk/messaging/MessagingEventSerializer;

    invoke-direct {v0, p0}, Lzendesk/messaging/MessagingConversationLog;-><init>(Lzendesk/messaging/MessagingEventSerializer;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lzendesk/messaging/MessagingConversationLog_Factory;->get()Lzendesk/messaging/MessagingConversationLog;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/messaging/MessagingConversationLog;
    .locals 1

    .line 27
    iget-object v0, p0, Lzendesk/messaging/MessagingConversationLog_Factory;->messagingEventSerializerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lzendesk/messaging/MessagingConversationLog_Factory;->newInstance(Ljava/lang/Object;)Lzendesk/messaging/MessagingConversationLog;

    move-result-object v0

    return-object v0
.end method
