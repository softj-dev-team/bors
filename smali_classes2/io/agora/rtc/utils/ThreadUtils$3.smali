.class final Lio/agora/rtc/utils/ThreadUtils$3;
.super Ljava/lang/Object;
.source "ThreadUtils.java"

# interfaces
.implements Lio/agora/rtc/utils/ThreadUtils$BlockingOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/utils/ThreadUtils;->waitUninterruptibly(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$object:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$object"
        }
    .end annotation

    .line 149
    iput-object p1, p0, Lio/agora/rtc/utils/ThreadUtils$3;->val$object:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lio/agora/rtc/utils/ThreadUtils$3;->val$object:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    return-void
.end method
