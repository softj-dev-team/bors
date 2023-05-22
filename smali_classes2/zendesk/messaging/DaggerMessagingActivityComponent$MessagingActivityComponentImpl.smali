.class final Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;
.super Ljava/lang/Object;
.source "DaggerMessagingActivityComponent.java"

# interfaces
.implements Lzendesk/messaging/MessagingActivityComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/messaging/DaggerMessagingActivityComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MessagingActivityComponentImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl$BelvedereProvider;,
        Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl$BelvedereMediaHolderProvider;,
        Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl$PicassoProvider;,
        Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl$MessagingViewModelProvider;,
        Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl$ResourcesProvider;
    }
.end annotation


# instance fields
.field private activityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/appcompat/app/AppCompatActivity;",
            ">;"
        }
    .end annotation
.end field

.field private avatarStateRendererProvider:Ljavax/inject/Provider;

.field private belvedereMediaHolderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/BelvedereMediaHolder;",
            ">;"
        }
    .end annotation
.end field

.field private belvedereMediaResolverCallbackProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/BelvedereMediaResolverCallback;",
            ">;"
        }
    .end annotation
.end field

.field private belvedereProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/belvedere/Belvedere;",
            ">;"
        }
    .end annotation
.end field

.field private belvedereUiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/belvedere/ImageStream;",
            ">;"
        }
    .end annotation
.end field

.field private dateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/DateProvider;",
            ">;"
        }
    .end annotation
.end field

.field private eventFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/EventFactory;",
            ">;"
        }
    .end annotation
.end field

.field private handlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private inputBoxAttachmentClickListenerProvider:Ljavax/inject/Provider;

.field private inputBoxConsumerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/ui/InputBoxConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private final messagingActivityComponentImpl:Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;

.field private messagingCellFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/ui/MessagingCellFactory;",
            ">;"
        }
    .end annotation
.end field

.field private messagingCellPropsFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/ui/MessagingCellPropsFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final messagingComponent:Lzendesk/messaging/MessagingComponent;

.field private messagingComponentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/MessagingComponent;",
            ">;"
        }
    .end annotation
.end field

.field private messagingComposerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/ui/MessagingComposer;",
            ">;"
        }
    .end annotation
.end field

.field private messagingDialogProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/MessagingDialog;",
            ">;"
        }
    .end annotation
.end field

.field private messagingViewModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/MessagingViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private multilineResponseOptionsEnabledProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private picassoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/squareup/picasso/Picasso;",
            ">;"
        }
    .end annotation
.end field

.field private resourcesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field private typingEventDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/TypingEventDispatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lzendesk/messaging/MessagingComponent;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p0, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->messagingActivityComponentImpl:Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;

    .line 117
    iput-object p1, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->messagingComponent:Lzendesk/messaging/MessagingComponent;

    .line 118
    invoke-direct {p0, p1, p2}, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->initialize(Lzendesk/messaging/MessagingComponent;Landroidx/appcompat/app/AppCompatActivity;)V

    return-void
.end method

