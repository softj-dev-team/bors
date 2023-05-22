.class public final Lzendesk/answerbot/Deflection;
.super Ljava/lang/Object;
.source "Deflection.java"


# instance fields
.field private final authToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "auth_token"
    .end annotation
.end field

.field private final id:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field


# direct methods
.method constructor <init>(JLjava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-wide p1, p0, Lzendesk/answerbot/Deflection;->id:J

    .line 19
    iput-object p3, p0, Lzendesk/answerbot/Deflection;->authToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 39
    :cond_1
    check-cast p1, Lzendesk/answerbot/Deflection;

    .line 41
    iget-wide v2, p0, Lzendesk/answerbot/Deflection;->id:J

    iget-wide v4, p1, Lzendesk/answerbot/Deflection;->id:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    return v1

    .line 44
    :cond_2
    iget-object v2, p0, Lzendesk/answerbot/Deflection;->authToken:Ljava/lang/String;

    iget-object p1, p1, Lzendesk/answerbot/Deflection;->authToken:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method getAuthToken()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lzendesk/answerbot/Deflection;->authToken:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 23
    iget-wide v0, p0, Lzendesk/answerbot/Deflection;->id:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .line 49
    iget-wide v0, p0, Lzendesk/answerbot/Deflection;->id:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 50
    iget-object v0, p0, Lzendesk/answerbot/Deflection;->authToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    return v1
.end method
