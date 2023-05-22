.class Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener$1;
.super Ljava/lang/Object;
.source "RequestViewConversationsEnabled.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener;->onHeightChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener;

.field final synthetic val$currentHeight:I


# direct methods
.method constructor <init>(Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener;I)V
    .locals 0

    .line 287
    iput-object p1, p0, Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener$1;->this$0:Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener;

    iput p2, p0, Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener$1;->val$currentHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 290
    iget-object v0, p0, Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener$1;->this$0:Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener;

    invoke-static {v0}, Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener;->access$000(Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    .line 291
    iget-object v1, p0, Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener$1;->this$0:Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener;

    invoke-static {v1}, Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener;->access$000(Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v1

    .line 292
    iget-object v2, p0, Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener$1;->this$0:Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener;

    invoke-static {v2}, Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener;->access$000(Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    .line 294
    iget-object v3, p0, Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener$1;->this$0:Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener;

    invoke-static {v3}, Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener;->access$100(Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener;)I

    move-result v3

    .line 295
    iget v4, p0, Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener$1;->val$currentHeight:I

    if-lez v4, :cond_0

    add-int/2addr v3, v4

    .line 299
    :cond_0
    iget-object v4, p0, Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener$1;->this$0:Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener;

    invoke-static {v4}, Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener;->access$000(Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 300
    iget-object v4, p0, Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener$1;->this$0:Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener;

    invoke-static {v4}, Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener;->access$000(Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {v4, v0, v2, v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setPadding(IIII)V

    .line 301
    iget-object v0, p0, Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener$1;->this$0:Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener;->access$200(Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener;I)V

    :cond_1
    return-void
.end method
