.class Lzendesk/core/BlipsRequest$ApiPageView;
.super Ljava/lang/Object;
.source "BlipsRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/core/BlipsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ApiPageView"
.end annotation


# instance fields
.field private navigatorLanguage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "navigatorLanguage"
    .end annotation
.end field

.field private pageId:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pageId"
    .end annotation
.end field

.field private pageLocale:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pageLocale"
    .end annotation
.end field

.field private pageTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pageTitle"
    .end annotation
.end field

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


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p1, p0, Lzendesk/core/BlipsRequest$ApiPageView;->navigatorLanguage:Ljava/lang/String;

    .line 156
    iput-object p2, p0, Lzendesk/core/BlipsRequest$ApiPageView;->pageTitle:Ljava/lang/String;

    .line 157
    iput-object p5, p0, Lzendesk/core/BlipsRequest$ApiPageView;->value:Ljava/util/Map;

    .line 158
    iput-object p3, p0, Lzendesk/core/BlipsRequest$ApiPageView;->pageId:Ljava/lang/Long;

    .line 159
    iput-object p4, p0, Lzendesk/core/BlipsRequest$ApiPageView;->pageLocale:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getNavigatorLanguage()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lzendesk/core/BlipsRequest$ApiPageView;->navigatorLanguage:Ljava/lang/String;

    return-object v0
.end method

.method getPageId()Ljava/lang/Long;
    .locals 1

    .line 179
    iget-object v0, p0, Lzendesk/core/BlipsRequest$ApiPageView;->pageId:Ljava/lang/Long;

    return-object v0
.end method

.method getPageLocale()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lzendesk/core/BlipsRequest$ApiPageView;->pageLocale:Ljava/lang/String;

    return-object v0
.end method

.method getPageTitle()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lzendesk/core/BlipsRequest$ApiPageView;->pageTitle:Ljava/lang/String;

    return-object v0
.end method

.method getValue()Ljava/util/Map;
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

    .line 174
    iget-object v0, p0, Lzendesk/core/BlipsRequest$ApiPageView;->value:Ljava/util/Map;

    return-object v0
.end method
