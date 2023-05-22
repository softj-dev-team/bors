.class public final Lzendesk/messaging/MessagingActivityModule_HandlerFactory;
.super Ljava/lang/Object;
.source "MessagingActivityModule_HandlerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/messaging/MessagingActivityModule_HandlerFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/os/Handler;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lzendesk/messaging/MessagingActivityModule_HandlerFactory;
    .locals 1

    .line 25
    invoke-static {}, Lzendesk/messaging/MessagingActivityModule_HandlerFactory$InstanceHolder;->access$000()Lzendesk/messaging/MessagingActivityModule_HandlerFactory;

    move-result-object v0

    return-object v0
.end method

.method public static handler()Landroid/os/Handler;
    .locals 1

    .line 29
    invoke-static {}, Lzendesk/messaging/MessagingActivityModule;->handler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public get()Landroid/os/Handler;
    .locals 1

    .line 21
    invoke-static {}, Lzendesk/messaging/MessagingActivityModule_HandlerFactory;->handler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lzendesk/messaging/MessagingActivityModule_HandlerFactory;->get()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method
