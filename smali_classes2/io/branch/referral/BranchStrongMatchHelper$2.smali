.class Lio/branch/referral/BranchStrongMatchHelper$2;
.super Lio/branch/referral/BranchStrongMatchHelper$MockCustomTabServiceConnection;
.source "BranchStrongMatchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/referral/BranchStrongMatchHelper;->checkForStrongMatch(Landroid/content/Context;Ljava/lang/String;Lio/branch/referral/DeviceInfo;Lio/branch/referral/PrefHelper;Lio/branch/referral/BranchStrongMatchHelper$StrongMatchCheckEvents;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/branch/referral/BranchStrongMatchHelper;

.field final synthetic val$callback:Lio/branch/referral/BranchStrongMatchHelper$StrongMatchCheckEvents;

.field final synthetic val$mayLaunchUrlMethod:Ljava/lang/reflect/Method;

.field final synthetic val$newSessionMethod:Ljava/lang/reflect/Method;

.field final synthetic val$prefHelper:Lio/branch/referral/PrefHelper;

.field final synthetic val$strongMatchUri:Landroid/net/Uri;

.field final synthetic val$warmupMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Lio/branch/referral/BranchStrongMatchHelper;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Landroid/net/Uri;Ljava/lang/reflect/Method;Lio/branch/referral/PrefHelper;Lio/branch/referral/BranchStrongMatchHelper$StrongMatchCheckEvents;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lio/branch/referral/BranchStrongMatchHelper$2;->this$0:Lio/branch/referral/BranchStrongMatchHelper;

    iput-object p2, p0, Lio/branch/referral/BranchStrongMatchHelper$2;->val$warmupMethod:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lio/branch/referral/BranchStrongMatchHelper$2;->val$newSessionMethod:Ljava/lang/reflect/Method;

    iput-object p4, p0, Lio/branch/referral/BranchStrongMatchHelper$2;->val$strongMatchUri:Landroid/net/Uri;

    iput-object p5, p0, Lio/branch/referral/BranchStrongMatchHelper$2;->val$mayLaunchUrlMethod:Ljava/lang/reflect/Method;

    iput-object p6, p0, Lio/branch/referral/BranchStrongMatchHelper$2;->val$prefHelper:Lio/branch/referral/PrefHelper;

    iput-object p7, p0, Lio/branch/referral/BranchStrongMatchHelper$2;->val$callback:Lio/branch/referral/BranchStrongMatchHelper$StrongMatchCheckEvents;

    invoke-direct {p0, p1}, Lio/branch/referral/BranchStrongMatchHelper$MockCustomTabServiceConnection;-><init>(Lio/branch/referral/BranchStrongMatchHelper;)V

    return-void
.end method


