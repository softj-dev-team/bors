.class Lzendesk/support/request/ComponentAttachmentCarousel$AttachmentCarouselSelector;
.super Ljava/lang/Object;
.source "ComponentAttachmentCarousel.java"

# interfaces
.implements Lzendesk/support/suas/StateSelector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/ComponentAttachmentCarousel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AttachmentCarouselSelector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lzendesk/support/suas/StateSelector<",
        "Lzendesk/support/request/ComponentAttachmentCarousel$AttachmentCarouselModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic selectData(Lzendesk/support/suas/State;)Ljava/lang/Object;
    .locals 0

    .line 211
    invoke-virtual {p0, p1}, Lzendesk/support/request/ComponentAttachmentCarousel$AttachmentCarouselSelector;->selectData(Lzendesk/support/suas/State;)Lzendesk/support/request/ComponentAttachmentCarousel$AttachmentCarouselModel;

    move-result-object p1

    return-object p1
.end method

.method public selectData(Lzendesk/support/suas/State;)Lzendesk/support/request/ComponentAttachmentCarousel$AttachmentCarouselModel;
    .locals 10

    .line 216
    invoke-static {p1}, Lzendesk/support/request/StateAttachments;->fromState(Lzendesk/support/suas/State;)Lzendesk/support/request/StateAttachments;

    move-result-object v0

    .line 217
    invoke-static {p1}, Lzendesk/support/request/StateConfig;->fromState(Lzendesk/support/suas/State;)Lzendesk/support/request/StateConfig;

    move-result-object v1

    .line 218
    invoke-static {p1}, Lzendesk/support/request/StateProgress;->fomState(Lzendesk/support/suas/State;)Lzendesk/support/request/StateProgress;

    move-result-object p1

    .line 220
    new-instance v9, Lzendesk/support/request/ComponentAttachmentCarousel$AttachmentCarouselModel;

    .line 221
    invoke-virtual {v0}, Lzendesk/support/request/StateAttachments;->getSelectedAttachments()Ljava/util/List;

    move-result-object v3

    .line 222
    invoke-virtual {v0}, Lzendesk/support/request/StateAttachments;->getAllSelectedAttachments()Ljava/util/Set;

    move-result-object v4

    .line 223
    invoke-virtual {p1}, Lzendesk/support/request/StateProgress;->getRunningRequests()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v5, 0x0

    .line 224
    :goto_0
    invoke-virtual {v1}, Lzendesk/support/request/StateConfig;->getSettings()Lzendesk/support/request/StateSettings;

    move-result-object p1

    invoke-virtual {p1}, Lzendesk/support/request/StateSettings;->isAttachmentsEnabled()Z

    move-result v6

    .line 225
    invoke-virtual {v1}, Lzendesk/support/request/StateConfig;->getSettings()Lzendesk/support/request/StateSettings;

    move-result-object p1

    invoke-virtual {p1}, Lzendesk/support/request/StateSettings;->getMaxAttachmentSize()J

    move-result-wide v7

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lzendesk/support/request/ComponentAttachmentCarousel$AttachmentCarouselModel;-><init>(Ljava/util/Collection;Ljava/util/Collection;ZZJ)V

    return-object v9
.end method
