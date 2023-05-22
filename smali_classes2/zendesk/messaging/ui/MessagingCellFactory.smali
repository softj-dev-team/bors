.class public Lzendesk/messaging/ui/MessagingCellFactory;
.super Ljava/lang/Object;
.source "MessagingCellFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/messaging/ui/MessagingCellFactory$MessageActionAdapter;,
        Lzendesk/messaging/ui/MessagingCellFactory$TypingItem;
    }
.end annotation

.annotation runtime Lzendesk/messaging/MessagingActivityScope;
.end annotation


# static fields
.field private static final DEFAULT_TYPING_INDICATOR_LABEL_STATE:Lzendesk/messaging/AgentDetails;

.field static final TYPING_INDICATOR_ID:Ljava/lang/String;


# instance fields
.field private final avatarStateFactory:Lzendesk/messaging/ui/AvatarStateFactory;

.field private final avatarStateRenderer:Lzendesk/messaging/ui/AvatarStateRenderer;

.field private final cellPropsFactory:Lzendesk/messaging/ui/MessagingCellPropsFactory;

.field private final dateProvider:Lzendesk/messaging/components/DateProvider;

.field private final eventFactory:Lzendesk/messaging/EventFactory;

.field private final eventListener:Lzendesk/messaging/EventListener;

.field private final multilineResponseOptionsEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lzendesk/messaging/ui/MessagingCellFactory;->TYPING_INDICATOR_ID:Ljava/lang/String;

    .line 41
    new-instance v0, Lzendesk/messaging/AgentDetails;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2}, Lzendesk/messaging/AgentDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lzendesk/messaging/ui/MessagingCellFactory;->DEFAULT_TYPING_INDICATOR_LABEL_STATE:Lzendesk/messaging/AgentDetails;

    return-void
.end method

.method constructor <init>(Lzendesk/messaging/ui/MessagingCellPropsFactory;Lzendesk/messaging/components/DateProvider;Lzendesk/messaging/EventListener;Lzendesk/messaging/EventFactory;Lzendesk/messaging/ui/AvatarStateRenderer;Lzendesk/messaging/ui/AvatarStateFactory;Z)V
    .locals 0
    .param p7    # Z
        .annotation runtime Ljavax/inject/Named;
            value = "Quick reply wrapping enabled"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lzendesk/messaging/ui/MessagingCellFactory;->cellPropsFactory:Lzendesk/messaging/ui/MessagingCellPropsFactory;

    .line 61
    iput-object p2, p0, Lzendesk/messaging/ui/MessagingCellFactory;->dateProvider:Lzendesk/messaging/components/DateProvider;

    .line 62
    iput-object p3, p0, Lzendesk/messaging/ui/MessagingCellFactory;->eventListener:Lzendesk/messaging/EventListener;

    .line 63
    iput-object p4, p0, Lzendesk/messaging/ui/MessagingCellFactory;->eventFactory:Lzendesk/messaging/EventFactory;

    .line 64
    iput-object p5, p0, Lzendesk/messaging/ui/MessagingCellFactory;->avatarStateRenderer:Lzendesk/messaging/ui/AvatarStateRenderer;

    .line 65
    iput-object p6, p0, Lzendesk/messaging/ui/MessagingCellFactory;->avatarStateFactory:Lzendesk/messaging/ui/AvatarStateFactory;

    .line 66
    iput-boolean p7, p0, Lzendesk/messaging/ui/MessagingCellFactory;->multilineResponseOptionsEnabled:Z

    return-void
.end method

.method private static createActionOptionsCell(Lzendesk/messaging/MessagingItem$ActionResponse;Lzendesk/messaging/ui/MessagingCellProps;Lzendesk/messaging/EventListener;Lzendesk/messaging/EventFactory;Lzendesk/messaging/ui/AvatarStateFactory;Lzendesk/messaging/ui/AvatarStateRenderer;)Lzendesk/messaging/ui/MessagingCell;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/messaging/MessagingItem$ActionResponse;",
            "Lzendesk/messaging/ui/MessagingCellProps;",
            "Lzendesk/messaging/EventListener;",
            "Lzendesk/messaging/EventFactory;",
            "Lzendesk/messaging/ui/AvatarStateFactory;",
            "Lzendesk/messaging/ui/AvatarStateRenderer;",
            ")",
            "Lzendesk/messaging/ui/MessagingCell<",
            "Lzendesk/messaging/ui/ActionOptionsView$State;",
            "Lzendesk/messaging/ui/ActionOptionsView;",
            ">;"
        }
    .end annotation

    .line 460
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 462
    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$ActionResponse;->getActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/messaging/MessagingItem$Action;

    .line 463
    new-instance v2, Lzendesk/messaging/ui/ActionOptionsView$ActionOptionState;

    invoke-virtual {v1}, Lzendesk/messaging/MessagingItem$Action;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lzendesk/messaging/ui/MessagingCellFactory$3;

    invoke-direct {v4, p2, p3, v1}, Lzendesk/messaging/ui/MessagingCellFactory$3;-><init>(Lzendesk/messaging/EventListener;Lzendesk/messaging/EventFactory;Lzendesk/messaging/MessagingItem$Action;)V

    invoke-direct {v2, v3, v4}, Lzendesk/messaging/ui/ActionOptionsView$ActionOptionState;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 472
    :cond_0
    new-instance p2, Lzendesk/messaging/ui/ActionOptionsView$State;

    .line 473
    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$ActionResponse;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 474
    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$ActionResponse;->getAgentDetails()Lzendesk/messaging/AgentDetails;

    move-result-object p3

    invoke-virtual {p3}, Lzendesk/messaging/AgentDetails;->getAgentName()Ljava/lang/String;

    move-result-object v2

    .line 475
    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$ActionResponse;->getAgentDetails()Lzendesk/messaging/AgentDetails;

    move-result-object p3

    invoke-virtual {p3}, Lzendesk/messaging/AgentDetails;->isBot()Z

    move-result v3

    const/4 v6, 0x1

    .line 479
    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$ActionResponse;->getAgentDetails()Lzendesk/messaging/AgentDetails;

    move-result-object p3

    invoke-virtual {p4, p3}, Lzendesk/messaging/ui/AvatarStateFactory;->createAvatarState(Lzendesk/messaging/AgentDetails;)Lzendesk/messaging/ui/AvatarState;

    move-result-object v7

    move-object v0, p2

    move-object v4, p1

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lzendesk/messaging/ui/ActionOptionsView$State;-><init>(Ljava/lang/String;Ljava/lang/String;ZLzendesk/messaging/ui/MessagingCellProps;Ljava/util/List;ZLzendesk/messaging/ui/AvatarState;Lzendesk/messaging/ui/AvatarStateRenderer;)V

    .line 483
    new-instance p1, Lzendesk/messaging/ui/MessagingCell;

    .line 484
    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$ActionResponse;->getId()Ljava/lang/String;

    move-result-object p0

    sget p3, Lzendesk/messaging/R$layout;->zui_cell_action_options:I

    const-class p4, Lzendesk/messaging/ui/ActionOptionsView;

    invoke-direct {p1, p0, p2, p3, p4}, Lzendesk/messaging/ui/MessagingCell;-><init>(Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Class;)V

    return-object p1
.end method

