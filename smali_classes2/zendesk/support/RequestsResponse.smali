.class Lzendesk/support/RequestsResponse;
.super Lzendesk/support/ResponseWrapper;
.source "RequestsResponse.java"


# instance fields
.field private lastCommentingAgents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/support/User;",
            ">;"
        }
    .end annotation
.end field

.field private requests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/support/Request;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lzendesk/support/ResponseWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method getLastCommentingAgents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzendesk/support/User;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lzendesk/support/RequestsResponse;->lastCommentingAgents:Ljava/util/List;

    invoke-static {v0}, Lcom/zendesk/util/CollectionUtils;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getRequests()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzendesk/support/Request;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lzendesk/support/RequestsResponse;->requests:Ljava/util/List;

    invoke-static {v0}, Lcom/zendesk/util/CollectionUtils;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
