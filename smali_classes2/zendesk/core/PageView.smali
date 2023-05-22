.class public Lzendesk/core/PageView;
.super Ljava/lang/Object;
.source "PageView.java"


# instance fields
.field private channel:Ljava/lang/String;

.field private navigatorLanguage:Ljava/lang/String;

.field private pageId:Ljava/lang/Long;

.field private pageLocale:Ljava/lang/String;

.field private pageTitle:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private value:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lzendesk/core/PageView;->version:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lzendesk/core/PageView;->channel:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lzendesk/core/PageView;->url:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lzendesk/core/PageView;->navigatorLanguage:Ljava/lang/String;

    .line 61
    iput-object p5, p0, Lzendesk/core/PageView;->pageTitle:Ljava/lang/String;

    .line 62
    iput-object p6, p0, Lzendesk/core/PageView;->pageId:Ljava/lang/Long;

    .line 63
    iput-object p7, p0, Lzendesk/core/PageView;->pageLocale:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 70
    invoke-direct/range {p0 .. p7}, Lzendesk/core/PageView;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 71
    iput-object p8, p0, Lzendesk/core/PageView;->value:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getChannel()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lzendesk/core/PageView;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public getNavigatorLanguage()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lzendesk/core/PageView;->navigatorLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getPageId()Ljava/lang/Long;
    .locals 1

    .line 95
    iget-object v0, p0, Lzendesk/core/PageView;->pageId:Ljava/lang/Long;

    return-object v0
.end method

.method public getPageLocale()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lzendesk/core/PageView;->pageLocale:Ljava/lang/String;

    return-object v0
.end method

.method public getPageTitle()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lzendesk/core/PageView;->pageTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lzendesk/core/PageView;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lzendesk/core/PageView;->value:Ljava/util/Map;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lzendesk/core/PageView;->version:Ljava/lang/String;

    return-object v0
.end method
