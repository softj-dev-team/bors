.class synthetic Lzendesk/answerbot/AnswerBotModel$7;
.super Ljava/lang/Object;
.source "AnswerBotModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/answerbot/AnswerBotModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$zendesk$answerbot$AnswerBotArticleResult:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 202
    invoke-static {}, Lzendesk/answerbot/AnswerBotArticleResult;->values()[Lzendesk/answerbot/AnswerBotArticleResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lzendesk/answerbot/AnswerBotModel$7;->$SwitchMap$zendesk$answerbot$AnswerBotArticleResult:[I

    :try_start_0
    sget-object v1, Lzendesk/answerbot/AnswerBotArticleResult;->NOT_SET:Lzendesk/answerbot/AnswerBotArticleResult;

    invoke-virtual {v1}, Lzendesk/answerbot/AnswerBotArticleResult;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lzendesk/answerbot/AnswerBotModel$7;->$SwitchMap$zendesk$answerbot$AnswerBotArticleResult:[I

    sget-object v1, Lzendesk/answerbot/AnswerBotArticleResult;->ARTICLE_NOT_HELPFUL:Lzendesk/answerbot/AnswerBotArticleResult;

    invoke-virtual {v1}, Lzendesk/answerbot/AnswerBotArticleResult;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lzendesk/answerbot/AnswerBotModel$7;->$SwitchMap$zendesk$answerbot$AnswerBotArticleResult:[I

    sget-object v1, Lzendesk/answerbot/AnswerBotArticleResult;->ARTICLE_NOT_RELATED:Lzendesk/answerbot/AnswerBotArticleResult;

    invoke-virtual {v1}, Lzendesk/answerbot/AnswerBotArticleResult;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lzendesk/answerbot/AnswerBotModel$7;->$SwitchMap$zendesk$answerbot$AnswerBotArticleResult:[I

    sget-object v1, Lzendesk/answerbot/AnswerBotArticleResult;->ARTICLE_RELATED_DIDNT_ANSWER:Lzendesk/answerbot/AnswerBotArticleResult;

    invoke-virtual {v1}, Lzendesk/answerbot/AnswerBotArticleResult;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lzendesk/answerbot/AnswerBotModel$7;->$SwitchMap$zendesk$answerbot$AnswerBotArticleResult:[I

    sget-object v1, Lzendesk/answerbot/AnswerBotArticleResult;->ARTICLE_HELPFUL:Lzendesk/answerbot/AnswerBotArticleResult;

    invoke-virtual {v1}, Lzendesk/answerbot/AnswerBotArticleResult;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
