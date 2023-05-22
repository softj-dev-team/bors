.class final Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl$ResourcesProvider;
.super Ljava/lang/Object;
.source "DaggerMessagingActivityComponent.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResourcesProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Landroid/content/res/Resources;",
        ">;"
    }
.end annotation


# instance fields
.field private final messagingComponent:Lzendesk/messaging/MessagingComponent;


# direct methods
.method constructor <init>(Lzendesk/messaging/MessagingComponent;)V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p1, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl$ResourcesProvider;->messagingComponent:Lzendesk/messaging/MessagingComponent;

    return-void
.end method


# virtual methods
.method public get()Landroid/content/res/Resources;
    .locals 1

    .line 172
    iget-object v0, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl$ResourcesProvider;->messagingComponent:Lzendesk/messaging/MessagingComponent;

    invoke-interface {v0}, Lzendesk/messaging/MessagingComponent;->resources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromComponent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 163
    invoke-virtual {p0}, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl$ResourcesProvider;->get()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method
