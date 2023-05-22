.class Lzendesk/core/BlipsRequest$ApiUserAction;
.super Ljava/lang/Object;
.source "BlipsRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/core/BlipsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ApiUserAction"
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private category:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private value:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lzendesk/core/BlipsRequest$ApiUserAction;->category:Ljava/lang/String;

    .line 99
    iput-object p2, p0, Lzendesk/core/BlipsRequest$ApiUserAction;->action:Ljava/lang/String;

    .line 100
    iput-object p3, p0, Lzendesk/core/BlipsRequest$ApiUserAction;->label:Ljava/lang/String;

    .line 101
    iput-object p4, p0, Lzendesk/core/BlipsRequest$ApiUserAction;->value:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method getAction()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lzendesk/core/BlipsRequest$ApiUserAction;->action:Ljava/lang/String;

    return-object v0
.end method

.method getCategory()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lzendesk/core/BlipsRequest$ApiUserAction;->category:Ljava/lang/String;

    return-object v0
.end method

.method getLabel()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lzendesk/core/BlipsRequest$ApiUserAction;->label:Ljava/lang/String;

    return-object v0
.end method

.method getValue()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lzendesk/core/BlipsRequest$ApiUserAction;->value:Ljava/util/Map;

    return-object v0
.end method
