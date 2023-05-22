.class public Lzendesk/belvedere/ImageStream;
.super Landroidx/fragment/app/Fragment;
.source "ImageStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/belvedere/ImageStream$SendListener;,
        Lzendesk/belvedere/ImageStream$ScrollListener;,
        Lzendesk/belvedere/ImageStream$Listener;
    }
.end annotation


# instance fields
.field private callback:Lzendesk/belvedere/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzendesk/belvedere/Callback<",
            "Ljava/util/List<",
            "Lzendesk/belvedere/MediaResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private imageStreamListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lzendesk/belvedere/ImageStream$Listener;",
            ">;>;"
        }
    .end annotation
.end field

.field private imageStreamPopup:Lzendesk/belvedere/ImageStreamUi;

.field private imageStreamScrollListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lzendesk/belvedere/ImageStream$ScrollListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private imageStreamSendListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lzendesk/belvedere/ImageStream$SendListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private keyboardHelper:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lzendesk/belvedere/KeyboardHelper;",
            ">;"
        }
    .end annotation
.end field

.field private permissionManager:Lzendesk/belvedere/PermissionManager;

.field private uiConfig:Lzendesk/belvedere/BelvedereUi$UiConfig;

.field private wasOpen:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lzendesk/belvedere/ImageStream;->keyboardHelper:Ljava/lang/ref/WeakReference;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzendesk/belvedere/ImageStream;->imageStreamListener:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzendesk/belvedere/ImageStream;->imageStreamSendListener:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzendesk/belvedere/ImageStream;->imageStreamScrollListener:Ljava/util/List;

    .line 30
    iput-object v1, p0, Lzendesk/belvedere/ImageStream;->imageStreamPopup:Lzendesk/belvedere/ImageStreamUi;

    .line 31
    iput-object v1, p0, Lzendesk/belvedere/ImageStream;->uiConfig:Lzendesk/belvedere/BelvedereUi$UiConfig;

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lzendesk/belvedere/ImageStream;->wasOpen:Z

    return-void
.end method

.method static synthetic access$000(Lzendesk/belvedere/ImageStream;)Lzendesk/belvedere/BelvedereUi$UiConfig;
    .locals 0

    .line 22
    iget-object p0, p0, Lzendesk/belvedere/ImageStream;->uiConfig:Lzendesk/belvedere/BelvedereUi$UiConfig;

    return-object p0
.end method


# virtual methods
.method public addListener(Lzendesk/belvedere/ImageStream$Listener;)V
    .locals 2

    .line 181
    iget-object v0, p0, Lzendesk/belvedere/ImageStream;->imageStreamListener:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addScrollListener(Lzendesk/belvedere/ImageStream$ScrollListener;)V
    .locals 2

    .line 188
    iget-object v0, p0, Lzendesk/belvedere/ImageStream;->imageStreamScrollListener:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSendListener(Lzendesk/belvedere/ImageStream$SendListener;)V
    .locals 2

    .line 195
    iget-object v0, p0, Lzendesk/belvedere/ImageStream;->imageStreamSendListener:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 202
    invoke-virtual {p0}, Lzendesk/belvedere/ImageStream;->isAttachmentsPopupVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lzendesk/belvedere/ImageStream;->imageStreamPopup:Lzendesk/belvedere/ImageStreamUi;

    invoke-virtual {v0}, Lzendesk/belvedere/ImageStreamUi;->dismiss()V

    :cond_0
    return-void
.end method

.method public getKeyboardHelper()Lzendesk/belvedere/KeyboardHelper;
    .locals 1

    .line 173
    iget-object v0, p0, Lzendesk/belvedere/ImageStream;->keyboardHelper:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/belvedere/KeyboardHelper;

    return-object v0
.end method

