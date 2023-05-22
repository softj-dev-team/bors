.class public final Lzendesk/core/ZendeskApplicationModule_ProvideBase64SerializerFactory;
.super Ljava/lang/Object;
.source "ZendeskApplicationModule_ProvideBase64SerializerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/core/Serializer;",
        ">;"
    }
.end annotation


# instance fields
.field private final gsonSerializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/Serializer;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lzendesk/core/ZendeskApplicationModule;


# direct methods
.method public constructor <init>(Lzendesk/core/ZendeskApplicationModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/core/ZendeskApplicationModule;",
            "Ljavax/inject/Provider<",
            "Lzendesk/core/Serializer;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lzendesk/core/ZendeskApplicationModule_ProvideBase64SerializerFactory;->module:Lzendesk/core/ZendeskApplicationModule;

    .line 26
    iput-object p2, p0, Lzendesk/core/ZendeskApplicationModule_ProvideBase64SerializerFactory;->gsonSerializerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lzendesk/core/ZendeskApplicationModule;Ljavax/inject/Provider;)Lzendesk/core/ZendeskApplicationModule_ProvideBase64SerializerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/core/ZendeskApplicationModule;",
            "Ljavax/inject/Provider<",
            "Lzendesk/core/Serializer;",
            ">;)",
            "Lzendesk/core/ZendeskApplicationModule_ProvideBase64SerializerFactory;"
        }
    .end annotation

    .line 36
    new-instance v0, Lzendesk/core/ZendeskApplicationModule_ProvideBase64SerializerFactory;

    invoke-direct {v0, p0, p1}, Lzendesk/core/ZendeskApplicationModule_ProvideBase64SerializerFactory;-><init>(Lzendesk/core/ZendeskApplicationModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideBase64Serializer(Lzendesk/core/ZendeskApplicationModule;Ljava/lang/Object;)Lzendesk/core/Serializer;
    .locals 0

    .line 41
    check-cast p1, Lzendesk/core/Serializer;

    invoke-virtual {p0, p1}, Lzendesk/core/ZendeskApplicationModule;->provideBase64Serializer(Lzendesk/core/Serializer;)Lzendesk/core/Serializer;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/core/Serializer;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lzendesk/core/ZendeskApplicationModule_ProvideBase64SerializerFactory;->get()Lzendesk/core/Serializer;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/core/Serializer;
    .locals 2

    .line 31
    iget-object v0, p0, Lzendesk/core/ZendeskApplicationModule_ProvideBase64SerializerFactory;->module:Lzendesk/core/ZendeskApplicationModule;

    iget-object v1, p0, Lzendesk/core/ZendeskApplicationModule_ProvideBase64SerializerFactory;->gsonSerializerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lzendesk/core/ZendeskApplicationModule_ProvideBase64SerializerFactory;->provideBase64Serializer(Lzendesk/core/ZendeskApplicationModule;Ljava/lang/Object;)Lzendesk/core/Serializer;

    move-result-object v0

    return-object v0
.end method