.method private static createActionOptionsCell(Lzendesk/messaging/MessagingItem$TransferResponse;Lzendesk/messaging/ui/MessagingCellProps;Lzendesk/messaging/EventListener;Lzendesk/messaging/EventFactory;Lzendesk/messaging/ui/AvatarStateFactory;Lzendesk/messaging/ui/AvatarStateRenderer;)Lzendesk/messaging/ui/MessagingCell;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/messaging/MessagingItem$TransferResponse;",
            "Lzendesk/messaging/ui/MessagingCellProps;",
            "Lzendesk/messaging/EventListener;",
            "Lzendesk/messaging/EventFactory;",
            "Lzendesk/messaging/ui/AvatarStateFactory;",
            "Lzendesk/messaging/ui/AvatarStateRenderer;",
            ")",
            "Lzendesk/messaging/ui/MessagingCell<",
            "Lzendesk/messaging/ui/ActionOptionsView$State;",
            "Lzendesk/messaging/ui/ActionOptionsView;",
            ">;"
        }
    .end annotation

    .line 424
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 426
    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$TransferResponse;->getEngineOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/messaging/Engine$TransferOptionDescription;

    .line 427
    new-instance v2, Lzendesk/messaging/ui/ActionOptionsView$ActionOptionState;

    .line 428
    invoke-virtual {v1}, Lzendesk/messaging/Engine$TransferOptionDescription;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lzendesk/messaging/ui/MessagingCellFactory$2;

    invoke-direct {v4, p2, p3, v1}, Lzendesk/messaging/ui/MessagingCellFactory$2;-><init>(Lzendesk/messaging/EventListener;Lzendesk/messaging/EventFactory;Lzendesk/messaging/Engine$TransferOptionDescription;)V

    invoke-direct {v2, v3, v4}, Lzendesk/messaging/ui/ActionOptionsView$ActionOptionState;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 427
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 438
    :cond_0
    new-instance p2, Lzendesk/messaging/ui/ActionOptionsView$State;

    .line 439
    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$TransferResponse;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 440
    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$TransferResponse;->getAgentDetails()Lzendesk/messaging/AgentDetails;

    move-result-object p3

    invoke-virtual {p3}, Lzendesk/messaging/AgentDetails;->getAgentName()Ljava/lang/String;

    move-result-object v2

    .line 441
    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$TransferResponse;->getAgentDetails()Lzendesk/messaging/AgentDetails;

    move-result-object p3

    invoke-virtual {p3}, Lzendesk/messaging/AgentDetails;->isBot()Z

    move-result v3

    .line 444
    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$TransferResponse;->isEnabled()Z

    move-result v6

    .line 445
    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$TransferResponse;->getAgentDetails()Lzendesk/messaging/AgentDetails;

    move-result-object p3

    invoke-virtual {p4, p3}, Lzendesk/messaging/ui/AvatarStateFactory;->createAvatarState(Lzendesk/messaging/AgentDetails;)Lzendesk/messaging/ui/AvatarState;

    move-result-object v7

    move-object v0, p2

    move-object v4, p1

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lzendesk/messaging/ui/ActionOptionsView$State;-><init>(Ljava/lang/String;Ljava/lang/String;ZLzendesk/messaging/ui/MessagingCellProps;Ljava/util/List;ZLzendesk/messaging/ui/AvatarState;Lzendesk/messaging/ui/AvatarStateRenderer;)V

    .line 449
    new-instance p1, Lzendesk/messaging/ui/MessagingCell;

    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$TransferResponse;->getId()Ljava/lang/String;

    move-result-object p0

    sget p3, Lzendesk/messaging/R$layout;->zui_cell_action_options:I

    const-class p4, Lzendesk/messaging/ui/ActionOptionsView;

    invoke-direct {p1, p0, p2, p3, p4}, Lzendesk/messaging/ui/MessagingCell;-><init>(Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Class;)V

    return-object p1
.end method

.method private static createAgentFileCell(Lzendesk/messaging/MessagingItem$FileResponse;Lzendesk/messaging/ui/MessagingCellProps;Lzendesk/messaging/ui/AvatarStateFactory;Lzendesk/messaging/ui/AvatarStateRenderer;)Lzendesk/messaging/ui/MessagingCell;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/messaging/MessagingItem$FileResponse;",
            "Lzendesk/messaging/ui/MessagingCellProps;",
            "Lzendesk/messaging/ui/AvatarStateFactory;",
            "Lzendesk/messaging/ui/AvatarStateRenderer;",
            ")",
            "Lzendesk/messaging/ui/MessagingCell<",
            "Lzendesk/messaging/ui/AgentFileCellView$State;",
            "Lzendesk/messaging/ui/AgentFileCellView;",
            ">;"
        }
    .end annotation

    .line 233
    new-instance v7, Lzendesk/messaging/ui/AgentFileCellView$State;

    .line 234
    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$FileResponse;->getAttachment()Lzendesk/messaging/Attachment;

    move-result-object v1

    .line 236
    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$FileResponse;->getAgentDetails()Lzendesk/messaging/AgentDetails;

    move-result-object v0

    invoke-virtual {v0}, Lzendesk/messaging/AgentDetails;->getAgentName()Ljava/lang/String;

    move-result-object v3

    .line 237
    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$FileResponse;->getAgentDetails()Lzendesk/messaging/AgentDetails;

    move-result-object v0

    invoke-virtual {v0}, Lzendesk/messaging/AgentDetails;->isBot()Z

    move-result v4

    .line 238
    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$FileResponse;->getAgentDetails()Lzendesk/messaging/AgentDetails;

    move-result-object v0

    invoke-virtual {p2, v0}, Lzendesk/messaging/ui/AvatarStateFactory;->createAvatarState(Lzendesk/messaging/AgentDetails;)Lzendesk/messaging/ui/AvatarState;

    move-result-object v5

    move-object v0, v7

    move-object v2, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lzendesk/messaging/ui/AgentFileCellView$State;-><init>(Lzendesk/messaging/Attachment;Lzendesk/messaging/ui/MessagingCellProps;Ljava/lang/String;ZLzendesk/messaging/ui/AvatarState;Lzendesk/messaging/ui/AvatarStateRenderer;)V

    .line 240
    new-instance p1, Lzendesk/messaging/ui/MessagingCell;

    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$FileResponse;->getId()Ljava/lang/String;

    move-result-object p0

    sget p2, Lzendesk/messaging/R$layout;->zui_cell_agent_file_view:I

    const-class p3, Lzendesk/messaging/ui/AgentFileCellView;

    invoke-direct {p1, p0, v7, p2, p3}, Lzendesk/messaging/ui/MessagingCell;-><init>(Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Class;)V

    return-object p1
.end method

