.class public final Lzendesk/messaging/ui/AvatarStateRenderer_Factory;
.super Ljava/lang/Object;
.source "AvatarStateRenderer_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/messaging/ui/AvatarStateRenderer;",
        ">;"
    }
.end annotation


# instance fields
.field private final picassoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/squareup/picasso/Picasso;",
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
            "Lcom/squareup/picasso/Picasso;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lzendesk/messaging/ui/AvatarStateRenderer_Factory;->picassoProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lzendesk/messaging/ui/AvatarStateRenderer_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/squareup/picasso/Picasso;",
            ">;)",
            "Lzendesk/messaging/ui/AvatarStateRenderer_Factory;"
        }
    .end annotation

    .line 31
    new-instance v0, Lzendesk/messaging/ui/AvatarStateRenderer_Factory;

    invoke-direct {v0, p0}, Lzendesk/messaging/ui/AvatarStateRenderer_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/squareup/picasso/Picasso;)Lzendesk/messaging/ui/AvatarStateRenderer;
    .locals 1

    .line 35
    new-instance v0, Lzendesk/messaging/ui/AvatarStateRenderer;

    invoke-direct {v0, p0}, Lzendesk/messaging/ui/AvatarStateRenderer;-><init>(Lcom/squareup/picasso/Picasso;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lzendesk/messaging/ui/AvatarStateRenderer_Factory;->get()Lzendesk/messaging/ui/AvatarStateRenderer;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/messaging/ui/AvatarStateRenderer;
    .locals 1

    .line 27
    iget-object v0, p0, Lzendesk/messaging/ui/AvatarStateRenderer_Factory;->picassoProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/Picasso;

    invoke-static {v0}, Lzendesk/messaging/ui/AvatarStateRenderer_Factory;->newInstance(Lcom/squareup/picasso/Picasso;)Lzendesk/messaging/ui/AvatarStateRenderer;

    move-result-object v0

    return-object v0
.end method
