.class public Lzendesk/core/ApplicationConfiguration;
.super Ljava/lang/Object;
.source "ApplicationConfiguration.java"


# instance fields
.field private applicationId:Ljava/lang/String;

.field private oauthClientId:Ljava/lang/String;

.field private zendeskUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lzendesk/core/ApplicationConfiguration;->applicationId:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lzendesk/core/ApplicationConfiguration;->zendeskUrl:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lzendesk/core/ApplicationConfiguration;->oauthClientId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_3

    .line 64
    :cond_1
    check-cast p1, Lzendesk/core/ApplicationConfiguration;

    .line 66
    iget-object v2, p0, Lzendesk/core/ApplicationConfiguration;->applicationId:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lzendesk/core/ApplicationConfiguration;->applicationId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lzendesk/core/ApplicationConfiguration;->applicationId:Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 69
    :cond_3
    iget-object v2, p0, Lzendesk/core/ApplicationConfiguration;->zendeskUrl:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v3, p1, Lzendesk/core/ApplicationConfiguration;->zendeskUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    iget-object v2, p1, Lzendesk/core/ApplicationConfiguration;->zendeskUrl:Ljava/lang/String;

    if-eqz v2, :cond_5

    :goto_1
    return v1

    .line 72
    :cond_5
    iget-object v2, p0, Lzendesk/core/ApplicationConfiguration;->oauthClientId:Ljava/lang/String;

    iget-object p1, p1, Lzendesk/core/ApplicationConfiguration;->oauthClientId:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    :cond_6
    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_8
    :goto_3
    return v1
.end method

.method public getApplicationId()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lzendesk/core/ApplicationConfiguration;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public getOauthClientId()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lzendesk/core/ApplicationConfiguration;->oauthClientId:Ljava/lang/String;

    return-object v0
.end method

.method public getZendeskUrl()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lzendesk/core/ApplicationConfiguration;->zendeskUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 78
    iget-object v0, p0, Lzendesk/core/ApplicationConfiguration;->applicationId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 79
    iget-object v2, p0, Lzendesk/core/ApplicationConfiguration;->zendeskUrl:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 80
    iget-object v2, p0, Lzendesk/core/ApplicationConfiguration;->oauthClientId:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method
