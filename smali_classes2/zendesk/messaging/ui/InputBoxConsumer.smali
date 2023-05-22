.class public Lzendesk/messaging/ui/InputBoxConsumer;
.super Ljava/lang/Object;
.source "InputBoxConsumer.java"

# interfaces
.implements Lzendesk/messaging/ui/InputBox$InputTextConsumer;


# annotations
.annotation runtime Lzendesk/messaging/MessagingActivityScope;
.end annotation


# instance fields
.field private final belvedere:Lzendesk/belvedere/Belvedere;

.field private final belvedereMediaHolder:Lzendesk/messaging/BelvedereMediaHolder;

.field private final belvedereMediaResolverCallback:Lzendesk/messaging/BelvedereMediaResolverCallback;

.field private final eventFactory:Lzendesk/messaging/EventFactory;

.field private final eventListener:Lzendesk/messaging/EventListener;

.field private final imageStream:Lzendesk/belvedere/ImageStream;


# direct methods
.method public constructor <init>(Lzendesk/messaging/EventListener;Lzendesk/messaging/EventFactory;Lzendesk/belvedere/ImageStream;Lzendesk/belvedere/Belvedere;Lzendesk/messaging/BelvedereMediaHolder;Lzendesk/messaging/BelvedereMediaResolverCallback;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lzendesk/messaging/ui/InputBoxConsumer;->eventListener:Lzendesk/messaging/EventListener;

    .line 57
    iput-object p2, p0, Lzendesk/messaging/ui/InputBoxConsumer;->eventFactory:Lzendesk/messaging/EventFactory;

    .line 58
    iput-object p3, p0, Lzendesk/messaging/ui/InputBoxConsumer;->imageStream:Lzendesk/belvedere/ImageStream;

    .line 59
    iput-object p4, p0, Lzendesk/messaging/ui/InputBoxConsumer;->belvedere:Lzendesk/belvedere/Belvedere;

    .line 60
    iput-object p5, p0, Lzendesk/messaging/ui/InputBoxConsumer;->belvedereMediaHolder:Lzendesk/messaging/BelvedereMediaHolder;

    .line 61
    iput-object p6, p0, Lzendesk/messaging/ui/InputBoxConsumer;->belvedereMediaResolverCallback:Lzendesk/messaging/BelvedereMediaResolverCallback;

    return-void
.end method


# virtual methods
.method public onConsumeText(Ljava/lang/String;)Z
    .locals 3

    .line 66
    invoke-static {p1}, Lcom/zendesk/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lzendesk/messaging/ui/InputBoxConsumer;->eventListener:Lzendesk/messaging/EventListener;

    iget-object v1, p0, Lzendesk/messaging/ui/InputBoxConsumer;->eventFactory:Lzendesk/messaging/EventFactory;

    invoke-virtual {v1, p1}, Lzendesk/messaging/EventFactory;->textInput(Ljava/lang/String;)Lzendesk/messaging/Event;

    move-result-object p1

    invoke-interface {v0, p1}, Lzendesk/messaging/EventListener;->onEvent(Lzendesk/messaging/Event;)V

    .line 70
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    iget-object v0, p0, Lzendesk/messaging/ui/InputBoxConsumer;->belvedereMediaHolder:Lzendesk/messaging/BelvedereMediaHolder;

    invoke-virtual {v0}, Lzendesk/messaging/BelvedereMediaHolder;->getSelectedMedia()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/belvedere/MediaResult;

    .line 72
    invoke-virtual {v1}, Lzendesk/belvedere/MediaResult;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 75
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 76
    iget-object v0, p0, Lzendesk/messaging/ui/InputBoxConsumer;->belvedere:Lzendesk/belvedere/Belvedere;

    iget-object v1, p0, Lzendesk/messaging/ui/InputBoxConsumer;->belvedereMediaResolverCallback:Lzendesk/messaging/BelvedereMediaResolverCallback;

    const-string v2, "zendesk/messaging"

    invoke-virtual {v0, p1, v2, v1}, Lzendesk/belvedere/Belvedere;->resolveUris(Ljava/util/List;Ljava/lang/String;Lzendesk/belvedere/Callback;)V

    .line 80
    iget-object p1, p0, Lzendesk/messaging/ui/InputBoxConsumer;->belvedereMediaHolder:Lzendesk/messaging/BelvedereMediaHolder;

    invoke-virtual {p1}, Lzendesk/messaging/BelvedereMediaHolder;->clear()V

    .line 83
    :cond_2
    iget-object p1, p0, Lzendesk/messaging/ui/InputBoxConsumer;->imageStream:Lzendesk/belvedere/ImageStream;

    invoke-virtual {p1}, Lzendesk/belvedere/ImageStream;->isAttachmentsPopupVisible()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 84
    iget-object p1, p0, Lzendesk/messaging/ui/InputBoxConsumer;->imageStream:Lzendesk/belvedere/ImageStream;

    invoke-virtual {p1}, Lzendesk/belvedere/ImageStream;->dismiss()V

    :cond_3
    const/4 p1, 0x1

    return p1
.end method
