.class public final Lzendesk/messaging/MessagingModule_BelvedereFactory;
.super Ljava/lang/Object;
.source "MessagingModule_BelvedereFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/belvedere/Belvedere;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
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
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lzendesk/messaging/MessagingModule_BelvedereFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static belvedere(Landroid/content/Context;)Lzendesk/belvedere/Belvedere;
    .locals 0

    .line 37
    invoke-static {p0}, Lzendesk/messaging/MessagingModule;->belvedere(Landroid/content/Context;)Lzendesk/belvedere/Belvedere;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/belvedere/Belvedere;

    return-object p0
.end method

.method public static create(Ljavax/inject/Provider;)Lzendesk/messaging/MessagingModule_BelvedereFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lzendesk/messaging/MessagingModule_BelvedereFactory;"
        }
    .end annotation

    .line 33
    new-instance v0, Lzendesk/messaging/MessagingModule_BelvedereFactory;

    invoke-direct {v0, p0}, Lzendesk/messaging/MessagingModule_BelvedereFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lzendesk/messaging/MessagingModule_BelvedereFactory;->get()Lzendesk/belvedere/Belvedere;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/belvedere/Belvedere;
    .locals 1

    .line 29
    iget-object v0, p0, Lzendesk/messaging/MessagingModule_BelvedereFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lzendesk/messaging/MessagingModule_BelvedereFactory;->belvedere(Landroid/content/Context;)Lzendesk/belvedere/Belvedere;

    move-result-object v0

    return-object v0
.end method
