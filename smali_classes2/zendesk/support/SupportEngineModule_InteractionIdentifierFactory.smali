.class public final Lzendesk/support/SupportEngineModule_InteractionIdentifierFactory;
.super Ljava/lang/Object;
.source "SupportEngineModule_InteractionIdentifierFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier<",
        "Lzendesk/messaging/MessagingItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final module:Lzendesk/support/SupportEngineModule;


# direct methods
.method public constructor <init>(Lzendesk/support/SupportEngineModule;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lzendesk/support/SupportEngineModule_InteractionIdentifierFactory;->module:Lzendesk/support/SupportEngineModule;

    return-void
.end method

.method public static create(Lzendesk/support/SupportEngineModule;)Lzendesk/support/SupportEngineModule_InteractionIdentifierFactory;
    .locals 1

    .line 33
    new-instance v0, Lzendesk/support/SupportEngineModule_InteractionIdentifierFactory;

    invoke-direct {v0, p0}, Lzendesk/support/SupportEngineModule_InteractionIdentifierFactory;-><init>(Lzendesk/support/SupportEngineModule;)V

    return-object v0
.end method

.method public static interactionIdentifier(Lzendesk/support/SupportEngineModule;)Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/SupportEngineModule;",
            ")",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier<",
            "Lzendesk/messaging/MessagingItem;",
            ">;"
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Lzendesk/support/SupportEngineModule;->interactionIdentifier()Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lzendesk/support/SupportEngineModule_InteractionIdentifierFactory;->get()Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier<",
            "Lzendesk/messaging/MessagingItem;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lzendesk/support/SupportEngineModule_InteractionIdentifierFactory;->module:Lzendesk/support/SupportEngineModule;

    invoke-static {v0}, Lzendesk/support/SupportEngineModule_InteractionIdentifierFactory;->interactionIdentifier(Lzendesk/support/SupportEngineModule;)Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier;

    move-result-object v0

    return-object v0
.end method
