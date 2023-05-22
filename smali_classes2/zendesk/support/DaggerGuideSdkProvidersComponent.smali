.class final Lzendesk/support/DaggerGuideSdkProvidersComponent;
.super Ljava/lang/Object;
.source "DaggerGuideSdkProvidersComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/DaggerGuideSdkProvidersComponent$GuideSdkProvidersComponentImpl;,
        Lzendesk/support/DaggerGuideSdkProvidersComponent$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lzendesk/support/DaggerGuideSdkProvidersComponent$Builder;
    .locals 2

    .line 31
    new-instance v0, Lzendesk/support/DaggerGuideSdkProvidersComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lzendesk/support/DaggerGuideSdkProvidersComponent$Builder;-><init>(Lzendesk/support/DaggerGuideSdkProvidersComponent$1;)V

    return-object v0
.end method
