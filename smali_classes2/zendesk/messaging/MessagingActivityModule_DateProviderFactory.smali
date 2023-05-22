.class public final Lzendesk/messaging/MessagingActivityModule_DateProviderFactory;
.super Ljava/lang/Object;
.source "MessagingActivityModule_DateProviderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/messaging/MessagingActivityModule_DateProviderFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/messaging/components/DateProvider;",
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

.method public static create()Lzendesk/messaging/MessagingActivityModule_DateProviderFactory;
    .locals 1

    .line 25
    invoke-static {}, Lzendesk/messaging/MessagingActivityModule_DateProviderFactory$InstanceHolder;->access$000()Lzendesk/messaging/MessagingActivityModule_DateProviderFactory;

    move-result-object v0

    return-object v0
.end method

.method public static dateProvider()Lzendesk/messaging/components/DateProvider;
    .locals 1

    .line 29
    invoke-static {}, Lzendesk/messaging/MessagingActivityModule;->dateProvider()Lzendesk/messaging/components/DateProvider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/messaging/components/DateProvider;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lzendesk/messaging/MessagingActivityModule_DateProviderFactory;->get()Lzendesk/messaging/components/DateProvider;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/messaging/components/DateProvider;
    .locals 1

    .line 21
    invoke-static {}, Lzendesk/messaging/MessagingActivityModule_DateProviderFactory;->dateProvider()Lzendesk/messaging/components/DateProvider;

    move-result-object v0

    return-object v0
.end method
