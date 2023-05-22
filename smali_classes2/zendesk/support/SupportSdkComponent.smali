.class public interface abstract Lzendesk/support/SupportSdkComponent;
.super Ljava/lang/Object;
.source "SupportSdkComponent.java"


# annotations
.annotation runtime Ldagger/Component;
    modules = {
        Lzendesk/core/CoreModule;,
        Lzendesk/support/SupportModule;,
        Lzendesk/support/SupportSdkModule;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field public static final SUPPORT_MAIN_THREAD_EXECUTOR:Ljava/lang/String; = "SUPPORT_MAIN_THREAD_EXECUTOR"


# virtual methods
.method public abstract inject(Lzendesk/support/DeepLinkingBroadcastReceiver;)V
.end method

.method public abstract inject(Lzendesk/support/SdkDependencyProvider;)V
.end method

.method public abstract plus(Lzendesk/support/request/RequestModule;)Lzendesk/support/request/RequestComponent;
.end method

.method public abstract plus(Lzendesk/support/requestlist/RequestListModule;Lzendesk/support/requestlist/RequestListViewModule;)Lzendesk/support/requestlist/RequestListComponent;
.end method
