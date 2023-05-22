.class public final Lzendesk/core/ZendeskStorageModule_ProvideMachineIdStorageFactory;
.super Ljava/lang/Object;
.source "ZendeskStorageModule_ProvideMachineIdStorageFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/core/MachineIdStorage;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lzendesk/core/ZendeskStorageModule_ProvideMachineIdStorageFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lzendesk/core/ZendeskStorageModule_ProvideMachineIdStorageFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lzendesk/core/ZendeskStorageModule_ProvideMachineIdStorageFactory;"
        }
    .end annotation

    .line 33
    new-instance v0, Lzendesk/core/ZendeskStorageModule_ProvideMachineIdStorageFactory;

    invoke-direct {v0, p0}, Lzendesk/core/ZendeskStorageModule_ProvideMachineIdStorageFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideMachineIdStorage(Landroid/content/Context;)Lzendesk/core/MachineIdStorage;
    .locals 0

    .line 37
    invoke-static {p0}, Lzendesk/core/ZendeskStorageModule;->provideMachineIdStorage(Landroid/content/Context;)Lzendesk/core/MachineIdStorage;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/core/MachineIdStorage;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lzendesk/core/ZendeskStorageModule_ProvideMachineIdStorageFactory;->get()Lzendesk/core/MachineIdStorage;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/core/MachineIdStorage;
    .locals 1

    .line 28
    iget-object v0, p0, Lzendesk/core/ZendeskStorageModule_ProvideMachineIdStorageFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lzendesk/core/ZendeskStorageModule_ProvideMachineIdStorageFactory;->provideMachineIdStorage(Landroid/content/Context;)Lzendesk/core/MachineIdStorage;

    move-result-object v0

    return-object v0
.end method
