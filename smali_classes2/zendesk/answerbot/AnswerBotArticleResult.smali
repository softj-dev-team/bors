.class final enum Lzendesk/answerbot/AnswerBotArticleResult;
.super Ljava/lang/Enum;
.source "AnswerBotArticleResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lzendesk/answerbot/AnswerBotArticleResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lzendesk/answerbot/AnswerBotArticleResult;

.field public static final enum ARTICLE_HELPFUL:Lzendesk/answerbot/AnswerBotArticleResult;

.field public static final enum ARTICLE_NOT_HELPFUL:Lzendesk/answerbot/AnswerBotArticleResult;

.field public static final enum ARTICLE_NOT_RELATED:Lzendesk/answerbot/AnswerBotArticleResult;

.field public static final enum ARTICLE_RELATED_DIDNT_ANSWER:Lzendesk/answerbot/AnswerBotArticleResult;

.field public static final enum NOT_SET:Lzendesk/answerbot/AnswerBotArticleResult;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 10
    new-instance v0, Lzendesk/answerbot/AnswerBotArticleResult;

    const-string v1, "NOT_SET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzendesk/answerbot/AnswerBotArticleResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzendesk/answerbot/AnswerBotArticleResult;->NOT_SET:Lzendesk/answerbot/AnswerBotArticleResult;

    .line 14
    new-instance v1, Lzendesk/answerbot/AnswerBotArticleResult;

    const-string v3, "ARTICLE_HELPFUL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lzendesk/answerbot/AnswerBotArticleResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lzendesk/answerbot/AnswerBotArticleResult;->ARTICLE_HELPFUL:Lzendesk/answerbot/AnswerBotArticleResult;

    .line 18
    new-instance v3, Lzendesk/answerbot/AnswerBotArticleResult;

    const-string v5, "ARTICLE_NOT_RELATED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lzendesk/answerbot/AnswerBotArticleResult;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lzendesk/answerbot/AnswerBotArticleResult;->ARTICLE_NOT_RELATED:Lzendesk/answerbot/AnswerBotArticleResult;

    .line 22
    new-instance v5, Lzendesk/answerbot/AnswerBotArticleResult;

    const-string v7, "ARTICLE_RELATED_DIDNT_ANSWER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lzendesk/answerbot/AnswerBotArticleResult;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lzendesk/answerbot/AnswerBotArticleResult;->ARTICLE_RELATED_DIDNT_ANSWER:Lzendesk/answerbot/AnswerBotArticleResult;

    .line 26
    new-instance v7, Lzendesk/answerbot/AnswerBotArticleResult;

    const-string v9, "ARTICLE_NOT_HELPFUL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lzendesk/answerbot/AnswerBotArticleResult;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lzendesk/answerbot/AnswerBotArticleResult;->ARTICLE_NOT_HELPFUL:Lzendesk/answerbot/AnswerBotArticleResult;

    const/4 v9, 0x5

    new-array v9, v9, [Lzendesk/answerbot/AnswerBotArticleResult;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lzendesk/answerbot/AnswerBotArticleResult;->$VALUES:[Lzendesk/answerbot/AnswerBotArticleResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lzendesk/answerbot/AnswerBotArticleResult;
    .locals 1

    .line 6
    const-class v0, Lzendesk/answerbot/AnswerBotArticleResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lzendesk/answerbot/AnswerBotArticleResult;

    return-object p0
.end method

.method public static values()[Lzendesk/answerbot/AnswerBotArticleResult;
    .locals 1

    .line 6
    sget-object v0, Lzendesk/answerbot/AnswerBotArticleResult;->$VALUES:[Lzendesk/answerbot/AnswerBotArticleResult;

    invoke-virtual {v0}, [Lzendesk/answerbot/AnswerBotArticleResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzendesk/answerbot/AnswerBotArticleResult;

    return-object v0
.end method
