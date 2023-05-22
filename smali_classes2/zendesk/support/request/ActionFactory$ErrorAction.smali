.class Lzendesk/support/request/ActionFactory$ErrorAction;
.super Lzendesk/support/suas/Action;
.source "ActionFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/ActionFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ErrorAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lzendesk/support/suas/Action<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final errorResponse:Lcom/zendesk/service/ErrorResponse;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/zendesk/service/ErrorResponse;)V
    .locals 1

    const/4 v0, 0x0

    .line 366
    invoke-direct {p0, p1, p2, v0}, Lzendesk/support/request/ActionFactory$ErrorAction;-><init>(Ljava/lang/String;Lcom/zendesk/service/ErrorResponse;Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/zendesk/service/ErrorResponse;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/zendesk/service/ErrorResponse;",
            "TE;)V"
        }
    .end annotation

    .line 370
    invoke-direct {p0, p1, p3}, Lzendesk/support/suas/Action;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 371
    iput-object p2, p0, Lzendesk/support/request/ActionFactory$ErrorAction;->errorResponse:Lcom/zendesk/service/ErrorResponse;

    return-void
.end method


# virtual methods
.method public getErrorResponse()Lcom/zendesk/service/ErrorResponse;
    .locals 1

    .line 375
    iget-object v0, p0, Lzendesk/support/request/ActionFactory$ErrorAction;->errorResponse:Lcom/zendesk/service/ErrorResponse;

    return-object v0
.end method
