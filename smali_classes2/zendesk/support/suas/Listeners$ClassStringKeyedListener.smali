.class Lzendesk/support/suas/Listeners$ClassStringKeyedListener;
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
    name = "ClassStringKeyedListener"
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
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final filter:Lzendesk/support/suas/Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzendesk/support/suas/Filter<",
            "TE;>;"
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

.field private final stateKey:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Class;Lzendesk/support/suas/Listener;Lzendesk/support/suas/Filter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lzendesk/support/suas/Listener<",
            "TE;>;",
            "Lzendesk/support/suas/Filter<",
            "TE;>;)V"
        }
    .end annotation

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p2, p0, Lzendesk/support/suas/Listeners$ClassStringKeyedListener;->clazz:Ljava/lang/Class;

    .line 185
    iput-object p3, p0, Lzendesk/support/suas/Listeners$ClassStringKeyedListener;->listener:Lzendesk/support/suas/Listener;

    .line 186
    iput-object p1, p0, Lzendesk/support/suas/Listeners$ClassStringKeyedListener;->stateKey:Ljava/lang/String;

    .line 187
    iput-object p4, p0, Lzendesk/support/suas/Listeners$ClassStringKeyedListener;->filter:Lzendesk/support/suas/Filter;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Class;Lzendesk/support/suas/Listener;Lzendesk/support/suas/Filter;Lzendesk/support/suas/Listeners$1;)V
    .locals 0

    .line 176
    invoke-direct {p0, p1, p2, p3, p4}, Lzendesk/support/suas/Listeners$ClassStringKeyedListener;-><init>(Ljava/lang/String;Ljava/lang/Class;Lzendesk/support/suas/Listener;Lzendesk/support/suas/Filter;)V

    return-void
.end method


# virtual methods
.method public getStateKey()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lzendesk/support/suas/Listeners$ClassStringKeyedListener;->stateKey:Ljava/lang/String;

    return-object v0
.end method

.method public update(Lzendesk/support/suas/State;Lzendesk/support/suas/State;Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 197
    iget-object v1, p0, Lzendesk/support/suas/Listeners$ClassStringKeyedListener;->stateKey:Ljava/lang/String;

    iget-object v2, p0, Lzendesk/support/suas/Listeners$ClassStringKeyedListener;->clazz:Ljava/lang/Class;

    invoke-virtual {p1, v1, v2}, Lzendesk/support/suas/State;->getState(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p2, :cond_1

    .line 200
    iget-object v0, p0, Lzendesk/support/suas/Listeners$ClassStringKeyedListener;->stateKey:Ljava/lang/String;

    iget-object v1, p0, Lzendesk/support/suas/Listeners$ClassStringKeyedListener;->clazz:Ljava/lang/Class;

    invoke-virtual {p2, v0, v1}, Lzendesk/support/suas/State;->getState(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 203
    :cond_1
    iget-object p2, p0, Lzendesk/support/suas/Listeners$ClassStringKeyedListener;->filter:Lzendesk/support/suas/Filter;

    iget-object v1, p0, Lzendesk/support/suas/Listeners$ClassStringKeyedListener;->listener:Lzendesk/support/suas/Listener;

    invoke-static {v0, p1, p2, v1, p3}, Lzendesk/support/suas/Listeners;->access$500(Ljava/lang/Object;Ljava/lang/Object;Lzendesk/support/suas/Filter;Lzendesk/support/suas/Listener;Z)V

    return-void
.end method
