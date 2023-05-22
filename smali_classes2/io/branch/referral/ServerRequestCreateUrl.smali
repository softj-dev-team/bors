.class Lio/branch/referral/ServerRequestCreateUrl;
.super Lio/branch/referral/ServerRequest;
.source "ServerRequestCreateUrl.java"


# static fields
.field private static final DEF_BASE_URL:Ljava/lang/String; = "https://bnc.lt/a/"


# instance fields
.field private callback_:Lio/branch/referral/Branch$BranchLinkCreateListener;

.field private defaultToLongUrl_:Z

.field private isAsync_:Z

.field private linkPost_:Lio/branch/referral/BranchLinkData;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IILjava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lio/branch/referral/Branch$BranchLinkCreateListener;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lio/branch/referral/Branch$BranchLinkCreateListener;",
            "ZZ)V"
        }
    .end annotation

    .line 62
    sget-object v0, Lio/branch/referral/Defines$RequestPath;->GetURL:Lio/branch/referral/Defines$RequestPath;

    invoke-direct {p0, p1, v0}, Lio/branch/referral/ServerRequest;-><init>(Landroid/content/Context;Lio/branch/referral/Defines$RequestPath;)V

    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lio/branch/referral/ServerRequestCreateUrl;->isAsync_:Z

    .line 25
    iput-boolean p1, p0, Lio/branch/referral/ServerRequestCreateUrl;->defaultToLongUrl_:Z

    .line 64
    iput-object p11, p0, Lio/branch/referral/ServerRequestCreateUrl;->callback_:Lio/branch/referral/Branch$BranchLinkCreateListener;

    .line 65
    iput-boolean p12, p0, Lio/branch/referral/ServerRequestCreateUrl;->isAsync_:Z

    .line 66
    iput-boolean p13, p0, Lio/branch/referral/ServerRequestCreateUrl;->defaultToLongUrl_:Z

    .line 68
    new-instance p11, Lio/branch/referral/BranchLinkData;

    invoke-direct {p11}, Lio/branch/referral/BranchLinkData;-><init>()V

    iput-object p11, p0, Lio/branch/referral/ServerRequestCreateUrl;->linkPost_:Lio/branch/referral/BranchLinkData;

    .line 70
    :try_start_0
    sget-object p12, Lio/branch/referral/Defines$Jsonkey;->RandomizedBundleToken:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {p12}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object p12

    iget-object p13, p0, Lio/branch/referral/ServerRequestCreateUrl;->prefHelper_:Lio/branch/referral/PrefHelper;

    invoke-virtual {p13}, Lio/branch/referral/PrefHelper;->getRandomizedBundleToken()Ljava/lang/String;

    move-result-object p13

    invoke-virtual {p11, p12, p13}, Lio/branch/referral/BranchLinkData;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    iget-object p11, p0, Lio/branch/referral/ServerRequestCreateUrl;->linkPost_:Lio/branch/referral/BranchLinkData;

    sget-object p12, Lio/branch/referral/Defines$Jsonkey;->RandomizedDeviceToken:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {p12}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object p12

    iget-object p13, p0, Lio/branch/referral/ServerRequestCreateUrl;->prefHelper_:Lio/branch/referral/PrefHelper;

    invoke-virtual {p13}, Lio/branch/referral/PrefHelper;->getRandomizedDeviceToken()Ljava/lang/String;

    move-result-object p13

    invoke-virtual {p11, p12, p13}, Lio/branch/referral/BranchLinkData;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    iget-object p11, p0, Lio/branch/referral/ServerRequestCreateUrl;->linkPost_:Lio/branch/referral/BranchLinkData;

    sget-object p12, Lio/branch/referral/Defines$Jsonkey;->SessionID:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {p12}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object p12

    iget-object p13, p0, Lio/branch/referral/ServerRequestCreateUrl;->prefHelper_:Lio/branch/referral/PrefHelper;

    invoke-virtual {p13}, Lio/branch/referral/PrefHelper;->getSessionID()Ljava/lang/String;

    move-result-object p13

    invoke-virtual {p11, p12, p13}, Lio/branch/referral/BranchLinkData;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    iget-object p11, p0, Lio/branch/referral/ServerRequestCreateUrl;->prefHelper_:Lio/branch/referral/PrefHelper;

    invoke-virtual {p11}, Lio/branch/referral/PrefHelper;->getLinkClickID()Ljava/lang/String;

    move-result-object p11

    const-string p12, "bnc_no_value"

    invoke-virtual {p11, p12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p11

    if-nez p11, :cond_0

    .line 74
    iget-object p11, p0, Lio/branch/referral/ServerRequestCreateUrl;->linkPost_:Lio/branch/referral/BranchLinkData;

    sget-object p12, Lio/branch/referral/Defines$Jsonkey;->LinkClickID:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {p12}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object p12

    iget-object p13, p0, Lio/branch/referral/ServerRequestCreateUrl;->prefHelper_:Lio/branch/referral/PrefHelper;

    invoke-virtual {p13}, Lio/branch/referral/PrefHelper;->getLinkClickID()Ljava/lang/String;

    move-result-object p13

    invoke-virtual {p11, p12, p13}, Lio/branch/referral/BranchLinkData;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    :cond_0
    iget-object p11, p0, Lio/branch/referral/ServerRequestCreateUrl;->linkPost_:Lio/branch/referral/BranchLinkData;

    invoke-virtual {p11, p3}, Lio/branch/referral/BranchLinkData;->putType(I)V

    .line 78
    iget-object p3, p0, Lio/branch/referral/ServerRequestCreateUrl;->linkPost_:Lio/branch/referral/BranchLinkData;

    invoke-virtual {p3, p4}, Lio/branch/referral/BranchLinkData;->putDuration(I)V

    .line 79
    iget-object p3, p0, Lio/branch/referral/ServerRequestCreateUrl;->linkPost_:Lio/branch/referral/BranchLinkData;

    invoke-virtual {p3, p5}, Lio/branch/referral/BranchLinkData;->putTags(Ljava/util/Collection;)V

    .line 80
    iget-object p3, p0, Lio/branch/referral/ServerRequestCreateUrl;->linkPost_:Lio/branch/referral/BranchLinkData;

    invoke-virtual {p3, p2}, Lio/branch/referral/BranchLinkData;->putAlias(Ljava/lang/String;)V

    .line 81
    iget-object p2, p0, Lio/branch/referral/ServerRequestCreateUrl;->linkPost_:Lio/branch/referral/BranchLinkData;

    invoke-virtual {p2, p6}, Lio/branch/referral/BranchLinkData;->putChannel(Ljava/lang/String;)V

    .line 82
    iget-object p2, p0, Lio/branch/referral/ServerRequestCreateUrl;->linkPost_:Lio/branch/referral/BranchLinkData;

    invoke-virtual {p2, p7}, Lio/branch/referral/BranchLinkData;->putFeature(Ljava/lang/String;)V

    .line 83
    iget-object p2, p0, Lio/branch/referral/ServerRequestCreateUrl;->linkPost_:Lio/branch/referral/BranchLinkData;

    invoke-virtual {p2, p8}, Lio/branch/referral/BranchLinkData;->putStage(Ljava/lang/String;)V

    .line 84
    iget-object p2, p0, Lio/branch/referral/ServerRequestCreateUrl;->linkPost_:Lio/branch/referral/BranchLinkData;

    invoke-virtual {p2, p9}, Lio/branch/referral/BranchLinkData;->putCampaign(Ljava/lang/String;)V

    .line 85
    iget-object p2, p0, Lio/branch/referral/ServerRequestCreateUrl;->linkPost_:Lio/branch/referral/BranchLinkData;

    invoke-virtual {p2, p10}, Lio/branch/referral/BranchLinkData;->putParams(Lorg/json/JSONObject;)V

    .line 87
    iget-object p2, p0, Lio/branch/referral/ServerRequestCreateUrl;->linkPost_:Lio/branch/referral/BranchLinkData;

    invoke-virtual {p0, p2}, Lio/branch/referral/ServerRequestCreateUrl;->setPost(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 90
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 91
    iput-boolean p1, p0, Lio/branch/referral/ServerRequestCreateUrl;->constructError_:Z

    :goto_0
    return-void
.end method

.method public constructor <init>(Lio/branch/referral/Defines$RequestPath;Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2, p3}, Lio/branch/referral/ServerRequest;-><init>(Lio/branch/referral/Defines$RequestPath;Lorg/json/JSONObject;Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lio/branch/referral/ServerRequestCreateUrl;->isAsync_:Z

    .line 25
    iput-boolean p1, p0, Lio/branch/referral/ServerRequestCreateUrl;->defaultToLongUrl_:Z

    return-void
.end method

.method private generateLongUrlWithParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "?"

    .line 193
    :try_start_0
    invoke-static {}, Lio/branch/referral/Branch;->getInstance()Lio/branch/referral/Branch;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/referral/Branch;->isTrackingDisabled()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ""

    if-eqz v1, :cond_0

    :try_start_1
    const-string v1, "https://bnc.lt/a/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 197
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    goto :goto_0

    :cond_1
    move-object v3, v0

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "&"

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    :try_start_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 200
    iget-object v0, p0, Lio/branch/referral/ServerRequestCreateUrl;->linkPost_:Lio/branch/referral/BranchLinkData;

    invoke-virtual {v0}, Lio/branch/referral/BranchLinkData;->getTags()Ljava/util/Collection;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v1, "UTF8"

    const-string v2, "="

    if-eqz v0, :cond_4

    .line 202
    :try_start_3
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 203
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 204
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lio/branch/referral/Defines$LinkParam;->Tags:Lio/branch/referral/Defines$LinkParam;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 207
    :cond_4
    iget-object v0, p0, Lio/branch/referral/ServerRequestCreateUrl;->linkPost_:Lio/branch/referral/BranchLinkData;

    invoke-virtual {v0}, Lio/branch/referral/BranchLinkData;->getAlias()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 208
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 209
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lio/branch/referral/Defines$LinkParam;->Alias:Lio/branch/referral/Defines$LinkParam;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 212
    :cond_5
    iget-object v0, p0, Lio/branch/referral/ServerRequestCreateUrl;->linkPost_:Lio/branch/referral/BranchLinkData;

    invoke-virtual {v0}, Lio/branch/referral/BranchLinkData;->getChannel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 213
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6

    .line 214
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lio/branch/referral/Defines$LinkParam;->Channel:Lio/branch/referral/Defines$LinkParam;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 217
    :cond_6
    iget-object v0, p0, Lio/branch/referral/ServerRequestCreateUrl;->linkPost_:Lio/branch/referral/BranchLinkData;

    invoke-virtual {v0}, Lio/branch/referral/BranchLinkData;->getFeature()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 218
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_7

    .line 219
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lio/branch/referral/Defines$LinkParam;->Feature:Lio/branch/referral/Defines$LinkParam;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 222
    :cond_7
    iget-object v0, p0, Lio/branch/referral/ServerRequestCreateUrl;->linkPost_:Lio/branch/referral/BranchLinkData;

    invoke-virtual {v0}, Lio/branch/referral/BranchLinkData;->getStage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 223
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_8

    .line 224
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lio/branch/referral/Defines$LinkParam;->Stage:Lio/branch/referral/Defines$LinkParam;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 227
    :cond_8
    iget-object v0, p0, Lio/branch/referral/ServerRequestCreateUrl;->linkPost_:Lio/branch/referral/BranchLinkData;

    invoke-virtual {v0}, Lio/branch/referral/BranchLinkData;->getCampaign()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 228
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_9

    .line 229
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lio/branch/referral/Defines$LinkParam;->Campaign:Lio/branch/referral/Defines$LinkParam;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 232
    :cond_9
    iget-object v0, p0, Lio/branch/referral/ServerRequestCreateUrl;->linkPost_:Lio/branch/referral/BranchLinkData;

    invoke-virtual {v0}, Lio/branch/referral/BranchLinkData;->getType()I

    move-result v0

    int-to-long v4, v0

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lio/branch/referral/Defines$LinkParam;->Type:Lio/branch/referral/Defines$LinkParam;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 235
    iget-object v0, p0, Lio/branch/referral/ServerRequestCreateUrl;->linkPost_:Lio/branch/referral/BranchLinkData;

    invoke-virtual {v0}, Lio/branch/referral/BranchLinkData;->getDuration()I

    move-result v0

    int-to-long v3, v0

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lio/branch/referral/Defines$LinkParam;->Duration:Lio/branch/referral/Defines$LinkParam;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 238
    iget-object v0, p0, Lio/branch/referral/ServerRequestCreateUrl;->linkPost_:Lio/branch/referral/BranchLinkData;

    invoke-virtual {v0}, Lio/branch/referral/BranchLinkData;->getParams()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 239
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_a

    .line 240
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x2

    .line 241
    invoke-static {v0, v2}, Lio/branch/referral/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&source=android&data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 246
    :catch_0
    iget-object v0, p0, Lio/branch/referral/ServerRequestCreateUrl;->callback_:Lio/branch/referral/Branch$BranchLinkCreateListener;

    const/4 v1, 0x0

    new-instance v2, Lio/branch/referral/BranchError;

    const/16 v3, -0x74

    const-string v4, "Trouble creating a URL."

    invoke-direct {v2, v4, v3}, Lio/branch/referral/BranchError;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1, v2}, Lio/branch/referral/Branch$BranchLinkCreateListener;->onLinkCreate(Ljava/lang/String;Lio/branch/referral/BranchError;)V

    :cond_a
    :goto_3
    return-object p1
.end method


# virtual methods
.method public clearCallbacks()V
    .locals 1

    const/4 v0, 0x0

    .line 178
    iput-object v0, p0, Lio/branch/referral/ServerRequestCreateUrl;->callback_:Lio/branch/referral/Branch$BranchLinkCreateListener;

    return-void
.end method

.method public getLinkPost()Lio/branch/referral/BranchLinkData;
    .locals 1

    .line 101
    iget-object v0, p0, Lio/branch/referral/ServerRequestCreateUrl;->linkPost_:Lio/branch/referral/BranchLinkData;

    return-object v0
.end method

.method public getLongUrl()Ljava/lang/String;
    .locals 2

    .line 156
    iget-object v0, p0, Lio/branch/referral/ServerRequestCreateUrl;->prefHelper_:Lio/branch/referral/PrefHelper;

    invoke-virtual {v0}, Lio/branch/referral/PrefHelper;->getUserURL()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bnc_no_value"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lio/branch/referral/ServerRequestCreateUrl;->prefHelper_:Lio/branch/referral/PrefHelper;

    invoke-virtual {v0}, Lio/branch/referral/PrefHelper;->getUserURL()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/branch/referral/ServerRequestCreateUrl;->generateLongUrlWithParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 159
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://bnc.lt/a/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/referral/ServerRequestCreateUrl;->prefHelper_:Lio/branch/referral/PrefHelper;

    invoke-virtual {v1}, Lio/branch/referral/PrefHelper;->getBranchKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/branch/referral/ServerRequestCreateUrl;->generateLongUrlWithParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public handleDuplicateURLError()V
    .locals 5

    .line 165
    iget-object v0, p0, Lio/branch/referral/ServerRequestCreateUrl;->callback_:Lio/branch/referral/Branch$BranchLinkCreateListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 166
    new-instance v2, Lio/branch/referral/BranchError;

    const/16 v3, -0x69

    const-string v4, "Trouble creating a URL."

    invoke-direct {v2, v4, v3}, Lio/branch/referral/BranchError;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1, v2}, Lio/branch/referral/Branch$BranchLinkCreateListener;->onLinkCreate(Ljava/lang/String;Lio/branch/referral/BranchError;)V

    :cond_0
    return-void
.end method

.method public handleErrors(Landroid/content/Context;)Z
    .locals 4

    .line 110
    invoke-super {p0, p1}, Lio/branch/referral/ServerRequest;->doesAppHasInternetPermission(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 111
    iget-object p1, p0, Lio/branch/referral/ServerRequestCreateUrl;->callback_:Lio/branch/referral/Branch$BranchLinkCreateListener;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 112
    new-instance v1, Lio/branch/referral/BranchError;

    const/16 v2, -0x66

    const-string v3, "Trouble creating a URL."

    invoke-direct {v1, v3, v2}, Lio/branch/referral/BranchError;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v0, v1}, Lio/branch/referral/Branch$BranchLinkCreateListener;->onLinkCreate(Ljava/lang/String;Lio/branch/referral/BranchError;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public handleFailure(ILjava/lang/String;)V
    .locals 5

    .line 145
    iget-object v0, p0, Lio/branch/referral/ServerRequestCreateUrl;->callback_:Lio/branch/referral/Branch$BranchLinkCreateListener;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 147
    iget-boolean v1, p0, Lio/branch/referral/ServerRequestCreateUrl;->defaultToLongUrl_:Z

    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {p0}, Lio/branch/referral/ServerRequestCreateUrl;->getLongUrl()Ljava/lang/String;

    move-result-object v0

    .line 150
    :cond_0
    iget-object v1, p0, Lio/branch/referral/ServerRequestCreateUrl;->callback_:Lio/branch/referral/Branch$BranchLinkCreateListener;

    new-instance v2, Lio/branch/referral/BranchError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trouble creating a URL. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2, p1}, Lio/branch/referral/BranchError;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v0, v2}, Lio/branch/referral/Branch$BranchLinkCreateListener;->onLinkCreate(Ljava/lang/String;Lio/branch/referral/BranchError;)V

    :cond_1
    return-void
