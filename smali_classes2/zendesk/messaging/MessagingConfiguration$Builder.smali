.class public Lzendesk/messaging/MessagingConfiguration$Builder;
.super Ljava/lang/Object;
.source "MessagingConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/messaging/MessagingConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private botAvatarDrawable:I

.field private botLabelString:Ljava/lang/String;

.field private botLabelStringRes:I

.field private configurations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/configurations/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field private engines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/messaging/Engine;",
            ">;"
        }
    .end annotation
.end field

.field private multilineResponseOptionsEnabled:Z

.field private toolbarTitle:Ljava/lang/String;

.field private toolbarTitleRes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzendesk/messaging/MessagingConfiguration$Builder;->configurations:Ljava/util/List;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzendesk/messaging/MessagingConfiguration$Builder;->engines:Ljava/util/List;

    .line 100
    sget v0, Lzendesk/messaging/R$string;->zui_toolbar_title:I

    iput v0, p0, Lzendesk/messaging/MessagingConfiguration$Builder;->toolbarTitleRes:I

    .line 103
    sget v0, Lzendesk/messaging/R$string;->zui_default_bot_name:I

    iput v0, p0, Lzendesk/messaging/MessagingConfiguration$Builder;->botLabelStringRes:I

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lzendesk/messaging/MessagingConfiguration$Builder;->multilineResponseOptionsEnabled:Z

    .line 108
    sget v0, Lzendesk/messaging/R$drawable;->zui_avatar_bot_default:I

    iput v0, p0, Lzendesk/messaging/MessagingConfiguration$Builder;->botAvatarDrawable:I

    return-void
.end method

.method static synthetic access$000(Lzendesk/messaging/MessagingConfiguration$Builder;)Ljava/util/List;
    .locals 0

    .line 96
    iget-object p0, p0, Lzendesk/messaging/MessagingConfiguration$Builder;->configurations:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lzendesk/messaging/MessagingConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    .line 96
    iget-object p0, p0, Lzendesk/messaging/MessagingConfiguration$Builder;->toolbarTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lzendesk/messaging/MessagingConfiguration$Builder;)I
    .locals 0

    .line 96
    iget p0, p0, Lzendesk/messaging/MessagingConfiguration$Builder;->toolbarTitleRes:I

    return p0
.end method

.method static synthetic access$300(Lzendesk/messaging/MessagingConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    .line 96
    iget-object p0, p0, Lzendesk/messaging/MessagingConfiguration$Builder;->botLabelString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lzendesk/messaging/MessagingConfiguration$Builder;)I
    .locals 0

    .line 96
    iget p0, p0, Lzendesk/messaging/MessagingConfiguration$Builder;->botLabelStringRes:I

    return p0
.end method

.method static synthetic access$500(Lzendesk/messaging/MessagingConfiguration$Builder;)I
    .locals 0

    .line 96
    iget p0, p0, Lzendesk/messaging/MessagingConfiguration$Builder;->botAvatarDrawable:I

    return p0
.end method

.method static synthetic access$600(Lzendesk/messaging/MessagingConfiguration$Builder;)Z
    .locals 0

    .line 96
    iget-boolean p0, p0, Lzendesk/messaging/MessagingConfiguration$Builder;->multilineResponseOptionsEnabled:Z

    return p0
.end method


