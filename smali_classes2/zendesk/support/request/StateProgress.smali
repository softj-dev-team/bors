.class Lzendesk/support/request/StateProgress;
.super Ljava/lang/Object;
.source "StateProgress.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final runningRequests:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lzendesk/support/request/StateProgress;->runningRequests:I

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lzendesk/support/request/StateProgress;->runningRequests:I

    return-void
.end method

.method static fomState(Lzendesk/support/suas/State;)Lzendesk/support/request/StateProgress;
    .locals 1

    .line 13
    const-class v0, Lzendesk/support/request/StateProgress;

    invoke-virtual {p0, v0}, Lzendesk/support/suas/State;->getState(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/support/request/StateProgress;

    if-eqz p0, :cond_0

    return-object p0

    .line 17
    :cond_0
    new-instance p0, Lzendesk/support/request/StateProgress;

    invoke-direct {p0}, Lzendesk/support/request/StateProgress;-><init>()V

    return-object p0
.end method


# virtual methods
.method decrement()Lzendesk/support/request/StateProgress;
    .locals 2

    .line 40
    iget v0, p0, Lzendesk/support/request/StateProgress;->runningRequests:I

    if-lez v0, :cond_0

    .line 41
    new-instance v1, Lzendesk/support/request/StateProgress;

    add-int/lit8 v0, v0, -0x1

    invoke-direct {v1, v0}, Lzendesk/support/request/StateProgress;-><init>(I)V

    return-object v1

    .line 43
    :cond_0
    new-instance v0, Lzendesk/support/request/StateProgress;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lzendesk/support/request/StateProgress;-><init>(I)V

    return-object v0
.end method

.method getRunningRequests()I
    .locals 1

    .line 32
    iget v0, p0, Lzendesk/support/request/StateProgress;->runningRequests:I

    return v0
.end method

.method increment()Lzendesk/support/request/StateProgress;
    .locals 2

    .line 36
    new-instance v0, Lzendesk/support/request/StateProgress;

    iget v1, p0, Lzendesk/support/request/StateProgress;->runningRequests:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Lzendesk/support/request/StateProgress;-><init>(I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Progress{runningRequests="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lzendesk/support/request/StateProgress;->runningRequests:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
