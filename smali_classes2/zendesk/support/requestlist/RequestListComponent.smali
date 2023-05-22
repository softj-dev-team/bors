.class public interface abstract Lzendesk/support/requestlist/RequestListComponent;
.super Ljava/lang/Object;
.source "RequestListComponent.java"


# annotations
.annotation runtime Ldagger/Subcomponent;
    modules = {
        Lzendesk/support/requestlist/RequestListModule;,
        Lzendesk/support/requestlist/RequestListViewModule;
    }
.end annotation

.annotation runtime Lzendesk/support/ActivityScope;
.end annotation


# virtual methods
.method public abstract inject(Lzendesk/support/requestlist/RequestListActivity;)V
.end method