.method private static createAgentImageCell(Lzendesk/messaging/MessagingItem$ImageResponse;Lzendesk/messaging/ui/MessagingCellProps;Lcom/squareup/picasso/Picasso;Lzendesk/messaging/ui/AvatarStateFactory;Lzendesk/messaging/ui/AvatarStateRenderer;)Lzendesk/messaging/ui/MessagingCell;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/messaging/MessagingItem$ImageResponse;",
            "Lzendesk/messaging/ui/MessagingCellProps;",
            "Lcom/squareup/picasso/Picasso;",
            "Lzendesk/messaging/ui/AvatarStateFactory;",
            "Lzendesk/messaging/ui/AvatarStateRenderer;",
            ")",
            "Lzendesk/messaging/ui/MessagingCell<",
            "Lzendesk/messaging/ui/AgentImageCellView$State;",
            "Lzendesk/messaging/ui/AgentImageCellView;",
            ">;"
        }
    .end annotation

    .line 249
    new-instance v8, Lzendesk/messaging/ui/AgentImageCellView$State;

    .line 252
    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$ImageResponse;->getAttachment()Lzendesk/messaging/Attachment;

    move-result-object v3

    .line 253
    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$ImageResponse;->getAgentDetails()Lzendesk/messaging/AgentDetails;

    move-result-object v0

    invoke-virtual {v0}, Lzendesk/messaging/AgentDetails;->getAgentName()Ljava/lang/String;

    move-result-object v4

    .line 254
    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$ImageResponse;->getAgentDetails()Lzendesk/messaging/AgentDetails;

    move-result-object v0

    invoke-virtual {v0}, Lzendesk/messaging/AgentDetails;->isBot()Z

    move-result v5

    .line 255
    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$ImageResponse;->getAgentDetails()Lzendesk/messaging/AgentDetails;

    move-result-object v0

    invoke-virtual {p3, v0}, Lzendesk/messaging/ui/AvatarStateFactory;->createAvatarState(Lzendesk/messaging/AgentDetails;)Lzendesk/messaging/ui/AvatarState;

    move-result-object v6

    move-object v0, v8

    move-object v1, p2

    move-object v2, p1

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lzendesk/messaging/ui/AgentImageCellView$State;-><init>(Lcom/squareup/picasso/Picasso;Lzendesk/messaging/ui/MessagingCellProps;Lzendesk/messaging/Attachment;Ljava/lang/String;ZLzendesk/messaging/ui/AvatarState;Lzendesk/messaging/ui/AvatarStateRenderer;)V

    .line 258
    new-instance p1, Lzendesk/messaging/ui/MessagingCell;

    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$ImageResponse;->getId()Ljava/lang/String;

    move-result-object p0

    sget p2, Lzendesk/messaging/R$layout;->zui_cell_agent_image_view:I

    const-class p3, Lzendesk/messaging/ui/AgentImageCellView;

    invoke-direct {p1, p0, v8, p2, p3}, Lzendesk/messaging/ui/MessagingCell;-><init>(Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Class;)V

    return-object p1
.end method

.method private static createArticleSuggestionViewState(Lzendesk/messaging/MessagingItem$ArticlesResponse$ArticleSuggestion;Lzendesk/messaging/EventListener;Lzendesk/messaging/EventFactory;)Lzendesk/messaging/ui/ArticlesResponseView$ArticleSuggestionViewState;
    .locals 4

    .line 405
    new-instance v0, Lzendesk/messaging/ui/ArticlesResponseView$ArticleSuggestionViewState;

    .line 406
    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$ArticlesResponse$ArticleSuggestion;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 407
    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$ArticlesResponse$ArticleSuggestion;->getSnippet()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lzendesk/messaging/ui/MessagingCellFactory$1;

    invoke-direct {v3, p1, p2, p0}, Lzendesk/messaging/ui/MessagingCellFactory$1;-><init>(Lzendesk/messaging/EventListener;Lzendesk/messaging/EventFactory;Lzendesk/messaging/MessagingItem$ArticlesResponse$ArticleSuggestion;)V

    invoke-direct {v0, v1, v2, v3}, Lzendesk/messaging/ui/ArticlesResponseView$ArticleSuggestionViewState;-><init>(Ljava/lang/String;Ljava/lang/String;Lzendesk/messaging/ui/OnArticleSuggestionSelectionListener;)V

    return-object v0
.end method

.method private static createArticleSuggestionViewStates(Ljava/util/List;Lzendesk/messaging/EventListener;Lzendesk/messaging/EventFactory;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/messaging/MessagingItem$ArticlesResponse$ArticleSuggestion;",
            ">;",
            "Lzendesk/messaging/EventListener;",
            "Lzendesk/messaging/EventFactory;",
            ")",
            "Ljava/util/List<",
            "Lzendesk/messaging/ui/ArticlesResponseView$ArticleSuggestionViewState;",
            ">;"
        }
    .end annotation

    .line 394
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 395
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/messaging/MessagingItem$ArticlesResponse$ArticleSuggestion;

    .line 396
    invoke-static {v1, p1, p2}, Lzendesk/messaging/ui/MessagingCellFactory;->createArticleSuggestionViewState(Lzendesk/messaging/MessagingItem$ArticlesResponse$ArticleSuggestion;Lzendesk/messaging/EventListener;Lzendesk/messaging/EventFactory;)Lzendesk/messaging/ui/ArticlesResponseView$ArticleSuggestionViewState;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static createArticlesResponseCell(Lzendesk/messaging/MessagingItem$ArticlesResponse;Lzendesk/messaging/ui/MessagingCellProps;Lzendesk/messaging/EventListener;Lzendesk/messaging/EventFactory;Lzendesk/messaging/ui/AvatarStateFactory;Lzendesk/messaging/ui/AvatarStateRenderer;)Lzendesk/messaging/ui/MessagingCell;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/messaging/MessagingItem$ArticlesResponse;",
            "Lzendesk/messaging/ui/MessagingCellProps;",
            "Lzendesk/messaging/EventListener;",
            "Lzendesk/messaging/EventFactory;",
            "Lzendesk/messaging/ui/AvatarStateFactory;",
            "Lzendesk/messaging/ui/AvatarStateRenderer;",
            ")",
            "Lzendesk/messaging/ui/MessagingCell<",
            "Lzendesk/messaging/ui/ArticlesResponseView$State;",
            "Lzendesk/messaging/ui/ArticlesResponseView;",
            ">;"
        }
    .end annotation

    .line 377
    new-instance v7, Lzendesk/messaging/ui/ArticlesResponseView$State;

    .line 378
    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$ArticlesResponse;->getAgentDetails()Lzendesk/messaging/AgentDetails;

    move-result-object v0

    invoke-virtual {v0}, Lzendesk/messaging/AgentDetails;->getAgentName()Ljava/lang/String;

    move-result-object v1

    .line 379
    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$ArticlesResponse;->getAgentDetails()Lzendesk/messaging/AgentDetails;

    move-result-object v0

    invoke-virtual {v0}, Lzendesk/messaging/AgentDetails;->isBot()Z

    move-result v2

    .line 381
    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$ArticlesResponse;->getArticleSuggestions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lzendesk/messaging/ui/MessagingCellFactory;->createArticleSuggestionViewStates(Ljava/util/List;Lzendesk/messaging/EventListener;Lzendesk/messaging/EventFactory;)Ljava/util/List;

    move-result-object v4

    .line 384
    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$ArticlesResponse;->getAgentDetails()Lzendesk/messaging/AgentDetails;

    move-result-object p2

    invoke-virtual {p4, p2}, Lzendesk/messaging/ui/AvatarStateFactory;->createAvatarState(Lzendesk/messaging/AgentDetails;)Lzendesk/messaging/ui/AvatarState;

    move-result-object v5

    move-object v0, v7

    move-object v3, p1

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lzendesk/messaging/ui/ArticlesResponseView$State;-><init>(Ljava/lang/String;ZLzendesk/messaging/ui/MessagingCellProps;Ljava/util/List;Lzendesk/messaging/ui/AvatarState;Lzendesk/messaging/ui/AvatarStateRenderer;)V

    .line 386
    new-instance p1, Lzendesk/messaging/ui/MessagingCell;

    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$ArticlesResponse;->getId()Ljava/lang/String;

    move-result-object p0

    sget p2, Lzendesk/messaging/R$layout;->zui_cell_articles_response:I

    const-class p3, Lzendesk/messaging/ui/ArticlesResponseView;

    invoke-direct {p1, p0, v7, p2, p3}, Lzendesk/messaging/ui/MessagingCell;-><init>(Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Class;)V

    return-object p1
