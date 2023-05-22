.class public final synthetic Lcom/zharev/-$$Lambda$ZharevUtil$iR5xpzzoo5Zg1M3GQ_S4uHCyeAA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/zharev/-$$Lambda$ZharevUtil$iR5xpzzoo5Zg1M3GQ_S4uHCyeAA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zharev/-$$Lambda$ZharevUtil$iR5xpzzoo5Zg1M3GQ_S4uHCyeAA;

    invoke-direct {v0}, Lcom/zharev/-$$Lambda$ZharevUtil$iR5xpzzoo5Zg1M3GQ_S4uHCyeAA;-><init>()V

    sput-object v0, Lcom/zharev/-$$Lambda$ZharevUtil$iR5xpzzoo5Zg1M3GQ_S4uHCyeAA;->INSTANCE:Lcom/zharev/-$$Lambda$ZharevUtil$iR5xpzzoo5Zg1M3GQ_S4uHCyeAA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/play/core/integrity/IntegrityTokenResponse;

    invoke-static {p1}, Lcom/zharev/ZharevUtil;->lambda$requestIntegrityToken$0(Lcom/google/android/play/core/integrity/IntegrityTokenResponse;)V

    return-void
.end method
