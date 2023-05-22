.class Lzendesk/support/requestlist/RequestListPresenter$7;
.super Ljava/lang/Object;
.source "RequestListPresenter.java"

# interfaces
.implements Lzendesk/support/requestlist/RequestListView$OnItemClick;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/requestlist/RequestListPresenter;->setupItemClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/support/requestlist/RequestListPresenter;


# direct methods
.method constructor <init>(Lzendesk/support/requestlist/RequestListPresenter;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lzendesk/support/requestlist/RequestListPresenter$7;->this$0:Lzendesk/support/requestlist/RequestListPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lzendesk/support/requestlist/RequestListItem;)V
    .locals 2

    .line 194
    invoke-static {}, Lzendesk/support/request/RequestActivity;->builder()Lzendesk/support/request/RequestConfiguration$Builder;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lzendesk/support/requestlist/RequestListPresenter$7;->this$0:Lzendesk/support/requestlist/RequestListPresenter;

    invoke-static {v1}, Lzendesk/support/requestlist/RequestListPresenter;->access$000(Lzendesk/support/requestlist/RequestListPresenter;)Lzendesk/support/requestlist/RequestListView;

    move-result-object v1

    invoke-virtual {p1, v0}, Lzendesk/support/requestlist/RequestListItem;->configure(Lzendesk/support/request/RequestConfiguration$Builder;)Lzendesk/support/request/RequestConfiguration$Builder;

    move-result-object p1

    invoke-virtual {v1, p1}, Lzendesk/support/requestlist/RequestListView;->startRequestActivity(Lzendesk/support/request/RequestConfiguration$Builder;)V

    return-void
.end method
