.class Lcom/lahm/library/EmulatorCheckUtil$SingletonHolder;
.super Ljava/lang/Object;
.source "EmulatorCheckUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lahm/library/EmulatorCheckUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/lahm/library/EmulatorCheckUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/lahm/library/EmulatorCheckUtil;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lahm/library/EmulatorCheckUtil;-><init>(Lcom/lahm/library/EmulatorCheckUtil$1;)V

    sput-object v0, Lcom/lahm/library/EmulatorCheckUtil$SingletonHolder;->INSTANCE:Lcom/lahm/library/EmulatorCheckUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/lahm/library/EmulatorCheckUtil;
    .locals 1

    .line 24
    sget-object v0, Lcom/lahm/library/EmulatorCheckUtil$SingletonHolder;->INSTANCE:Lcom/lahm/library/EmulatorCheckUtil;

    return-object v0
.end method
