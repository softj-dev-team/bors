.class Lzendesk/support/suas/Listeners$StateSelectorListener;
.super Ljava/lang/Object;
.source "Listeners.java"

# interfaces
.implements Lzendesk/support/suas/Listeners$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/suas/Listeners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateSelectorListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lzendesk/support/suas/Listeners$StateListener;"
    }
.end annotation


# instance fields
.field private final filter:Lzendesk/support/suas/Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzendesk/support/suas/Filter<",
            "Lzendesk/support/suas/State;",
            ">;"
        }
    .end annotation
.end field

.field private final listener:Lzendesk/support/suas/Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzendesk/support/suas/Listener<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final stateSelector:Lzendesk/support/suas/StateSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzendesk/support/suas/StateSelector<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lzendesk/support/suas/Listener;Lzendesk/support/suas/StateSelector;Lzendesk/support/suas/Filter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/suas/Listener<",
            "TE;>;",
            "Lzendesk/support/suas/StateSelector<",
            "TE;>;",
            "Lzendesk/support/suas/Filter<",
            "Lzendesk/support/suas/State;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lzendesk/support/suas/Listeners$StateSelectorListener;->listener:Lzendesk/support/suas/Listener;

    .line 54
    iput-object p2, p0, Lzendesk/support/suas/Listeners$StateSelectorListener;->stateSelector:Lzendesk/support/suas/StateSelector;

    .line 55
    iput-object p3, p0, Lzendesk/support/suas/Listeners$StateSelectorListener;->filter:Lzendesk/support/suas/Filter;

    return-void
.end method

.method synthetic constructor <init>(Lzendesk/support/suas/Listener;Lzendesk/support/suas/StateSelector;Lzendesk/support/suas/Filter;Lzendesk/support/suas/Listeners$1;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lzendesk/support/suas/Listeners$StateSelectorListener;-><init>(Lzendesk/support/suas/Listener;Lzendesk/support/suas/StateSelector;Lzendesk/support/suas/Filter;)V

    return-void
.end method


# virtual methods
.method public getStateKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Lzendesk/support/suas/State;Lzendesk/support/suas/State;Z)V
    .locals 0

    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 65
    iget-object p3, p0, Lzendesk/support/suas/Listeners$StateSelectorListener;->filter:Lzendesk/support/suas/Filter;

    .line 66
    invoke-interface {p3, p1, p2}, Lzendesk/support/suas/Filter;->filter(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 67
    :cond_1
    iget-object p1, p0, Lzendesk/support/suas/Listeners$StateSelectorListener;->stateSelector:Lzendesk/support/suas/StateSelector;

    invoke-interface {p1, p2}, Lzendesk/support/suas/StateSelector;->selectData(Lzendesk/support/suas/State;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 69
    iget-object p2, p0, Lzendesk/support/suas/Listeners$StateSelectorListener;->listener:Lzendesk/support/suas/Listener;

    invoke-interface {p2, p1}, Lzendesk/support/suas/Listener;->update(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
