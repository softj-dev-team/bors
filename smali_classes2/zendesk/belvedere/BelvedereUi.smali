.class public Lzendesk/belvedere/BelvedereUi;
.super Ljava/lang/Object;
.source "BelvedereUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/belvedere/BelvedereUi$UiConfig;,
        Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder;
    }
.end annotation


# static fields
.field private static final EXTRA_MEDIA_INTENT:Ljava/lang/String; = "extra_intent"

.field public static final FIVE_SECONDS_DELAY:Ljava/lang/Long;

.field private static final FRAGMENT_TAG:Ljava/lang/String; = "BelvedereDialog"

.field private static final FRAGMENT_TAG_POPUP:Ljava/lang/String; = "belvedere_image_stream"

.field public static final INTENT_URI_SCHEMA:Ljava/lang/String; = "package"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1388

    .line 36
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lzendesk/belvedere/BelvedereUi;->FIVE_SECONDS_DELAY:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBundle(Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/util/List;)Landroid/os/Bundle;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/belvedere/MediaIntent;",
            ">;",
            "Ljava/util/List<",
            "Lzendesk/belvedere/MediaResult;",
            ">;",
            "Ljava/util/List<",
            "Lzendesk/belvedere/MediaResult;",
            ">;Z",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 272
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 273
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 274
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    .line 277
    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz p1, :cond_1

    .line 281
    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-eqz p2, :cond_2

    .line 285
    invoke-interface {v3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 288
    :cond_2
    new-instance p0, Lzendesk/belvedere/BelvedereUi$UiConfig;

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    move-object v0, p0

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v8}, Lzendesk/belvedere/BelvedereUi$UiConfig;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/util/List;JZ)V

    .line 289
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "extra_intent"

    .line 290
    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p1
.end method

.method static getUiConfig(Landroid/os/Bundle;)Lzendesk/belvedere/BelvedereUi$UiConfig;
    .locals 1

    const-string v0, "extra_intent"

    .line 296
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lzendesk/belvedere/BelvedereUi$UiConfig;

    if-nez p0, :cond_0

    .line 299
    new-instance p0, Lzendesk/belvedere/BelvedereUi$UiConfig;

    invoke-direct {p0}, Lzendesk/belvedere/BelvedereUi$UiConfig;-><init>()V

    :cond_0
    return-object p0
.end method

.method public static imageStream(Landroid/content/Context;)Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder;
    .locals 2

    .line 42
    new-instance v0, Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder;-><init>(Landroid/content/Context;Lzendesk/belvedere/BelvedereUi$1;)V

    return-object v0
.end method

.method public static install(Landroidx/appcompat/app/AppCompatActivity;)Lzendesk/belvedere/ImageStream;
    .locals 4

    .line 52
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "belvedere_image_stream"

    .line 53
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 56
    instance-of v3, v2, Lzendesk/belvedere/ImageStream;

    if-eqz v3, :cond_0

    .line 57
    check-cast v2, Lzendesk/belvedere/ImageStream;

    goto :goto_0

    .line 59
    :cond_0
    new-instance v2, Lzendesk/belvedere/ImageStream;

    invoke-direct {v2}, Lzendesk/belvedere/ImageStream;-><init>()V

    .line 61
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 62
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    .line 66
    :goto_0
    invoke-static {p0}, Lzendesk/belvedere/KeyboardHelper;->inject(Landroid/app/Activity;)Lzendesk/belvedere/KeyboardHelper;

    move-result-object p0

    invoke-virtual {v2, p0}, Lzendesk/belvedere/ImageStream;->setKeyboardHelper(Lzendesk/belvedere/KeyboardHelper;)V

    return-object v2
.end method

.method public static showDialog(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/util/List<",
            "Lzendesk/belvedere/MediaIntent;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 244
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 248
    :cond_0
    new-instance v0, Lzendesk/belvedere/BelvedereDialog;

    invoke-direct {v0}, Lzendesk/belvedere/BelvedereDialog;-><init>()V

    .line 249
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p1, v1, v3, v4, v5}, Lzendesk/belvedere/BelvedereUi;->getBundle(Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/util/List;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lzendesk/belvedere/BelvedereDialog;->setArguments(Landroid/os/Bundle;)V

    const-string p1, "BelvedereDialog"

    .line 251
    invoke-virtual {v0, p0, p1}, Lzendesk/belvedere/BelvedereDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static varargs showDialog(Landroidx/fragment/app/FragmentManager;[Lzendesk/belvedere/MediaIntent;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 261
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 265
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lzendesk/belvedere/BelvedereUi;->showDialog(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method
