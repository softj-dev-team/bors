.class Lzendesk/answerbot/ZendeskAnswerBotProvider$2;
.super Ljava/lang/Object;
.source "ZendeskAnswerBotProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/answerbot/ZendeskAnswerBotProvider;->resolveWithArticle(JJLjava/lang/String;Lcom/zendesk/service/ZendeskCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/answerbot/ZendeskAnswerBotProvider;

.field final synthetic val$articleId:J

.field final synthetic val$callback:Lcom/zendesk/service/ZendeskCallback;

.field final synthetic val$deflectionId:J

.field final synthetic val$interactionAccessToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lzendesk/answerbot/ZendeskAnswerBotProvider;JJLjava/lang/String;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lzendesk/answerbot/ZendeskAnswerBotProvider$2;->this$0:Lzendesk/answerbot/ZendeskAnswerBotProvider;

    iput-wide p2, p0, Lzendesk/answerbot/ZendeskAnswerBotProvider$2;->val$deflectionId:J

    iput-wide p4, p0, Lzendesk/answerbot/ZendeskAnswerBotProvider$2;->val$articleId:J

    iput-object p6, p0, Lzendesk/answerbot/ZendeskAnswerBotProvider$2;->val$interactionAccessToken:Ljava/lang/String;

    iput-object p7, p0, Lzendesk/answerbot/ZendeskAnswerBotProvider$2;->val$callback:Lcom/zendesk/service/ZendeskCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 83
    new-instance v8, Lzendesk/answerbot/PostResolve;

    iget-wide v1, p0, Lzendesk/answerbot/ZendeskAnswerBotProvider$2;->val$deflectionId:J

    iget-wide v3, p0, Lzendesk/answerbot/ZendeskAnswerBotProvider$2;->val$articleId:J

    iget-object v7, p0, Lzendesk/answerbot/ZendeskAnswerBotProvider$2;->val$interactionAccessToken:Ljava/lang/String;

    const-wide/16 v5, 0x41

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lzendesk/answerbot/PostResolve;-><init>(JJJLjava/lang/String;)V

    .line 84
    iget-object v0, p0, Lzendesk/answerbot/ZendeskAnswerBotProvider$2;->this$0:Lzendesk/answerbot/ZendeskAnswerBotProvider;

    invoke-static {v0}, Lzendesk/answerbot/ZendeskAnswerBotProvider;->access$200(Lzendesk/answerbot/ZendeskAnswerBotProvider;)Lzendesk/answerbot/AnswerBotService;

    move-result-object v0

    invoke-interface {v0, v8}, Lzendesk/answerbot/AnswerBotService;->resolution(Lzendesk/answerbot/PostResolve;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/zendesk/service/RetrofitZendeskCallbackAdapter;

    iget-object v2, p0, Lzendesk/answerbot/ZendeskAnswerBotProvider$2;->val$callback:Lcom/zendesk/service/ZendeskCallback;

    invoke-direct {v1, v2}, Lcom/zendesk/service/RetrofitZendeskCallbackAdapter;-><init>(Lcom/zendesk/service/ZendeskCallback;)V

    .line 85
    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 88
    iget-object v0, p0, Lzendesk/answerbot/ZendeskAnswerBotProvider$2;->this$0:Lzendesk/answerbot/ZendeskAnswerBotProvider;

    invoke-static {v0}, Lzendesk/answerbot/ZendeskAnswerBotProvider;->access$400(Lzendesk/answerbot/ZendeskAnswerBotProvider;)Lzendesk/support/HelpCenterProvider;

    move-result-object v0

    iget-wide v1, p0, Lzendesk/answerbot/ZendeskAnswerBotProvider$2;->val$articleId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {}, Lzendesk/answerbot/ZendeskAnswerBotProvider;->access$300()Lcom/zendesk/service/ZendeskCallback;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lzendesk/support/HelpCenterProvider;->upvoteArticle(Ljava/lang/Long;Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method
