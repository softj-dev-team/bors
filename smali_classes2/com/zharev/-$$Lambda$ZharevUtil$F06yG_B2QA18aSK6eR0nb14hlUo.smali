.class public final synthetic Lcom/zharev/-$$Lambda$ZharevUtil$F06yG_B2QA18aSK6eR0nb14hlUo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/zharev/-$$Lambda$ZharevUtil$F06yG_B2QA18aSK6eR0nb14hlUo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zharev/-$$Lambda$ZharevUtil$F06yG_B2QA18aSK6eR0nb14hlUo;

    invoke-direct {v0}, Lcom/zharev/-$$Lambda$ZharevUtil$F06yG_B2QA18aSK6eR0nb14hlUo;-><init>()V

    sput-object v0, Lcom/zharev/-$$Lambda$ZharevUtil$F06yG_B2QA18aSK6eR0nb14hlUo;->INSTANCE:Lcom/zharev/-$$Lambda$ZharevUtil$F06yG_B2QA18aSK6eR0nb14hlUo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p1}, Lcom/zharev/ZharevUtil;->lambda$requestIntegrityToken$1(Ljava/lang/Exception;)V

    return-void
.end method