.end method

.method private static createCell(Lzendesk/messaging/MessagingItem;Lzendesk/messaging/ui/MessagingCellProps;Lcom/squareup/picasso/Picasso;Lzendesk/messaging/AttachmentSettings;Lzendesk/messaging/ui/AvatarStateRenderer;Lzendesk/messaging/ui/AvatarStateFactory;Lzendesk/messaging/EventListener;Lzendesk/messaging/EventFactory;Z)Lzendesk/messaging/ui/MessagingCell;
    .locals 7

    .line 125
    instance-of v0, p0, Lzendesk/messaging/MessagingItem$Query;

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    move-object v5, p7

    .line 126
    invoke-static/range {v0 .. v5}, Lzendesk/messaging/ui/MessagingCellFactory;->createQueryCell(Lzendesk/messaging/MessagingItem;Lzendesk/messaging/ui/MessagingCellProps;Lcom/squareup/picasso/Picasso;Lzendesk/messaging/AttachmentSettings;Lzendesk/messaging/EventListener;Lzendesk/messaging/EventFactory;)Lzendesk/messaging/ui/MessagingCell;

    move-result-object p0

    return-object p0

    .line 127
    :cond_0
    instance-of p3, p0, Lzendesk/messaging/MessagingItem$Response;

    if-eqz p3, :cond_1

    .line 128
    move-object v0, p0

    check-cast v0, Lzendesk/messaging/MessagingItem$Response;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p6

    move-object v4, p7

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lzendesk/messaging/ui/MessagingCellFactory;->createResponseCell(Lzendesk/messaging/MessagingItem$Response;Lzendesk/messaging/ui/MessagingCellProps;Lcom/squareup/picasso/Picasso;Lzendesk/messaging/EventListener;Lzendesk/messaging/EventFactory;Lzendesk/messaging/ui/AvatarStateRenderer;Lzendesk/messaging/ui/AvatarStateFactory;)Lzendesk/messaging/ui/MessagingCell;

    move-result-object p0

    return-object p0

    .line 135
    :cond_1
    instance-of p2, p0, Lzendesk/messaging/MessagingItem$OptionsResponse;

    if-eqz p2, :cond_2

    .line 136
    check-cast p0, Lzendesk/messaging/MessagingItem$OptionsResponse;

    invoke-static {p0, p1, p6, p7, p8}, Lzendesk/messaging/ui/MessagingCellFactory;->createResponseOptionsCell(Lzendesk/messaging/MessagingItem$OptionsResponse;Lzendesk/messaging/ui/MessagingCellProps;Lzendesk/messaging/EventListener;Lzendesk/messaging/EventFactory;Z)Lzendesk/messaging/ui/MessagingCell;

    move-result-object p0

    return-object p0

    .line 141
    :cond_2
    instance-of p2, p0, Lzendesk/messaging/MessagingItem$SystemMessage;

    if-eqz p2, :cond_3

    .line 142
    check-cast p0, Lzendesk/messaging/MessagingItem$SystemMessage;

    invoke-static {p0, p1}, Lzendesk/messaging/ui/MessagingCellFactory;->createSystemMessageCell(Lzendesk/messaging/MessagingItem$SystemMessage;Lzendesk/messaging/ui/MessagingCellProps;)Lzendesk/messaging/ui/MessagingCell;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private static createFileQueryCell(Lzendesk/messaging/MessagingItem$FileQuery;Lzendesk/messaging/ui/MessagingCellProps;Lzendesk/messaging/AttachmentSettings;Lzendesk/messaging/EventListener;Lzendesk/messaging/EventFactory;)Lzendesk/messaging/ui/MessagingCell;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/messaging/MessagingItem$FileQuery;",
            "Lzendesk/messaging/ui/MessagingCellProps;",
            "Lzendesk/messaging/AttachmentSettings;",
            "Lzendesk/messaging/EventListener;",
            "Lzendesk/messaging/EventFactory;",
            ")",
            "Lzendesk/messaging/ui/MessagingCell<",
            "Lzendesk/messaging/ui/EndUserCellFileState;",
            "Lzendesk/messaging/ui/EndUserFileCellView;",
            ">;"
        }
    .end annotation

    .line 278
    new-instance v8, Lzendesk/messaging/ui/EndUserCellFileState;

    .line 279
    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$FileQuery;->getId()Ljava/lang/String;

    move-result-object v1

    .line 281
    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$FileQuery;->getStatus()Lzendesk/messaging/MessagingItem$Query$Status;

    move-result-object v3

    new-instance v4, Lzendesk/messaging/ui/MessagingCellFactory$MessageActionAdapter;

    invoke-direct {v4, p3, p0, p4}, Lzendesk/messaging/ui/MessagingCellFactory$MessageActionAdapter;-><init>(Lzendesk/messaging/EventListener;Lzendesk/messaging/MessagingItem$Query;Lzendesk/messaging/EventFactory;)V

    .line 283
    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$FileQuery;->getAttachment()Lzendesk/messaging/Attachment;

    move-result-object v5

    .line 284
    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$FileQuery;->getFailureReason()Lzendesk/messaging/MessagingItem$FileQuery$FailureReason;

    move-result-object v6

    move-object v0, v8

    move-object v2, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lzendesk/messaging/ui/EndUserCellFileState;-><init>(Ljava/lang/String;Lzendesk/messaging/ui/MessagingCellProps;Lzendesk/messaging/MessagingItem$Query$Status;Lzendesk/messaging/ui/MessageActionListener;Lzendesk/messaging/Attachment;Lzendesk/messaging/MessagingItem$FileQuery$FailureReason;Lzendesk/messaging/AttachmentSettings;)V

    .line 286
    new-instance p1, Lzendesk/messaging/ui/MessagingCell;

    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$FileQuery;->getId()Ljava/lang/String;

    move-result-object p0

    sget p2, Lzendesk/messaging/R$layout;->zui_cell_end_user_file_view:I

    const-class p3, Lzendesk/messaging/ui/EndUserFileCellView;

    invoke-direct {p1, p0, v8, p2, p3}, Lzendesk/messaging/ui/MessagingCell;-><init>(Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Class;)V

    return-object p1
.end method

