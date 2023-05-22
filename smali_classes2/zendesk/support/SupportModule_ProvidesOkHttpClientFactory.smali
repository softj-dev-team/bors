.class public final Lzendesk/support/SupportModule_ProvidesOkHttpClientFactory;
.super Ljava/lang/Object;
.source "SupportModule_ProvidesOkHttpClientFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lokhttp3/OkHttpClient;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lzendesk/support/SupportModule;


# direct methods
.method public constructor <init>(Lzendesk/support/SupportModule;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lzendesk/support/SupportModule_ProvidesOkHttpClientFactory;->module:Lzendesk/support/SupportModule;

    return-void
.end method

.method public static create(Lzendesk/support/SupportModule;)Lzendesk/support/SupportModule_ProvidesOkHttpClientFactory;
    .locals 1

    .line 31
    new-instance v0, Lzendesk/support/SupportModule_ProvidesOkHttpClientFactory;

    invoke-direct {v0, p0}, Lzendesk/support/SupportModule_ProvidesOkHttpClientFactory;-><init>(Lzendesk/support/SupportModule;)V

    return-object v0
.end method

.method public static providesOkHttpClient(Lzendesk/support/SupportModule;)Lokhttp3/OkHttpClient;
    .locals 0

    .line 35
    invoke-virtual {p0}, Lzendesk/support/SupportModule;->providesOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lokhttp3/OkHttpClient;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lzendesk/support/SupportModule_ProvidesOkHttpClientFactory;->get()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public get()Lokhttp3/OkHttpClient;
    .locals 1

    .line 27
    iget-object v0, p0, Lzendesk/support/SupportModule_ProvidesOkHttpClientFactory;->module:Lzendesk/support/SupportModule;

    invoke-static {v0}, Lzendesk/support/SupportModule_ProvidesOkHttpClientFactory;->providesOkHttpClient(Lzendesk/support/SupportModule;)Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method
