.class public Lcom/coloros/ocs/base/internal/ClientSettings;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/ocs/base/common/Feature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/coloros/ocs/base/common/Feature;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/coloros/ocs/base/internal/ClientSettings;->a:Ljava/lang/String;

    .line 23
    iput p2, p0, Lcom/coloros/ocs/base/internal/ClientSettings;->b:I

    .line 24
    iput-object p3, p0, Lcom/coloros/ocs/base/internal/ClientSettings;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coloros/ocs/base/common/Feature;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/coloros/ocs/base/internal/ClientSettings;->c:Ljava/util/List;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/coloros/ocs/base/internal/ClientSettings;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/coloros/ocs/base/internal/ClientSettings;->b:I

    return v0
.end method
