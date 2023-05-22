.class public final Lzendesk/core/ZendeskApplicationModule_ProvideDeviceInfoFactory;
.super Ljava/lang/Object;
.source "ZendeskApplicationModule_ProvideDeviceInfoFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/core/DeviceInfo;",
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
    iput-object p1, p0, Lzendesk/core/ZendeskApplicationModule_ProvideDeviceInfoFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lzendesk/core/ZendeskApplicationModule_ProvideDeviceInfoFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lzendesk/core/ZendeskApplicationModule_ProvideDeviceInfoFactory;"
        }
    .end annotation

    .line 33
    new-instance v0, Lzendesk/core/ZendeskApplicationModule_ProvideDeviceInfoFactory;

    invoke-direct {v0, p0}, Lzendesk/core/ZendeskApplicationModule_ProvideDeviceInfoFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideDeviceInfo(Landroid/content/Context;)Lzendesk/core/DeviceInfo;
    .locals 0

    .line 37
    invoke-static {p0}, Lzendesk/core/ZendeskApplicationModule;->provideDeviceInfo(Landroid/content/Context;)Lzendesk/core/DeviceInfo;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/core/DeviceInfo;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lzendesk/core/ZendeskApplicationModule_ProvideDeviceInfoFactory;->get()Lzendesk/core/DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/core/DeviceInfo;
    .locals 1

    .line 28
    iget-object v0, p0, Lzendesk/core/ZendeskApplicationModule_ProvideDeviceInfoFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lzendesk/core/ZendeskApplicationModule_ProvideDeviceInfoFactory;->provideDeviceInfo(Landroid/content/Context;)Lzendesk/core/DeviceInfo;

    move-result-object v0

    return-object v0
.end method
