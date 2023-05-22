.class Lzendesk/answerbot/ZendeskAnswerBotProvider$1;
.super Ljava/lang/Object;
.source "ZendeskAnswerBotProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/answerbot/ZendeskAnswerBotProvider;->getDeflectionForQuery(Ljava/lang/String;Lcom/zendesk/service/ZendeskCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/answerbot/ZendeskAnswerBotProvider;

.field final synthetic val$callback:Lcom/zendesk/service/ZendeskCallback;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lzendesk/answerbot/ZendeskAnswerBotProvider;Ljava/lang/String;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lzendesk/answerbot/ZendeskAnswerBotProvider$1;->this$0:Lzendesk/answerbot/ZendeskAnswerBotProvider;

    iput-object p2, p0, Lzendesk/answerbot/ZendeskAnswerBotProvider$1;->val$query:Ljava/lang/String;

    iput-object p3, p0, Lzendesk/answerbot/ZendeskAnswerBotProvider$1;->val$callback:Lcom/zendesk/service/ZendeskCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 46
    iget-object v0, p0, Lzendesk/answerbot/ZendeskAnswerBotProvider$1;->this$0:Lzendesk/answerbot/ZendeskAnswerBotProvider;

    invoke-static {v0}, Lzendesk/answerbot/ZendeskAnswerBotProvider;->access$100(Lzendesk/answerbot/ZendeskAnswerBotProvider;)Lzendesk/answerbot/LocaleProvider;

    move-result-object v0

    new-instance v1, Lzendesk/answerbot/ZendeskAnswerBotProvider$1$1;

    invoke-direct {v1, p0}, Lzendesk/answerbot/ZendeskAnswerBotProvider$1$1;-><init>(Lzendesk/answerbot/ZendeskAnswerBotProvider$1;)V

    invoke-virtual {v0, v1}, Lzendesk/answerbot/LocaleProvider;->getLocale(Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method
