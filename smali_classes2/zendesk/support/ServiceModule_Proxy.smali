.class public final Lzendesk/support/ServiceModule_Proxy;
.super Ljava/lang/Object;
.source "ServiceModule_Proxy.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance()Lzendesk/support/ServiceModule;
    .locals 1

    .line 16
    new-instance v0, Lzendesk/support/ServiceModule;

    invoke-direct {v0}, Lzendesk/support/ServiceModule;-><init>()V

    return-object v0
.end method
