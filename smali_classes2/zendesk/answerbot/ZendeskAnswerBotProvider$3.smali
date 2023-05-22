.class Lzendesk/answerbot/ZendeskAnswerBotProvider$3;
.super Ljava/lang/Object;
.source "ZendeskAnswerBotProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/answerbot/ZendeskAnswerBotProvider;->rejectWithArticle(JJLjava/lang/String;Lzendesk/answerbot/RejectionReason;Lcom/zendesk/service/ZendeskCallback;)V
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

.field final synthetic val$rejectionReason:Lzendesk/answerbot/RejectionReason;


# direct methods
.method constructor <init>(Lzendesk/answerbot/ZendeskAnswerBotProvider;JJLzendesk/answerbot/RejectionReason;Ljava/lang/String;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lzendesk/answerbot/ZendeskAnswerBotProvider$3;->this$0:Lzendesk/answerbot/ZendeskAnswerBotProvider;

    iput-wide p2, p0, Lzendesk/answerbot/ZendeskAnswerBotProvider$3;->val$deflectionId:J

    iput-wide p4, p0, Lzendesk/answerbot/ZendeskAnswerBotProvider$3;->val$articleId:J

    iput-object p6, p0, Lzendesk/answerbot/ZendeskAnswerBotProvider$3;->val$rejectionReason:Lzendesk/answerbot/RejectionReason;

    iput-object p7, p0, Lzendesk/answerbot/ZendeskAnswerBotProvider$3;->val$interactionAccessToken:Ljava/lang/String;

    iput-object p8, p0, Lzendesk/answerbot/ZendeskAnswerBotProvider$3;->val$callback:Lcom/zendesk/service/ZendeskCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 101
    new-instance v9, Lzendesk/answerbot/PostReject;

    iget-wide v1, p0, Lzendesk/answerbot/ZendeskAnswerBotProvider$3;->val$deflectionId:J

    iget-wide v3, p0, Lzendesk/answerbot/ZendeskAnswerBotProvider$3;->val$articleId:J

    iget-object v7, p0, Lzendesk/answerbot/ZendeskAnswerBotProvider$3;->val$rejectionReason:Lzendesk/answerbot/RejectionReason;

    iget-object v8, p0, Lzendesk/answerbot/ZendeskAnswerBotProvider$3;->val$interactionAccessToken:Ljava/lang/String;

    const-wide/16 v5, 0x41

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lzendesk/answerbot/PostReject;-><init>(JJJLzendesk/answerbot/RejectionReason;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lzendesk/answerbot/ZendeskAnswerBotProvider$3;->this$0:Lzendesk/answerbot/ZendeskAnswerBotProvider;

    invoke-static {v0}, Lzendesk/answerbot/ZendeskAnswerBotProvider;->access$200(Lzendesk/answerbot/ZendeskAnswerBotProvider;)Lzendesk/answerbot/AnswerBotService;

    move-result-object v0

    invoke-interface {v0, v9}, Lzendesk/answerbot/AnswerBotService;->rejection(Lzendesk/answerbot/PostReject;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/zendesk/service/RetrofitZendeskCallbackAdapter;

    iget-object v2, p0, Lzendesk/answerbot/ZendeskAnswerBotProvider$3;->val$callback:Lcom/zendesk/service/ZendeskCallback;

    invoke-direct {v1, v2}, Lcom/zendesk/service/RetrofitZendeskCallbackAdapter;-><init>(Lcom/zendesk/service/ZendeskCallback;)V

    .line 104
    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method
