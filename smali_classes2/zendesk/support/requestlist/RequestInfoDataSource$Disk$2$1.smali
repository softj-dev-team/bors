.class Lzendesk/support/requestlist/RequestInfoDataSource$Disk$2$1;
.super Ljava/lang/Object;
.source "RequestInfoDataSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/requestlist/RequestInfoDataSource$Disk$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lzendesk/support/requestlist/RequestInfoDataSource$Disk$2;


# direct methods
.method constructor <init>(Lzendesk/support/requestlist/RequestInfoDataSource$Disk$2;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lzendesk/support/requestlist/RequestInfoDataSource$Disk$2$1;->this$1:Lzendesk/support/requestlist/RequestInfoDataSource$Disk$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 125
    iget-object v0, p0, Lzendesk/support/requestlist/RequestInfoDataSource$Disk$2$1;->this$1:Lzendesk/support/requestlist/RequestInfoDataSource$Disk$2;

    iget-object v0, v0, Lzendesk/support/requestlist/RequestInfoDataSource$Disk$2;->val$callback:Lcom/zendesk/service/ZendeskCallback;

    iget-object v1, p0, Lzendesk/support/requestlist/RequestInfoDataSource$Disk$2$1;->this$1:Lzendesk/support/requestlist/RequestInfoDataSource$Disk$2;

    iget-object v1, v1, Lzendesk/support/requestlist/RequestInfoDataSource$Disk$2;->val$requestInfos:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/zendesk/service/ZendeskCallback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
