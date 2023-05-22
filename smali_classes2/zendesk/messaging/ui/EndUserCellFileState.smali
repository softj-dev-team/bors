.class Lzendesk/messaging/ui/EndUserCellFileState;
.super Lzendesk/messaging/ui/EndUserCellBaseState;
.source "EndUserCellFileState.java"


# static fields
.field private static final FILE_DESCRIPTOR_FORMATTER:Ljava/lang/String; = "%s %s"


# instance fields
.field private final attachment:Lzendesk/messaging/Attachment;

.field private final attachmentSettings:Lzendesk/messaging/AttachmentSettings;

.field private final failureReason:Lzendesk/messaging/MessagingItem$FileQuery$FailureReason;


# direct methods
.method constructor <init>(Ljava/lang/String;Lzendesk/messaging/ui/MessagingCellProps;Lzendesk/messaging/MessagingItem$Query$Status;Lzendesk/messaging/ui/MessageActionListener;Lzendesk/messaging/Attachment;Lzendesk/messaging/MessagingItem$FileQuery$FailureReason;Lzendesk/messaging/AttachmentSettings;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lzendesk/messaging/ui/EndUserCellBaseState;-><init>(Ljava/lang/String;Lzendesk/messaging/ui/MessagingCellProps;Lzendesk/messaging/MessagingItem$Query$Status;Lzendesk/messaging/ui/MessageActionListener;)V

    .line 49
    iput-object p5, p0, Lzendesk/messaging/ui/EndUserCellFileState;->attachment:Lzendesk/messaging/Attachment;

    .line 50
    iput-object p6, p0, Lzendesk/messaging/ui/EndUserCellFileState;->failureReason:Lzendesk/messaging/MessagingItem$FileQuery$FailureReason;

    .line 51
    iput-object p7, p0, Lzendesk/messaging/ui/EndUserCellFileState;->attachmentSettings:Lzendesk/messaging/AttachmentSettings;

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

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 95
    :cond_1
    invoke-super {p0, p1}, Lzendesk/messaging/ui/EndUserCellBaseState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 99
    :cond_2
    check-cast p1, Lzendesk/messaging/ui/EndUserCellFileState;

    .line 101
    iget-object v2, p0, Lzendesk/messaging/ui/EndUserCellFileState;->attachment:Lzendesk/messaging/Attachment;

    if-eqz v2, :cond_3

    iget-object v3, p1, Lzendesk/messaging/ui/EndUserCellFileState;->attachment:Lzendesk/messaging/Attachment;

    invoke-virtual {v2, v3}, Lzendesk/messaging/Attachment;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lzendesk/messaging/ui/EndUserCellFileState;->attachment:Lzendesk/messaging/Attachment;

    if-eqz v2, :cond_4

    :goto_0
    return v1

    .line 104
    :cond_4
    iget-object v2, p0, Lzendesk/messaging/ui/EndUserCellFileState;->failureReason:Lzendesk/messaging/MessagingItem$FileQuery$FailureReason;

    iget-object v3, p1, Lzendesk/messaging/ui/EndUserCellFileState;->failureReason:Lzendesk/messaging/MessagingItem$FileQuery$FailureReason;

    if-eq v2, v3, :cond_5

    return v1

    .line 107
    :cond_5
    iget-object v2, p0, Lzendesk/messaging/ui/EndUserCellFileState;->attachmentSettings:Lzendesk/messaging/AttachmentSettings;

    if-eqz v2, :cond_6

    iget-object p1, p1, Lzendesk/messaging/ui/EndUserCellFileState;->attachmentSettings:Lzendesk/messaging/AttachmentSettings;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    .line 108
    :cond_6
    iget-object p1, p1, Lzendesk/messaging/ui/EndUserCellFileState;->attachmentSettings:Lzendesk/messaging/AttachmentSettings;

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_8
    :goto_2
    return v1
.end method

.method getAttachment()Lzendesk/messaging/Attachment;
    .locals 1

    .line 58
    iget-object v0, p0, Lzendesk/messaging/ui/EndUserCellFileState;->attachment:Lzendesk/messaging/Attachment;

    return-object v0
.end method

.method getAttachmentSettings()Lzendesk/messaging/AttachmentSettings;
    .locals 1

    .line 84
    iget-object v0, p0, Lzendesk/messaging/ui/EndUserCellFileState;->attachmentSettings:Lzendesk/messaging/AttachmentSettings;

    return-object v0
.end method

.method getFailureReason()Lzendesk/messaging/MessagingItem$FileQuery$FailureReason;
    .locals 1

    .line 79
    iget-object v0, p0, Lzendesk/messaging/ui/EndUserCellFileState;->failureReason:Lzendesk/messaging/MessagingItem$FileQuery$FailureReason;

    return-object v0
.end method

.method getFileDescriptor(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 65
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lzendesk/messaging/ui/EndUserCellFileState;->attachment:Lzendesk/messaging/Attachment;

    .line 68
    invoke-virtual {v2}, Lzendesk/messaging/Attachment;->getSize()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lzendesk/messaging/ui/UtilsAttachment;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget-object p1, p0, Lzendesk/messaging/ui/EndUserCellFileState;->attachment:Lzendesk/messaging/Attachment;

    .line 69
    invoke-virtual {p1}, Lzendesk/messaging/Attachment;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zendesk/util/FileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "%s %s"

    .line 65
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 3

    .line 113
    invoke-super {p0}, Lzendesk/messaging/ui/EndUserCellBaseState;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 114
    iget-object v1, p0, Lzendesk/messaging/ui/EndUserCellFileState;->attachment:Lzendesk/messaging/Attachment;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lzendesk/messaging/Attachment;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 115
    iget-object v1, p0, Lzendesk/messaging/ui/EndUserCellFileState;->failureReason:Lzendesk/messaging/MessagingItem$FileQuery$FailureReason;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lzendesk/messaging/MessagingItem$FileQuery$FailureReason;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 116
    iget-object v1, p0, Lzendesk/messaging/ui/EndUserCellFileState;->attachmentSettings:Lzendesk/messaging/AttachmentSettings;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    return v0
.end method
