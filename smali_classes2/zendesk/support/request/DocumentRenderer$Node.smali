.class Lzendesk/support/request/DocumentRenderer$Node;
.super Ljava/lang/Object;
.source "DocumentRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/DocumentRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/request/DocumentRenderer$Node$Type;
    }
.end annotation


# instance fields
.field private final attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/support/request/DocumentRenderer$Node;",
            ">;"
        }
    .end annotation
.end field

.field private final parent:Lzendesk/support/request/DocumentRenderer$Node;

.field private final text:Ljava/lang/String;

.field private final type:Lzendesk/support/request/DocumentRenderer$Node$Type;


# direct methods
.method private constructor <init>(Lzendesk/support/request/DocumentRenderer$Node$Type;Ljava/lang/String;Ljava/util/List;Lzendesk/support/request/DocumentRenderer$Node;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/request/DocumentRenderer$Node$Type;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lzendesk/support/request/DocumentRenderer$Node;",
            ">;",
            "Lzendesk/support/request/DocumentRenderer$Node;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    iput-object p1, p0, Lzendesk/support/request/DocumentRenderer$Node;->type:Lzendesk/support/request/DocumentRenderer$Node$Type;

    .line 452
    iput-object p2, p0, Lzendesk/support/request/DocumentRenderer$Node;->text:Ljava/lang/String;

    .line 453
    iput-object p3, p0, Lzendesk/support/request/DocumentRenderer$Node;->children:Ljava/util/List;

    .line 454
    iput-object p4, p0, Lzendesk/support/request/DocumentRenderer$Node;->parent:Lzendesk/support/request/DocumentRenderer$Node;

    .line 455
    iput-object p5, p0, Lzendesk/support/request/DocumentRenderer$Node;->attributes:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lzendesk/support/request/DocumentRenderer$Node;)Ljava/util/List;
    .locals 0

    .line 433
    iget-object p0, p0, Lzendesk/support/request/DocumentRenderer$Node;->children:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lzendesk/support/request/DocumentRenderer$Node;)Ljava/util/Map;
    .locals 0

    .line 433
    iget-object p0, p0, Lzendesk/support/request/DocumentRenderer$Node;->attributes:Ljava/util/Map;

    return-object p0
.end method

.method static withContent(Lzendesk/support/request/DocumentRenderer$Node;Ljava/lang/String;Ljava/util/Map;)Lzendesk/support/request/DocumentRenderer$Node;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/request/DocumentRenderer$Node;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lzendesk/support/request/DocumentRenderer$Node;"
        }
    .end annotation

    .line 440
    new-instance v6, Lzendesk/support/request/DocumentRenderer$Node;

    sget-object v1, Lzendesk/support/request/DocumentRenderer$Node$Type;->Text:Lzendesk/support/request/DocumentRenderer$Node$Type;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v6

    move-object v2, p1

    move-object v4, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lzendesk/support/request/DocumentRenderer$Node;-><init>(Lzendesk/support/request/DocumentRenderer$Node$Type;Ljava/lang/String;Ljava/util/List;Lzendesk/support/request/DocumentRenderer$Node;Ljava/util/Map;)V

    return-object v6
.end method

.method static withTag(Ljava/lang/String;Lzendesk/support/request/DocumentRenderer$Node;Ljava/util/Map;)Lzendesk/support/request/DocumentRenderer$Node;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lzendesk/support/request/DocumentRenderer$Node;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lzendesk/support/request/DocumentRenderer$Node;"
        }
    .end annotation

    .line 436
    new-instance v6, Lzendesk/support/request/DocumentRenderer$Node;

    invoke-static {p0}, Lzendesk/support/request/DocumentRenderer$Node$Type;->forTag(Ljava/lang/String;)Lzendesk/support/request/DocumentRenderer$Node$Type;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move-object v0, v6

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lzendesk/support/request/DocumentRenderer$Node;-><init>(Lzendesk/support/request/DocumentRenderer$Node$Type;Ljava/lang/String;Ljava/util/List;Lzendesk/support/request/DocumentRenderer$Node;Ljava/util/Map;)V

    return-object v6
.end method


# virtual methods
.method addChild(Lzendesk/support/request/DocumentRenderer$Node;)V
    .locals 1

    .line 459
    iget-object v0, p0, Lzendesk/support/request/DocumentRenderer$Node;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 479
    iget-object v0, p0, Lzendesk/support/request/DocumentRenderer$Node;->attributes:Ljava/util/Map;

    return-object v0
.end method

.method getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzendesk/support/request/DocumentRenderer$Node;",
            ">;"
        }
    .end annotation

    .line 471
    iget-object v0, p0, Lzendesk/support/request/DocumentRenderer$Node;->children:Ljava/util/List;

    return-object v0
.end method

.method public getParent()Lzendesk/support/request/DocumentRenderer$Node;
    .locals 1

    .line 475
    iget-object v0, p0, Lzendesk/support/request/DocumentRenderer$Node;->parent:Lzendesk/support/request/DocumentRenderer$Node;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 467
    iget-object v0, p0, Lzendesk/support/request/DocumentRenderer$Node;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lzendesk/support/request/DocumentRenderer$Node$Type;
    .locals 1

    .line 463
    iget-object v0, p0, Lzendesk/support/request/DocumentRenderer$Node;->type:Lzendesk/support/request/DocumentRenderer$Node$Type;

    return-object v0
.end method
