.class public interface abstract Lzendesk/messaging/MessagingApi;
.super Ljava/lang/Object;
.source "MessagingApi.java"


# virtual methods
.method public abstract getBotAgentDetails()Lzendesk/messaging/AgentDetails;
.end method

.method public abstract getConfigurations()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzendesk/configurations/Configuration;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConversationLog()Lzendesk/messaging/ConversationLog;
.end method

.method public abstract getTransferOptionDescriptions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzendesk/messaging/Engine$TransferOptionDescription;",
            ">;"
        }
    .end annotation
.end method
