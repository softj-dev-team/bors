.class Lzendesk/belvedere/PermissionManager$2;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Lzendesk/belvedere/PermissionManager$InternalPermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/belvedere/PermissionManager;->askForPermissions(Landroidx/fragment/app/Fragment;Ljava/util/List;Lzendesk/belvedere/PermissionManager$InternalPermissionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/belvedere/PermissionManager;

.field final synthetic val$permissionCallback:Lzendesk/belvedere/PermissionManager$InternalPermissionCallback;


# direct methods
.method constructor <init>(Lzendesk/belvedere/PermissionManager;Lzendesk/belvedere/PermissionManager$InternalPermissionCallback;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lzendesk/belvedere/PermissionManager$2;->this$0:Lzendesk/belvedere/PermissionManager;

    iput-object p2, p0, Lzendesk/belvedere/PermissionManager$2;->val$permissionCallback:Lzendesk/belvedere/PermissionManager$InternalPermissionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public result(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lzendesk/belvedere/PermissionManager$2;->val$permissionCallback:Lzendesk/belvedere/PermissionManager$InternalPermissionCallback;

    invoke-interface {v0, p1}, Lzendesk/belvedere/PermissionManager$InternalPermissionCallback;->result(Ljava/util/Map;)V

    .line 93
    iget-object p1, p0, Lzendesk/belvedere/PermissionManager$2;->this$0:Lzendesk/belvedere/PermissionManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lzendesk/belvedere/PermissionManager;->access$200(Lzendesk/belvedere/PermissionManager;Lzendesk/belvedere/PermissionManager$InternalPermissionCallback;)V

    return-void
.end method
