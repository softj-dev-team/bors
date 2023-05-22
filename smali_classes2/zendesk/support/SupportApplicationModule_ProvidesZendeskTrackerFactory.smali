.class public final Lzendesk/support/SupportApplicationModule_ProvidesZendeskTrackerFactory;
.super Ljava/lang/Object;
.source "SupportApplicationModule_ProvidesZendeskTrackerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/support/ZendeskTracker;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lzendesk/support/SupportApplicationModule;


# direct methods
.method public constructor <init>(Lzendesk/support/SupportApplicationModule;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lzendesk/support/SupportApplicationModule_ProvidesZendeskTrackerFactory;->module:Lzendesk/support/SupportApplicationModule;

    return-void
.end method

.method public static create(Lzendesk/support/SupportApplicationModule;)Lzendesk/support/SupportApplicationModule_ProvidesZendeskTrackerFactory;
    .locals 1

    .line 31
    new-instance v0, Lzendesk/support/SupportApplicationModule_ProvidesZendeskTrackerFactory;

    invoke-direct {v0, p0}, Lzendesk/support/SupportApplicationModule_ProvidesZendeskTrackerFactory;-><init>(Lzendesk/support/SupportApplicationModule;)V

    return-object v0
.end method

.method public static providesZendeskTracker(Lzendesk/support/SupportApplicationModule;)Lzendesk/support/ZendeskTracker;
    .locals 0

    .line 35
    invoke-virtual {p0}, Lzendesk/support/SupportApplicationModule;->providesZendeskTracker()Lzendesk/support/ZendeskTracker;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/support/ZendeskTracker;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lzendesk/support/SupportApplicationModule_ProvidesZendeskTrackerFactory;->get()Lzendesk/support/ZendeskTracker;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/support/ZendeskTracker;
    .locals 1

    .line 26
    iget-object v0, p0, Lzendesk/support/SupportApplicationModule_ProvidesZendeskTrackerFactory;->module:Lzendesk/support/SupportApplicationModule;

    invoke-static {v0}, Lzendesk/support/SupportApplicationModule_ProvidesZendeskTrackerFactory;->providesZendeskTracker(Lzendesk/support/SupportApplicationModule;)Lzendesk/support/ZendeskTracker;

    move-result-object v0

    return-object v0
.end method
