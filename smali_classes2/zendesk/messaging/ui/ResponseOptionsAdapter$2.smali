.class Lzendesk/messaging/ui/ResponseOptionsAdapter$2;
.super Ljava/lang/Object;
.source "ResponseOptionsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/messaging/ui/ResponseOptionsAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/messaging/ui/ResponseOptionsAdapter;

.field final synthetic val$responseOption:Lzendesk/messaging/MessagingItem$Option;

.field final synthetic val$viewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Lzendesk/messaging/ui/ResponseOptionsAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lzendesk/messaging/MessagingItem$Option;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lzendesk/messaging/ui/ResponseOptionsAdapter$2;->this$0:Lzendesk/messaging/ui/ResponseOptionsAdapter;

    iput-object p2, p0, Lzendesk/messaging/ui/ResponseOptionsAdapter$2;->val$viewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Lzendesk/messaging/ui/ResponseOptionsAdapter$2;->val$responseOption:Lzendesk/messaging/MessagingItem$Option;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 62
    iget-object p1, p0, Lzendesk/messaging/ui/ResponseOptionsAdapter$2;->this$0:Lzendesk/messaging/ui/ResponseOptionsAdapter;

    invoke-static {p1}, Lzendesk/messaging/ui/ResponseOptionsAdapter;->access$100(Lzendesk/messaging/ui/ResponseOptionsAdapter;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 63
    iget-object p1, p0, Lzendesk/messaging/ui/ResponseOptionsAdapter$2;->this$0:Lzendesk/messaging/ui/ResponseOptionsAdapter;

    invoke-static {p1}, Lzendesk/messaging/ui/ResponseOptionsAdapter;->access$200(Lzendesk/messaging/ui/ResponseOptionsAdapter;)Lzendesk/messaging/ui/ResponseOptionHandler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 64
    iget-object p1, p0, Lzendesk/messaging/ui/ResponseOptionsAdapter$2;->val$viewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lzendesk/messaging/ui/ResponseOptionsAdapter$2$1;

    invoke-direct {v0, p0}, Lzendesk/messaging/ui/ResponseOptionsAdapter$2$1;-><init>(Lzendesk/messaging/ui/ResponseOptionsAdapter$2;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 71
    :cond_0
    iget-object p1, p0, Lzendesk/messaging/ui/ResponseOptionsAdapter$2;->this$0:Lzendesk/messaging/ui/ResponseOptionsAdapter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lzendesk/messaging/ui/ResponseOptionsAdapter;->access$102(Lzendesk/messaging/ui/ResponseOptionsAdapter;Z)Z

    :cond_1
    return-void
.end method
