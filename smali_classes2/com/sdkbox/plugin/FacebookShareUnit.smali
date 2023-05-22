.class public Lcom/sdkbox/plugin/FacebookShareUnit;
.super Lcom/sdkbox/plugin/SocialShareUnit;
.source "FacebookShareUnit.java"


# instance fields
.field private fb:Lcom/sdkbox/plugin/PluginFacebook;

.field private shareInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private shareType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/sdkbox/plugin/SocialShareUnit;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-static {p1}, Lcom/sdkbox/plugin/PluginFacebook;->getInstance(Landroid/content/Context;)Lcom/sdkbox/plugin/PluginFacebook;

    move-result-object p1

    iput-object p1, p0, Lcom/sdkbox/plugin/FacebookShareUnit;->fb:Lcom/sdkbox/plugin/PluginFacebook;

    return-void
.end method

.method private setShareTypeAuto(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "image"

    .line 102
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 103
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "type"

    const/4 v3, 0x5

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "2"

    .line 104
    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string v0, "1"

    .line 106
    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private shareDialogRequest(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 66
    iput-object v1, p0, Lcom/sdkbox/plugin/FacebookShareUnit;->shareInfo:Ljava/util/Map;

    .line 67
    iput v0, p0, Lcom/sdkbox/plugin/FacebookShareUnit;->shareType:I

    .line 68
    invoke-direct {p0, p1}, Lcom/sdkbox/plugin/FacebookShareUnit;->setShareTypeAuto(Ljava/util/Map;)V

    .line 69
    iget-object v0, p0, Lcom/sdkbox/plugin/FacebookShareUnit;->fb:Lcom/sdkbox/plugin/PluginFacebook;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/sdkbox/plugin/PluginFacebook;->share(Ljava/util/Map;I)V

    const/4 p1, 0x1

    return p1
.end method

.method private shareInfoTrans(Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    return-object p1
.end method

.method private shareRequest(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 55
    iput-object v1, p0, Lcom/sdkbox/plugin/FacebookShareUnit;->shareInfo:Ljava/util/Map;

    .line 56
    iput v0, p0, Lcom/sdkbox/plugin/FacebookShareUnit;->shareType:I

    .line 57
    invoke-direct {p0, p1}, Lcom/sdkbox/plugin/FacebookShareUnit;->setShareTypeAuto(Ljava/util/Map;)V

    .line 58
    iget-object v0, p0, Lcom/sdkbox/plugin/FacebookShareUnit;->fb:Lcom/sdkbox/plugin/PluginFacebook;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sdkbox/plugin/PluginFacebook;->share(Ljava/util/Map;I)V

    return v1
.end method


# virtual methods
.method public configure(Lcom/sdkbox/plugin/JSON;)Z
    .locals 0

    .line 19
    iget-object p1, p0, Lcom/sdkbox/plugin/FacebookShareUnit;->fb:Lcom/sdkbox/plugin/PluginFacebook;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 22
    :cond_0
    invoke-virtual {p1, p0}, Lcom/sdkbox/plugin/PluginFacebook;->setShareUnit(Lcom/sdkbox/plugin/FacebookShareUnit;)V

    .line 23
    iget-object p1, p0, Lcom/sdkbox/plugin/FacebookShareUnit;->fb:Lcom/sdkbox/plugin/PluginFacebook;

    invoke-virtual {p1}, Lcom/sdkbox/plugin/PluginFacebook;->configure()V

    const/4 p1, 0x1

    return p1
.end method

.method public notifyShareState(Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;Ljava/lang/String;)Z
    .locals 1

    .line 78
    new-instance v0, Lcom/sdkbox/plugin/SocialShareResponse;

    invoke-direct {v0}, Lcom/sdkbox/plugin/SocialShareResponse;-><init>()V

    .line 79
    iput-object p1, v0, Lcom/sdkbox/plugin/SocialShareResponse;->state:Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

    .line 80
    iput-object p2, v0, Lcom/sdkbox/plugin/SocialShareResponse;->error:Ljava/lang/String;

    const-string p1, "Facebook"

    .line 81
    iput-object p1, v0, Lcom/sdkbox/plugin/SocialShareResponse;->platform:Ljava/lang/String;

    .line 82
    invoke-virtual {p0, v0}, Lcom/sdkbox/plugin/FacebookShareUnit;->notifyShareState(Lcom/sdkbox/plugin/SocialShareResponse;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onLogin(ZLjava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 88
    iget p2, p0, Lcom/sdkbox/plugin/FacebookShareUnit;->shareType:I

    if-ne p1, p2, :cond_0

    .line 89
    iget-object p1, p0, Lcom/sdkbox/plugin/FacebookShareUnit;->shareInfo:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/sdkbox/plugin/FacebookShareUnit;->shareRequest(Ljava/util/Map;)Z

    return-void

    :cond_0
    const/4 p1, 0x2

    if-ne p1, p2, :cond_1

    .line 92
    iget-object p1, p0, Lcom/sdkbox/plugin/FacebookShareUnit;->shareInfo:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/sdkbox/plugin/FacebookShareUnit;->shareDialogRequest(Ljava/util/Map;)Z

    :cond_1
    return-void

    .line 98
    :cond_2
    sget-object p1, Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;->SocialShareStateFail:Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Login fail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sdkbox/plugin/FacebookShareUnit;->notifyShareState(Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;Ljava/lang/String;)Z

    return-void
.end method

.method public share(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/sdkbox/plugin/FacebookShareUnit;->fb:Lcom/sdkbox/plugin/PluginFacebook;

    invoke-virtual {v0}, Lcom/sdkbox/plugin/PluginFacebook;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-direct {p0, p1}, Lcom/sdkbox/plugin/FacebookShareUnit;->shareRequest(Ljava/util/Map;)Z

    move-result p1

    goto :goto_0

    .line 32
    :cond_0
    invoke-direct {p0, p1}, Lcom/sdkbox/plugin/FacebookShareUnit;->shareInfoTrans(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/sdkbox/plugin/FacebookShareUnit;->shareInfo:Ljava/util/Map;

    const/4 p1, 0x1

    .line 33
    iput p1, p0, Lcom/sdkbox/plugin/FacebookShareUnit;->shareType:I

    .line 34
    iget-object v0, p0, Lcom/sdkbox/plugin/FacebookShareUnit;->fb:Lcom/sdkbox/plugin/PluginFacebook;

    const-string v1, "publish_actions"

    invoke-virtual {v0, v1, p1}, Lcom/sdkbox/plugin/PluginFacebook;->logInWithPublishPermissions(Ljava/lang/String;I)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public shareDialog(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1}, Lcom/sdkbox/plugin/FacebookShareUnit;->setShareTypeAuto(Ljava/util/Map;)V

    .line 42
    iget-object v0, p0, Lcom/sdkbox/plugin/FacebookShareUnit;->fb:Lcom/sdkbox/plugin/PluginFacebook;

    invoke-virtual {v0, p1}, Lcom/sdkbox/plugin/PluginFacebook;->canPresent(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-direct {p0, p1}, Lcom/sdkbox/plugin/FacebookShareUnit;->shareDialogRequest(Ljava/util/Map;)Z

    move-result p1

    goto :goto_0

    .line 45
    :cond_0
    sget-object p1, Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;->SocialShareStateFail:Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

    const-string v0, "FB Dialog share need fb app"

    invoke-virtual {p0, p1, v0}, Lcom/sdkbox/plugin/FacebookShareUnit;->notifyShareState(Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;Ljava/lang/String;)Z

    const/4 p1, 0x0

    :goto_0
    return p1
.end method
