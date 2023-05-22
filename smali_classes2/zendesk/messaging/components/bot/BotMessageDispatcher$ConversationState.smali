.class public Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState;
.super Ljava/lang/Object;
.source "BotMessageDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/messaging/components/bot/BotMessageDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConversationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final typingIndicator:Z


# direct methods
.method constructor <init>(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p1, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState;->messages:Ljava/util/List;

    .line 195
    iput-boolean p2, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState;->typingIndicator:Z

    return-void
.end method


# virtual methods
.method public getMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState;->messages:Ljava/util/List;

    return-object v0
.end method

.method public shouldShowTypingIndicator()Z
    .locals 1

    .line 204
    iget-boolean v0, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState;->typingIndicator:Z

    return v0
.end method
