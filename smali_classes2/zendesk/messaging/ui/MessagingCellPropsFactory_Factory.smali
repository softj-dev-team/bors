.class public final Lzendesk/messaging/ui/MessagingCellPropsFactory_Factory;
.super Ljava/lang/Object;
.source "MessagingCellPropsFactory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/messaging/ui/MessagingCellPropsFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final resourcesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/res/Resources;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lzendesk/messaging/ui/MessagingCellPropsFactory_Factory;->resourcesProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lzendesk/messaging/ui/MessagingCellPropsFactory_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/res/Resources;",
            ">;)",
            "Lzendesk/messaging/ui/MessagingCellPropsFactory_Factory;"
        }
    .end annotation

    .line 31
    new-instance v0, Lzendesk/messaging/ui/MessagingCellPropsFactory_Factory;

    invoke-direct {v0, p0}, Lzendesk/messaging/ui/MessagingCellPropsFactory_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/res/Resources;)Lzendesk/messaging/ui/MessagingCellPropsFactory;
    .locals 1

    .line 35
    new-instance v0, Lzendesk/messaging/ui/MessagingCellPropsFactory;

    invoke-direct {v0, p0}, Lzendesk/messaging/ui/MessagingCellPropsFactory;-><init>(Landroid/content/res/Resources;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lzendesk/messaging/ui/MessagingCellPropsFactory_Factory;->get()Lzendesk/messaging/ui/MessagingCellPropsFactory;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/messaging/ui/MessagingCellPropsFactory;
    .locals 1

    .line 27
    iget-object v0, p0, Lzendesk/messaging/ui/MessagingCellPropsFactory_Factory;->resourcesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    invoke-static {v0}, Lzendesk/messaging/ui/MessagingCellPropsFactory_Factory;->newInstance(Landroid/content/res/Resources;)Lzendesk/messaging/ui/MessagingCellPropsFactory;

    move-result-object v0

    return-object v0
.end method
