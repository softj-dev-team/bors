.class final Lcom/zharev/ZharevUtil$14;
.super Ljava/lang/Object;
.source "ZharevUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zharev/ZharevUtil;->lambda$requestIntegrityToken$1(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 756
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 759
    invoke-static {}, Lcom/zharev/ZharevUtil;->onIntegrityToken()V

    return-void
.end method
