.class public final Lzendesk/messaging/components/DefaultCompositeActionListener;
.super Lzendesk/messaging/components/CompositeActionListener;
.source "DefaultCompositeActionListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lzendesk/messaging/components/CompositeActionListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/messaging/components/ActionListener<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lzendesk/messaging/components/CompositeActionListener;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzendesk/messaging/components/DefaultCompositeActionListener;->listeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addListener(Lzendesk/messaging/components/ActionListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/messaging/components/ActionListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lzendesk/messaging/components/DefaultCompositeActionListener;->listeners:Ljava/util/List;

    monitor-enter v0

    .line 25
    :try_start_0
    iget-object v1, p0, Lzendesk/messaging/components/DefaultCompositeActionListener;->listeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public clearListeners()V
    .locals 1

    .line 31
    iget-object v0, p0, Lzendesk/messaging/components/DefaultCompositeActionListener;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onAction(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lzendesk/messaging/components/DefaultCompositeActionListener;->listeners:Ljava/util/List;

    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, Lzendesk/messaging/components/DefaultCompositeActionListener;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzendesk/messaging/components/ActionListener;

    .line 17
    invoke-interface {v2, p1}, Lzendesk/messaging/components/ActionListener;->onAction(Ljava/lang/Object;)V

    goto :goto_0

    .line 19
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