# virtual methods
.method public onCustomTabsServiceConnected(Landroid/content/ComponentName;Ljava/lang/Object;)V
    .locals 5

    .line 101
    iget-object p1, p0, Lio/branch/referral/BranchStrongMatchHelper$2;->this$0:Lio/branch/referral/BranchStrongMatchHelper;

    invoke-static {p1}, Lio/branch/referral/BranchStrongMatchHelper;->access$300(Lio/branch/referral/BranchStrongMatchHelper;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lio/branch/referral/BranchStrongMatchHelper;->access$202(Lio/branch/referral/BranchStrongMatchHelper;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object p1, p0, Lio/branch/referral/BranchStrongMatchHelper$2;->this$0:Lio/branch/referral/BranchStrongMatchHelper;

    invoke-static {p1}, Lio/branch/referral/BranchStrongMatchHelper;->access$200(Lio/branch/referral/BranchStrongMatchHelper;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 104
    :try_start_0
    iget-object p2, p0, Lio/branch/referral/BranchStrongMatchHelper$2;->val$warmupMethod:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lio/branch/referral/BranchStrongMatchHelper$2;->this$0:Lio/branch/referral/BranchStrongMatchHelper;

    invoke-static {v0}, Lio/branch/referral/BranchStrongMatchHelper;->access$200(Lio/branch/referral/BranchStrongMatchHelper;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p2, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object p2, p0, Lio/branch/referral/BranchStrongMatchHelper$2;->val$newSessionMethod:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lio/branch/referral/BranchStrongMatchHelper$2;->this$0:Lio/branch/referral/BranchStrongMatchHelper;

    invoke-static {v0}, Lio/branch/referral/BranchStrongMatchHelper;->access$200(Lio/branch/referral/BranchStrongMatchHelper;)Ljava/lang/Object;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {p2, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Strong match request "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/branch/referral/BranchStrongMatchHelper$2;->val$strongMatchUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/branch/referral/PrefHelper;->Debug(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lio/branch/referral/BranchStrongMatchHelper$2;->val$mayLaunchUrlMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lio/branch/referral/BranchStrongMatchHelper$2;->val$strongMatchUri:Landroid/net/Uri;

    aput-object v4, v2, v3

    aput-object p1, v2, v1

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-virtual {v0, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object p2, p0, Lio/branch/referral/BranchStrongMatchHelper$2;->val$prefHelper:Lio/branch/referral/PrefHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lio/branch/referral/PrefHelper;->saveLastStrongMatchTime(J)V

    .line 110
    iget-object p2, p0, Lio/branch/referral/BranchStrongMatchHelper$2;->this$0:Lio/branch/referral/BranchStrongMatchHelper;

    invoke-static {p2, v1}, Lio/branch/referral/BranchStrongMatchHelper;->access$002(Lio/branch/referral/BranchStrongMatchHelper;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    iget-object p2, p0, Lio/branch/referral/BranchStrongMatchHelper$2;->this$0:Lio/branch/referral/BranchStrongMatchHelper;

    invoke-static {p2, p1}, Lio/branch/referral/BranchStrongMatchHelper;->access$202(Lio/branch/referral/BranchStrongMatchHelper;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object p1, p0, Lio/branch/referral/BranchStrongMatchHelper$2;->this$0:Lio/branch/referral/BranchStrongMatchHelper;

    iget-object p2, p0, Lio/branch/referral/BranchStrongMatchHelper$2;->val$callback:Lio/branch/referral/BranchStrongMatchHelper$StrongMatchCheckEvents;

    invoke-static {p1}, Lio/branch/referral/BranchStrongMatchHelper;->access$000(Lio/branch/referral/BranchStrongMatchHelper;)Z

    move-result v0

    invoke-static {p1, p2, v0}, Lio/branch/referral/BranchStrongMatchHelper;->access$100(Lio/branch/referral/BranchStrongMatchHelper;Lio/branch/referral/BranchStrongMatchHelper$StrongMatchCheckEvents;Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 121
    iget-object p1, p0, Lio/branch/referral/BranchStrongMatchHelper$2;->this$0:Lio/branch/referral/BranchStrongMatchHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/branch/referral/BranchStrongMatchHelper;->access$202(Lio/branch/referral/BranchStrongMatchHelper;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object p1, p0, Lio/branch/referral/BranchStrongMatchHelper$2;->this$0:Lio/branch/referral/BranchStrongMatchHelper;

    iget-object v0, p0, Lio/branch/referral/BranchStrongMatchHelper$2;->val$callback:Lio/branch/referral/BranchStrongMatchHelper$StrongMatchCheckEvents;

    invoke-static {p1}, Lio/branch/referral/BranchStrongMatchHelper;->access$000(Lio/branch/referral/BranchStrongMatchHelper;)Z

    move-result v1

    invoke-static {p1, v0, v1}, Lio/branch/referral/BranchStrongMatchHelper;->access$100(Lio/branch/referral/BranchStrongMatchHelper;Lio/branch/referral/BranchStrongMatchHelper$StrongMatchCheckEvents;Z)V

    return-void
.end method
