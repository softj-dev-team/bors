.class Lzendesk/belvedere/FloatingActionMenu$2;
.super Lzendesk/belvedere/FloatingActionMenu$AnimationListenerAdapter;
.source "FloatingActionMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/belvedere/FloatingActionMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/belvedere/FloatingActionMenu;


# direct methods
.method constructor <init>(Lzendesk/belvedere/FloatingActionMenu;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lzendesk/belvedere/FloatingActionMenu$2;->this$0:Lzendesk/belvedere/FloatingActionMenu;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lzendesk/belvedere/FloatingActionMenu$AnimationListenerAdapter;-><init>(Lzendesk/belvedere/FloatingActionMenu$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .line 253
    iget-object p1, p0, Lzendesk/belvedere/FloatingActionMenu$2;->this$0:Lzendesk/belvedere/FloatingActionMenu;

    invoke-static {p1}, Lzendesk/belvedere/FloatingActionMenu;->access$200(Lzendesk/belvedere/FloatingActionMenu;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/util/Pair;

    .line 254
    iget-object v1, p0, Lzendesk/belvedere/FloatingActionMenu$2;->this$0:Lzendesk/belvedere/FloatingActionMenu;

    iget-object v0, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    const/16 v2, 0x8

    invoke-static {v1, v0, v2}, Lzendesk/belvedere/FloatingActionMenu;->access$100(Lzendesk/belvedere/FloatingActionMenu;Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
