.class Lzendesk/messaging/components/bot/BotMessageDispatcher$Dispatch;
.super Ljava/lang/Object;
.source "BotMessageDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/messaging/components/bot/BotMessageDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Dispatch"
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
.field private final dispatchListener:Lzendesk/messaging/components/bot/BotMessageDispatcher$DispatchListener;

.field private final messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final updates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/messaging/Update;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Lzendesk/messaging/components/bot/BotMessageDispatcher$DispatchListener;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$DispatchListener;",
            "Ljava/util/List<",
            "Lzendesk/messaging/Update;",
            ">;)V"
        }
    .end annotation

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object p1, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher$Dispatch;->messages:Ljava/util/List;

    .line 220
    iput-object p2, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher$Dispatch;->dispatchListener:Lzendesk/messaging/components/bot/BotMessageDispatcher$DispatchListener;

    .line 221
    iput-object p3, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher$Dispatch;->updates:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lzendesk/messaging/components/bot/BotMessageDispatcher$Dispatch;)Ljava/util/List;
    .locals 0

    .line 213
    iget-object p0, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher$Dispatch;->messages:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lzendesk/messaging/components/bot/BotMessageDispatcher$Dispatch;)Ljava/util/List;
    .locals 0

    .line 213
    iget-object p0, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher$Dispatch;->updates:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lzendesk/messaging/components/bot/BotMessageDispatcher$Dispatch;)Lzendesk/messaging/components/bot/BotMessageDispatcher$DispatchListener;
    .locals 0

    .line 213
    iget-object p0, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher$Dispatch;->dispatchListener:Lzendesk/messaging/components/bot/BotMessageDispatcher$DispatchListener;

    return-object p0
.end method
