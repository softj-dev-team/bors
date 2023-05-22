.class Lzendesk/messaging/ui/LostConnectionBanner$4;
.super Landroidx/transition/TransitionListenerAdapter;
.source "LostConnectionBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/messaging/ui/LostConnectionBanner;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/messaging/ui/LostConnectionBanner;


# direct methods
.method constructor <init>(Lzendesk/messaging/ui/LostConnectionBanner;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lzendesk/messaging/ui/LostConnectionBanner$4;->this$0:Lzendesk/messaging/ui/LostConnectionBanner;

    invoke-direct {p0}, Landroidx/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 0

    .line 223
    iget-object p1, p0, Lzendesk/messaging/ui/LostConnectionBanner$4;->this$0:Lzendesk/messaging/ui/LostConnectionBanner;

    invoke-virtual {p1}, Lzendesk/messaging/ui/LostConnectionBanner;->hide()V

    .line 224
    iget-object p1, p0, Lzendesk/messaging/ui/LostConnectionBanner$4;->this$0:Lzendesk/messaging/ui/LostConnectionBanner;

    invoke-static {p1}, Lzendesk/messaging/ui/LostConnectionBanner;->access$200(Lzendesk/messaging/ui/LostConnectionBanner;)Landroidx/transition/TransitionSet;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/transition/TransitionSet;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/TransitionSet;

    return-void
.end method
