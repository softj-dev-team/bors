.class final enum Lzendesk/answerbot/AnswerBotModel$Responses;
.super Ljava/lang/Enum;
.source "AnswerBotModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/answerbot/AnswerBotModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Responses"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lzendesk/answerbot/AnswerBotModel$Responses;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lzendesk/answerbot/AnswerBotModel$Responses;

.field public static final enum ARTICLE_HELPFUL:Lzendesk/answerbot/AnswerBotModel$Responses;

.field public static final enum ARTICLE_HELPFUL_QUESTION:Lzendesk/answerbot/AnswerBotModel$Responses;

.field public static final enum ARTICLE_LIST:Lzendesk/answerbot/AnswerBotModel$Responses;

.field public static final enum ARTICLE_NOT_HELPFUL:Lzendesk/answerbot/AnswerBotModel$Responses;

.field public static final enum FAILED_QUERY:Lzendesk/answerbot/AnswerBotModel$Responses;

.field public static final enum GREETING:Lzendesk/answerbot/AnswerBotModel$Responses;

.field public static final enum NONE:Lzendesk/answerbot/AnswerBotModel$Responses;

.field public static final enum NO_ARTICLES:Lzendesk/answerbot/AnswerBotModel$Responses;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 37
    new-instance v0, Lzendesk/answerbot/AnswerBotModel$Responses;

    const-string v1, "GREETING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzendesk/answerbot/AnswerBotModel$Responses;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzendesk/answerbot/AnswerBotModel$Responses;->GREETING:Lzendesk/answerbot/AnswerBotModel$Responses;

    new-instance v1, Lzendesk/answerbot/AnswerBotModel$Responses;

    const-string v3, "ARTICLE_HELPFUL_QUESTION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lzendesk/answerbot/AnswerBotModel$Responses;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lzendesk/answerbot/AnswerBotModel$Responses;->ARTICLE_HELPFUL_QUESTION:Lzendesk/answerbot/AnswerBotModel$Responses;

    new-instance v3, Lzendesk/answerbot/AnswerBotModel$Responses;

    const-string v5, "ARTICLE_NOT_HELPFUL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lzendesk/answerbot/AnswerBotModel$Responses;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lzendesk/answerbot/AnswerBotModel$Responses;->ARTICLE_NOT_HELPFUL:Lzendesk/answerbot/AnswerBotModel$Responses;

    new-instance v5, Lzendesk/answerbot/AnswerBotModel$Responses;

    const-string v7, "ARTICLE_HELPFUL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lzendesk/answerbot/AnswerBotModel$Responses;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lzendesk/answerbot/AnswerBotModel$Responses;->ARTICLE_HELPFUL:Lzendesk/answerbot/AnswerBotModel$Responses;

    new-instance v7, Lzendesk/answerbot/AnswerBotModel$Responses;

    const-string v9, "ARTICLE_LIST"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lzendesk/answerbot/AnswerBotModel$Responses;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lzendesk/answerbot/AnswerBotModel$Responses;->ARTICLE_LIST:Lzendesk/answerbot/AnswerBotModel$Responses;

    new-instance v9, Lzendesk/answerbot/AnswerBotModel$Responses;

    const-string v11, "NO_ARTICLES"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lzendesk/answerbot/AnswerBotModel$Responses;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lzendesk/answerbot/AnswerBotModel$Responses;->NO_ARTICLES:Lzendesk/answerbot/AnswerBotModel$Responses;

    .line 38
    new-instance v11, Lzendesk/answerbot/AnswerBotModel$Responses;

    const-string v13, "FAILED_QUERY"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lzendesk/answerbot/AnswerBotModel$Responses;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lzendesk/answerbot/AnswerBotModel$Responses;->FAILED_QUERY:Lzendesk/answerbot/AnswerBotModel$Responses;

    new-instance v13, Lzendesk/answerbot/AnswerBotModel$Responses;

    const-string v15, "NONE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lzendesk/answerbot/AnswerBotModel$Responses;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lzendesk/answerbot/AnswerBotModel$Responses;->NONE:Lzendesk/answerbot/AnswerBotModel$Responses;

    const/16 v15, 0x8

    new-array v15, v15, [Lzendesk/answerbot/AnswerBotModel$Responses;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 36
    sput-object v15, Lzendesk/answerbot/AnswerBotModel$Responses;->$VALUES:[Lzendesk/answerbot/AnswerBotModel$Responses;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lzendesk/answerbot/AnswerBotModel$Responses;
    .locals 1

    .line 36
    const-class v0, Lzendesk/answerbot/AnswerBotModel$Responses;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lzendesk/answerbot/AnswerBotModel$Responses;

    return-object p0
.end method

.method public static values()[Lzendesk/answerbot/AnswerBotModel$Responses;
    .locals 1

    .line 36
    sget-object v0, Lzendesk/answerbot/AnswerBotModel$Responses;->$VALUES:[Lzendesk/answerbot/AnswerBotModel$Responses;

    invoke-virtual {v0}, [Lzendesk/answerbot/AnswerBotModel$Responses;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzendesk/answerbot/AnswerBotModel$Responses;

    return-object v0
.end method
