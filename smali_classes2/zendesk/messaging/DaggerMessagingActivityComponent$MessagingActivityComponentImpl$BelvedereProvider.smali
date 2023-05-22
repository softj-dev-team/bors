.class final Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl$BelvedereProvider;
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
    name = "BelvedereProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lzendesk/belvedere/Belvedere;",
        ">;"
    }
.end annotation


# instance fields
.field private final messagingComponent:Lzendesk/messaging/MessagingComponent;


# direct methods
.method constructor <init>(Lzendesk/messaging/MessagingComponent;)V
    .locals 0

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object p1, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl$BelvedereProvider;->messagingComponent:Lzendesk/messaging/MessagingComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 215
    invoke-virtual {p0}, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl$BelvedereProvider;->get()Lzendesk/belvedere/Belvedere;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/belvedere/Belvedere;
    .locals 1

    .line 224
    iget-object v0, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$MessagingActivityComponentImpl$BelvedereProvider;->messagingComponent:Lzendesk/messaging/MessagingComponent;

    invoke-interface {v0}, Lzendesk/messaging/MessagingComponent;->belvedere()Lzendesk/belvedere/Belvedere;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromComponent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/belvedere/Belvedere;

    return-object v0
.end method
