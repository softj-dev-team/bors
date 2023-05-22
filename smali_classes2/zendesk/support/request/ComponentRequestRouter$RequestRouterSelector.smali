.class Lzendesk/support/request/ComponentRequestRouter$RequestRouterSelector;
.super Ljava/lang/Object;
.source "ComponentRequestRouter.java"

# interfaces
.implements Lzendesk/support/suas/StateSelector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/ComponentRequestRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RequestRouterSelector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lzendesk/support/suas/StateSelector<",
        "Lzendesk/support/request/ComponentRequestRouter$RequestScreen;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic selectData(Lzendesk/support/suas/State;)Ljava/lang/Object;
    .locals 0

    .line 128
    invoke-virtual {p0, p1}, Lzendesk/support/request/ComponentRequestRouter$RequestRouterSelector;->selectData(Lzendesk/support/suas/State;)Lzendesk/support/request/ComponentRequestRouter$RequestScreen;

    move-result-object p1

    return-object p1
.end method

.method public selectData(Lzendesk/support/suas/State;)Lzendesk/support/request/ComponentRequestRouter$RequestScreen;
    .locals 9

    .line 133
    invoke-static {p1}, Lzendesk/support/request/StateConfig;->fromState(Lzendesk/support/suas/State;)Lzendesk/support/request/StateConfig;

    move-result-object v0

    .line 134
    invoke-static {p1}, Lzendesk/support/request/StateConversation;->fromState(Lzendesk/support/suas/State;)Lzendesk/support/request/StateConversation;

    move-result-object v1

    .line 135
    invoke-virtual {v0}, Lzendesk/support/request/StateConfig;->getSettings()Lzendesk/support/request/StateSettings;

    move-result-object v0

    .line 136
    invoke-static {p1}, Lzendesk/support/request/StateError;->fromState(Lzendesk/support/suas/State;)Lzendesk/support/request/StateError;

    move-result-object p1

    .line 138
    invoke-virtual {v0}, Lzendesk/support/request/StateSettings;->hasSettings()Z

    move-result v2

    .line 139
    invoke-virtual {v1}, Lzendesk/support/request/StateConversation;->getRemoteId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zendesk/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v1

    .line 140
    invoke-virtual {v0}, Lzendesk/support/request/StateSettings;->isConversationsEnabled()Z

    move-result v3

    .line 141
    invoke-virtual {v0}, Lzendesk/support/request/StateSettings;->hasIdentityEmailAddress()Z

    move-result v4

    .line 142
    invoke-virtual {v0}, Lzendesk/support/request/StateSettings;->isNeverRequestEmailOn()Z

    move-result v0

    .line 146
    invoke-virtual {p1}, Lzendesk/support/request/StateError;->getState()Lzendesk/support/request/StateError$ErrorType;

    move-result-object v5

    sget-object v6, Lzendesk/support/request/StateError$ErrorType;->NoAccess:Lzendesk/support/request/StateError$ErrorType;

    const/4 v7, 0x0

    const-string v8, "RequestActivity"

    if-ne v5, v6, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 148
    invoke-virtual {p1}, Lzendesk/support/request/StateError;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v7

    const-string p1, "Network returned \'No Access\'. Ticket is not longer valid. Error: \'%s\'"

    .line 147
    invoke-static {v8, p1, v0}, Lcom/zendesk/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    sget-object p1, Lzendesk/support/request/ComponentRequestRouter$RequestScreen;->Fin:Lzendesk/support/request/ComponentRequestRouter$RequestScreen;

    return-object p1

    :cond_0
    if-nez v2, :cond_1

    .line 154
    sget-object p1, Lzendesk/support/request/ComponentRequestRouter$RequestScreen;->Loading:Lzendesk/support/request/ComponentRequestRouter$RequestScreen;

    return-object p1

    :cond_1
    if-eqz v3, :cond_2

    .line 159
    sget-object p1, Lzendesk/support/request/ComponentRequestRouter$RequestScreen;->Conversation:Lzendesk/support/request/ComponentRequestRouter$RequestScreen;

    return-object p1

    :cond_2
    if-eqz v1, :cond_3

    new-array p1, v7, [Ljava/lang/Object;

    const-string v0, "Conversations are disabled. Exiting RequestActivity"

    .line 164
    invoke-static {v8, v0, p1}, Lcom/zendesk/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    sget-object p1, Lzendesk/support/request/ComponentRequestRouter$RequestScreen;->Fin:Lzendesk/support/request/ComponentRequestRouter$RequestScreen;

    return-object p1

    :cond_3
    if-nez v4, :cond_4

    if-eqz v0, :cond_4

    new-array p1, v7, [Ljava/lang/Object;

    const-string v0, "Conversations are disabled, never request email is enabled, with this configuration tickets would go into a black hole. Exiting RequestActivity."

    .line 171
    invoke-static {v8, v0, p1}, Lcom/zendesk/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    sget-object p1, Lzendesk/support/request/ComponentRequestRouter$RequestScreen;->Fin:Lzendesk/support/request/ComponentRequestRouter$RequestScreen;

    return-object p1

    .line 176
    :cond_4
    sget-object p1, Lzendesk/support/request/ComponentRequestRouter$RequestScreen;->EmailForm:Lzendesk/support/request/ComponentRequestRouter$RequestScreen;

    return-object p1
.end method
