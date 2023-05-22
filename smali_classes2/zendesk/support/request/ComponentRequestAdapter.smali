.class Lzendesk/support/request/ComponentRequestAdapter;
.super Ljava/lang/Object;
.source "ComponentRequestAdapter.java"

# interfaces
.implements Lzendesk/support/suas/Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/request/ComponentRequestAdapter$RequestViewHolder;,
        Lzendesk/support/request/ComponentRequestAdapter$RequestAdapterSelector;,
        Lzendesk/support/request/ComponentRequestAdapter$RequestAdapter;,
        Lzendesk/support/request/ComponentRequestAdapter$DiffCalculator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lzendesk/support/suas/Listener<",
        "Ljava/util/List<",
        "Lzendesk/support/request/CellType$Base;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final UPDATE_TIME_WINDOW:J = 0xc8L


# instance fields
.field private final listUpdateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

.field private final recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final requestAdapterSelector:Lzendesk/support/request/ComponentRequestAdapter$RequestAdapterSelector;

.field private final requestMessageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/support/request/CellType$Base;",
            ">;"
        }
    .end annotation
.end field

.field private updateRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/ListUpdateCallback;Lzendesk/support/request/CellFactory;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lzendesk/support/request/ComponentRequestAdapter;->updateRunnable:Ljava/lang/Runnable;

    .line 46
    iput-object p1, p0, Lzendesk/support/request/ComponentRequestAdapter;->listUpdateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

    .line 47
    iput-object p3, p0, Lzendesk/support/request/ComponentRequestAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 48
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lzendesk/support/request/ComponentRequestAdapter;->requestMessageList:Ljava/util/List;

    .line 49
    new-instance p1, Lzendesk/support/request/ComponentRequestAdapter$RequestAdapterSelector;

    invoke-direct {p1, p2}, Lzendesk/support/request/ComponentRequestAdapter$RequestAdapterSelector;-><init>(Lzendesk/support/request/CellFactory;)V

    iput-object p1, p0, Lzendesk/support/request/ComponentRequestAdapter;->requestAdapterSelector:Lzendesk/support/request/ComponentRequestAdapter$RequestAdapterSelector;

    return-void
.end method

.method constructor <init>(Ljava/util/List;Landroidx/recyclerview/widget/ListUpdateCallback;Lzendesk/support/request/ComponentRequestAdapter$RequestAdapterSelector;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/request/CellType$Base;",
            ">;",
            "Landroidx/recyclerview/widget/ListUpdateCallback;",
            "Lzendesk/support/request/ComponentRequestAdapter$RequestAdapterSelector;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ")V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lzendesk/support/request/ComponentRequestAdapter;->updateRunnable:Ljava/lang/Runnable;

    .line 55
    iput-object p1, p0, Lzendesk/support/request/ComponentRequestAdapter;->requestMessageList:Ljava/util/List;

    .line 56
    iput-object p2, p0, Lzendesk/support/request/ComponentRequestAdapter;->listUpdateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

    .line 57
    iput-object p3, p0, Lzendesk/support/request/ComponentRequestAdapter;->requestAdapterSelector:Lzendesk/support/request/ComponentRequestAdapter$RequestAdapterSelector;

    .line 58
    iput-object p4, p0, Lzendesk/support/request/ComponentRequestAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method static synthetic access$000(Lzendesk/support/request/ComponentRequestAdapter;)Ljava/util/List;
    .locals 0

    .line 33
    iget-object p0, p0, Lzendesk/support/request/ComponentRequestAdapter;->requestMessageList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lzendesk/support/request/ComponentRequestAdapter;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lzendesk/support/request/ComponentRequestAdapter;->updateDataSet(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private updateDataSet(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/request/CellType$Base;",
            ">;",
            "Ljava/util/List<",
            "Lzendesk/support/request/CellType$Base;",
            ">;)V"
        }
    .end annotation

    .line 90
    new-instance v0, Lzendesk/support/request/ComponentRequestAdapter$DiffCalculator;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lzendesk/support/request/ComponentRequestAdapter$DiffCalculator;-><init>(Ljava/util/List;Ljava/util/List;Lzendesk/support/request/ComponentRequestAdapter$1;)V

    const/4 p1, 0x1

    invoke-static {v0, p1}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object p1

    .line 92
    iget-object v0, p0, Lzendesk/support/request/ComponentRequestAdapter;->requestMessageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 93
    iget-object v0, p0, Lzendesk/support/request/ComponentRequestAdapter;->requestMessageList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 95
    iget-object p2, p0, Lzendesk/support/request/ComponentRequestAdapter;->listUpdateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    return-void
.end method


# virtual methods
.method getMessageCount()I
    .locals 1

    .line 66
    iget-object v0, p0, Lzendesk/support/request/ComponentRequestAdapter;->requestMessageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method getMessageForPos(I)Lzendesk/support/request/CellType$Base;
    .locals 1

    .line 62
    iget-object v0, p0, Lzendesk/support/request/ComponentRequestAdapter;->requestMessageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzendesk/support/request/CellType$Base;

    return-object p1
.end method

.method getSelector()Lzendesk/support/suas/StateSelector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lzendesk/support/suas/StateSelector<",
            "Ljava/util/List<",
            "Lzendesk/support/request/CellType$Base;",
            ">;>;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lzendesk/support/request/ComponentRequestAdapter;->requestAdapterSelector:Lzendesk/support/request/ComponentRequestAdapter$RequestAdapterSelector;

    return-object v0
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lzendesk/support/request/ComponentRequestAdapter;->update(Ljava/util/List;)V

    return-void
.end method

.method public update(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/request/CellType$Base;",
            ">;)V"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lzendesk/support/request/ComponentRequestAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lzendesk/support/request/ComponentRequestAdapter;->updateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 72
    new-instance v0, Lzendesk/support/request/ComponentRequestAdapter$1;

    invoke-direct {v0, p0, p1}, Lzendesk/support/request/ComponentRequestAdapter$1;-><init>(Lzendesk/support/request/ComponentRequestAdapter;Ljava/util/List;)V

    iput-object v0, p0, Lzendesk/support/request/ComponentRequestAdapter;->updateRunnable:Ljava/lang/Runnable;

    .line 82
    iget-object p1, p0, Lzendesk/support/request/ComponentRequestAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
