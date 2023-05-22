.class public Lzendesk/messaging/MessagingItem$ArticlesResponse$ArticleSuggestion;
.super Ljava/lang/Object;
.source "MessagingItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/messaging/MessagingItem$ArticlesResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArticleSuggestion"
.end annotation


# instance fields
.field private final articleId:J

.field private final articleInteractionId:Ljava/lang/String;

.field private final articleUrl:Ljava/lang/String;

.field private final snippet:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 492
    iput-object p1, p0, Lzendesk/messaging/MessagingItem$ArticlesResponse$ArticleSuggestion;->articleInteractionId:Ljava/lang/String;

    .line 493
    iput-object p2, p0, Lzendesk/messaging/MessagingItem$ArticlesResponse$ArticleSuggestion;->articleUrl:Ljava/lang/String;

    .line 494
    iput-wide p3, p0, Lzendesk/messaging/MessagingItem$ArticlesResponse$ArticleSuggestion;->articleId:J

    .line 495
    iput-object p5, p0, Lzendesk/messaging/MessagingItem$ArticlesResponse$ArticleSuggestion;->title:Ljava/lang/String;

    .line 496
    iput-object p6, p0, Lzendesk/messaging/MessagingItem$ArticlesResponse$ArticleSuggestion;->snippet:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getArticleId()J
    .locals 2

    .line 508
    iget-wide v0, p0, Lzendesk/messaging/MessagingItem$ArticlesResponse$ArticleSuggestion;->articleId:J

    return-wide v0
.end method

.method public getArticleInteractionId()Ljava/lang/String;
    .locals 1

    .line 500
    iget-object v0, p0, Lzendesk/messaging/MessagingItem$ArticlesResponse$ArticleSuggestion;->articleInteractionId:Ljava/lang/String;

    return-object v0
.end method

.method public getArticleUrl()Ljava/lang/String;
    .locals 1

    .line 504
    iget-object v0, p0, Lzendesk/messaging/MessagingItem$ArticlesResponse$ArticleSuggestion;->articleUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    .line 516
    iget-object v0, p0, Lzendesk/messaging/MessagingItem$ArticlesResponse$ArticleSuggestion;->snippet:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 512
    iget-object v0, p0, Lzendesk/messaging/MessagingItem$ArticlesResponse$ArticleSuggestion;->title:Ljava/lang/String;

    return-object v0
.end method
