.class public final Lzendesk/core/CoreModule_GetApplicationContextFactory;
.super Ljava/lang/Object;
.source "CoreModule_GetApplicationContextFactory.java"

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
.field private final module:Lzendesk/core/CoreModule;


# direct methods
.method public constructor <init>(Lzendesk/core/CoreModule;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lzendesk/core/CoreModule_GetApplicationContextFactory;->module:Lzendesk/core/CoreModule;

    return-void
.end method

.method public static create(Lzendesk/core/CoreModule;)Lzendesk/core/CoreModule_GetApplicationContextFactory;
    .locals 1

    .line 31
    new-instance v0, Lzendesk/core/CoreModule_GetApplicationContextFactory;

    invoke-direct {v0, p0}, Lzendesk/core/CoreModule_GetApplicationContextFactory;-><init>(Lzendesk/core/CoreModule;)V

    return-object v0
.end method

.method public static getApplicationContext(Lzendesk/core/CoreModule;)Landroid/content/Context;
    .locals 0

    .line 35
    invoke-virtual {p0}, Lzendesk/core/CoreModule;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/content/Context;
    .locals 1

    .line 27
    iget-object v0, p0, Lzendesk/core/CoreModule_GetApplicationContextFactory;->module:Lzendesk/core/CoreModule;

    invoke-static {v0}, Lzendesk/core/CoreModule_GetApplicationContextFactory;->getApplicationContext(Lzendesk/core/CoreModule;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lzendesk/core/CoreModule_GetApplicationContextFactory;->get()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
