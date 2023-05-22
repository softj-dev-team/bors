.class final Lzendesk/answerbot/DeflectionMeta;
.super Ljava/lang/Object;
.source "DeflectionMeta.java"


# instance fields
.field private final language:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "language"
    .end annotation
.end field

.field private final name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private final version:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lzendesk/answerbot/DeflectionMeta;->language:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lzendesk/answerbot/DeflectionMeta;->name:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lzendesk/answerbot/DeflectionMeta;->version:Ljava/lang/String;

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

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_3

    .line 47
    :cond_1
    check-cast p1, Lzendesk/answerbot/DeflectionMeta;

    .line 49
    iget-object v2, p0, Lzendesk/answerbot/DeflectionMeta;->language:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lzendesk/answerbot/DeflectionMeta;->language:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lzendesk/answerbot/DeflectionMeta;->language:Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 52
    :cond_3
    iget-object v2, p0, Lzendesk/answerbot/DeflectionMeta;->name:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v3, p1, Lzendesk/answerbot/DeflectionMeta;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    iget-object v2, p1, Lzendesk/answerbot/DeflectionMeta;->name:Ljava/lang/String;

    if-eqz v2, :cond_5

    :goto_1
    return v1

    .line 55
    :cond_5
    iget-object v2, p0, Lzendesk/answerbot/DeflectionMeta;->version:Ljava/lang/String;

    iget-object p1, p1, Lzendesk/answerbot/DeflectionMeta;->version:Ljava/lang/String;

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

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lzendesk/answerbot/DeflectionMeta;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lzendesk/answerbot/DeflectionMeta;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lzendesk/answerbot/DeflectionMeta;->version:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 60
    iget-object v0, p0, Lzendesk/answerbot/DeflectionMeta;->language:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 61
    iget-object v2, p0, Lzendesk/answerbot/DeflectionMeta;->name:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 62
    iget-object v2, p0, Lzendesk/answerbot/DeflectionMeta;->version:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method
