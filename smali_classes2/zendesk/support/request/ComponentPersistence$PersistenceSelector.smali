.class Lzendesk/support/request/ComponentPersistence$PersistenceSelector;
.super Ljava/lang/Object;
.source "ComponentPersistence.java"

# interfaces
.implements Lzendesk/support/suas/StateSelector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/ComponentPersistence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PersistenceSelector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lzendesk/support/suas/StateSelector<",
        "Lzendesk/support/request/ComponentPersistence$RequestPersistenceModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic selectData(Lzendesk/support/suas/State;)Ljava/lang/Object;
    .locals 0

    .line 229
    invoke-virtual {p0, p1}, Lzendesk/support/request/ComponentPersistence$PersistenceSelector;->selectData(Lzendesk/support/suas/State;)Lzendesk/support/request/ComponentPersistence$RequestPersistenceModel;

    move-result-object p1

    return-object p1
.end method

.method public selectData(Lzendesk/support/suas/State;)Lzendesk/support/request/ComponentPersistence$RequestPersistenceModel;
    .locals 6

    .line 233
    invoke-static {p1}, Lzendesk/support/request/StateConversation;->fromState(Lzendesk/support/suas/State;)Lzendesk/support/request/StateConversation;

    move-result-object v4

    .line 234
    invoke-static {p1}, Lzendesk/support/request/StateAndroidLifecycle;->fromState(Lzendesk/support/suas/State;)Lzendesk/support/request/StateAndroidLifecycle;

    move-result-object p1

    .line 236
    invoke-virtual {p1}, Lzendesk/support/request/StateAndroidLifecycle;->getState()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v5, 0x0

    .line 238
    :goto_0
    new-instance p1, Lzendesk/support/request/ComponentPersistence$RequestPersistenceModel;

    invoke-virtual {v4}, Lzendesk/support/request/StateConversation;->getLocalId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    const-string v3, "5.1.0"

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lzendesk/support/request/ComponentPersistence$RequestPersistenceModel;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Lzendesk/support/request/StateConversation;Z)V

    return-object p1
.end method
