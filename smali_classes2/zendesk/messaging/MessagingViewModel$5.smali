.class Lzendesk/messaging/MessagingViewModel$5;
.super Ljava/lang/Object;
.source "MessagingViewModel.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/messaging/MessagingViewModel;-><init>(Lzendesk/messaging/MessagingModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/messaging/MessagingViewModel;


# direct methods
.method constructor <init>(Lzendesk/messaging/MessagingViewModel;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lzendesk/messaging/MessagingViewModel$5;->this$0:Lzendesk/messaging/MessagingViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 96
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lzendesk/messaging/MessagingViewModel$5;->onChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onChanged(Ljava/lang/String;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lzendesk/messaging/MessagingViewModel$5;->this$0:Lzendesk/messaging/MessagingViewModel;

    invoke-static {v0}, Lzendesk/messaging/MessagingViewModel;->access$000(Lzendesk/messaging/MessagingViewModel;)Landroidx/lifecycle/MediatorLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MediatorLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/messaging/ui/MessagingState;

    .line 100
    invoke-virtual {v0}, Lzendesk/messaging/ui/MessagingState;->newBuilder()Lzendesk/messaging/ui/MessagingState$Builder;

    move-result-object v0

    .line 101
    invoke-virtual {v0, p1}, Lzendesk/messaging/ui/MessagingState$Builder;->withComposerHint(Ljava/lang/String;)Lzendesk/messaging/ui/MessagingState$Builder;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Lzendesk/messaging/ui/MessagingState$Builder;->build()Lzendesk/messaging/ui/MessagingState;

    move-result-object p1

    .line 103
    iget-object v0, p0, Lzendesk/messaging/MessagingViewModel$5;->this$0:Lzendesk/messaging/MessagingViewModel;

    invoke-static {v0}, Lzendesk/messaging/MessagingViewModel;->access$000(Lzendesk/messaging/MessagingViewModel;)Landroidx/lifecycle/MediatorLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MediatorLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
