.class final Lcom/sdkbox/plugin/LeaderboardWrapper$1;
.super Ljava/lang/Object;
.source "LeaderboardWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/plugin/LeaderboardWrapper;->onComplete(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/sdkbox/plugin/LeaderboardWrapper$1;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/sdkbox/plugin/LeaderboardWrapper$1;->val$result:Ljava/lang/String;

    invoke-static {v0}, Lcom/sdkbox/plugin/LeaderboardWrapper;->nativeOnComplete(Ljava/lang/String;)V

    return-void
.end method
