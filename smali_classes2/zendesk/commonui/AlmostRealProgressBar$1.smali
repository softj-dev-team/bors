.class Lzendesk/commonui/AlmostRealProgressBar$1;
.super Ljava/lang/Object;
.source "AlmostRealProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/commonui/AlmostRealProgressBar;->start(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/commonui/AlmostRealProgressBar;

.field final synthetic val$steps:Ljava/util/List;


# direct methods
.method constructor <init>(Lzendesk/commonui/AlmostRealProgressBar;Ljava/util/List;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lzendesk/commonui/AlmostRealProgressBar$1;->this$0:Lzendesk/commonui/AlmostRealProgressBar;

    iput-object p2, p0, Lzendesk/commonui/AlmostRealProgressBar$1;->val$steps:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 74
    iget-object v0, p0, Lzendesk/commonui/AlmostRealProgressBar$1;->this$0:Lzendesk/commonui/AlmostRealProgressBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lzendesk/commonui/AlmostRealProgressBar;->access$002(Lzendesk/commonui/AlmostRealProgressBar;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 75
    iget-object v0, p0, Lzendesk/commonui/AlmostRealProgressBar$1;->val$steps:Ljava/util/List;

    invoke-static {v0}, Lcom/zendesk/util/CollectionUtils;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 76
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 77
    iget-object v1, p0, Lzendesk/commonui/AlmostRealProgressBar$1;->this$0:Lzendesk/commonui/AlmostRealProgressBar;

    invoke-static {v1, v0}, Lzendesk/commonui/AlmostRealProgressBar;->access$102(Lzendesk/commonui/AlmostRealProgressBar;Ljava/util/List;)Ljava/util/List;

    .line 78
    iget-object v0, p0, Lzendesk/commonui/AlmostRealProgressBar$1;->this$0:Lzendesk/commonui/AlmostRealProgressBar;

    invoke-static {v0}, Lzendesk/commonui/AlmostRealProgressBar;->access$100(Lzendesk/commonui/AlmostRealProgressBar;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lzendesk/commonui/AlmostRealProgressBar;->access$200(Lzendesk/commonui/AlmostRealProgressBar;Ljava/util/List;I)V

    return-void
.end method
