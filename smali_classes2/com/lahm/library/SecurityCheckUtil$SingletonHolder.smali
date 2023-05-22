.class Lcom/lahm/library/SecurityCheckUtil$SingletonHolder;
.super Ljava/lang/Object;
.source "SecurityCheckUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lahm/library/SecurityCheckUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final singleInstance:Lcom/lahm/library/SecurityCheckUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/lahm/library/SecurityCheckUtil;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lahm/library/SecurityCheckUtil;-><init>(Lcom/lahm/library/SecurityCheckUtil$1;)V

    sput-object v0, Lcom/lahm/library/SecurityCheckUtil$SingletonHolder;->singleInstance:Lcom/lahm/library/SecurityCheckUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/lahm/library/SecurityCheckUtil;
    .locals 1

    .line 38
    sget-object v0, Lcom/lahm/library/SecurityCheckUtil$SingletonHolder;->singleInstance:Lcom/lahm/library/SecurityCheckUtil;

    return-object v0
.end method
