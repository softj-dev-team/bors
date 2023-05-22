.class Lzendesk/support/suas/SuasStore$ActionListenerSubscription;
.super Ljava/lang/Object;
.source "SuasStore.java"

# interfaces
.implements Lzendesk/support/suas/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/suas/SuasStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionListenerSubscription"
.end annotation


# instance fields
.field private final listener:Lzendesk/support/suas/Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzendesk/support/suas/Listener<",
            "Lzendesk/support/suas/Action<",
            "*>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lzendesk/support/suas/SuasStore;


# direct methods
.method private constructor <init>(Lzendesk/support/suas/SuasStore;Lzendesk/support/suas/Listener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/suas/Listener<",
            "Lzendesk/support/suas/Action<",
            "*>;>;)V"
        }
    .end annotation

    .line 171
    iput-object p1, p0, Lzendesk/support/suas/SuasStore$ActionListenerSubscription;->this$0:Lzendesk/support/suas/SuasStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p2, p0, Lzendesk/support/suas/SuasStore$ActionListenerSubscription;->listener:Lzendesk/support/suas/Listener;

    return-void
.end method

.method synthetic constructor <init>(Lzendesk/support/suas/SuasStore;Lzendesk/support/suas/Listener;Lzendesk/support/suas/SuasStore$1;)V
    .locals 0

    .line 167
    invoke-direct {p0, p1, p2}, Lzendesk/support/suas/SuasStore$ActionListenerSubscription;-><init>(Lzendesk/support/suas/SuasStore;Lzendesk/support/suas/Listener;)V

    return-void
.end method


# virtual methods
.method public addListener()V
    .locals 2

    .line 182
    iget-object v0, p0, Lzendesk/support/suas/SuasStore$ActionListenerSubscription;->this$0:Lzendesk/support/suas/SuasStore;

    invoke-static {v0}, Lzendesk/support/suas/SuasStore;->access$700(Lzendesk/support/suas/SuasStore;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lzendesk/support/suas/SuasStore$ActionListenerSubscription;->listener:Lzendesk/support/suas/Listener;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public informWithCurrentState()V
    .locals 0

    return-void
.end method

.method public removeListener()V
    .locals 2

    .line 177
    iget-object v0, p0, Lzendesk/support/suas/SuasStore$ActionListenerSubscription;->this$0:Lzendesk/support/suas/SuasStore;

    iget-object v1, p0, Lzendesk/support/suas/SuasStore$ActionListenerSubscription;->listener:Lzendesk/support/suas/Listener;

    invoke-virtual {v0, v1}, Lzendesk/support/suas/SuasStore;->removeListener(Lzendesk/support/suas/Listener;)V

    return-void
.end method