.method private static createImageQueryCell(Lzendesk/messaging/MessagingItem$ImageQuery;Lzendesk/messaging/ui/MessagingCellProps;Lcom/squareup/picasso/Picasso;Lzendesk/messaging/AttachmentSettings;Lzendesk/messaging/EventListener;Lzendesk/messaging/EventFactory;)Lzendesk/messaging/ui/MessagingCell;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/messaging/MessagingItem$ImageQuery;",
            "Lzendesk/messaging/ui/MessagingCellProps;",
            "Lcom/squareup/picasso/Picasso;",
            "Lzendesk/messaging/AttachmentSettings;",
            "Lzendesk/messaging/EventListener;",
            "Lzendesk/messaging/EventFactory;",
            ")",
            "Lzendesk/messaging/ui/MessagingCell<",
            "Lzendesk/messaging/ui/EndUserCellImageState;",
            "Lzendesk/messaging/ui/EndUserImageCellView;",
            ">;"
        }
    .end annotation

    .line 298
    new-instance v9, Lzendesk/messaging/ui/EndUserCellImageState;

    .line 299
    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$ImageQuery;->getId()Ljava/lang/String;

    move-result-object v1

    .line 301
    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$ImageQuery;->getStatus()Lzendesk/messaging/MessagingItem$Query$Status;

    move-result-object v3

    new-instance v4, Lzendesk/messaging/ui/MessagingCellFactory$MessageActionAdapter;

    invoke-direct {v4, p4, p0, p5}, Lzendesk/messaging/ui/MessagingCellFactory$MessageActionAdapter;-><init>(Lzendesk/messaging/EventListener;Lzendesk/messaging/MessagingItem$Query;Lzendesk/messaging/EventFactory;)V

    .line 303
    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$ImageQuery;->getAttachment()Lzendesk/messaging/Attachment;

    move-result-object v5

    .line 304
    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$ImageQuery;->getFailureReason()Lzendesk/messaging/MessagingItem$FileQuery$FailureReason;

    move-result-object v6

    move-object v0, v9

    move-object v2, p1

    move-object v7, p3

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lzendesk/messaging/ui/EndUserCellImageState;-><init>(Ljava/lang/String;Lzendesk/messaging/ui/MessagingCellProps;Lzendesk/messaging/MessagingItem$Query$Status;Lzendesk/messaging/ui/MessageActionListener;Lzendesk/messaging/Attachment;Lzendesk/messaging/MessagingItem$FileQuery$FailureReason;Lzendesk/messaging/AttachmentSettings;Lcom/squareup/picasso/Picasso;)V

    .line 307
    new-instance p1, Lzendesk/messaging/ui/MessagingCell;

    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$ImageQuery;->getId()Ljava/lang/String;

    move-result-object p0

    sget p2, Lzendesk/messaging/R$layout;->zui_cell_end_user_image_view:I

    const-class p3, Lzendesk/messaging/ui/EndUserImageCellView;

    invoke-direct {p1, p0, v9, p2, p3}, Lzendesk/messaging/ui/MessagingCell;-><init>(Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Class;)V

    return-object p1
.end method

.method private static createImageQueryCellForFile(Lzendesk/messaging/MessagingItem$ImageQuery;Lzendesk/messaging/ui/MessagingCellProps;Lcom/squareup/picasso/Picasso;Lzendesk/messaging/AttachmentSettings;Lzendesk/messaging/EventListener;Lzendesk/messaging/EventFactory;)Lzendesk/messaging/ui/MessagingCell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/messaging/MessagingItem$ImageQuery;",
            "Lzendesk/messaging/ui/MessagingCellProps;",
            "Lcom/squareup/picasso/Picasso;",
            "Lzendesk/messaging/AttachmentSettings;",
            "Lzendesk/messaging/EventListener;",
            "Lzendesk/messaging/EventFactory;",
            ")",
            "Lzendesk/messaging/ui/MessagingCell<",
            "Lzendesk/messaging/ui/EndUserCellImageState;",
            "Lzendesk/messaging/ui/EndUserImageCellView;",
            ">;"
        }
    .end annotation

    .line 269
    invoke-static/range {p0 .. p5}, Lzendesk/messaging/ui/MessagingCellFactory;->createImageQueryCell(Lzendesk/messaging/MessagingItem$ImageQuery;Lzendesk/messaging/ui/MessagingCellProps;Lcom/squareup/picasso/Picasso;Lzendesk/messaging/AttachmentSettings;Lzendesk/messaging/EventListener;Lzendesk/messaging/EventFactory;)Lzendesk/messaging/ui/MessagingCell;

    move-result-object p0

    return-object p0
.end method

