.class Lzendesk/belvedere/FloatingActionMenu$1;
.super Lzendesk/belvedere/FloatingActionMenu$AnimationListenerAdapter;
.source "FloatingActionMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/belvedere/FloatingActionMenu;->showMenuItems(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/belvedere/FloatingActionMenu;

.field final synthetic val$menuItem:Landroidx/core/util/Pair;


# direct methods
.method constructor <init>(Lzendesk/belvedere/FloatingActionMenu;Landroidx/core/util/Pair;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lzendesk/belvedere/FloatingActionMenu$1;->this$0:Lzendesk/belvedere/FloatingActionMenu;

    iput-object p2, p0, Lzendesk/belvedere/FloatingActionMenu$1;->val$menuItem:Landroidx/core/util/Pair;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lzendesk/belvedere/FloatingActionMenu$AnimationListenerAdapter;-><init>(Lzendesk/belvedere/FloatingActionMenu$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 181
    iget-object p1, p0, Lzendesk/belvedere/FloatingActionMenu$1;->this$0:Lzendesk/belvedere/FloatingActionMenu;

    iget-object v0, p0, Lzendesk/belvedere/FloatingActionMenu$1;->val$menuItem:Landroidx/core/util/Pair;

    iget-object v0, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x4

    invoke-static {p1, v0, v1}, Lzendesk/belvedere/FloatingActionMenu;->access$100(Lzendesk/belvedere/FloatingActionMenu;Landroid/view/View;I)V

    return-void
.end method
