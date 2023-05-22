.class public Lcom/sdkbox/plugin/SocialShareUnit;
.super Ljava/lang/Object;
.source "SocialShareUnit.java"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/sdkbox/plugin/SocialShareUnit;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public configure(Lcom/sdkbox/plugin/JSON;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "SocialShareUnit"

    return-object v0
.end method

.method public identify()Ljava/lang/String;
    .locals 1

    const-string v0, "SocialShareUnit"

    return-object v0
.end method

.method public notifyShareState(Lcom/sdkbox/plugin/SocialShareResponse;)Z
    .locals 1

    .line 28
    new-instance v0, Lcom/sdkbox/plugin/SocialShareUnit$1;

    invoke-direct {v0, p0, p1}, Lcom/sdkbox/plugin/SocialShareUnit$1;-><init>(Lcom/sdkbox/plugin/SocialShareUnit;Lcom/sdkbox/plugin/SocialShareResponse;)V

    invoke-static {v0}, Lcom/sdkbox/plugin/SDKBox;->runOnGLThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public share(Ljava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public shareDialog(Ljava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method
