.class Lzendesk/answerbot/ZendeskAnswerBotSettingsProvider$1;
.super Lcom/zendesk/service/ZendeskCallback;
.source "ZendeskAnswerBotSettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/answerbot/ZendeskAnswerBotSettingsProvider;->getSettings(Lcom/zendesk/service/ZendeskCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/service/ZendeskCallback<",
        "Lzendesk/core/SettingsPack<",
        "Lzendesk/answerbot/AnswerBotSettings;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/answerbot/ZendeskAnswerBotSettingsProvider;

.field final synthetic val$callback:Lcom/zendesk/service/ZendeskCallback;


# direct methods
.method constructor <init>(Lzendesk/answerbot/ZendeskAnswerBotSettingsProvider;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lzendesk/answerbot/ZendeskAnswerBotSettingsProvider$1;->this$0:Lzendesk/answerbot/ZendeskAnswerBotSettingsProvider;

    iput-object p2, p0, Lzendesk/answerbot/ZendeskAnswerBotSettingsProvider$1;->val$callback:Lcom/zendesk/service/ZendeskCallback;

    invoke-direct {p0}, Lcom/zendesk/service/ZendeskCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/zendesk/service/ErrorResponse;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lzendesk/answerbot/ZendeskAnswerBotSettingsProvider$1;->val$callback:Lcom/zendesk/service/ZendeskCallback;

    invoke-virtual {v0, p1}, Lcom/zendesk/service/ZendeskCallback;->onError(Lcom/zendesk/service/ErrorResponse;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p1, Lzendesk/core/SettingsPack;

    invoke-virtual {p0, p1}, Lzendesk/answerbot/ZendeskAnswerBotSettingsProvider$1;->onSuccess(Lzendesk/core/SettingsPack;)V

    return-void
.end method

.method public onSuccess(Lzendesk/core/SettingsPack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/core/SettingsPack<",
            "Lzendesk/answerbot/AnswerBotSettings;",
            ">;)V"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lzendesk/answerbot/ZendeskAnswerBotSettingsProvider$1;->val$callback:Lcom/zendesk/service/ZendeskCallback;

    invoke-virtual {p1}, Lzendesk/core/SettingsPack;->getSettings()Lzendesk/core/Settings;

    move-result-object p1

    check-cast p1, Lzendesk/answerbot/AnswerBotSettings;

    invoke-virtual {v0, p1}, Lcom/zendesk/service/ZendeskCallback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
