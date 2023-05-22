.class public final Lzendesk/support/DaggerSupportSdkComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerSupportSdkComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/DaggerSupportSdkComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private coreModule:Lzendesk/core/CoreModule;

.field private supportModule:Lzendesk/support/SupportModule;

.field private supportSdkModule:Lzendesk/support/SupportSdkModule;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lzendesk/support/DaggerSupportSdkComponent$1;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lzendesk/support/DaggerSupportSdkComponent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lzendesk/support/SupportSdkComponent;
    .locals 5

    .line 108
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$Builder;->coreModule:Lzendesk/core/CoreModule;

    const-class v1, Lzendesk/core/CoreModule;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 109
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$Builder;->supportModule:Lzendesk/support/SupportModule;

    const-class v1, Lzendesk/support/SupportModule;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 110
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$Builder;->supportSdkModule:Lzendesk/support/SupportSdkModule;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lzendesk/support/SupportSdkModule;

    invoke-direct {v0}, Lzendesk/support/SupportSdkModule;-><init>()V

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$Builder;->supportSdkModule:Lzendesk/support/SupportSdkModule;

    .line 113
    :cond_0
    new-instance v0, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;

    iget-object v1, p0, Lzendesk/support/DaggerSupportSdkComponent$Builder;->coreModule:Lzendesk/core/CoreModule;

    iget-object v2, p0, Lzendesk/support/DaggerSupportSdkComponent$Builder;->supportModule:Lzendesk/support/SupportModule;

    iget-object v3, p0, Lzendesk/support/DaggerSupportSdkComponent$Builder;->supportSdkModule:Lzendesk/support/SupportSdkModule;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;-><init>(Lzendesk/core/CoreModule;Lzendesk/support/SupportModule;Lzendesk/support/SupportSdkModule;Lzendesk/support/DaggerSupportSdkComponent$1;)V

    return-object v0
.end method

.method public coreModule(Lzendesk/core/CoreModule;)Lzendesk/support/DaggerSupportSdkComponent$Builder;
    .locals 0

    .line 93
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzendesk/core/CoreModule;

    iput-object p1, p0, Lzendesk/support/DaggerSupportSdkComponent$Builder;->coreModule:Lzendesk/core/CoreModule;

    return-object p0
.end method

.method public supportModule(Lzendesk/support/SupportModule;)Lzendesk/support/DaggerSupportSdkComponent$Builder;
    .locals 0

    .line 98
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzendesk/support/SupportModule;

    iput-object p1, p0, Lzendesk/support/DaggerSupportSdkComponent$Builder;->supportModule:Lzendesk/support/SupportModule;

    return-object p0
.end method

.method public supportSdkModule(Lzendesk/support/SupportSdkModule;)Lzendesk/support/DaggerSupportSdkComponent$Builder;
    .locals 0

    .line 103
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzendesk/support/SupportSdkModule;

    iput-object p1, p0, Lzendesk/support/DaggerSupportSdkComponent$Builder;->supportSdkModule:Lzendesk/support/SupportSdkModule;

    return-object p0
.end method
