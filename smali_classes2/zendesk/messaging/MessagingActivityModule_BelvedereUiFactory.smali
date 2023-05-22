.class public final Lzendesk/messaging/MessagingActivityModule_BelvedereUiFactory;
.super Ljava/lang/Object;
.source "MessagingActivityModule_BelvedereUiFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/belvedere/ImageStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final activityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/appcompat/app/AppCompatActivity;",
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
            "Landroidx/appcompat/app/AppCompatActivity;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lzendesk/messaging/MessagingActivityModule_BelvedereUiFactory;->activityProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static belvedereUi(Landroidx/appcompat/app/AppCompatActivity;)Lzendesk/belvedere/ImageStream;
    .locals 0

    .line 38
    invoke-static {p0}, Lzendesk/messaging/MessagingActivityModule;->belvedereUi(Landroidx/appcompat/app/AppCompatActivity;)Lzendesk/belvedere/ImageStream;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/belvedere/ImageStream;

    return-object p0
.end method

.method public static create(Ljavax/inject/Provider;)Lzendesk/messaging/MessagingActivityModule_BelvedereUiFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroidx/appcompat/app/AppCompatActivity;",
            ">;)",
            "Lzendesk/messaging/MessagingActivityModule_BelvedereUiFactory;"
        }
    .end annotation

    .line 34
    new-instance v0, Lzendesk/messaging/MessagingActivityModule_BelvedereUiFactory;

    invoke-direct {v0, p0}, Lzendesk/messaging/MessagingActivityModule_BelvedereUiFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lzendesk/messaging/MessagingActivityModule_BelvedereUiFactory;->get()Lzendesk/belvedere/ImageStream;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/belvedere/ImageStream;
    .locals 1

    .line 29
    iget-object v0, p0, Lzendesk/messaging/MessagingActivityModule_BelvedereUiFactory;->activityProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Lzendesk/messaging/MessagingActivityModule_BelvedereUiFactory;->belvedereUi(Landroidx/appcompat/app/AppCompatActivity;)Lzendesk/belvedere/ImageStream;

    move-result-object v0

    return-object v0
.end method