.method synthetic constructor <init>(Lzendesk/messaging/MessagingComponent;Landroidx/appcompat/app/AppCompatActivity;Lzendesk/messaging/DaggerMessagingActivityComponent$1;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;-><init>(Lzendesk/messaging/MessagingComponent;Landroidx/appcompat/app/AppCompatActivity;)V

    return-void
.end method

.method private initialize(Lzendesk/messaging/MessagingComponent;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 8

    .line 125
    new-instance v0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl$ResourcesProvider;

    invoke-direct {v0, p1}, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl$ResourcesProvider;-><init>(Lzendesk/messaging/MessagingComponent;)V

    iput-object v0, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->resourcesProvider:Ljavax/inject/Provider;

    .line 126
    invoke-static {v0}, Lzendesk/messaging/ui/MessagingCellPropsFactory_Factory;->create(Ljavax/inject/Provider;)Lzendesk/messaging/ui/MessagingCellPropsFactory_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->messagingCellPropsFactoryProvider:Ljavax/inject/Provider;

    .line 127
    invoke-static {}, Lzendesk/messaging/MessagingActivityModule_DateProviderFactory;->create()Lzendesk/messaging/MessagingActivityModule_DateProviderFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->dateProvider:Ljavax/inject/Provider;

    .line 128
    new-instance v0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl$MessagingViewModelProvider;

    invoke-direct {v0, p1}, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl$MessagingViewModelProvider;-><init>(Lzendesk/messaging/MessagingComponent;)V

    iput-object v0, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->messagingViewModelProvider:Ljavax/inject/Provider;

    .line 129
    iget-object v0, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->dateProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lzendesk/messaging/EventFactory_Factory;->create(Ljavax/inject/Provider;)Lzendesk/messaging/EventFactory_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->eventFactoryProvider:Ljavax/inject/Provider;

    .line 130
    new-instance v0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl$PicassoProvider;

    invoke-direct {v0, p1}, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl$PicassoProvider;-><init>(Lzendesk/messaging/MessagingComponent;)V

    iput-object v0, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->picassoProvider:Ljavax/inject/Provider;

    .line 131
    invoke-static {v0}, Lzendesk/messaging/ui/AvatarStateRenderer_Factory;->create(Ljavax/inject/Provider;)Lzendesk/messaging/ui/AvatarStateRenderer_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->avatarStateRendererProvider:Ljavax/inject/Provider;

    .line 132
    invoke-static {p1}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v0

    iput-object v0, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->messagingComponentProvider:Ljavax/inject/Provider;

    .line 133
    invoke-static {v0}, Lzendesk/messaging/MessagingActivityModule_MultilineResponseOptionsEnabledFactory;->create(Ljavax/inject/Provider;)Lzendesk/messaging/MessagingActivityModule_MultilineResponseOptionsEnabledFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->multilineResponseOptionsEnabledProvider:Ljavax/inject/Provider;

    .line 134
    iget-object v1, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->messagingCellPropsFactoryProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->dateProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->messagingViewModelProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->eventFactoryProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->avatarStateRendererProvider:Ljavax/inject/Provider;

    invoke-static {}, Lzendesk/messaging/ui/AvatarStateFactory_Factory;->create()Lzendesk/messaging/ui/AvatarStateFactory_Factory;

    move-result-object v6

    iget-object v7, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->multilineResponseOptionsEnabledProvider:Ljavax/inject/Provider;

    invoke-static/range {v1 .. v7}, Lzendesk/messaging/ui/MessagingCellFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/messaging/ui/MessagingCellFactory_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->messagingCellFactoryProvider:Ljavax/inject/Provider;

    .line 135
    invoke-static {p2}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object p2

    iput-object p2, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->activityProvider:Ljavax/inject/Provider;

    .line 136
    invoke-static {p2}, Lzendesk/messaging/MessagingActivityModule_BelvedereUiFactory;->create(Ljavax/inject/Provider;)Lzendesk/messaging/MessagingActivityModule_BelvedereUiFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->belvedereUiProvider:Ljavax/inject/Provider;

    .line 137
    new-instance p2, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl$BelvedereMediaHolderProvider;

    invoke-direct {p2, p1}, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl$BelvedereMediaHolderProvider;-><init>(Lzendesk/messaging/MessagingComponent;)V

    iput-object p2, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->belvedereMediaHolderProvider:Ljavax/inject/Provider;

    .line 138
    new-instance p2, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl$BelvedereProvider;

    invoke-direct {p2, p1}, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl$BelvedereProvider;-><init>(Lzendesk/messaging/MessagingComponent;)V

    iput-object p2, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->belvedereProvider:Ljavax/inject/Provider;

    .line 139
    iget-object p1, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->messagingViewModelProvider:Ljavax/inject/Provider;

    iget-object p2, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->eventFactoryProvider:Ljavax/inject/Provider;

    invoke-static {p1, p2}, Lzendesk/messaging/BelvedereMediaResolverCallback_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/messaging/BelvedereMediaResolverCallback_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v5

    iput-object v5, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->belvedereMediaResolverCallbackProvider:Ljavax/inject/Provider;

    .line 140
    iget-object v0, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->messagingViewModelProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->eventFactoryProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->belvedereUiProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->belvedereProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->belvedereMediaHolderProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v5}, Lzendesk/messaging/ui/InputBoxConsumer_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/messaging/ui/InputBoxConsumer_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->inputBoxConsumerProvider:Ljavax/inject/Provider;

    .line 141
    iget-object p1, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->activityProvider:Ljavax/inject/Provider;

    iget-object p2, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->belvedereUiProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->belvedereMediaHolderProvider:Ljavax/inject/Provider;

    invoke-static {p1, p2, v0}, Lzendesk/messaging/ui/InputBoxAttachmentClickListener_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/messaging/ui/InputBoxAttachmentClickListener_Factory;

    move-result-object p1

    iput-object p1, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->inputBoxAttachmentClickListenerProvider:Ljavax/inject/Provider;

    .line 142
    invoke-static {}, Lzendesk/messaging/MessagingActivityModule_HandlerFactory;->create()Lzendesk/messaging/MessagingActivityModule_HandlerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->handlerProvider:Ljavax/inject/Provider;

    .line 143
    iget-object p2, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->messagingViewModelProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->eventFactoryProvider:Ljavax/inject/Provider;

    invoke-static {p2, p1, v0}, Lzendesk/messaging/TypingEventDispatcher_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/messaging/TypingEventDispatcher_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v6

    iput-object v6, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->typingEventDispatcherProvider:Ljavax/inject/Provider;

    .line 144
    iget-object v0, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->activityProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->messagingViewModelProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->belvedereUiProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->belvedereMediaHolderProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->inputBoxConsumerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->inputBoxAttachmentClickListenerProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v6}, Lzendesk/messaging/ui/MessagingComposer_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/messaging/ui/MessagingComposer_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->messagingComposerProvider:Ljavax/inject/Provider;

    .line 145
    iget-object p1, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->activityProvider:Ljavax/inject/Provider;

    iget-object p2, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->messagingViewModelProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->dateProvider:Ljavax/inject/Provider;

    invoke-static {p1, p2, v0}, Lzendesk/messaging/MessagingDialog_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/messaging/MessagingDialog_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->messagingDialogProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private injectMessagingActivity(Lzendesk/messaging/MessagingActivity;)Lzendesk/messaging/MessagingActivity;
    .locals 1

    .line 154
    iget-object v0, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->messagingComponent:Lzendesk/messaging/MessagingComponent;

    invoke-interface {v0}, Lzendesk/messaging/MessagingComponent;->messagingViewModel()Lzendesk/messaging/MessagingViewModel;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromComponent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/messaging/MessagingViewModel;

    invoke-static {p1, v0}, Lzendesk/messaging/MessagingActivity_MembersInjector;->injectViewModel(Lzendesk/messaging/MessagingActivity;Lzendesk/messaging/MessagingViewModel;)V

    .line 155
    iget-object v0, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->messagingCellFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/messaging/ui/MessagingCellFactory;

    invoke-static {p1, v0}, Lzendesk/messaging/MessagingActivity_MembersInjector;->injectMessagingCellFactory(Lzendesk/messaging/MessagingActivity;Lzendesk/messaging/ui/MessagingCellFactory;)V

    .line 156
    iget-object v0, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->messagingComponent:Lzendesk/messaging/MessagingComponent;

    invoke-interface {v0}, Lzendesk/messaging/MessagingComponent;->picasso()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromComponent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/Picasso;

    invoke-static {p1, v0}, Lzendesk/messaging/MessagingActivity_MembersInjector;->injectPicasso(Lzendesk/messaging/MessagingActivity;Lcom/squareup/picasso/Picasso;)V

    .line 157
    iget-object v0, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->eventFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/messaging/EventFactory;

    invoke-static {p1, v0}, Lzendesk/messaging/MessagingActivity_MembersInjector;->injectEventFactory(Lzendesk/messaging/MessagingActivity;Lzendesk/messaging/EventFactory;)V

    .line 158
    iget-object v0, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->messagingComposerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/messaging/ui/MessagingComposer;

    invoke-static {p1, v0}, Lzendesk/messaging/MessagingActivity_MembersInjector;->injectMessagingComposer(Lzendesk/messaging/MessagingActivity;Lzendesk/messaging/ui/MessagingComposer;)V

    .line 159
    iget-object v0, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->messagingDialogProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/messaging/MessagingActivity_MembersInjector;->injectMessagingDialog(Lzendesk/messaging/MessagingActivity;Ljava/lang/Object;)V

    return-object p1
.end method


# virtual methods
.method public inject(Lzendesk/messaging/MessagingActivity;)V
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;->injectMessagingActivity(Lzendesk/messaging/MessagingActivity;)Lzendesk/messaging/MessagingActivity;

    return-void
.end method
