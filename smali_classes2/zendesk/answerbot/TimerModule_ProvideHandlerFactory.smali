.class public final Lzendesk/answerbot/TimerModule_ProvideHandlerFactory;
.super Ljava/lang/Object;
.source "TimerModule_ProvideHandlerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/os/Handler;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lzendesk/answerbot/TimerModule;


# direct methods
.method public constructor <init>(Lzendesk/answerbot/TimerModule;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lzendesk/answerbot/TimerModule_ProvideHandlerFactory;->module:Lzendesk/answerbot/TimerModule;

    return-void
.end method

.method public static create(Lzendesk/answerbot/TimerModule;)Lzendesk/answerbot/TimerModule_ProvideHandlerFactory;
    .locals 1

    .line 31
    new-instance v0, Lzendesk/answerbot/TimerModule_ProvideHandlerFactory;

    invoke-direct {v0, p0}, Lzendesk/answerbot/TimerModule_ProvideHandlerFactory;-><init>(Lzendesk/answerbot/TimerModule;)V

    return-object v0
.end method

.method public static provideHandler(Lzendesk/answerbot/TimerModule;)Landroid/os/Handler;
    .locals 0

    .line 35
    invoke-virtual {p0}, Lzendesk/answerbot/TimerModule;->provideHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/os/Handler;
    .locals 1

    .line 27
    iget-object v0, p0, Lzendesk/answerbot/TimerModule_ProvideHandlerFactory;->module:Lzendesk/answerbot/TimerModule;

    invoke-static {v0}, Lzendesk/answerbot/TimerModule_ProvideHandlerFactory;->provideHandler(Lzendesk/answerbot/TimerModule;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lzendesk/answerbot/TimerModule_ProvideHandlerFactory;->get()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method
