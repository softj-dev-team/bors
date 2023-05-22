.class Lcom/lahm/library/AccessibilityServicesCheckUtil$SingletonHolder;
.super Ljava/lang/Object;
.source "AccessibilityServicesCheckUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lahm/library/AccessibilityServicesCheckUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static INSTANCE:Lcom/lahm/library/AccessibilityServicesCheckUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Lcom/lahm/library/AccessibilityServicesCheckUtil;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lahm/library/AccessibilityServicesCheckUtil;-><init>(Lcom/lahm/library/AccessibilityServicesCheckUtil$1;)V

    sput-object v0, Lcom/lahm/library/AccessibilityServicesCheckUtil$SingletonHolder;->INSTANCE:Lcom/lahm/library/AccessibilityServicesCheckUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/lahm/library/AccessibilityServicesCheckUtil;
    .locals 1

    .line 17
    sget-object v0, Lcom/lahm/library/AccessibilityServicesCheckUtil$SingletonHolder;->INSTANCE:Lcom/lahm/library/AccessibilityServicesCheckUtil;

    return-object v0
.end method
