.class Lzendesk/support/ContactUsSettings;
.super Ljava/lang/Object;
.source "ContactUsSettings.java"


# static fields
.field private static DEFAULT:Lzendesk/support/ContactUsSettings;


# instance fields
.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lzendesk/support/ContactUsSettings;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lzendesk/support/ContactUsSettings;-><init>(Ljava/util/List;)V

    sput-object v0, Lzendesk/support/ContactUsSettings;->DEFAULT:Lzendesk/support/ContactUsSettings;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lzendesk/support/ContactUsSettings;->tags:Ljava/util/List;

    return-void
.end method

.method static defaultSettings()Lzendesk/support/ContactUsSettings;
    .locals 1

    .line 23
    sget-object v0, Lzendesk/support/ContactUsSettings;->DEFAULT:Lzendesk/support/ContactUsSettings;

    return-object v0
.end method


# virtual methods
.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lzendesk/support/ContactUsSettings;->tags:Ljava/util/List;

    invoke-static {v0}, Lcom/zendesk/util/CollectionUtils;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
