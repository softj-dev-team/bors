.class Lzendesk/support/ServiceModule;
.super Ljava/lang/Object;
.source "ServiceModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static provideZendeskRequestService(Lzendesk/support/RequestService;)Lzendesk/support/ZendeskRequestService;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 18
    new-instance v0, Lzendesk/support/ZendeskRequestService;

    invoke-direct {v0, p0}, Lzendesk/support/ZendeskRequestService;-><init>(Lzendesk/support/RequestService;)V

    return-object v0
.end method

.method static provideZendeskUploadService(Lzendesk/support/UploadService;)Lzendesk/support/ZendeskUploadService;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 24
    new-instance v0, Lzendesk/support/ZendeskUploadService;

    invoke-direct {v0, p0}, Lzendesk/support/ZendeskUploadService;-><init>(Lzendesk/support/UploadService;)V

    return-object v0
.end method

.method static providesRequestService(Lzendesk/core/RestServiceProvider;)Lzendesk/support/RequestService;
    .locals 3
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 30
    const-class v0, Lzendesk/support/RequestService;

    const-string v1, "5.1.0"

    const-string v2, "Support"

    invoke-interface {p0, v0, v1, v2}, Lzendesk/core/RestServiceProvider;->createRestService(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/support/RequestService;

    return-object p0
.end method

.method static providesUploadService(Lzendesk/core/RestServiceProvider;)Lzendesk/support/UploadService;
    .locals 3
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 37
    const-class v0, Lzendesk/support/UploadService;

    const-string v1, "5.1.0"

    const-string v2, "Support"

    invoke-interface {p0, v0, v1, v2}, Lzendesk/core/RestServiceProvider;->createRestService(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/support/UploadService;

    return-object p0
.end method