.method handlePermissions(Ljava/util/List;Lzendesk/belvedere/PermissionManager$PermissionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/belvedere/MediaIntent;",
            ">;",
            "Lzendesk/belvedere/PermissionManager$PermissionCallback;",
            ")V"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lzendesk/belvedere/ImageStream;->permissionManager:Lzendesk/belvedere/PermissionManager;

    invoke-virtual {v0, p0, p1, p2}, Lzendesk/belvedere/PermissionManager;->handlePermissions(Landroidx/fragment/app/Fragment;Ljava/util/List;Lzendesk/belvedere/PermissionManager$PermissionCallback;)V

    return-void
.end method

.method public isAttachmentsPopupVisible()Z
    .locals 1

    .line 220
    iget-object v0, p0, Lzendesk/belvedere/ImageStream;->imageStreamPopup:Lzendesk/belvedere/ImageStreamUi;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method notifyDismissed()V
    .locals 2

    const/4 v0, 0x0

    .line 137
    iput-object v0, p0, Lzendesk/belvedere/ImageStream;->callback:Lzendesk/belvedere/Callback;

    .line 139
    iget-object v0, p0, Lzendesk/belvedere/ImageStream;->imageStreamListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 140
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/belvedere/ImageStream$Listener;

    if-eqz v1, :cond_0

    .line 142
    invoke-interface {v1}, Lzendesk/belvedere/ImageStream$Listener;->onDismissed()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method notifyImageDeselected(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/belvedere/MediaResult;",
            ">;)V"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lzendesk/belvedere/ImageStream;->imageStreamListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 120
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/belvedere/ImageStream$Listener;

    if-eqz v1, :cond_0

    .line 122
    invoke-interface {v1, p1}, Lzendesk/belvedere/ImageStream$Listener;->onMediaDeselected(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method notifyImageSelected(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/belvedere/MediaResult;",
            ">;)V"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lzendesk/belvedere/ImageStream;->imageStreamListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 111
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/belvedere/ImageStream$Listener;

    if-eqz v1, :cond_0

    .line 113
    invoke-interface {v1, p1}, Lzendesk/belvedere/ImageStream$Listener;->onMediaSelected(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method notifyImagesSent(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/belvedere/MediaResult;",
            ">;)V"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lzendesk/belvedere/ImageStream;->imageStreamSendListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 129
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/belvedere/ImageStream$SendListener;

    if-eqz v1, :cond_0

    .line 131
    invoke-interface {v1, p1}, Lzendesk/belvedere/ImageStream$SendListener;->onSend(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method notifyScrollListener(IIF)V
    .locals 2

    .line 101
    iget-object v0, p0, Lzendesk/belvedere/ImageStream;->imageStreamScrollListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 102
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/belvedere/ImageStream$ScrollListener;

    if-eqz v1, :cond_0

    .line 104
    invoke-interface {v1, p1, p2, p3}, Lzendesk/belvedere/ImageStream$ScrollListener;->onScroll(IIF)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method notifyVisible()V
    .locals 2

    .line 148
    iget-object v0, p0, Lzendesk/belvedere/ImageStream;->imageStreamListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 149
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/belvedere/ImageStream$Listener;

    if-eqz v1, :cond_0

    .line 151
    invoke-interface {v1}, Lzendesk/belvedere/ImageStream$Listener;->onVisible()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .line 66
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 68
    new-instance v0, Lzendesk/belvedere/ImageStream$1;

    invoke-direct {v0, p0}, Lzendesk/belvedere/ImageStream$1;-><init>(Lzendesk/belvedere/ImageStream;)V

    iput-object v0, p0, Lzendesk/belvedere/ImageStream;->callback:Lzendesk/belvedere/Callback;

    .line 86
    invoke-virtual {p0}, Lzendesk/belvedere/ImageStream;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lzendesk/belvedere/Belvedere;->from(Landroid/content/Context;)Lzendesk/belvedere/Belvedere;

    move-result-object v1

    iget-object v5, p0, Lzendesk/belvedere/ImageStream;->callback:Lzendesk/belvedere/Callback;

    const/4 v6, 0x0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lzendesk/belvedere/Belvedere;->getFilesFromActivityOnResult(IILandroid/content/Intent;Lzendesk/belvedere/Callback;Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 41
    invoke-virtual {p0, p1}, Lzendesk/belvedere/ImageStream;->setRetainInstance(Z)V

    .line 42
    new-instance p1, Lzendesk/belvedere/PermissionManager;

    invoke-direct {p1}, Lzendesk/belvedere/PermissionManager;-><init>()V

    iput-object p1, p0, Lzendesk/belvedere/ImageStream;->permissionManager:Lzendesk/belvedere/PermissionManager;

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 47
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 48
    iget-object v0, p0, Lzendesk/belvedere/ImageStream;->imageStreamPopup:Lzendesk/belvedere/ImageStreamUi;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Lzendesk/belvedere/ImageStreamUi;->dismiss()V

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lzendesk/belvedere/ImageStream;->wasOpen:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lzendesk/belvedere/ImageStream;->wasOpen:Z

    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 58
    iget-object v0, p0, Lzendesk/belvedere/ImageStream;->permissionManager:Lzendesk/belvedere/PermissionManager;

    invoke-virtual {v0, p1, p2, p3}, Lzendesk/belvedere/PermissionManager;->onRequestPermissionsResult(I[Ljava/lang/String;[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method requestPermissions(Ljava/util/List;Lzendesk/belvedere/PermissionManager$InternalPermissionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lzendesk/belvedere/PermissionManager$InternalPermissionCallback;",
            ")V"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lzendesk/belvedere/ImageStream;->permissionManager:Lzendesk/belvedere/PermissionManager;

    invoke-virtual {v0, p0, p1, p2}, Lzendesk/belvedere/PermissionManager;->askForPermissions(Landroidx/fragment/app/Fragment;Ljava/util/List;Lzendesk/belvedere/PermissionManager$InternalPermissionCallback;)V

    return-void
.end method

.method setImageStreamUi(Lzendesk/belvedere/ImageStreamUi;Lzendesk/belvedere/BelvedereUi$UiConfig;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lzendesk/belvedere/ImageStream;->imageStreamPopup:Lzendesk/belvedere/ImageStreamUi;

    if-eqz p2, :cond_0

    .line 96
    iput-object p2, p0, Lzendesk/belvedere/ImageStream;->uiConfig:Lzendesk/belvedere/BelvedereUi$UiConfig;

    :cond_0
    return-void
.end method

.method setKeyboardHelper(Lzendesk/belvedere/KeyboardHelper;)V
    .locals 1

    .line 90
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lzendesk/belvedere/ImageStream;->keyboardHelper:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public wasOpen()Z
    .locals 1

    .line 213
    iget-boolean v0, p0, Lzendesk/belvedere/ImageStream;->wasOpen:Z

    return v0
.end method
