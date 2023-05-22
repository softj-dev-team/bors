.class final Lzendesk/support/DaggerSupportEngineComponent;
.super Ljava/lang/Object;
.source "DaggerSupportEngineComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/DaggerSupportEngineComponent$SupportEngineComponentImpl;,
        Lzendesk/support/DaggerSupportEngineComponent$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lzendesk/support/DaggerSupportEngineComponent$Builder;
    .locals 2

    .line 28
    new-instance v0, Lzendesk/support/DaggerSupportEngineComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lzendesk/support/DaggerSupportEngineComponent$Builder;-><init>(Lzendesk/support/DaggerSupportEngineComponent$1;)V

    return-object v0
.end method
