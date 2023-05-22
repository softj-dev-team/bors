.class public Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder;
.super Ljava/lang/Object;
.source "BelvedereUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/belvedere/BelvedereUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageStreamBuilder"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private extraItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/belvedere/MediaResult;",
            ">;"
        }
    .end annotation
.end field

.field private fullScreenOnly:Z

.field private maxFileSize:J

.field private final mediaIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/belvedere/MediaIntent;",
            ">;"
        }
    .end annotation
.end field

.field private final resolveMedia:Z

.field private selectedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/belvedere/MediaResult;",
            ">;"
        }
    .end annotation
.end field

.field private touchableItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder;->resolveMedia:Z

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder;->mediaIntents:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder;->selectedItems:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder;->extraItems:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder;->touchableItems:Ljava/util/List;

    const-wide/16 v0, -0x1

    .line 78
    iput-wide v0, p0, Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder;->maxFileSize:J

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder;->fullScreenOnly:Z

    .line 82
    iput-object p1, p0, Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder;->context:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lzendesk/belvedere/BelvedereUi$1;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder;)Ljava/util/List;
    .locals 0

    .line 70
    iget-object p0, p0, Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder;->selectedItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder;)Ljava/util/List;
    .locals 0

    .line 70
    iget-object p0, p0, Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder;->extraItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder;)Ljava/util/List;
    .locals 0

    .line 70
    iget-object p0, p0, Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder;->touchableItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder;)J
    .locals 2

    .line 70
    iget-wide v0, p0, Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder;->maxFileSize:J

    return-wide v0
.end method

.method static synthetic access$500(Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder;->fullScreenOnly:Z

    return p0
.end method


# virtual methods
.method public showPopup(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 2

    .line 190
    invoke-static {p1}, Lzendesk/belvedere/BelvedereUi;->install(Landroidx/appcompat/app/AppCompatActivity;)Lzendesk/belvedere/ImageStream;

    move-result-object p1

    .line 192
    iget-object v0, p0, Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder;->mediaIntents:Ljava/util/List;

    new-instance v1, Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder$1;

    invoke-direct {v1, p0, p1}, Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder$1;-><init>(Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder;Lzendesk/belvedere/ImageStream;)V

    invoke-virtual {p1, v0, v1}, Lzendesk/belvedere/ImageStream;->handlePermissions(Ljava/util/List;Lzendesk/belvedere/PermissionManager$PermissionCallback;)V

    return-void
.end method

.method public withCameraIntent()Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder;
    .locals 2

    .line 89
    iget-object v0, p0, Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder;->context:Landroid/content/Context;

    invoke-static {v0}, Lzendesk/belvedere/Belvedere;->from(Landroid/content/Context;)Lzendesk/belvedere/Belvedere;

    move-result-object v0

    invoke-virtual {v0}, Lzendesk/belvedere/Belvedere;->camera()Lzendesk/belvedere/MediaIntent$CameraIntentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lzendesk/belvedere/MediaIntent$CameraIntentBuilder;->build()Lzendesk/belvedere/MediaIntent;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder;->mediaIntents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public withDocumentIntent(Ljava/lang/String;Z)Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder;
    .locals 1

    .line 106
    iget-object v0, p0, Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder;->context:Landroid/content/Context;

    invoke-static {v0}, Lzendesk/belvedere/Belvedere;->from(Landroid/content/Context;)Lzendesk/belvedere/Belvedere;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lzendesk/belvedere/Belvedere;->document()Lzendesk/belvedere/MediaIntent$DocumentIntentBuilder;

    move-result-object v0

    .line 108
    invoke-virtual {v0, p2}, Lzendesk/belvedere/MediaIntent$DocumentIntentBuilder;->allowMultiple(Z)Lzendesk/belvedere/MediaIntent$DocumentIntentBuilder;

    move-result-object p2

    .line 109
    invoke-virtual {p2, p1}, Lzendesk/belvedere/MediaIntent$DocumentIntentBuilder;->contentType(Ljava/lang/String;)Lzendesk/belvedere/MediaIntent$DocumentIntentBuilder;

    move-result-object p1

    .line 110
    invoke-virtual {p1}, Lzendesk/belvedere/MediaIntent$DocumentIntentBuilder;->build()Lzendesk/belvedere/MediaIntent;

    move-result-object p1

    .line 111
    iget-object p2, p0, Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder;->mediaIntents:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public withDocumentIntent(Ljava/util/List;Z)Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder;->context:Landroid/content/Context;

    invoke-static {v0}, Lzendesk/belvedere/Belvedere;->from(Landroid/content/Context;)Lzendesk/belvedere/Belvedere;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lzendesk/belvedere/Belvedere;->document()Lzendesk/belvedere/MediaIntent$DocumentIntentBuilder;

    move-result-object v0

    .line 130
    invoke-virtual {v0, p2}, Lzendesk/belvedere/MediaIntent$DocumentIntentBuilder;->allowMultiple(Z)Lzendesk/belvedere/MediaIntent$DocumentIntentBuilder;

    move-result-object p2

    .line 131
    invoke-virtual {p2, p1}, Lzendesk/belvedere/MediaIntent$DocumentIntentBuilder;->contentTypes(Ljava/util/List;)Lzendesk/belvedere/MediaIntent$DocumentIntentBuilder;

    move-result-object p1

    .line 132
    invoke-virtual {p1}, Lzendesk/belvedere/MediaIntent$DocumentIntentBuilder;->build()Lzendesk/belvedere/MediaIntent;

    move-result-object p1

    .line 133
    iget-object p2, p0, Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder;->mediaIntents:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public withExtraItems(Ljava/util/List;)Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/belvedere/MediaResult;",
            ">;)",
            "Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder;"
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder;->extraItems:Ljava/util/List;

    return-object p0
.end method

.method public withFullScreenOnly(Z)Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder;
    .locals 0

    .line 182
    iput-boolean p1, p0, Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder;->fullScreenOnly:Z

    return-object p0
.end method

.method public withMaxFileSize(J)Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder;
    .locals 0

    .line 171
    iput-wide p1, p0, Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder;->maxFileSize:J

    return-object p0
.end method

.method public withSelectedItems(Ljava/util/List;)Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/belvedere/MediaResult;",
            ">;)",
            "Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder;"
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder;->selectedItems:Ljava/util/List;

    return-object p0
.end method

.method public varargs withTouchableItems([I)Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder;
    .locals 4

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 158
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    .line 159
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    :cond_0
    iput-object v0, p0, Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder;->touchableItems:Ljava/util/List;

    return-object p0
.end method
