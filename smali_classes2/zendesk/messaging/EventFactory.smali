.class public Lzendesk/messaging/EventFactory;
.super Ljava/lang/Object;
.source "EventFactory.java"


# annotations
.annotation runtime Lzendesk/messaging/MessagingActivityScope;
.end annotation


# instance fields
.field private final dateProvider:Lzendesk/messaging/components/DateProvider;


# direct methods
.method public constructor <init>(Lzendesk/messaging/components/DateProvider;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lzendesk/messaging/EventFactory;->dateProvider:Lzendesk/messaging/components/DateProvider;

    return-void
.end method


# virtual methods
.method public actionOptionClick(Lzendesk/messaging/MessagingItem$Action;)Lzendesk/messaging/Event;
    .locals 2

    .line 50
    new-instance v0, Lzendesk/messaging/Event$ActionOptionClicked;

    iget-object v1, p0, Lzendesk/messaging/EventFactory;->dateProvider:Lzendesk/messaging/components/DateProvider;

    invoke-virtual {v1}, Lzendesk/messaging/components/DateProvider;->now()Ljava/util/Date;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lzendesk/messaging/Event$ActionOptionClicked;-><init>(Lzendesk/messaging/MessagingItem$Action;Ljava/util/Date;)V

    return-object v0
.end method

.method public articleSuggestionClick(Lzendesk/messaging/MessagingItem$ArticlesResponse$ArticleSuggestion;)Lzendesk/messaging/Event;
    .locals 2

    .line 56
    new-instance v0, Lzendesk/messaging/Event$ArticleSuggestionClicked;

    iget-object v1, p0, Lzendesk/messaging/EventFactory;->dateProvider:Lzendesk/messaging/components/DateProvider;

    invoke-virtual {v1}, Lzendesk/messaging/components/DateProvider;->now()Ljava/util/Date;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lzendesk/messaging/Event$ArticleSuggestionClicked;-><init>(Lzendesk/messaging/MessagingItem$ArticlesResponse$ArticleSuggestion;Ljava/util/Date;)V

    return-object v0
.end method

.method public copyQueryClick(Lzendesk/messaging/MessagingItem$Query;)Lzendesk/messaging/Event;
    .locals 2

    .line 71
    new-instance v0, Lzendesk/messaging/Event$CopyQueryClick;

    iget-object v1, p0, Lzendesk/messaging/EventFactory;->dateProvider:Lzendesk/messaging/components/DateProvider;

    invoke-virtual {v1}, Lzendesk/messaging/components/DateProvider;->now()Ljava/util/Date;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lzendesk/messaging/Event$CopyQueryClick;-><init>(Lzendesk/messaging/MessagingItem$Query;Ljava/util/Date;)V

    return-object v0
.end method

.method public deleteQueryClick(Lzendesk/messaging/MessagingItem$Query;)Lzendesk/messaging/Event;
    .locals 2

    .line 61
    new-instance v0, Lzendesk/messaging/Event$MessageDeleted;

    iget-object v1, p0, Lzendesk/messaging/EventFactory;->dateProvider:Lzendesk/messaging/components/DateProvider;

    invoke-virtual {v1}, Lzendesk/messaging/components/DateProvider;->now()Ljava/util/Date;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lzendesk/messaging/Event$MessageDeleted;-><init>(Lzendesk/messaging/MessagingItem$Query;Ljava/util/Date;)V

    return-object v0
.end method

.method public formOptionClick(Lzendesk/messaging/MessagingItem$OptionsResponse;Lzendesk/messaging/MessagingItem$Option;)Lzendesk/messaging/Event;
    .locals 2

    .line 78
    new-instance v0, Lzendesk/messaging/Event$ResponseOptionClicked;

    iget-object v1, p0, Lzendesk/messaging/EventFactory;->dateProvider:Lzendesk/messaging/components/DateProvider;

    invoke-virtual {v1}, Lzendesk/messaging/components/DateProvider;->now()Ljava/util/Date;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lzendesk/messaging/Event$ResponseOptionClicked;-><init>(Lzendesk/messaging/MessagingItem$OptionsResponse;Lzendesk/messaging/MessagingItem$Option;Ljava/util/Date;)V

    return-object v0
.end method

.method menuItemClicked(I)Lzendesk/messaging/Event;
    .locals 2

    .line 115
    new-instance v0, Lzendesk/messaging/Event$MenuItemClicked;

    iget-object v1, p0, Lzendesk/messaging/EventFactory;->dateProvider:Lzendesk/messaging/components/DateProvider;

    invoke-virtual {v1}, Lzendesk/messaging/components/DateProvider;->now()Ljava/util/Date;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lzendesk/messaging/Event$MenuItemClicked;-><init>(Ljava/util/Date;I)V

    return-object v0
.end method

.method onActivityResult(IILandroid/content/Intent;)Lzendesk/messaging/Event;
    .locals 2

    .line 111
    new-instance v0, Lzendesk/messaging/Event$ActivityResult;

    iget-object v1, p0, Lzendesk/messaging/EventFactory;->dateProvider:Lzendesk/messaging/components/DateProvider;

    invoke-virtual {v1}, Lzendesk/messaging/components/DateProvider;->now()Ljava/util/Date;

    move-result-object v1

    invoke-direct {v0, p1, p2, p3, v1}, Lzendesk/messaging/Event$ActivityResult;-><init>(IILandroid/content/Intent;Ljava/util/Date;)V

    return-object v0
.end method

.method public reconnectButtonClick()Lzendesk/messaging/Event;
    .locals 2

    .line 83
    new-instance v0, Lzendesk/messaging/Event$ReconnectButtonClicked;

    iget-object v1, p0, Lzendesk/messaging/EventFactory;->dateProvider:Lzendesk/messaging/components/DateProvider;

    invoke-virtual {v1}, Lzendesk/messaging/components/DateProvider;->now()Ljava/util/Date;

    move-result-object v1

    invoke-direct {v0, v1}, Lzendesk/messaging/Event$ReconnectButtonClicked;-><init>(Ljava/util/Date;)V

    return-object v0
.end method

.method public retryQueryClick(Lzendesk/messaging/MessagingItem$Query;)Lzendesk/messaging/Event;
    .locals 2

    .line 66
    new-instance v0, Lzendesk/messaging/Event$MessageResent;

    iget-object v1, p0, Lzendesk/messaging/EventFactory;->dateProvider:Lzendesk/messaging/components/DateProvider;

    invoke-virtual {v1}, Lzendesk/messaging/components/DateProvider;->now()Ljava/util/Date;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lzendesk/messaging/Event$MessageResent;-><init>(Lzendesk/messaging/MessagingItem$Query;Ljava/util/Date;)V

    return-object v0
.end method

.method public retrySendAttachmentClick(Lzendesk/messaging/MessagingItem$FileQuery;)Lzendesk/messaging/Event;
    .locals 2

    .line 107
    new-instance v0, Lzendesk/messaging/Event$RetrySendAttachmentClick;

    iget-object v1, p0, Lzendesk/messaging/EventFactory;->dateProvider:Lzendesk/messaging/components/DateProvider;

    invoke-virtual {v1}, Lzendesk/messaging/components/DateProvider;->now()Ljava/util/Date;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lzendesk/messaging/Event$RetrySendAttachmentClick;-><init>(Lzendesk/messaging/MessagingItem$FileQuery;Ljava/util/Date;)V

    return-object v0
.end method

.method public sendAttachment(Ljava/util/List;)Lzendesk/messaging/Event;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)",
            "Lzendesk/messaging/Event;"
        }
    .end annotation

    .line 95
    new-instance v0, Lzendesk/messaging/Event$FileSelected;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p1, p0, Lzendesk/messaging/EventFactory;->dateProvider:Lzendesk/messaging/components/DateProvider;

    invoke-virtual {p1}, Lzendesk/messaging/components/DateProvider;->now()Ljava/util/Date;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lzendesk/messaging/Event$FileSelected;-><init>(Ljava/util/List;Ljava/util/Date;)V

    return-object v0
