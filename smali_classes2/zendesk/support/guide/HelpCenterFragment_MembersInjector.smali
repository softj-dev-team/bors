.class public final Lzendesk/support/guide/HelpCenterFragment_MembersInjector;
.super Ljava/lang/Object;
.source "HelpCenterFragment_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lzendesk/support/guide/HelpCenterFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private final helpCenterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/HelpCenterProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final networkInfoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/NetworkInfoProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/HelpCenterProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/core/NetworkInfoProvider;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lzendesk/support/guide/HelpCenterFragment_MembersInjector;->helpCenterProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p2, p0, Lzendesk/support/guide/HelpCenterFragment_MembersInjector;->networkInfoProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/HelpCenterProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/core/NetworkInfoProvider;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lzendesk/support/guide/HelpCenterFragment;",
            ">;"
        }
    .end annotation

    .line 32
    new-instance v0, Lzendesk/support/guide/HelpCenterFragment_MembersInjector;

    invoke-direct {v0, p0, p1}, Lzendesk/support/guide/HelpCenterFragment_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectHelpCenterProvider(Lzendesk/support/guide/HelpCenterFragment;Lzendesk/support/HelpCenterProvider;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lzendesk/support/guide/HelpCenterFragment;->helpCenterProvider:Lzendesk/support/HelpCenterProvider;

    return-void
.end method

.method public static injectNetworkInfoProvider(Lzendesk/support/guide/HelpCenterFragment;Lzendesk/core/NetworkInfoProvider;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lzendesk/support/guide/HelpCenterFragment;->networkInfoProvider:Lzendesk/core/NetworkInfoProvider;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Lzendesk/support/guide/HelpCenterFragment;

    invoke-virtual {p0, p1}, Lzendesk/support/guide/HelpCenterFragment_MembersInjector;->injectMembers(Lzendesk/support/guide/HelpCenterFragment;)V

    return-void
.end method

.method public injectMembers(Lzendesk/support/guide/HelpCenterFragment;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterFragment_MembersInjector;->helpCenterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/support/HelpCenterProvider;

    invoke-static {p1, v0}, Lzendesk/support/guide/HelpCenterFragment_MembersInjector;->injectHelpCenterProvider(Lzendesk/support/guide/HelpCenterFragment;Lzendesk/support/HelpCenterProvider;)V

    .line 38
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterFragment_MembersInjector;->networkInfoProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/core/NetworkInfoProvider;

    invoke-static {p1, v0}, Lzendesk/support/guide/HelpCenterFragment_MembersInjector;->injectNetworkInfoProvider(Lzendesk/support/guide/HelpCenterFragment;Lzendesk/core/NetworkInfoProvider;)V

    return-void
.end method
