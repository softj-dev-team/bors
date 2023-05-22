.class abstract Lzendesk/messaging/MessagingActivityModule;
.super Ljava/lang/Object;
.source "MessagingActivityModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static belvedereUi(Landroidx/appcompat/app/AppCompatActivity;)Lzendesk/belvedere/ImageStream;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Lzendesk/messaging/MessagingActivityScope;
    .end annotation

    .line 32
    invoke-static {p0}, Lzendesk/belvedere/BelvedereUi;->install(Landroidx/appcompat/app/AppCompatActivity;)Lzendesk/belvedere/ImageStream;

    move-result-object p0

    return-object p0
.end method

.method static dateProvider()Lzendesk/messaging/components/DateProvider;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Lzendesk/messaging/MessagingActivityScope;
    .end annotation

    .line 38
    new-instance v0, Lzendesk/messaging/components/DateProvider;

    invoke-direct {v0}, Lzendesk/messaging/components/DateProvider;-><init>()V

    return-object v0
.end method

.method static handler()Landroid/os/Handler;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Lzendesk/messaging/MessagingActivityScope;
    .end annotation

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method static multilineResponseOptionsEnabled(Lzendesk/messaging/MessagingComponent;)Z
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "Quick reply wrapping enabled"
    .end annotation

    .annotation runtime Lzendesk/messaging/MessagingActivityScope;
    .end annotation

    .line 45
    invoke-interface {p0}, Lzendesk/messaging/MessagingComponent;->messagingConfiguration()Lzendesk/messaging/MessagingConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lzendesk/messaging/MessagingConfiguration;->isMultilineResponseOptionsEnabled()Z

    move-result p0

    return p0
.end method


# virtual methods
.method abstract eventListener(Lzendesk/messaging/MessagingViewModel;)Lzendesk/messaging/EventListener;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method