.end method

.method public textInput(Ljava/lang/String;)Lzendesk/messaging/Event;
    .locals 2

    .line 30
    new-instance v0, Lzendesk/messaging/Event$MessageSubmitted;

    iget-object v1, p0, Lzendesk/messaging/EventFactory;->dateProvider:Lzendesk/messaging/components/DateProvider;

    invoke-virtual {v1}, Lzendesk/messaging/components/DateProvider;->now()Ljava/util/Date;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lzendesk/messaging/Event$MessageSubmitted;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    return-object v0
.end method

.method public transferOptionClick(Lzendesk/messaging/Engine$TransferOptionDescription;)Lzendesk/messaging/Event;
    .locals 2

    .line 45
    new-instance v0, Lzendesk/messaging/Event$EngineSelection;

    iget-object v1, p0, Lzendesk/messaging/EventFactory;->dateProvider:Lzendesk/messaging/components/DateProvider;

    invoke-virtual {v1}, Lzendesk/messaging/components/DateProvider;->now()Ljava/util/Date;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lzendesk/messaging/Event$EngineSelection;-><init>(Lzendesk/messaging/Engine$TransferOptionDescription;Ljava/util/Date;)V

    return-object v0
.end method

.method public typingStart()Lzendesk/messaging/Event;
    .locals 2

    .line 35
    new-instance v0, Lzendesk/messaging/Event$TypingStarted;

    iget-object v1, p0, Lzendesk/messaging/EventFactory;->dateProvider:Lzendesk/messaging/components/DateProvider;

    invoke-virtual {v1}, Lzendesk/messaging/components/DateProvider;->now()Ljava/util/Date;

    move-result-object v1

    invoke-direct {v0, v1}, Lzendesk/messaging/Event$TypingStarted;-><init>(Ljava/util/Date;)V

    return-object v0
.end method

.method public typingStop()Lzendesk/messaging/Event;
    .locals 2

    .line 40
    new-instance v0, Lzendesk/messaging/Event$TypingStopped;

    iget-object v1, p0, Lzendesk/messaging/EventFactory;->dateProvider:Lzendesk/messaging/components/DateProvider;

    invoke-virtual {v1}, Lzendesk/messaging/components/DateProvider;->now()Ljava/util/Date;

    move-result-object v1

    invoke-direct {v0, v1}, Lzendesk/messaging/Event$TypingStopped;-><init>(Ljava/util/Date;)V

    return-object v0
.end method
