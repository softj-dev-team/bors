.class public Lzendesk/support/AttachmentFile;
.super Ljava/lang/Object;
.source "AttachmentFile.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private file:Ljava/io/File;

.field private fileName:Ljava/lang/String;

.field private mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lzendesk/support/AttachmentFile;->fileName:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lzendesk/support/AttachmentFile;->mimeType:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lzendesk/support/AttachmentFile;->file:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public getFile()Ljava/io/File;
    .locals 1

    .line 61
    iget-object v0, p0, Lzendesk/support/AttachmentFile;->file:Ljava/io/File;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lzendesk/support/AttachmentFile;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lzendesk/support/AttachmentFile;->mimeType:Ljava/lang/String;

    return-object v0
.end method
