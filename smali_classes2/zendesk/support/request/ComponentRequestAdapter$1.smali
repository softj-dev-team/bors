.class Lzendesk/support/request/ComponentRequestAdapter$1;
.super Ljava/lang/Object;
.source "ComponentRequestAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/request/ComponentRequestAdapter;->update(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/support/request/ComponentRequestAdapter;

.field final synthetic val$cells:Ljava/util/List;


# direct methods
.method constructor <init>(Lzendesk/support/request/ComponentRequestAdapter;Ljava/util/List;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lzendesk/support/request/ComponentRequestAdapter$1;->this$0:Lzendesk/support/request/ComponentRequestAdapter;

    iput-object p2, p0, Lzendesk/support/request/ComponentRequestAdapter$1;->val$cells:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 75
    iget-object v0, p0, Lzendesk/support/request/ComponentRequestAdapter$1;->this$0:Lzendesk/support/request/ComponentRequestAdapter;

    invoke-static {v0}, Lzendesk/support/request/ComponentRequestAdapter;->access$000(Lzendesk/support/request/ComponentRequestAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/zendesk/util/CollectionUtils;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lzendesk/support/request/ComponentRequestAdapter$1;->val$cells:Ljava/util/List;

    invoke-static {v1}, Lcom/zendesk/util/CollectionUtils;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 78
    iget-object v2, p0, Lzendesk/support/request/ComponentRequestAdapter$1;->this$0:Lzendesk/support/request/ComponentRequestAdapter;

    invoke-static {v2, v0, v1}, Lzendesk/support/request/ComponentRequestAdapter;->access$100(Lzendesk/support/request/ComponentRequestAdapter;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
