.class public Lcom/sdkbox/plugin/SMSShareUnit;
.super Lcom/sdkbox/plugin/SocialShareUnit;
.source "SMSShareUnit.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/sdkbox/plugin/SocialShareUnit;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private map2String(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "text"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "image"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "link"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public configure(Lcom/sdkbox/plugin/JSON;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public sendSMS(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "SMS"

    const/4 v1, 0x1

    .line 31
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    const-string v4, "smsto:"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "sms_body"

    .line 32
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    iget-object p1, p0, Lcom/sdkbox/plugin/SMSShareUnit;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 34
    new-instance p1, Lcom/sdkbox/plugin/SocialShareResponse;

    invoke-direct {p1}, Lcom/sdkbox/plugin/SocialShareResponse;-><init>()V

    .line 35
    sget-object v2, Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;->SocialShareStateSuccess:Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

    iput-object v2, p1, Lcom/sdkbox/plugin/SocialShareResponse;->state:Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

    const-string v2, ""

    .line 36
    iput-object v2, p1, Lcom/sdkbox/plugin/SocialShareResponse;->error:Ljava/lang/String;

    .line 37
    iput-object v0, p1, Lcom/sdkbox/plugin/SocialShareResponse;->platform:Ljava/lang/String;

    .line 38
    invoke-virtual {p0, p1}, Lcom/sdkbox/plugin/SMSShareUnit;->notifyShareState(Lcom/sdkbox/plugin/SocialShareResponse;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 41
    new-instance v2, Lcom/sdkbox/plugin/SocialShareResponse;

    invoke-direct {v2}, Lcom/sdkbox/plugin/SocialShareResponse;-><init>()V

    .line 42
    sget-object v3, Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;->SocialShareStateFail:Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

    iput-object v3, v2, Lcom/sdkbox/plugin/SocialShareResponse;->state:Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

    .line 43
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/sdkbox/plugin/SocialShareResponse;->error:Ljava/lang/String;

    .line 44
    iput-object v0, v2, Lcom/sdkbox/plugin/SocialShareResponse;->platform:Ljava/lang/String;

    .line 45
    invoke-virtual {p0, v2}, Lcom/sdkbox/plugin/SMSShareUnit;->notifyShareState(Lcom/sdkbox/plugin/SocialShareResponse;)Z

    return v1
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
    invoke-direct {p0, p1}, Lcom/sdkbox/plugin/SMSShareUnit;->map2String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sdkbox/plugin/SMSShareUnit;->sendSMS(Ljava/lang/String;)Z

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
    invoke-direct {p0, p1}, Lcom/sdkbox/plugin/SMSShareUnit;->map2String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sdkbox/plugin/SMSShareUnit;->sendSMS(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
