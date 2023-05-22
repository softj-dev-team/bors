.class Lzendesk/belvedere/ImageStreamItems;
.super Ljava/lang/Object;
.source "ImageStreamItems.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/belvedere/ImageStreamItems$StaticItem;,
        Lzendesk/belvedere/ImageStreamItems$StreamItemImage;,
        Lzendesk/belvedere/ImageStreamItems$StreamItemFile;,
        Lzendesk/belvedere/ImageStreamItems$Item;
    }
.end annotation


# static fields
.field private static final LAYOUT_GRID:I

.field private static final PIC_CAMERA:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    sget v0, Lzendesk/belvedere/ui/R$drawable;->belvedere_ic_camera_black:I

    sput v0, Lzendesk/belvedere/ImageStreamItems;->PIC_CAMERA:I

    .line 22
    sget v0, Lzendesk/belvedere/ui/R$layout;->belvedere_stream_list_item_square_static:I

    sput v0, Lzendesk/belvedere/ImageStreamItems;->LAYOUT_GRID:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static forCameraSquare(Lzendesk/belvedere/ImageStreamAdapter$Listener;)Lzendesk/belvedere/ImageStreamItems$StaticItem;
    .locals 4

    .line 40
    new-instance v0, Lzendesk/belvedere/ImageStreamItems$StaticItem;

    sget v1, Lzendesk/belvedere/ImageStreamItems;->LAYOUT_GRID:I

    sget v2, Lzendesk/belvedere/ImageStreamItems;->PIC_CAMERA:I

    new-instance v3, Lzendesk/belvedere/ImageStreamItems$1;

    invoke-direct {v3, p0}, Lzendesk/belvedere/ImageStreamItems$1;-><init>(Lzendesk/belvedere/ImageStreamAdapter$Listener;)V

    const/4 p0, 0x0

    invoke-direct {v0, v1, v2, v3, p0}, Lzendesk/belvedere/ImageStreamItems$StaticItem;-><init>(IILandroid/view/View$OnClickListener;Lzendesk/belvedere/ImageStreamItems$1;)V

    return-object v0
.end method

.method static fromMediaResults(Ljava/util/List;Lzendesk/belvedere/ImageStreamAdapter$Listener;Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/belvedere/MediaResult;",
            ">;",
            "Lzendesk/belvedere/ImageStreamAdapter$Listener;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lzendesk/belvedere/ImageStreamItems$Item;",
            ">;"
        }
    .end annotation

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/belvedere/MediaResult;

    .line 29
    invoke-virtual {v1}, Lzendesk/belvedere/MediaResult;->getMimeType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lzendesk/belvedere/MediaResult;->getMimeType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "image"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    new-instance v2, Lzendesk/belvedere/ImageStreamItems$StreamItemImage;

    invoke-direct {v2, p1, v1}, Lzendesk/belvedere/ImageStreamItems$StreamItemImage;-><init>(Lzendesk/belvedere/ImageStreamAdapter$Listener;Lzendesk/belvedere/MediaResult;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 32
    :cond_0
    new-instance v2, Lzendesk/belvedere/ImageStreamItems$StreamItemFile;

    invoke-direct {v2, p1, v1, p2}, Lzendesk/belvedere/ImageStreamItems$StreamItemFile;-><init>(Lzendesk/belvedere/ImageStreamAdapter$Listener;Lzendesk/belvedere/MediaResult;Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
