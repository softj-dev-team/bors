.class Lzendesk/support/request/StateError;
.super Ljava/lang/Object;
.source "StateError.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/request/StateError$ErrorType;
    }
.end annotation


# instance fields
.field private final message:Ljava/lang/String;

.field private final state:Lzendesk/support/request/StateError$ErrorType;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 25
    sget-object v0, Lzendesk/support/request/StateError$ErrorType;->NoError:Lzendesk/support/request/StateError$ErrorType;

    const-string v1, "=)"

    invoke-direct {p0, v0, v1}, Lzendesk/support/request/StateError;-><init>(Lzendesk/support/request/StateError$ErrorType;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lzendesk/support/request/StateError$ErrorType;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lzendesk/support/request/StateError;->state:Lzendesk/support/request/StateError$ErrorType;

    .line 30
    iput-object p2, p0, Lzendesk/support/request/StateError;->message:Ljava/lang/String;

    return-void
.end method

.method static fromState(Lzendesk/support/suas/State;)Lzendesk/support/request/StateError;
    .locals 1

    .line 13
    const-class v0, Lzendesk/support/request/StateError;

    invoke-virtual {p0, v0}, Lzendesk/support/suas/State;->getState(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/support/request/StateError;

    if-eqz p0, :cond_0

    return-object p0

    .line 17
    :cond_0
    new-instance p0, Lzendesk/support/request/StateError;

    invoke-direct {p0}, Lzendesk/support/request/StateError;-><init>()V

    return-object p0
.end method


# virtual methods
.method getMessage()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lzendesk/support/request/StateError;->message:Ljava/lang/String;

    return-object v0
.end method

.method getState()Lzendesk/support/request/StateError$ErrorType;
    .locals 1

    .line 34
    iget-object v0, p0, Lzendesk/support/request/StateError;->state:Lzendesk/support/request/StateError$ErrorType;

    return-object v0
.end method
