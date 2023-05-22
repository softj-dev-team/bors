.class Lzendesk/answerbot/AnswerBotModel$5;
.super Ljava/lang/Object;
.source "AnswerBotModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/answerbot/AnswerBotModel;->setupUserInputTimerPrompts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/answerbot/AnswerBotModel;


# direct methods
.method constructor <init>(Lzendesk/answerbot/AnswerBotModel;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lzendesk/answerbot/AnswerBotModel$5;->this$0:Lzendesk/answerbot/AnswerBotModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 363
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotModel$5;->this$0:Lzendesk/answerbot/AnswerBotModel;

    invoke-static {v0}, Lzendesk/answerbot/AnswerBotModel;->access$300(Lzendesk/answerbot/AnswerBotModel;)Lzendesk/messaging/components/Timer;

    move-result-object v0

    invoke-virtual {v0}, Lzendesk/messaging/components/Timer;->disable()V

    .line 364
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotModel$5;->this$0:Lzendesk/answerbot/AnswerBotModel;

    invoke-static {v0}, Lzendesk/answerbot/AnswerBotModel;->access$1300(Lzendesk/answerbot/AnswerBotModel;)Lzendesk/messaging/components/Timer;

    move-result-object v0

    invoke-virtual {v0}, Lzendesk/messaging/components/Timer;->disable()V

    .line 365
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotModel$5;->this$0:Lzendesk/answerbot/AnswerBotModel;

    invoke-static {v0}, Lzendesk/answerbot/AnswerBotModel;->access$200(Lzendesk/answerbot/AnswerBotModel;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotModel$5;->this$0:Lzendesk/answerbot/AnswerBotModel;

    sget v1, Lzendesk/answerbot/R$string;->zab_cell_text_inactivity_contact_option_header:I

    invoke-static {v0, v1}, Lzendesk/answerbot/AnswerBotModel;->access$700(Lzendesk/answerbot/AnswerBotModel;I)V

    :cond_0
    return-void
.end method
