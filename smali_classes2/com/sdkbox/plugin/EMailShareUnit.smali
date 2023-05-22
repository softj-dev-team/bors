.class public Lcom/sdkbox/plugin/EMailShareUnit;
.super Lcom/sdkbox/plugin/SocialShareUnit;
.source "EMailShareUnit.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/sdkbox/plugin/SocialShareUnit;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private sendEMail(Ljava/util/Map;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "EMail"

    const-string v1, "text"

    .line 30
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "image"

    .line 31
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "link"

    .line 32
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "title"

    .line 33
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v4, 0x1

    .line 35
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    const-string v7, "mailto:"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v6, "android.intent.extra.SUBJECT"

    .line 36
    invoke-virtual {v5, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "text/plain"

    .line 37
    invoke-virtual {v5, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.TEXT"

    .line 38
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "image/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v2, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-virtual {v5, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.STREAM"

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v5, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/sdkbox/plugin/EMailShareUnit;->mContext:Landroid/content/Context;

    const-string v1, "Share via Email"

    invoke-static {v5, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 45
    new-instance p1, Lcom/sdkbox/plugin/SocialShareResponse;

    invoke-direct {p1}, Lcom/sdkbox/plugin/SocialShareResponse;-><init>()V

    .line 46
    sget-object v1, Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;->SocialShareStateSuccess:Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

    iput-object v1, p1, Lcom/sdkbox/plugin/SocialShareResponse;->state:Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

    const-string v1, ""

    .line 47
    iput-object v1, p1, Lcom/sdkbox/plugin/SocialShareResponse;->error:Ljava/lang/String;

    .line 48
    iput-object v0, p1, Lcom/sdkbox/plugin/SocialShareResponse;->platform:Ljava/lang/String;

    .line 49
    invoke-virtual {p0, p1}, Lcom/sdkbox/plugin/EMailShareUnit;->notifyShareState(Lcom/sdkbox/plugin/SocialShareResponse;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception p1

    .line 52
    new-instance v1, Lcom/sdkbox/plugin/SocialShareResponse;

    invoke-direct {v1}, Lcom/sdkbox/plugin/SocialShareResponse;-><init>()V

    .line 53
    sget-object v2, Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;->SocialShareStateFail:Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

    iput-object v2, v1, Lcom/sdkbox/plugin/SocialShareResponse;->state:Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

    .line 54
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/sdkbox/plugin/SocialShareResponse;->error:Ljava/lang/String;

    .line 55
    iput-object v0, v1, Lcom/sdkbox/plugin/SocialShareResponse;->platform:Ljava/lang/String;

    .line 56
    invoke-virtual {p0, v1}, Lcom/sdkbox/plugin/EMailShareUnit;->notifyShareState(Lcom/sdkbox/plugin/SocialShareResponse;)Z

    return v4
.end method


# virtual methods
.method public configure(Lcom/sdkbox/plugin/JSON;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public share(Ljava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1}, Lcom/sdkbox/plugin/EMailShareUnit;->sendEMail(Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public shareDialog(Ljava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1}, Lcom/sdkbox/plugin/EMailShareUnit;->sendEMail(Ljava/util/Map;)Z

    move-result p1

    return p1
.end method
