.class interface abstract Lzendesk/answerbot/AnswerBotService;
.super Ljava/lang/Object;
.source "AnswerBotService.java"


# virtual methods
.method public abstract interaction(Lzendesk/answerbot/DeflectionRequest;)Lretrofit2/Call;
    .param p1    # Lzendesk/answerbot/DeflectionRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/answerbot/DeflectionRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lzendesk/answerbot/DeflectionResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/v2/answer_bot/interaction"
    .end annotation
.end method

.method public abstract rejection(Lzendesk/answerbot/PostReject;)Lretrofit2/Call;
    .param p1    # Lzendesk/answerbot/PostReject;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/answerbot/PostReject;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/v2/answer_bot/rejection"
    .end annotation
.end method

.method public abstract resolution(Lzendesk/answerbot/PostResolve;)Lretrofit2/Call;
    .param p1    # Lzendesk/answerbot/PostResolve;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/answerbot/PostResolve;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/v2/answer_bot/resolution"
    .end annotation
.end method
