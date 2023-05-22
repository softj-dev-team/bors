.class public final Lzendesk/answerbot/AnswerBot_MembersInjector;
.super Ljava/lang/Object;
.source "AnswerBot_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lzendesk/answerbot/AnswerBot;",
        ">;"
    }
.end annotation


# instance fields
.field private final answerBotModuleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/answerbot/AnswerBotModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lzendesk/answerbot/AnswerBotModule;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lzendesk/answerbot/AnswerBot_MembersInjector;->answerBotModuleProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lzendesk/answerbot/AnswerBotModule;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lzendesk/answerbot/AnswerBot;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance v0, Lzendesk/answerbot/AnswerBot_MembersInjector;

    invoke-direct {v0, p0}, Lzendesk/answerbot/AnswerBot_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectAnswerBotModule(Lzendesk/answerbot/AnswerBot;Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Lzendesk/answerbot/AnswerBotModule;

    iput-object p1, p0, Lzendesk/answerbot/AnswerBot;->answerBotModule:Lzendesk/answerbot/AnswerBotModule;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p1, Lzendesk/answerbot/AnswerBot;

    invoke-virtual {p0, p1}, Lzendesk/answerbot/AnswerBot_MembersInjector;->injectMembers(Lzendesk/answerbot/AnswerBot;)V

    return-void
.end method

.method public injectMembers(Lzendesk/answerbot/AnswerBot;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lzendesk/answerbot/AnswerBot_MembersInjector;->answerBotModuleProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/answerbot/AnswerBot_MembersInjector;->injectAnswerBotModule(Lzendesk/answerbot/AnswerBot;Ljava/lang/Object;)V

    return-void
.end method
