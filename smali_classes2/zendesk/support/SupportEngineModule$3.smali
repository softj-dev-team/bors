.class Lzendesk/support/SupportEngineModule$3;
.super Ljava/lang/Object;
.source "SupportEngineModule.java"

# interfaces
.implements Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/SupportEngineModule;->interactionIdentifier()Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier<",
        "Lzendesk/messaging/MessagingItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/support/SupportEngineModule;


# direct methods
.method constructor <init>(Lzendesk/support/SupportEngineModule;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lzendesk/support/SupportEngineModule$3;->this$0:Lzendesk/support/SupportEngineModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 71
    check-cast p1, Lzendesk/messaging/MessagingItem;

    invoke-virtual {p0, p1}, Lzendesk/support/SupportEngineModule$3;->getId(Lzendesk/messaging/MessagingItem;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getId(Lzendesk/messaging/MessagingItem;)Ljava/lang/String;
    .locals 0

    .line 74
    invoke-virtual {p1}, Lzendesk/messaging/MessagingItem;->getId()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
