.class final Lzendesk/support/DaggerSupportEngineComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerSupportEngineComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/DaggerSupportEngineComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private coreModule:Lzendesk/core/CoreModule;

.field private supportEngineModule:Lzendesk/support/SupportEngineModule;

.field private supportModule:Lzendesk/support/SupportModule;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lzendesk/support/DaggerSupportEngineComponent$1;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lzendesk/support/DaggerSupportEngineComponent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lzendesk/support/SupportEngineComponent;
    .locals 5

    .line 57
    iget-object v0, p0, Lzendesk/support/DaggerSupportEngineComponent$Builder;->coreModule:Lzendesk/core/CoreModule;

    const-class v1, Lzendesk/core/CoreModule;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 58
    iget-object v0, p0, Lzendesk/support/DaggerSupportEngineComponent$Builder;->supportModule:Lzendesk/support/SupportModule;

    const-class v1, Lzendesk/support/SupportModule;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 59
    iget-object v0, p0, Lzendesk/support/DaggerSupportEngineComponent$Builder;->supportEngineModule:Lzendesk/support/SupportEngineModule;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lzendesk/support/SupportEngineModule;

    invoke-direct {v0}, Lzendesk/support/SupportEngineModule;-><init>()V

    iput-object v0, p0, Lzendesk/support/DaggerSupportEngineComponent$Builder;->supportEngineModule:Lzendesk/support/SupportEngineModule;

    .line 62
    :cond_0
    new-instance v0, Lzendesk/support/DaggerSupportEngineComponent$SupportEngineComponentImpl;

    iget-object v1, p0, Lzendesk/support/DaggerSupportEngineComponent$Builder;->coreModule:Lzendesk/core/CoreModule;

    iget-object v2, p0, Lzendesk/support/DaggerSupportEngineComponent$Builder;->supportModule:Lzendesk/support/SupportModule;

    iget-object v3, p0, Lzendesk/support/DaggerSupportEngineComponent$Builder;->supportEngineModule:Lzendesk/support/SupportEngineModule;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lzendesk/support/DaggerSupportEngineComponent$SupportEngineComponentImpl;-><init>(Lzendesk/core/CoreModule;Lzendesk/support/SupportModule;Lzendesk/support/SupportEngineModule;Lzendesk/support/DaggerSupportEngineComponent$1;)V

    return-object v0
.end method

.method public coreModule(Lzendesk/core/CoreModule;)Lzendesk/support/DaggerSupportEngineComponent$Builder;
    .locals 0

    .line 42
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzendesk/core/CoreModule;

    iput-object p1, p0, Lzendesk/support/DaggerSupportEngineComponent$Builder;->coreModule:Lzendesk/core/CoreModule;

    return-object p0
.end method

.method public supportEngineModule(Lzendesk/support/SupportEngineModule;)Lzendesk/support/DaggerSupportEngineComponent$Builder;
    .locals 0

    .line 52
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzendesk/support/SupportEngineModule;

    iput-object p1, p0, Lzendesk/support/DaggerSupportEngineComponent$Builder;->supportEngineModule:Lzendesk/support/SupportEngineModule;

    return-object p0
.end method

.method public supportModule(Lzendesk/support/SupportModule;)Lzendesk/support/DaggerSupportEngineComponent$Builder;
    .locals 0

    .line 47
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzendesk/support/SupportModule;

    iput-object p1, p0, Lzendesk/support/DaggerSupportEngineComponent$Builder;->supportModule:Lzendesk/support/SupportModule;

    return-object p0
.end method