# virtual methods
.method public config(Landroid/content/Context;)Lzendesk/configurations/Configuration;
    .locals 2

    .line 243
    sget-object p1, Lzendesk/messaging/EngineListRegistry;->INSTANCE:Lzendesk/messaging/EngineListRegistry;

    iget-object v0, p0, Lzendesk/messaging/MessagingConfiguration$Builder;->engines:Ljava/util/List;

    invoke-virtual {p1, v0}, Lzendesk/messaging/EngineListRegistry;->register(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 244
    new-instance v0, Lzendesk/messaging/MessagingConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lzendesk/messaging/MessagingConfiguration;-><init>(Lzendesk/messaging/MessagingConfiguration$Builder;Ljava/lang/String;Lzendesk/messaging/MessagingConfiguration$1;)V

    return-object v0
.end method

.method public intent(Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lzendesk/configurations/Configuration;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 271
    iput-object p2, p0, Lzendesk/messaging/MessagingConfiguration$Builder;->configurations:Ljava/util/List;

    .line 273
    invoke-virtual {p0, p1}, Lzendesk/messaging/MessagingConfiguration$Builder;->config(Landroid/content/Context;)Lzendesk/configurations/Configuration;

    move-result-object p2

    .line 274
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lzendesk/messaging/MessagingActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 276
    invoke-static {}, Lzendesk/configurations/ConfigurationHelper;->get()Lzendesk/configurations/ConfigurationHelper;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lzendesk/configurations/ConfigurationHelper;->addToIntent(Landroid/content/Intent;Lzendesk/configurations/Configuration;)V

    return-object v0
.end method

.method public varargs intent(Landroid/content/Context;[Lzendesk/configurations/Configuration;)Landroid/content/Intent;
    .locals 0

    .line 257
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lzendesk/messaging/MessagingConfiguration$Builder;->intent(Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public show(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lzendesk/configurations/Configuration;",
            ">;)V"
        }
    .end annotation

    .line 235
    invoke-virtual {p0, p1, p2}, Lzendesk/messaging/MessagingConfiguration$Builder;->intent(Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public varargs show(Landroid/content/Context;[Lzendesk/configurations/Configuration;)V
    .locals 0

    .line 224
    invoke-virtual {p0, p1, p2}, Lzendesk/messaging/MessagingConfiguration$Builder;->intent(Landroid/content/Context;[Lzendesk/configurations/Configuration;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public withBotAvatarDrawable(I)Lzendesk/messaging/MessagingConfiguration$Builder;
    .locals 0

    .line 196
    iput p1, p0, Lzendesk/messaging/MessagingConfiguration$Builder;->botAvatarDrawable:I

    return-object p0
.end method

.method public withBotLabelString(Ljava/lang/String;)Lzendesk/messaging/MessagingConfiguration$Builder;
    .locals 0

    .line 183
    iput-object p1, p0, Lzendesk/messaging/MessagingConfiguration$Builder;->botLabelString:Ljava/lang/String;

    return-object p0
.end method

.method public withBotLabelStringRes(I)Lzendesk/messaging/MessagingConfiguration$Builder;
    .locals 0

    .line 170
    iput p1, p0, Lzendesk/messaging/MessagingConfiguration$Builder;->botLabelStringRes:I

    return-object p0
.end method

.method public withEngines(Ljava/util/List;)Lzendesk/messaging/MessagingConfiguration$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/messaging/Engine;",
            ">;)",
            "Lzendesk/messaging/MessagingConfiguration$Builder;"
        }
    .end annotation

    .line 118
    iput-object p1, p0, Lzendesk/messaging/MessagingConfiguration$Builder;->engines:Ljava/util/List;

    return-object p0
.end method

.method public varargs withEngines([Lzendesk/messaging/Engine;)Lzendesk/messaging/MessagingConfiguration$Builder;
    .locals 0

    .line 129
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lzendesk/messaging/MessagingConfiguration$Builder;->engines:Ljava/util/List;

    return-object p0
.end method

.method public withMultilineResponseOptionsEnabled(Z)Lzendesk/messaging/MessagingConfiguration$Builder;
    .locals 0

    .line 212
    iput-boolean p1, p0, Lzendesk/messaging/MessagingConfiguration$Builder;->multilineResponseOptionsEnabled:Z

    return-object p0
.end method

.method public withToolbarTitle(Ljava/lang/String;)Lzendesk/messaging/MessagingConfiguration$Builder;
    .locals 0

    .line 156
    iput-object p1, p0, Lzendesk/messaging/MessagingConfiguration$Builder;->toolbarTitle:Ljava/lang/String;

    return-object p0
.end method

.method public withToolbarTitleRes(I)Lzendesk/messaging/MessagingConfiguration$Builder;
    .locals 0

    .line 143
    iput p1, p0, Lzendesk/messaging/MessagingConfiguration$Builder;->toolbarTitleRes:I

    return-object p0
.end method
