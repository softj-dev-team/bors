.class public Lzendesk/support/CommentResponse;
.super Ljava/lang/Object;
.source "CommentResponse.java"


# instance fields
.field private attachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/support/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private authorId:Ljava/lang/Long;

.field private body:Ljava/lang/String;

.field private createdAt:Ljava/util/Date;

.field private htmlBody:Ljava/lang/String;

.field private id:Ljava/lang/Long;

.field private isPublic:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "public"
    .end annotation
.end field

.field private requestId:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lzendesk/support/CommentResponse;->isPublic:Z

    return-void
.end method


# virtual methods
.method public getAttachments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzendesk/support/Attachment;",
            ">;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lzendesk/support/CommentResponse;->attachments:Ljava/util/List;

    invoke-static {v0}, Lcom/zendesk/util/CollectionUtils;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorId()Ljava/lang/Long;
    .locals 1

    .line 119
    iget-object v0, p0, Lzendesk/support/CommentResponse;->authorId:Ljava/lang/Long;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lzendesk/support/CommentResponse;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 3

    .line 157
    iget-object v0, p0, Lzendesk/support/CommentResponse;->createdAt:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lzendesk/support/CommentResponse;->createdAt:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    :goto_0
    return-object v0
.end method

.method public getHtmlBody()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lzendesk/support/CommentResponse;->htmlBody:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 52
    iget-object v0, p0, Lzendesk/support/CommentResponse;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lzendesk/support/CommentResponse;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lzendesk/support/CommentResponse;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isPublic()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Lzendesk/support/CommentResponse;->isPublic:Z

    return v0
.end method

.method public setAttachments(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/Attachment;",
            ">;)V"
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lzendesk/support/CommentResponse;->attachments:Ljava/util/List;

    return-void
.end method

.method public setAuthorId(Ljava/lang/Long;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lzendesk/support/CommentResponse;->authorId:Ljava/lang/Long;

    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lzendesk/support/CommentResponse;->body:Ljava/lang/String;

    return-void
.end method

.method public setCreatedAt(Ljava/util/Date;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lzendesk/support/CommentResponse;->createdAt:Ljava/util/Date;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lzendesk/support/CommentResponse;->id:Ljava/lang/Long;

    return-void
.end method