.method private static createQueryCell(Lzendesk/messaging/MessagingItem;Lzendesk/messaging/ui/MessagingCellProps;Lcom/squareup/picasso/Picasso;Lzendesk/messaging/AttachmentSettings;Lzendesk/messaging/EventListener;Lzendesk/messaging/EventFactory;)Lzendesk/messaging/ui/MessagingCell;
    .locals 7

    .line 208
    instance-of v0, p0, Lzendesk/messaging/MessagingItem$TextQuery;

    if-eqz v0, :cond_0

    .line 209
    check-cast p0, Lzendesk/messaging/MessagingItem$TextQuery;

    invoke-static {p0, p1, p4, p5}, Lzendesk/messaging/ui/MessagingCellFactory;->createTextQueryCell(Lzendesk/messaging/MessagingItem$TextQuery;Lzendesk/messaging/ui/MessagingCellProps;Lzendesk/messaging/EventListener;Lzendesk/messaging/EventFactory;)Lzendesk/messaging/ui/MessagingCell;

    move-result-object p0

    return-object p0

    .line 210
    :cond_0
    instance-of v0, p0, Lzendesk/messaging/MessagingItem$ImageQuery;

    if-eqz v0, :cond_1

    .line 211
    move-object v1, p0

    check-cast v1, Lzendesk/messaging/MessagingItem$ImageQuery;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lzendesk/messaging/ui/MessagingCellFactory;->createImageQueryCellForFile(Lzendesk/messaging/MessagingItem$ImageQuery;Lzendesk/messaging/ui/MessagingCellProps;Lcom/squareup/picasso/Picasso;Lzendesk/messaging/AttachmentSettings;Lzendesk/messaging/EventListener;Lzendesk/messaging/EventFactory;)Lzendesk/messaging/ui/MessagingCell;

    move-result-object p0

    return-object p0

    .line 217
    :cond_1
    instance-of p2, p0, Lzendesk/messaging/MessagingItem$FileQuery;

    if-eqz p2, :cond_2

    .line 218
    check-cast p0, Lzendesk/messaging/MessagingItem$FileQuery;

    invoke-static {p0, p1, p3, p4, p5}, Lzendesk/messaging/ui/MessagingCellFactory;->createFileQueryCell(Lzendesk/messaging/MessagingItem$FileQuery;Lzendesk/messaging/ui/MessagingCellProps;Lzendesk/messaging/AttachmentSettings;Lzendesk/messaging/EventListener;Lzendesk/messaging/EventFactory;)Lzendesk/messaging/ui/MessagingCell;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static createResponseCell(Lzendesk/messaging/MessagingItem$Response;Lzendesk/messaging/ui/MessagingCellProps;Lcom/squareup/picasso/Picasso;Lzendesk/messaging/EventListener;Lzendesk/messaging/EventFactory;Lzendesk/messaging/ui/AvatarStateRenderer;Lzendesk/messaging/ui/AvatarStateFactory;)Lzendesk/messaging/ui/MessagingCell;
    .locals 7

    .line 156
    instance-of v0, p0, Lzendesk/messaging/MessagingItem$ArticlesResponse;

    if-eqz v0, :cond_0

    .line 157
    move-object v1, p0

    check-cast v1, Lzendesk/messaging/MessagingItem$ArticlesResponse;

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lzendesk/messaging/ui/MessagingCellFactory;->createArticlesResponseCell(Lzendesk/messaging/MessagingItem$ArticlesResponse;Lzendesk/messaging/ui/MessagingCellProps;Lzendesk/messaging/EventListener;Lzendesk/messaging/EventFactory;Lzendesk/messaging/ui/AvatarStateFactory;Lzendesk/messaging/ui/AvatarStateRenderer;)Lzendesk/messaging/ui/MessagingCell;

    move-result-object p0

    return-object p0

    .line 163
    :cond_0
    instance-of v0, p0, Lzendesk/messaging/MessagingItem$TransferResponse;

    if-eqz v0, :cond_1

    .line 164
    move-object v1, p0

    check-cast v1, Lzendesk/messaging/MessagingItem$TransferResponse;

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lzendesk/messaging/ui/MessagingCellFactory;->createActionOptionsCell(Lzendesk/messaging/MessagingItem$TransferResponse;Lzendesk/messaging/ui/MessagingCellProps;Lzendesk/messaging/EventListener;Lzendesk/messaging/EventFactory;Lzendesk/messaging/ui/AvatarStateFactory;Lzendesk/messaging/ui/AvatarStateRenderer;)Lzendesk/messaging/ui/MessagingCell;

    move-result-object p0

    return-object p0

    .line 170
    :cond_1
    instance-of v0, p0, Lzendesk/messaging/MessagingItem$ActionResponse;

    if-eqz v0, :cond_2

    .line 171
    move-object v1, p0

    check-cast v1, Lzendesk/messaging/MessagingItem$ActionResponse;

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lzendesk/messaging/ui/MessagingCellFactory;->createActionOptionsCell(Lzendesk/messaging/MessagingItem$ActionResponse;Lzendesk/messaging/ui/MessagingCellProps;Lzendesk/messaging/EventListener;Lzendesk/messaging/EventFactory;Lzendesk/messaging/ui/AvatarStateFactory;Lzendesk/messaging/ui/AvatarStateRenderer;)Lzendesk/messaging/ui/MessagingCell;

    move-result-object p0

    return-object p0

    .line 177
    :cond_2
    instance-of p3, p0, Lzendesk/messaging/MessagingItem$ImageResponse;

    if-eqz p3, :cond_3

    .line 178
    check-cast p0, Lzendesk/messaging/MessagingItem$ImageResponse;

    invoke-static {p0, p1, p2, p6, p5}, Lzendesk/messaging/ui/MessagingCellFactory;->createAgentImageCell(Lzendesk/messaging/MessagingItem$ImageResponse;Lzendesk/messaging/ui/MessagingCellProps;Lcom/squareup/picasso/Picasso;Lzendesk/messaging/ui/AvatarStateFactory;Lzendesk/messaging/ui/AvatarStateRenderer;)Lzendesk/messaging/ui/MessagingCell;

    move-result-object p0

    return-object p0

    .line 183
    :cond_3
    instance-of p2, p0, Lzendesk/messaging/MessagingItem$FileResponse;

    if-eqz p2, :cond_4

    .line 184
    check-cast p0, Lzendesk/messaging/MessagingItem$FileResponse;

    invoke-static {p0, p1, p6, p5}, Lzendesk/messaging/ui/MessagingCellFactory;->createAgentFileCell(Lzendesk/messaging/MessagingItem$FileResponse;Lzendesk/messaging/ui/MessagingCellProps;Lzendesk/messaging/ui/AvatarStateFactory;Lzendesk/messaging/ui/AvatarStateRenderer;)Lzendesk/messaging/ui/MessagingCell;

    move-result-object p0

    return-object p0

    .line 188
    :cond_4
    instance-of p2, p0, Lzendesk/messaging/ui/MessagingCellFactory$TypingItem;

    if-eqz p2, :cond_5

    .line 189
    check-cast p0, Lzendesk/messaging/ui/MessagingCellFactory$TypingItem;

    invoke-static {p0, p1, p5, p6}, Lzendesk/messaging/ui/MessagingCellFactory;->createTypingIndicatorCell(Lzendesk/messaging/ui/MessagingCellFactory$TypingItem;Lzendesk/messaging/ui/MessagingCellProps;Lzendesk/messaging/ui/AvatarStateRenderer;Lzendesk/messaging/ui/AvatarStateFactory;)Lzendesk/messaging/ui/MessagingCell;

    move-result-object p0

    return-object p0

    .line 190
    :cond_5
    instance-of p2, p0, Lzendesk/messaging/MessagingItem$TextResponse;

    if-eqz p2, :cond_6

    .line 191
    check-cast p0, Lzendesk/messaging/MessagingItem$TextResponse;

    invoke-static {p0, p1, p5, p6}, Lzendesk/messaging/ui/MessagingCellFactory;->createTextResponseCell(Lzendesk/messaging/MessagingItem$TextResponse;Lzendesk/messaging/ui/MessagingCellProps;Lzendesk/messaging/ui/AvatarStateRenderer;Lzendesk/messaging/ui/AvatarStateFactory;)Lzendesk/messaging/ui/MessagingCell;

    move-result-object p0

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method private static createResponseOptionsCell(Lzendesk/messaging/MessagingItem$OptionsResponse;Lzendesk/messaging/ui/MessagingCellProps;Lzendesk/messaging/EventListener;Lzendesk/messaging/EventFactory;Z)Lzendesk/messaging/ui/MessagingCell;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/messaging/MessagingItem$OptionsResponse;",
            "Lzendesk/messaging/ui/MessagingCellProps;",
            "Lzendesk/messaging/EventListener;",
            "Lzendesk/messaging/EventFactory;",
            "Z)",
            "Lzendesk/messaging/ui/MessagingCell<",
            "Lzendesk/messaging/ui/ResponseOptionsViewState;",
            "*>;"
        }
    .end annotation

    .line 496
    new-instance v0, Lzendesk/messaging/ui/ResponseOptionsViewState;

    .line 497
    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$OptionsResponse;->getOptions()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lzendesk/messaging/ui/MessagingCellFactory$4;

    invoke-direct {v2, p2, p3, p0}, Lzendesk/messaging/ui/MessagingCellFactory$4;-><init>(Lzendesk/messaging/EventListener;Lzendesk/messaging/EventFactory;Lzendesk/messaging/MessagingItem$OptionsResponse;)V

    invoke-direct {v0, v1, v2, p1}, Lzendesk/messaging/ui/ResponseOptionsViewState;-><init>(Ljava/util/List;Lzendesk/messaging/ui/ResponseOptionHandler;Lzendesk/messaging/ui/MessagingCellProps;)V

    if-eqz p4, :cond_0

    .line 507
    new-instance p1, Lzendesk/messaging/ui/MessagingCell;

    .line 508
    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$OptionsResponse;->getId()Ljava/lang/String;

    move-result-object p0

    sget p2, Lzendesk/messaging/R$layout;->zui_cell_response_options_stacked:I

    const-class p3, Lzendesk/messaging/ui/StackedResponseOptionsView;

    invoke-direct {p1, p0, v0, p2, p3}, Lzendesk/messaging/ui/MessagingCell;-><init>(Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Class;)V

    return-object p1

    .line 513
    :cond_0
    new-instance p1, Lzendesk/messaging/ui/MessagingCell;

    .line 514
    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$OptionsResponse;->getId()Ljava/lang/String;

    move-result-object p0

    sget p2, Lzendesk/messaging/R$layout;->zui_cell_response_options:I

    const-class p3, Lzendesk/messaging/ui/ResponseOptionsView;

    invoke-direct {p1, p0, v0, p2, p3}, Lzendesk/messaging/ui/MessagingCell;-><init>(Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Class;)V

    return-object p1
