.class Lcom/github/dfqin/grantor/PermissionActivity$1;
.super Ljava/lang/Object;
.source "PermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/dfqin/grantor/PermissionActivity;->showMissingPermissionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/dfqin/grantor/PermissionActivity;


# direct methods
.method constructor <init>(Lcom/github/dfqin/grantor/PermissionActivity;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/github/dfqin/grantor/PermissionActivity$1;->this$0:Lcom/github/dfqin/grantor/PermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 116
    iget-object p1, p0, Lcom/github/dfqin/grantor/PermissionActivity$1;->this$0:Lcom/github/dfqin/grantor/PermissionActivity;

    invoke-static {p1}, Lcom/github/dfqin/grantor/PermissionActivity;->access$000(Lcom/github/dfqin/grantor/PermissionActivity;)V

    return-void
.end method
