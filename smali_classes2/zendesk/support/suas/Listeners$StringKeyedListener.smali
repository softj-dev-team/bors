.class Lzendesk/support/suas/Listeners$StringKeyedListener;
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
    name = "StringKeyedListener"
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
.method private constructor <init>(Ljava/lang/String;Lzendesk/support/suas/Listener;Lzendesk/support/suas/Filter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lzendesk/support/suas/Listener<",
            "TE;>;",
            "Lzendesk/support/suas/Filter<",
            "TE;>;)V"
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lzendesk/support/suas/Listeners$StringKeyedListener;->stateKey:Ljava/lang/String;

    .line 108
    iput-object p2, p0, Lzendesk/support/suas/Listeners$StringKeyedListener;->listener:Lzendesk/support/suas/Listener;

    .line 109
    iput-object p3, p0, Lzendesk/support/suas/Listeners$StringKeyedListener;->filter:Lzendesk/support/suas/Filter;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lzendesk/support/suas/Listener;Lzendesk/support/suas/Filter;Lzendesk/support/suas/Listeners$1;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2, p3}, Lzendesk/support/suas/Listeners$StringKeyedListener;-><init>(Ljava/lang/String;Lzendesk/support/suas/Listener;Lzendesk/support/suas/Filter;)V

    return-void
.end method


# virtual methods
.method public getStateKey()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lzendesk/support/suas/Listeners$StringKeyedListener;->stateKey:Ljava/lang/String;

    return-object v0
.end method

.method public update(Lzendesk/support/suas/State;Lzendesk/support/suas/State;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 120
    :try_start_0
    iget-object v1, p0, Lzendesk/support/suas/Listeners$StringKeyedListener;->stateKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lzendesk/support/suas/State;->getState(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p2, :cond_1

    .line 124
    iget-object v0, p0, Lzendesk/support/suas/Listeners$StringKeyedListener;->stateKey:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lzendesk/support/suas/State;->getState(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 127
    :cond_1
    iget-object p2, p0, Lzendesk/support/suas/Listeners$StringKeyedListener;->filter:Lzendesk/support/suas/Filter;

    iget-object v1, p0, Lzendesk/support/suas/Listeners$StringKeyedListener;->listener:Lzendesk/support/suas/Listener;

    invoke-static {v0, p1, p2, v1, p3}, Lzendesk/support/suas/Listeners;->access$500(Ljava/lang/Object;Ljava/lang/Object;Lzendesk/support/suas/Filter;Lzendesk/support/suas/Listener;Z)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 130
    :catch_0
    invoke-static {}, Lzendesk/support/suas/Listeners;->access$600()Ljava/util/logging/Logger;

    move-result-object p1

    sget-object p2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string p3, "Either new value or old value cannot be converted to type expected type."

    invoke-virtual {p1, p2, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
