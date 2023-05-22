.class Lzendesk/support/SupportEngineModule$2;
.super Ljava/lang/Object;
.source "SupportEngineModule.java"

# interfaces
.implements Lzendesk/messaging/components/ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/SupportEngineModule;->updateActionListener(Lzendesk/messaging/components/CompositeActionListener;)Lzendesk/messaging/components/ActionListener;
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
.field final synthetic this$0:Lzendesk/support/SupportEngineModule;

.field final synthetic val$observer:Lzendesk/messaging/components/CompositeActionListener;


# direct methods
.method constructor <init>(Lzendesk/support/SupportEngineModule;Lzendesk/messaging/components/CompositeActionListener;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lzendesk/support/SupportEngineModule$2;->this$0:Lzendesk/support/SupportEngineModule;

    iput-object p2, p0, Lzendesk/support/SupportEngineModule$2;->val$observer:Lzendesk/messaging/components/CompositeActionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onAction(Ljava/lang/Object;)V
    .locals 0

    .line 60
    check-cast p1, Lzendesk/messaging/Update;

    invoke-virtual {p0, p1}, Lzendesk/support/SupportEngineModule$2;->onAction(Lzendesk/messaging/Update;)V

    return-void
.end method

.method public onAction(Lzendesk/messaging/Update;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lzendesk/support/SupportEngineModule$2;->val$observer:Lzendesk/messaging/components/CompositeActionListener;

    invoke-virtual {v0, p1}, Lzendesk/messaging/components/CompositeActionListener;->onAction(Ljava/lang/Object;)V

    return-void
.end method
