.class Lzendesk/support/ArticleVoteResponse;
.super Ljava/lang/Object;
.source "ArticleVoteResponse.java"


# instance fields
.field private vote:Lzendesk/support/ArticleVote;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getVote()Lzendesk/support/ArticleVote;
    .locals 1

    .line 27
    iget-object v0, p0, Lzendesk/support/ArticleVoteResponse;->vote:Lzendesk/support/ArticleVote;

    return-object v0
.end method
