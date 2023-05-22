.class Lzendesk/belvedere/Callback$1;
.super Ljava/lang/Object;
.source "Callback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/belvedere/Callback;->internalSuccess(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/belvedere/Callback;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lzendesk/belvedere/Callback;Ljava/lang/Object;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lzendesk/belvedere/Callback$1;->this$0:Lzendesk/belvedere/Callback;

    iput-object p2, p0, Lzendesk/belvedere/Callback$1;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 41
    iget-object v0, p0, Lzendesk/belvedere/Callback$1;->this$0:Lzendesk/belvedere/Callback;

    iget-object v1, p0, Lzendesk/belvedere/Callback$1;->val$result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lzendesk/belvedere/Callback;->success(Ljava/lang/Object;)V

    return-void
.end method
