.class public final Lzendesk/messaging/MessagingDialog_Factory;
.super Ljava/lang/Object;
.source "MessagingDialog_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/messaging/MessagingDialog;",
        ">;"
    }
.end annotation


# instance fields
.field private final appCompatActivityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/appcompat/app/AppCompatActivity;",
            ">;"
        }
    .end annotation
.end field

.field private final dateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/DateProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final messagingViewModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/MessagingViewModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroidx/appcompat/app/AppCompatActivity;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/MessagingViewModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/DateProvider;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lzendesk/messaging/MessagingDialog_Factory;->appCompatActivityProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p2, p0, Lzendesk/messaging/MessagingDialog_Factory;->messagingViewModelProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p3, p0, Lzendesk/messaging/MessagingDialog_Factory;->dateProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/messaging/MessagingDialog_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroidx/appcompat/app/AppCompatActivity;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/MessagingViewModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/DateProvider;",
            ">;)",
            "Lzendesk/messaging/MessagingDialog_Factory;"
        }
    .end annotation

    .line 43
    new-instance v0, Lzendesk/messaging/MessagingDialog_Factory;

    invoke-direct {v0, p0, p1, p2}, Lzendesk/messaging/MessagingDialog_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroidx/appcompat/app/AppCompatActivity;Lzendesk/messaging/MessagingViewModel;Lzendesk/messaging/components/DateProvider;)Lzendesk/messaging/MessagingDialog;
    .locals 1

    .line 48
    new-instance v0, Lzendesk/messaging/MessagingDialog;

    invoke-direct {v0, p0, p1, p2}, Lzendesk/messaging/MessagingDialog;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lzendesk/messaging/MessagingViewModel;Lzendesk/messaging/components/DateProvider;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lzendesk/messaging/MessagingDialog_Factory;->get()Lzendesk/messaging/MessagingDialog;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/messaging/MessagingDialog;
    .locals 3

    .line 36
    iget-object v0, p0, Lzendesk/messaging/MessagingDialog_Factory;->appCompatActivityProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    iget-object v1, p0, Lzendesk/messaging/MessagingDialog_Factory;->messagingViewModelProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/messaging/MessagingViewModel;

    iget-object v2, p0, Lzendesk/messaging/MessagingDialog_Factory;->dateProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzendesk/messaging/components/DateProvider;

    invoke-static {v0, v1, v2}, Lzendesk/messaging/MessagingDialog_Factory;->newInstance(Landroidx/appcompat/app/AppCompatActivity;Lzendesk/messaging/MessagingViewModel;Lzendesk/messaging/components/DateProvider;)Lzendesk/messaging/MessagingDialog;

    move-result-object v0

    return-object v0
.end method
