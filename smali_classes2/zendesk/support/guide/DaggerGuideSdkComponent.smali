.class final Lzendesk/support/guide/DaggerGuideSdkComponent;
.super Ljava/lang/Object;
.source "DaggerGuideSdkComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/guide/DaggerGuideSdkComponent$GuideSdkComponentImpl;,
        Lzendesk/support/guide/DaggerGuideSdkComponent$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lzendesk/support/guide/DaggerGuideSdkComponent$Builder;
    .locals 2

    .line 29
    new-instance v0, Lzendesk/support/guide/DaggerGuideSdkComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lzendesk/support/guide/DaggerGuideSdkComponent$Builder;-><init>(Lzendesk/support/guide/DaggerGuideSdkComponent$1;)V

    return-object v0
.end method