.end method

.method private static createSystemMessageCell(Lzendesk/messaging/MessagingItem$SystemMessage;Lzendesk/messaging/ui/MessagingCellProps;)Lzendesk/messaging/ui/MessagingCell;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/messaging/MessagingItem$SystemMessage;",
            "Lzendesk/messaging/ui/MessagingCellProps;",
            ")",
            "Lzendesk/messaging/ui/MessagingCell<",
            "Lzendesk/messaging/ui/SystemMessageView$State;",
            "Lzendesk/messaging/ui/SystemMessageView;",
            ">;"
        }
    .end annotation

    .line 330
    new-instance v0, Lzendesk/messaging/ui/SystemMessageView$State;

    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$SystemMessage;->getSystemMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lzendesk/messaging/ui/SystemMessageView$State;-><init>(Lzendesk/messaging/ui/MessagingCellProps;Ljava/lang/String;)V

    .line 331
    new-instance p1, Lzendesk/messaging/ui/MessagingCell;

    .line 332
    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$SystemMessage;->getId()Ljava/lang/String;

    move-result-object p0

    sget v1, Lzendesk/messaging/R$layout;->zui_cell_system_message:I

    const-class v2, Lzendesk/messaging/ui/SystemMessageView;

    invoke-direct {p1, p0, v0, v1, v2}, Lzendesk/messaging/ui/MessagingCell;-><init>(Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Class;)V

    return-object p1
.end method

.method private static createTextQueryCell(Lzendesk/messaging/MessagingItem$TextQuery;Lzendesk/messaging/ui/MessagingCellProps;Lzendesk/messaging/EventListener;Lzendesk/messaging/EventFactory;)Lzendesk/messaging/ui/MessagingCell;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/messaging/MessagingItem$TextQuery;",
            "Lzendesk/messaging/ui/MessagingCellProps;",
            "Lzendesk/messaging/EventListener;",
            "Lzendesk/messaging/EventFactory;",
            ")",
            "Lzendesk/messaging/ui/MessagingCell<",
            "Lzendesk/messaging/ui/EndUserCellMessageState;",
            "Lzendesk/messaging/ui/EndUserMessageView;",
            ">;"
        }
    .end annotation

    .line 359
    new-instance v6, Lzendesk/messaging/ui/EndUserCellMessageState;

    .line 360
    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$TextQuery;->getId()Ljava/lang/String;

    move-result-object v1

    .line 362
    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$TextQuery;->getStatus()Lzendesk/messaging/MessagingItem$Query$Status;

    move-result-object v3

    new-instance v4, Lzendesk/messaging/ui/MessagingCellFactory$MessageActionAdapter;

    invoke-direct {v4, p2, p0, p3}, Lzendesk/messaging/ui/MessagingCellFactory$MessageActionAdapter;-><init>(Lzendesk/messaging/EventListener;Lzendesk/messaging/MessagingItem$Query;Lzendesk/messaging/EventFactory;)V

    .line 364
    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$TextQuery;->getMessage()Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lzendesk/messaging/ui/EndUserCellMessageState;-><init>(Ljava/lang/String;Lzendesk/messaging/ui/MessagingCellProps;Lzendesk/messaging/MessagingItem$Query$Status;Lzendesk/messaging/ui/MessageActionListener;Ljava/lang/String;)V

    .line 366
    new-instance p1, Lzendesk/messaging/ui/MessagingCell;

    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$TextQuery;->getId()Ljava/lang/String;

    move-result-object p0

    sget p2, Lzendesk/messaging/R$layout;->zui_cell_end_user_message:I

    const-class p3, Lzendesk/messaging/ui/EndUserMessageView;

    invoke-direct {p1, p0, v6, p2, p3}, Lzendesk/messaging/ui/MessagingCell;-><init>(Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Class;)V

    return-object p1
.end method

.method private static createTextResponseCell(Lzendesk/messaging/MessagingItem$TextResponse;Lzendesk/messaging/ui/MessagingCellProps;Lzendesk/messaging/ui/AvatarStateRenderer;Lzendesk/messaging/ui/AvatarStateFactory;)Lzendesk/messaging/ui/MessagingCell;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/messaging/MessagingItem$TextResponse;",
            "Lzendesk/messaging/ui/MessagingCellProps;",
            "Lzendesk/messaging/ui/AvatarStateRenderer;",
            "Lzendesk/messaging/ui/AvatarStateFactory;",
            ")",
            "Lzendesk/messaging/ui/MessagingCell<",
            "Lzendesk/messaging/ui/AgentMessageView$State;",
            "Lzendesk/messaging/ui/AgentMessageView;",
            ">;"
        }
    .end annotation

    .line 343
    new-instance v7, Lzendesk/messaging/ui/AgentMessageView$State;

    .line 344
    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$TextResponse;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 345
    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$TextResponse;->getAgentDetails()Lzendesk/messaging/AgentDetails;

    move-result-object v0

    invoke-virtual {v0}, Lzendesk/messaging/AgentDetails;->getAgentName()Ljava/lang/String;

    move-result-object v3

    .line 346
    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$TextResponse;->getAgentDetails()Lzendesk/messaging/AgentDetails;

    move-result-object v0

    invoke-virtual {v0}, Lzendesk/messaging/AgentDetails;->isBot()Z

    move-result v4

    .line 347
    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$TextResponse;->getAgentDetails()Lzendesk/messaging/AgentDetails;

    move-result-object v0

    invoke-virtual {p3, v0}, Lzendesk/messaging/ui/AvatarStateFactory;->createAvatarState(Lzendesk/messaging/AgentDetails;)Lzendesk/messaging/ui/AvatarState;

    move-result-object v5

    move-object v0, v7

    move-object v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lzendesk/messaging/ui/AgentMessageView$State;-><init>(Lzendesk/messaging/ui/MessagingCellProps;Ljava/lang/String;Ljava/lang/String;ZLzendesk/messaging/ui/AvatarState;Lzendesk/messaging/ui/AvatarStateRenderer;)V

    .line 349
    new-instance p1, Lzendesk/messaging/ui/MessagingCell;

    invoke-virtual {p0}, Lzendesk/messaging/MessagingItem$TextResponse;->getId()Ljava/lang/String;

    move-result-object p0

    sget p2, Lzendesk/messaging/R$layout;->zui_cell_agent_message_view:I

    const-class p3, Lzendesk/messaging/ui/AgentMessageView;

    invoke-direct {p1, p0, v7, p2, p3}, Lzendesk/messaging/ui/MessagingCell;-><init>(Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Class;)V

    return-object p1
