.class public interface abstract Lzendesk/support/suas/Store;
.super Ljava/lang/Object;
.source "Store.java"

# interfaces
.implements Lzendesk/support/suas/GetState;
.implements Lzendesk/support/suas/Dispatcher;


# virtual methods
.method public abstract addActionListener(Lzendesk/support/suas/Listener;)Lzendesk/support/suas/Subscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/suas/Listener<",
            "Lzendesk/support/suas/Action<",
            "*>;>;)",
            "Lzendesk/support/suas/Subscription;"
        }
    .end annotation
.end method

.method public abstract addListener(Ljava/lang/Class;Lzendesk/support/suas/Filter;Lzendesk/support/suas/Listener;)Lzendesk/support/suas/Subscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lzendesk/support/suas/Filter<",
            "TE;>;",
            "Lzendesk/support/suas/Listener<",
            "TE;>;)",
            "Lzendesk/support/suas/Subscription;"
        }
    .end annotation
.end method

.method public abstract addListener(Ljava/lang/Class;Lzendesk/support/suas/Listener;)Lzendesk/support/suas/Subscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lzendesk/support/suas/Listener<",
            "TE;>;)",
            "Lzendesk/support/suas/Subscription;"
        }
    .end annotation
.end method

.method public abstract addListener(Ljava/lang/String;Ljava/lang/Class;Lzendesk/support/suas/Filter;Lzendesk/support/suas/Listener;)Lzendesk/support/suas/Subscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lzendesk/support/suas/Filter<",
            "TE;>;",
            "Lzendesk/support/suas/Listener<",
            "TE;>;)",
            "Lzendesk/support/suas/Subscription;"
        }
    .end annotation
.end method

.method public abstract addListener(Ljava/lang/String;Ljava/lang/Class;Lzendesk/support/suas/Listener;)Lzendesk/support/suas/Subscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lzendesk/support/suas/Listener<",
            "TE;>;)",
            "Lzendesk/support/suas/Subscription;"
        }
    .end annotation
.end method

.method public abstract addListener(Ljava/lang/String;Lzendesk/support/suas/Filter;Lzendesk/support/suas/Listener;)Lzendesk/support/suas/Subscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lzendesk/support/suas/Filter<",
            "TE;>;",
            "Lzendesk/support/suas/Listener<",
            "TE;>;)",
            "Lzendesk/support/suas/Subscription;"
        }
    .end annotation
.end method

.method public abstract addListener(Ljava/lang/String;Lzendesk/support/suas/Listener;)Lzendesk/support/suas/Subscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lzendesk/support/suas/Listener<",
            "TE;>;)",
            "Lzendesk/support/suas/Subscription;"
        }
    .end annotation
.end method

.method public abstract addListener(Lzendesk/support/suas/Filter;Lzendesk/support/suas/Listener;)Lzendesk/support/suas/Subscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/suas/Filter<",
            "Lzendesk/support/suas/State;",
            ">;",
            "Lzendesk/support/suas/Listener<",
            "Lzendesk/support/suas/State;",
            ">;)",
            "Lzendesk/support/suas/Subscription;"
        }
    .end annotation
.end method

.method public abstract addListener(Lzendesk/support/suas/Filter;Lzendesk/support/suas/StateSelector;Lzendesk/support/suas/Listener;)Lzendesk/support/suas/Subscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lzendesk/support/suas/Filter<",
            "Lzendesk/support/suas/State;",
            ">;",
            "Lzendesk/support/suas/StateSelector<",
            "TE;>;",
            "Lzendesk/support/suas/Listener<",
            "TE;>;)",
            "Lzendesk/support/suas/Subscription;"
        }
    .end annotation
.end method

.method public abstract addListener(Lzendesk/support/suas/Listener;)Lzendesk/support/suas/Subscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/suas/Listener<",
            "Lzendesk/support/suas/State;",
            ">;)",
            "Lzendesk/support/suas/Subscription;"
        }
    .end annotation
.end method

.method public abstract addListener(Lzendesk/support/suas/StateSelector;Lzendesk/support/suas/Listener;)Lzendesk/support/suas/Subscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lzendesk/support/suas/StateSelector<",
            "TE;>;",
            "Lzendesk/support/suas/Listener<",
            "TE;>;)",
            "Lzendesk/support/suas/Subscription;"
        }
    .end annotation
.end method

.method public abstract removeListener(Lzendesk/support/suas/Listener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/suas/Listener<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract reset(Lzendesk/support/suas/State;)V
.end method
