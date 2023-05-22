.class final Lzendesk/answerbot/ZendeskAnswerBotProvider;
.super Ljava/lang/Object;
.source "ZendeskAnswerBotProvider.java"

# interfaces
.implements Lzendesk/answerbot/AnswerBotProvider;


# static fields
.field private static final DEFLECTION_CHANNEL_ID:I = 0x41

.field private static final INTERACTION_REFERENCE_TYPE:I = 0x8

.field private static final LOG_TAG:Ljava/lang/String; = "ZendeskAnswerBotProvider"

.field private static final NO_OP_CALLBACK:Lcom/zendesk/service/ZendeskCallback;

.field private static final VIA_ID:I = 0x41


# instance fields
.field private final answerBotService:Lzendesk/answerbot/AnswerBotService;

.field private final helpCenterProvider:Lzendesk/support/HelpCenterProvider;

.field private final localeProvider:Lzendesk/answerbot/LocaleProvider;

.field private final machineIdStorage:Lzendesk/core/MachineIdStorage;

.field private final settingsProvider:Lzendesk/answerbot/AnswerBotSettingsProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 134
    new-instance v0, Lzendesk/answerbot/ZendeskAnswerBotProvider$5;

    invoke-direct {v0}, Lzendesk/answerbot/ZendeskAnswerBotProvider$5;-><init>()V

    sput-object v0, Lzendesk/answerbot/ZendeskAnswerBotProvider;->NO_OP_CALLBACK:Lcom/zendesk/service/ZendeskCallback;

    return-void
.end method

