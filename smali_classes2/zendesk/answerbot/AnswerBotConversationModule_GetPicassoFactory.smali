.class public final Lzendesk/answerbot/AnswerBotConversationModule_GetPicassoFactory;
.super Ljava/lang/Object;
.source "AnswerBotConversationModule_GetPicassoFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/squareup/picasso/Picasso;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lzendesk/answerbot/AnswerBotConversationModule;


# direct methods
.method public constructor <init>(Lzendesk/answerbot/AnswerBotConversationModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/answerbot/AnswerBotConversationModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lzendesk/answerbot/AnswerBotConversationModule_GetPicassoFactory;->module:Lzendesk/answerbot/AnswerBotConversationModule;

    .line 28
    iput-object p2, p0, Lzendesk/answerbot/AnswerBotConversationModule_GetPicassoFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lzendesk/answerbot/AnswerBotConversationModule;Ljavax/inject/Provider;)Lzendesk/answerbot/AnswerBotConversationModule_GetPicassoFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/answerbot/AnswerBotConversationModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lzendesk/answerbot/AnswerBotConversationModule_GetPicassoFactory;"
        }
    .end annotation

    .line 38
    new-instance v0, Lzendesk/answerbot/AnswerBotConversationModule_GetPicassoFactory;

    invoke-direct {v0, p0, p1}, Lzendesk/answerbot/AnswerBotConversationModule_GetPicassoFactory;-><init>(Lzendesk/answerbot/AnswerBotConversationModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static getPicasso(Lzendesk/answerbot/AnswerBotConversationModule;Landroid/content/Context;)Lcom/squareup/picasso/Picasso;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lzendesk/answerbot/AnswerBotConversationModule;->getPicasso(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/squareup/picasso/Picasso;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/squareup/picasso/Picasso;
    .locals 2

    .line 33
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotConversationModule_GetPicassoFactory;->module:Lzendesk/answerbot/AnswerBotConversationModule;

    iget-object v1, p0, Lzendesk/answerbot/AnswerBotConversationModule_GetPicassoFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lzendesk/answerbot/AnswerBotConversationModule_GetPicassoFactory;->getPicasso(Lzendesk/answerbot/AnswerBotConversationModule;Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lzendesk/answerbot/AnswerBotConversationModule_GetPicassoFactory;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    return-object v0
.end method
