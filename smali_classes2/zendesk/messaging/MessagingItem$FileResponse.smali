.class public Lzendesk/messaging/MessagingItem$FileResponse;
.super Lzendesk/messaging/MessagingItem$Response;
.source "MessagingItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/messaging/MessagingItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileResponse"
.end annotation


# instance fields
.field private final attachment:Lzendesk/messaging/Attachment;


# direct methods
.method public constructor <init>(Ljava/util/Date;Ljava/lang/String;Lzendesk/messaging/AgentDetails;Ljava/io/File;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 408
    invoke-direct/range {v0 .. v5}, Lzendesk/messaging/MessagingItem$FileResponse;-><init>(Ljava/util/Date;Ljava/lang/String;Lzendesk/messaging/AgentDetails;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/lang/String;Lzendesk/messaging/AgentDetails;Ljava/io/File;Ljava/lang/String;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 386
    invoke-direct {p0, p1, p2, p3}, Lzendesk/messaging/MessagingItem$Response;-><init>(Ljava/util/Date;Ljava/lang/String;Lzendesk/messaging/AgentDetails;)V

    if-eqz p4, :cond_0

    .line 390
    invoke-virtual {p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .line 391
    invoke-virtual {p4}, Ljava/io/File;->length()J

    move-result-wide p2

    goto :goto_0

    .line 394
    :cond_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-wide/16 p2, -0x1

    :goto_0
    move-object v1, p1

    move-wide v2, p2

    .line 397
    new-instance p1, Lzendesk/messaging/Attachment;

    move-object v0, p1

    move-object v4, p5

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lzendesk/messaging/Attachment;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/io/File;)V

    iput-object p1, p0, Lzendesk/messaging/MessagingItem$FileResponse;->attachment:Lzendesk/messaging/Attachment;

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/lang/String;Lzendesk/messaging/AgentDetails;Ljava/lang/String;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 419
    invoke-direct/range {v0 .. v5}, Lzendesk/messaging/MessagingItem$FileResponse;-><init>(Ljava/util/Date;Ljava/lang/String;Lzendesk/messaging/AgentDetails;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/lang/String;Lzendesk/messaging/AgentDetails;Lzendesk/messaging/Attachment;)V
    .locals 0

    .line 373
    invoke-direct {p0, p1, p2, p3}, Lzendesk/messaging/MessagingItem$Response;-><init>(Ljava/util/Date;Ljava/lang/String;Lzendesk/messaging/AgentDetails;)V

    .line 374
    iput-object p4, p0, Lzendesk/messaging/MessagingItem$FileResponse;->attachment:Lzendesk/messaging/Attachment;

    return-void
.end method


# virtual methods
.method public getAttachment()Lzendesk/messaging/Attachment;
    .locals 1

    .line 429
    iget-object v0, p0, Lzendesk/messaging/MessagingItem$FileResponse;->attachment:Lzendesk/messaging/Attachment;

    return-object v0
.end method

.method public getLocalFile()Ljava/io/File;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 441
    iget-object v0, p0, Lzendesk/messaging/MessagingItem$FileResponse;->attachment:Lzendesk/messaging/Attachment;

    invoke-virtual {v0}, Lzendesk/messaging/Attachment;->getFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getRemotePath()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 453
    iget-object v0, p0, Lzendesk/messaging/MessagingItem$FileResponse;->attachment:Lzendesk/messaging/Attachment;

    invoke-virtual {v0}, Lzendesk/messaging/Attachment;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
