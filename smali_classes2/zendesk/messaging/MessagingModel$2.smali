.class Lzendesk/messaging/MessagingModel$2;
.super Ljava/lang/Object;
.source "MessagingModel.java"

# interfaces
.implements Lzendesk/messaging/Engine$ConversationOnGoingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/messaging/MessagingModel;->startInitialEngine(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/messaging/MessagingModel;

.field final synthetic val$counter:Lzendesk/messaging/ObservableCounter;

.field final synthetic val$enginesToRestore:Ljava/util/List;


# direct methods
.method constructor <init>(Lzendesk/messaging/MessagingModel;Ljava/util/List;Lzendesk/messaging/ObservableCounter;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lzendesk/messaging/MessagingModel$2;->this$0:Lzendesk/messaging/MessagingModel;

    iput-object p2, p0, Lzendesk/messaging/MessagingModel$2;->val$enginesToRestore:Ljava/util/List;

    iput-object p3, p0, Lzendesk/messaging/MessagingModel$2;->val$counter:Lzendesk/messaging/ObservableCounter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConversationOngoing(Lzendesk/messaging/Engine;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 364
    iget-object p2, p0, Lzendesk/messaging/MessagingModel$2;->val$enginesToRestore:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    :cond_0
    iget-object p1, p0, Lzendesk/messaging/MessagingModel$2;->val$counter:Lzendesk/messaging/ObservableCounter;

    invoke-virtual {p1}, Lzendesk/messaging/ObservableCounter;->decrement()V

    return-void
.end method