.end method

.method private static createTypingIndicatorCell(Lzendesk/messaging/ui/MessagingCellFactory$TypingItem;Lzendesk/messaging/ui/MessagingCellProps;Lzendesk/messaging/ui/AvatarStateRenderer;Lzendesk/messaging/ui/AvatarStateFactory;)Lzendesk/messaging/ui/MessagingCell;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/messaging/ui/MessagingCellFactory$TypingItem;",
            "Lzendesk/messaging/ui/MessagingCellProps;",
            "Lzendesk/messaging/ui/AvatarStateRenderer;",
            "Lzendesk/messaging/ui/AvatarStateFactory;",
            ")",
            "Lzendesk/messaging/ui/MessagingCell<",
            "Lzendesk/messaging/ui/TypingIndicatorView$State;",
            "Lzendesk/messaging/ui/TypingIndicatorView;",
            ">;"
        }
    .end annotation

    .line 316
    new-instance v6, Lzendesk/messaging/ui/TypingIndicatorView$State;

    .line 318
    invoke-virtual {p0}, Lzendesk/messaging/ui/MessagingCellFactory$TypingItem;->getAgentDetails()Lzendesk/messaging/AgentDetails;

    move-result-object v0

    invoke-virtual {v0}, Lzendesk/messaging/AgentDetails;->getAgentName()Ljava/lang/String;

    move-result-object v2

    .line 319
    invoke-virtual {p0}, Lzendesk/messaging/ui/MessagingCellFactory$TypingItem;->getAgentDetails()Lzendesk/messaging/AgentDetails;

    move-result-object v0

    invoke-virtual {v0}, Lzendesk/messaging/AgentDetails;->isBot()Z

    move-result v3

    .line 320
    invoke-virtual {p0}, Lzendesk/messaging/ui/MessagingCellFactory$TypingItem;->getAgentDetails()Lzendesk/messaging/AgentDetails;

    move-result-object p0

    invoke-virtual {p3, p0}, Lzendesk/messaging/ui/AvatarStateFactory;->createAvatarState(Lzendesk/messaging/AgentDetails;)Lzendesk/messaging/ui/AvatarState;

    move-result-object v4

    move-object v0, v6

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lzendesk/messaging/ui/TypingIndicatorView$State;-><init>(Lzendesk/messaging/ui/MessagingCellProps;Ljava/lang/String;ZLzendesk/messaging/ui/AvatarState;Lzendesk/messaging/ui/AvatarStateRenderer;)V

    .line 323
    new-instance p0, Lzendesk/messaging/ui/MessagingCell;

    sget-object p1, Lzendesk/messaging/ui/MessagingCellFactory;->TYPING_INDICATOR_ID:Ljava/lang/String;

    sget p2, Lzendesk/messaging/R$layout;->zui_cell_typing_indicator:I

    const-class p3, Lzendesk/messaging/ui/TypingIndicatorView;

    invoke-direct {p0, p1, v6, p2, p3}, Lzendesk/messaging/ui/MessagingCell;-><init>(Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Class;)V

    return-object p0
.end method


# virtual methods
.method createCells(Ljava/util/List;Lzendesk/messaging/ui/MessagingState$TypingState;Lcom/squareup/picasso/Picasso;Lzendesk/messaging/AttachmentSettings;)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/messaging/MessagingItem;",
            ">;",
            "Lzendesk/messaging/ui/MessagingState$TypingState;",
            "Lcom/squareup/picasso/Picasso;",
            "Lzendesk/messaging/AttachmentSettings;",
            ")",
            "Ljava/util/List<",
            "Lzendesk/messaging/ui/MessagingCell;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    if-nez p1, :cond_0

    .line 76
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 80
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/zendesk/util/CollectionUtils;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    if-eqz p2, :cond_2

    .line 82
    invoke-virtual/range {p2 .. p2}, Lzendesk/messaging/ui/MessagingState$TypingState;->isTyping()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 83
    invoke-virtual/range {p2 .. p2}, Lzendesk/messaging/ui/MessagingState$TypingState;->getAgentDetails()Lzendesk/messaging/AgentDetails;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 84
    invoke-virtual/range {p2 .. p2}, Lzendesk/messaging/ui/MessagingState$TypingState;->getAgentDetails()Lzendesk/messaging/AgentDetails;

    move-result-object v2

    goto :goto_0

    :cond_1
    sget-object v2, Lzendesk/messaging/ui/MessagingCellFactory;->DEFAULT_TYPING_INDICATOR_LABEL_STATE:Lzendesk/messaging/AgentDetails;

    .line 85
    :goto_0
    new-instance v3, Lzendesk/messaging/ui/MessagingCellFactory$TypingItem;

    iget-object v4, v0, Lzendesk/messaging/ui/MessagingCellFactory;->dateProvider:Lzendesk/messaging/components/DateProvider;

    .line 86
    invoke-virtual {v4}, Lzendesk/messaging/components/DateProvider;->now()Ljava/util/Date;

    move-result-object v4

    sget-object v5, Lzendesk/messaging/ui/MessagingCellFactory;->TYPING_INDICATOR_ID:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v2, v6}, Lzendesk/messaging/ui/MessagingCellFactory$TypingItem;-><init>(Ljava/util/Date;Ljava/lang/String;Lzendesk/messaging/AgentDetails;Lzendesk/messaging/ui/MessagingCellFactory$1;)V

    .line 85
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_2
    iget-object v2, v0, Lzendesk/messaging/ui/MessagingCellFactory;->cellPropsFactory:Lzendesk/messaging/ui/MessagingCellPropsFactory;

    invoke-virtual {v2, v1}, Lzendesk/messaging/ui/MessagingCellPropsFactory;->create(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 91
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    .line 93
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 96
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lzendesk/messaging/MessagingItem;

    .line 97
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lzendesk/messaging/ui/MessagingCellProps;

    iget-object v10, v0, Lzendesk/messaging/ui/MessagingCellFactory;->avatarStateRenderer:Lzendesk/messaging/ui/AvatarStateRenderer;

    iget-object v11, v0, Lzendesk/messaging/ui/MessagingCellFactory;->avatarStateFactory:Lzendesk/messaging/ui/AvatarStateFactory;

    iget-object v12, v0, Lzendesk/messaging/ui/MessagingCellFactory;->eventListener:Lzendesk/messaging/EventListener;

    iget-object v13, v0, Lzendesk/messaging/ui/MessagingCellFactory;->eventFactory:Lzendesk/messaging/EventFactory;

    iget-boolean v14, v0, Lzendesk/messaging/ui/MessagingCellFactory;->multilineResponseOptionsEnabled:Z

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    .line 95
    invoke-static/range {v6 .. v14}, Lzendesk/messaging/ui/MessagingCellFactory;->createCell(Lzendesk/messaging/MessagingItem;Lzendesk/messaging/ui/MessagingCellProps;Lcom/squareup/picasso/Picasso;Lzendesk/messaging/AttachmentSettings;Lzendesk/messaging/ui/AvatarStateRenderer;Lzendesk/messaging/ui/AvatarStateFactory;Lzendesk/messaging/EventListener;Lzendesk/messaging/EventFactory;Z)Lzendesk/messaging/ui/MessagingCell;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 107
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    return-object v3
.end method
