.class public Lcom/github/dfqin/grantor/PermissionActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "PermissionActivity.java"


# static fields
.field private static final PERMISSION_REQUEST_CODE:I = 0x40


# instance fields
.field private final defaultCancel:Ljava/lang/String;

.field private final defaultContent:Ljava/lang/String;

.field private final defaultEnsure:Ljava/lang/String;

.field private final defaultTitle:Ljava/lang/String;

.field private isRequireCheck:Z

.field private key:Ljava/lang/String;

.field private permission:[Ljava/lang/String;

.field private showTip:Z

.field private tipInfo:Lcom/github/dfqin/grantor/PermissionsUtil$TipInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, "Help"

    .line 35
    iput-object v0, p0, Lcom/github/dfqin/grantor/PermissionActivity;->defaultTitle:Ljava/lang/String;

    const-string v0, "The current application lacks the necessary permissions.\nPlease click on \"Settings\" - \"Permissions\" to turn on the required."

    .line 36
    iput-object v0, p0, Lcom/github/dfqin/grantor/PermissionActivity;->defaultContent:Ljava/lang/String;

    const-string v0, "Cancel"

    .line 37
    iput-object v0, p0, Lcom/github/dfqin/grantor/PermissionActivity;->defaultCancel:Ljava/lang/String;

    const-string v0, "Settings"

    .line 38
    iput-object v0, p0, Lcom/github/dfqin/grantor/PermissionActivity;->defaultEnsure:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/github/dfqin/grantor/PermissionActivity;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/github/dfqin/grantor/PermissionActivity;->permissionsDenied()V

    return-void
.end method

.method private permissionsDenied()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/github/dfqin/grantor/PermissionActivity;->key:Ljava/lang/String;

    invoke-static {v0}, Lcom/github/dfqin/grantor/PermissionsUtil;->fetchListener(Ljava/lang/String;)Lcom/github/dfqin/grantor/PermissionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v1, p0, Lcom/github/dfqin/grantor/PermissionActivity;->permission:[Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/github/dfqin/grantor/PermissionListener;->permissionDenied([Ljava/lang/String;)V

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/github/dfqin/grantor/PermissionActivity;->finish()V

    return-void
.end method

.method private permissionsGranted()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/github/dfqin/grantor/PermissionActivity;->key:Ljava/lang/String;

    invoke-static {v0}, Lcom/github/dfqin/grantor/PermissionsUtil;->fetchListener(Ljava/lang/String;)Lcom/github/dfqin/grantor/PermissionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v1, p0, Lcom/github/dfqin/grantor/PermissionActivity;->permission:[Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/github/dfqin/grantor/PermissionListener;->permissionGranted([Ljava/lang/String;)V

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/github/dfqin/grantor/PermissionActivity;->finish()V

    return-void
.end method

.method private requestPermissions([Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x40

    .line 77
    invoke-static {p0, p1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method private showMissingPermissionDialog()V
    .locals 3

    .line 109
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 111
    iget-object v1, p0, Lcom/github/dfqin/grantor/PermissionActivity;->tipInfo:Lcom/github/dfqin/grantor/PermissionsUtil$TipInfo;

    iget-object v1, v1, Lcom/github/dfqin/grantor/PermissionsUtil$TipInfo;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Help"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/github/dfqin/grantor/PermissionActivity;->tipInfo:Lcom/github/dfqin/grantor/PermissionsUtil$TipInfo;

    iget-object v1, v1, Lcom/github/dfqin/grantor/PermissionsUtil$TipInfo;->title:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 112
    iget-object v1, p0, Lcom/github/dfqin/grantor/PermissionActivity;->tipInfo:Lcom/github/dfqin/grantor/PermissionsUtil$TipInfo;

    iget-object v1, v1, Lcom/github/dfqin/grantor/PermissionsUtil$TipInfo;->content:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "The current application lacks the necessary permissions.\nPlease click on \"Settings\" - \"Permissions\" to turn on the required."

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/github/dfqin/grantor/PermissionActivity;->tipInfo:Lcom/github/dfqin/grantor/PermissionsUtil$TipInfo;

    iget-object v1, v1, Lcom/github/dfqin/grantor/PermissionsUtil$TipInfo;->content:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 114
    iget-object v1, p0, Lcom/github/dfqin/grantor/PermissionActivity;->tipInfo:Lcom/github/dfqin/grantor/PermissionsUtil$TipInfo;

    iget-object v1, v1, Lcom/github/dfqin/grantor/PermissionsUtil$TipInfo;->cancel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Cancel"

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/github/dfqin/grantor/PermissionActivity;->tipInfo:Lcom/github/dfqin/grantor/PermissionsUtil$TipInfo;

    iget-object v1, v1, Lcom/github/dfqin/grantor/PermissionsUtil$TipInfo;->cancel:Ljava/lang/String;

    :goto_2
    new-instance v2, Lcom/github/dfqin/grantor/PermissionActivity$1;

    invoke-direct {v2, p0}, Lcom/github/dfqin/grantor/PermissionActivity$1;-><init>(Lcom/github/dfqin/grantor/PermissionActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 120
    iget-object v1, p0, Lcom/github/dfqin/grantor/PermissionActivity;->tipInfo:Lcom/github/dfqin/grantor/PermissionsUtil$TipInfo;

    iget-object v1, v1, Lcom/github/dfqin/grantor/PermissionsUtil$TipInfo;->ensure:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Settings"

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/github/dfqin/grantor/PermissionActivity;->tipInfo:Lcom/github/dfqin/grantor/PermissionsUtil$TipInfo;

    iget-object v1, v1, Lcom/github/dfqin/grantor/PermissionsUtil$TipInfo;->ensure:Ljava/lang/String;

    :goto_3
    new-instance v2, Lcom/github/dfqin/grantor/PermissionActivity$2;

    invoke-direct {v2, p0}, Lcom/github/dfqin/grantor/PermissionActivity$2;-><init>(Lcom/github/dfqin/grantor/PermissionActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 126
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 127
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 41
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/github/dfqin/grantor/PermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/github/dfqin/grantor/PermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "permission"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p0, Lcom/github/dfqin/grantor/PermissionActivity;->isRequireCheck:Z

    .line 48
    invoke-virtual {p0}, Lcom/github/dfqin/grantor/PermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/dfqin/grantor/PermissionActivity;->permission:[Ljava/lang/String;

    .line 49
    invoke-virtual {p0}, Lcom/github/dfqin/grantor/PermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/dfqin/grantor/PermissionActivity;->key:Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Lcom/github/dfqin/grantor/PermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "showTip"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/github/dfqin/grantor/PermissionActivity;->showTip:Z

    .line 51
    invoke-virtual {p0}, Lcom/github/dfqin/grantor/PermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "tip"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    if-nez p1, :cond_1

    .line 54
    new-instance p1, Lcom/github/dfqin/grantor/PermissionsUtil$TipInfo;

    const-string v0, "Help"

    const-string v1, "The current application lacks the necessary permissions.\nPlease click on \"Settings\" - \"Permissions\" to turn on the required."

    const-string v2, "Cancel"

    const-string v3, "Settings"

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/github/dfqin/grantor/PermissionsUtil$TipInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/github/dfqin/grantor/PermissionActivity;->tipInfo:Lcom/github/dfqin/grantor/PermissionsUtil$TipInfo;

    goto :goto_0

    .line 56
    :cond_1
    check-cast p1, Lcom/github/dfqin/grantor/PermissionsUtil$TipInfo;

    iput-object p1, p0, Lcom/github/dfqin/grantor/PermissionActivity;->tipInfo:Lcom/github/dfqin/grantor/PermissionsUtil$TipInfo;

    :goto_0
    return-void

    .line 43
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/github/dfqin/grantor/PermissionActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/github/dfqin/grantor/PermissionActivity;->key:Ljava/lang/String;

    invoke-static {v0}, Lcom/github/dfqin/grantor/PermissionsUtil;->fetchListener(Ljava/lang/String;)Lcom/github/dfqin/grantor/PermissionListener;

    .line 149
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const/16 v0, 0x40

    if-ne p1, v0, :cond_0

    .line 94
    invoke-static {p3}, Lcom/github/dfqin/grantor/PermissionsUtil;->isGranted([I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 95
    invoke-static {p0, p2}, Lcom/github/dfqin/grantor/PermissionsUtil;->hasPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/github/dfqin/grantor/PermissionActivity;->permissionsGranted()V

    goto :goto_0

    .line 97
    :cond_0
    iget-boolean p1, p0, Lcom/github/dfqin/grantor/PermissionActivity;->showTip:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    const-string p2, "Permission denied."

    .line 99
    invoke-static {p0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 100
    invoke-direct {p0}, Lcom/github/dfqin/grantor/PermissionActivity;->permissionsDenied()V

    goto :goto_0

    .line 102
    :cond_1
    invoke-direct {p0}, Lcom/github/dfqin/grantor/PermissionActivity;->permissionsDenied()V

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 62
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 63
    iget-boolean v0, p0, Lcom/github/dfqin/grantor/PermissionActivity;->isRequireCheck:Z

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/github/dfqin/grantor/PermissionActivity;->permission:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/github/dfqin/grantor/PermissionsUtil;->hasPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/github/dfqin/grantor/PermissionActivity;->permissionsGranted()V

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/github/dfqin/grantor/PermissionActivity;->permission:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/github/dfqin/grantor/PermissionActivity;->requestPermissions([Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/github/dfqin/grantor/PermissionActivity;->isRequireCheck:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/github/dfqin/grantor/PermissionActivity;->isRequireCheck:Z

    :goto_0
    return-void
.end method