.method constructor <init>(Lzendesk/answerbot/AnswerBotService;Lzendesk/answerbot/LocaleProvider;Lzendesk/core/MachineIdStorage;Lzendesk/support/HelpCenterProvider;Lzendesk/answerbot/AnswerBotSettingsProvider;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lzendesk/answerbot/ZendeskAnswerBotProvider;->answerBotService:Lzendesk/answerbot/AnswerBotService;

    .line 34
    iput-object p2, p0, Lzendesk/answerbot/ZendeskAnswerBotProvider;->localeProvider:Lzendesk/answerbot/LocaleProvider;

    .line 35
    iput-object p3, p0, Lzendesk/answerbot/ZendeskAnswerBotProvider;->machineIdStorage:Lzendesk/core/MachineIdStorage;

    .line 36
    iput-object p4, p0, Lzendesk/answerbot/ZendeskAnswerBotProvider;->helpCenterProvider:Lzendesk/support/HelpCenterProvider;

    .line 37
    iput-object p5, p0, Lzendesk/answerbot/ZendeskAnswerBotProvider;->settingsProvider:Lzendesk/answerbot/AnswerBotSettingsProvider;

    return-void
.end method

.method static synthetic access$000(Lzendesk/answerbot/ZendeskAnswerBotProvider;Ljava/lang/String;Ljava/lang/String;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lzendesk/answerbot/ZendeskAnswerBotProvider;->getDeflectionForQuery(Ljava/lang/String;Ljava/lang/String;Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method

.method static synthetic access$100(Lzendesk/answerbot/ZendeskAnswerBotProvider;)Lzendesk/answerbot/LocaleProvider;
    .locals 0

    .line 15
    iget-object p0, p0, Lzendesk/answerbot/ZendeskAnswerBotProvider;->localeProvider:Lzendesk/answerbot/LocaleProvider;

    return-object p0
.end method

.method static synthetic access$200(Lzendesk/answerbot/ZendeskAnswerBotProvider;)Lzendesk/answerbot/AnswerBotService;
    .locals 0

    .line 15
    iget-object p0, p0, Lzendesk/answerbot/ZendeskAnswerBotProvider;->answerBotService:Lzendesk/answerbot/AnswerBotService;

    return-object p0
.end method

.method static synthetic access$300()Lcom/zendesk/service/ZendeskCallback;
    .locals 1

    .line 15
    sget-object v0, Lzendesk/answerbot/ZendeskAnswerBotProvider;->NO_OP_CALLBACK:Lcom/zendesk/service/ZendeskCallback;

    return-object v0
.end method

.method static synthetic access$400(Lzendesk/answerbot/ZendeskAnswerBotProvider;)Lzendesk/support/HelpCenterProvider;
    .locals 0

    .line 15
    iget-object p0, p0, Lzendesk/answerbot/ZendeskAnswerBotProvider;->helpCenterProvider:Lzendesk/support/HelpCenterProvider;

    return-object p0
.end method

.method private checkSettings(Lcom/zendesk/service/ZendeskCallback;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/zendesk/service/ZendeskCallback<",
            "TT;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lzendesk/answerbot/ZendeskAnswerBotProvider;->settingsProvider:Lzendesk/answerbot/AnswerBotSettingsProvider;

    new-instance v1, Lzendesk/answerbot/ZendeskAnswerBotProvider$4;

    invoke-direct {v1, p0, p2, p1}, Lzendesk/answerbot/ZendeskAnswerBotProvider$4;-><init>(Lzendesk/answerbot/ZendeskAnswerBotProvider;Ljava/lang/Runnable;Lcom/zendesk/service/ZendeskCallback;)V

    invoke-interface {v0, v1}, Lzendesk/answerbot/AnswerBotSettingsProvider;->getSettings(Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method

.method private getDeflectionForQuery(Ljava/lang/String;Ljava/lang/String;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/zendesk/service/ZendeskCallback<",
            "Lzendesk/answerbot/DeflectionResponse;",
            ">;)V"
        }
    .end annotation

    .line 65
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 67
    iget-object v0, p0, Lzendesk/answerbot/ZendeskAnswerBotProvider;->machineIdStorage:Lzendesk/core/MachineIdStorage;

    invoke-interface {v0}, Lzendesk/core/MachineIdStorage;->getMachineId()Ljava/lang/String;

    move-result-object v6

    .line 68
    new-instance v8, Lzendesk/answerbot/DeflectionRequest;

    const/16 v1, 0x41

    const/16 v2, 0x41

    const/16 v7, 0x8

    move-object v0, v8

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lzendesk/answerbot/DeflectionRequest;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;I)V

    .line 72
    iget-object p1, p0, Lzendesk/answerbot/ZendeskAnswerBotProvider;->answerBotService:Lzendesk/answerbot/AnswerBotService;

    invoke-interface {p1, v8}, Lzendesk/answerbot/AnswerBotService;->interaction(Lzendesk/answerbot/DeflectionRequest;)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/zendesk/service/RetrofitZendeskCallbackAdapter;

    invoke-direct {p2, p3}, Lcom/zendesk/service/RetrofitZendeskCallbackAdapter;-><init>(Lcom/zendesk/service/ZendeskCallback;)V

    .line 73
    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method


# virtual methods
.method public getDeflectionForQuery(Ljava/lang/String;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/zendesk/service/ZendeskCallback<",
            "Lzendesk/answerbot/DeflectionResponse;",
            ">;)V"
        }
    .end annotation

    .line 43
    new-instance v0, Lzendesk/answerbot/ZendeskAnswerBotProvider$1;

    invoke-direct {v0, p0, p1, p2}, Lzendesk/answerbot/ZendeskAnswerBotProvider$1;-><init>(Lzendesk/answerbot/ZendeskAnswerBotProvider;Ljava/lang/String;Lcom/zendesk/service/ZendeskCallback;)V

    invoke-direct {p0, p2, v0}, Lzendesk/answerbot/ZendeskAnswerBotProvider;->checkSettings(Lcom/zendesk/service/ZendeskCallback;Ljava/lang/Runnable;)V

    return-void
.end method

.method public rejectWithArticle(JJLjava/lang/String;Lzendesk/answerbot/RejectionReason;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            "Lzendesk/answerbot/RejectionReason;",
            "Lcom/zendesk/service/ZendeskCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 98
    new-instance v9, Lzendesk/answerbot/ZendeskAnswerBotProvider$3;

    move-object v0, v9

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v6, p6

    move-object v7, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lzendesk/answerbot/ZendeskAnswerBotProvider$3;-><init>(Lzendesk/answerbot/ZendeskAnswerBotProvider;JJLzendesk/answerbot/RejectionReason;Ljava/lang/String;Lcom/zendesk/service/ZendeskCallback;)V

    move-object v0, p0

    move-object/from16 v1, p7

    invoke-direct {p0, v1, v9}, Lzendesk/answerbot/ZendeskAnswerBotProvider;->checkSettings(Lcom/zendesk/service/ZendeskCallback;Ljava/lang/Runnable;)V

    return-void
.end method

.method public resolveWithArticle(JJLjava/lang/String;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            "Lcom/zendesk/service/ZendeskCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 80
    new-instance v8, Lzendesk/answerbot/ZendeskAnswerBotProvider$2;

    move-object v0, v8

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lzendesk/answerbot/ZendeskAnswerBotProvider$2;-><init>(Lzendesk/answerbot/ZendeskAnswerBotProvider;JJLjava/lang/String;Lcom/zendesk/service/ZendeskCallback;)V

    invoke-direct {p0, p6, v8}, Lzendesk/answerbot/ZendeskAnswerBotProvider;->checkSettings(Lcom/zendesk/service/ZendeskCallback;Ljava/lang/Runnable;)V

    return-void
.end method