.end method

.method public isAsync()Z
    .locals 1

    .line 182
    iget-boolean v0, p0, Lio/branch/referral/ServerRequestCreateUrl;->isAsync_:Z

    return v0
.end method

.method isDefaultToLongUrl()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lio/branch/referral/ServerRequestCreateUrl;->defaultToLongUrl_:Z

    return v0
.end method

.method public isGetRequest()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method isPersistable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onRequestSucceeded(Lio/branch/referral/ServerResponse;Lio/branch/referral/Branch;)V
    .locals 1

    .line 122
    :try_start_0
    invoke-virtual {p1}, Lio/branch/referral/ServerResponse;->getObject()Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "url"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 123
    iget-object p2, p0, Lio/branch/referral/ServerRequestCreateUrl;->callback_:Lio/branch/referral/Branch$BranchLinkCreateListener;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 124
    invoke-interface {p2, p1, v0}, Lio/branch/referral/Branch$BranchLinkCreateListener;->onLinkCreate(Ljava/lang/String;Lio/branch/referral/BranchError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 127
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onUrlAvailable(Ljava/lang/String;)V
    .locals 2

    .line 138
    iget-object v0, p0, Lio/branch/referral/ServerRequestCreateUrl;->callback_:Lio/branch/referral/Branch$BranchLinkCreateListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 139
    invoke-interface {v0, p1, v1}, Lio/branch/referral/Branch$BranchLinkCreateListener;->onLinkCreate(Ljava/lang/String;Lio/branch/referral/BranchError;)V

    :cond_0
    return-void
.end method

.method protected prepareExecuteWithoutTracking()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
