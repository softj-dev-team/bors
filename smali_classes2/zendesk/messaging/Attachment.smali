.class public Lzendesk/messaging/Attachment;
.super Ljava/lang/Object;
.source "Attachment.java"


# instance fields
.field private final file:Ljava/io/File;

.field private final name:Ljava/lang/String;

.field private final size:J

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lzendesk/messaging/Attachment;->name:Ljava/lang/String;

    .line 27
    iput-wide p2, p0, Lzendesk/messaging/Attachment;->size:J

    .line 28
    iput-object p4, p0, Lzendesk/messaging/Attachment;->url:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lzendesk/messaging/Attachment;->file:Ljava/io/File;

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

    if-eqz p1, :cond_9

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_3

    .line 80
    :cond_1
    check-cast p1, Lzendesk/messaging/Attachment;

    .line 82
    iget-wide v2, p0, Lzendesk/messaging/Attachment;->size:J

    iget-wide v4, p1, Lzendesk/messaging/Attachment;->size:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    return v1

    .line 85
    :cond_2
    iget-object v2, p0, Lzendesk/messaging/Attachment;->name:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v3, p1, Lzendesk/messaging/Attachment;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lzendesk/messaging/Attachment;->name:Ljava/lang/String;

    if-eqz v2, :cond_4

    :goto_0
    return v1

    .line 88
    :cond_4
    iget-object v2, p0, Lzendesk/messaging/Attachment;->url:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v3, p1, Lzendesk/messaging/Attachment;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_5
    iget-object v2, p1, Lzendesk/messaging/Attachment;->url:Ljava/lang/String;

    if-eqz v2, :cond_6

    :goto_1
    return v1

    .line 91
    :cond_6
    iget-object v2, p0, Lzendesk/messaging/Attachment;->file:Ljava/io/File;

    iget-object p1, p1, Lzendesk/messaging/Attachment;->file:Ljava/io/File;

    if-eqz v2, :cond_7

    invoke-virtual {v2, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    :cond_7
    if-nez p1, :cond_8

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_9
    :goto_3
    return v1
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 68
    iget-object v0, p0, Lzendesk/messaging/Attachment;->file:Ljava/io/File;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lzendesk/messaging/Attachment;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 48
    iget-wide v0, p0, Lzendesk/messaging/Attachment;->size:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lzendesk/messaging/Attachment;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 96
    iget-object v0, p0, Lzendesk/messaging/Attachment;->name:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 97
    iget-wide v2, p0, Lzendesk/messaging/Attachment;->size:J

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 98
    iget-object v2, p0, Lzendesk/messaging/Attachment;->url:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 99
    iget-object v2, p0, Lzendesk/messaging/Attachment;->file:Ljava/io/File;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method
