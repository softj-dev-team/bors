.class Lzendesk/core/AuthenticationRequestWrapper;
.super Ljava/lang/Object;
.source "AuthenticationRequestWrapper.java"


# instance fields
.field private user:Lzendesk/core/Identity;


# direct methods
.method constructor <init>(Lzendesk/core/Identity;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lzendesk/core/AuthenticationRequestWrapper;->user:Lzendesk/core/Identity;

    return-void
.end method
