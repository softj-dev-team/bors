.class Lzendesk/support/guide/GuideSdkModule;
.super Ljava/lang/Object;
.source "GuideSdkModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static viewArticleActionHandler()Lzendesk/core/ActionHandler;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 17
    new-instance v0, Lzendesk/support/guide/ViewArticleActionHandler;

    invoke-direct {v0}, Lzendesk/support/guide/ViewArticleActionHandler;-><init>()V

    return-object v0
.end method


# virtual methods
.method configurationHelper()Lzendesk/configurations/ConfigurationHelper;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 22
    new-instance v0, Lzendesk/configurations/ConfigurationHelper;

    invoke-direct {v0}, Lzendesk/configurations/ConfigurationHelper;-><init>()V

    return-object v0
.end method
