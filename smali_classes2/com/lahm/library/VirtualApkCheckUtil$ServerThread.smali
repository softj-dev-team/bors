.class Lcom/lahm/library/VirtualApkCheckUtil$ServerThread;
.super Ljava/lang/Thread;
.source "VirtualApkCheckUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lahm/library/VirtualApkCheckUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServerThread"
.end annotation


# instance fields
.field callback:Lcom/lahm/library/VirtualCheckCallback;

.field secret:Ljava/lang/String;

.field final synthetic this$0:Lcom/lahm/library/VirtualApkCheckUtil;


# direct methods
.method private constructor <init>(Lcom/lahm/library/VirtualApkCheckUtil;Ljava/lang/String;Lcom/lahm/library/VirtualCheckCallback;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/lahm/library/VirtualApkCheckUtil$ServerThread;->this$0:Lcom/lahm/library/VirtualApkCheckUtil;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 246
    iput-object p2, p0, Lcom/lahm/library/VirtualApkCheckUtil$ServerThread;->secret:Ljava/lang/String;

    .line 247
    iput-object p3, p0, Lcom/lahm/library/VirtualApkCheckUtil$ServerThread;->callback:Lcom/lahm/library/VirtualCheckCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/lahm/library/VirtualApkCheckUtil;Ljava/lang/String;Lcom/lahm/library/VirtualCheckCallback;Lcom/lahm/library/VirtualApkCheckUtil$1;)V
    .locals 0

    .line 241
    invoke-direct {p0, p1, p2, p3}, Lcom/lahm/library/VirtualApkCheckUtil$ServerThread;-><init>(Lcom/lahm/library/VirtualApkCheckUtil;Ljava/lang/String;Lcom/lahm/library/VirtualCheckCallback;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 252
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 253
    iget-object v0, p0, Lcom/lahm/library/VirtualApkCheckUtil$ServerThread;->this$0:Lcom/lahm/library/VirtualApkCheckUtil;

    iget-object v1, p0, Lcom/lahm/library/VirtualApkCheckUtil$ServerThread;->secret:Ljava/lang/String;

    iget-object v2, p0, Lcom/lahm/library/VirtualApkCheckUtil$ServerThread;->callback:Lcom/lahm/library/VirtualCheckCallback;

    invoke-static {v0, v1, v2}, Lcom/lahm/library/VirtualApkCheckUtil;->access$100(Lcom/lahm/library/VirtualApkCheckUtil;Ljava/lang/String;Lcom/lahm/library/VirtualCheckCallback;)V

    return-void
.end method
