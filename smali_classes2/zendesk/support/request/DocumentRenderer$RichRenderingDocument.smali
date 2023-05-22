.class Lzendesk/support/request/DocumentRenderer$RichRenderingDocument;
.super Ljava/lang/Object;
.source "DocumentRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/DocumentRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RichRenderingDocument"
.end annotation


# instance fields
.field private final fallbackText:Ljava/lang/String;

.field private final tree:Lzendesk/support/request/DocumentRenderer$Node;


# direct methods
.method constructor <init>(Lzendesk/support/request/DocumentRenderer$Node;Ljava/lang/String;)V
    .locals 0

    .line 680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 681
    iput-object p1, p0, Lzendesk/support/request/DocumentRenderer$RichRenderingDocument;->tree:Lzendesk/support/request/DocumentRenderer$Node;

    .line 682
    iput-object p2, p0, Lzendesk/support/request/DocumentRenderer$RichRenderingDocument;->fallbackText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getFallbackText()Ljava/lang/String;
    .locals 1

    .line 694
    iget-object v0, p0, Lzendesk/support/request/DocumentRenderer$RichRenderingDocument;->fallbackText:Ljava/lang/String;

    return-object v0
.end method

.method getNodeTree()Lzendesk/support/request/DocumentRenderer$Node;
    .locals 1

    .line 690
    iget-object v0, p0, Lzendesk/support/request/DocumentRenderer$RichRenderingDocument;->tree:Lzendesk/support/request/DocumentRenderer$Node;

    return-object v0
.end method

.method isValid()Z
    .locals 1

    .line 686
    iget-object v0, p0, Lzendesk/support/request/DocumentRenderer$RichRenderingDocument;->tree:Lzendesk/support/request/DocumentRenderer$Node;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lzendesk/support/request/DocumentRenderer$Node;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
