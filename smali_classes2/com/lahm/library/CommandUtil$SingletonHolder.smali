.class Lcom/lahm/library/CommandUtil$SingletonHolder;
.super Ljava/lang/Object;
.source "CommandUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lahm/library/CommandUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/lahm/library/CommandUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lcom/lahm/library/CommandUtil;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lahm/library/CommandUtil;-><init>(Lcom/lahm/library/CommandUtil$1;)V

    sput-object v0, Lcom/lahm/library/CommandUtil$SingletonHolder;->INSTANCE:Lcom/lahm/library/CommandUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/lahm/library/CommandUtil;
    .locals 1

    .line 16
    sget-object v0, Lcom/lahm/library/CommandUtil$SingletonHolder;->INSTANCE:Lcom/lahm/library/CommandUtil;

    return-object v0
.end method
