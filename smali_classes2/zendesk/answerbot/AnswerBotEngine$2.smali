.class Lzendesk/answerbot/AnswerBotEngine$2;
.super Ljava/lang/Object;
.source "AnswerBotEngine.java"

# interfaces
.implements Lzendesk/messaging/components/ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/answerbot/AnswerBotEngine;->start(Lzendesk/messaging/MessagingApi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lzendesk/messaging/components/ActionListener<",
        "Lzendesk/messaging/Update;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/answerbot/AnswerBotEngine;


# direct methods
.method constructor <init>(Lzendesk/answerbot/AnswerBotEngine;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lzendesk/answerbot/AnswerBotEngine$2;->this$0:Lzendesk/answerbot/AnswerBotEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onAction(Ljava/lang/Object;)V
    .locals 0

    .line 98
    check-cast p1, Lzendesk/messaging/Update;

    invoke-virtual {p0, p1}, Lzendesk/answerbot/AnswerBotEngine$2;->onAction(Lzendesk/messaging/Update;)V

    return-void
.end method

.method public onAction(Lzendesk/messaging/Update;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotEngine$2;->this$0:Lzendesk/answerbot/AnswerBotEngine;

    invoke-virtual {v0, p1}, Lzendesk/answerbot/AnswerBotEngine;->notifyObservers(Lzendesk/messaging/Update;)V

    return-void
.end method
