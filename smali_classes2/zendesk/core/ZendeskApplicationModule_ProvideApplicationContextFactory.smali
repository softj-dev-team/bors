.class public final Lzendesk/core/ZendeskApplicationModule_ProvideApplicationContextFactory;
.super Ljava/lang/Object;
.source "ZendeskApplicationModule_ProvideApplicationContextFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lzendesk/core/ZendeskApplicationModule;


# direct methods
.method public constructor <init>(Lzendesk/core/ZendeskApplicationModule;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lzendesk/core/ZendeskApplicationModule_ProvideApplicationContextFactory;->module:Lzendesk/core/ZendeskApplicationModule;

    return-void
.end method

.method public static create(Lzendesk/core/ZendeskApplicationModule;)Lzendesk/core/ZendeskApplicationModule_ProvideApplicationContextFactory;
    .locals 1

    .line 33
    new-instance v0, Lzendesk/core/ZendeskApplicationModule_ProvideApplicationContextFactory;

    invoke-direct {v0, p0}, Lzendesk/core/ZendeskApplicationModule_ProvideApplicationContextFactory;-><init>(Lzendesk/core/ZendeskApplicationModule;)V

    return-object v0
.end method

.method public static provideApplicationContext(Lzendesk/core/ZendeskApplicationModule;)Landroid/content/Context;
    .locals 0

    .line 37
    invoke-virtual {p0}, Lzendesk/core/ZendeskApplicationModule;->provideApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/content/Context;
    .locals 1

    .line 28
    iget-object v0, p0, Lzendesk/core/ZendeskApplicationModule_ProvideApplicationContextFactory;->module:Lzendesk/core/ZendeskApplicationModule;

    invoke-static {v0}, Lzendesk/core/ZendeskApplicationModule_ProvideApplicationContextFactory;->provideApplicationContext(Lzendesk/core/ZendeskApplicationModule;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lzendesk/core/ZendeskApplicationModule_ProvideApplicationContextFactory;->get()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
