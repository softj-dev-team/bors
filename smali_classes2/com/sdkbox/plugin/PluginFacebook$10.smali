.class Lcom/sdkbox/plugin/PluginFacebook$10;
.super Ljava/lang/Object;
.source "PluginFacebook.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/plugin/PluginFacebook;->requestInvitableFriends(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sdkbox/plugin/PluginFacebook;


# direct methods
.method constructor <init>(Lcom/sdkbox/plugin/PluginFacebook;)V
    .locals 0

    .line 607
    iput-object p1, p0, Lcom/sdkbox/plugin/PluginFacebook$10;->this$0:Lcom/sdkbox/plugin/PluginFacebook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 1

    .line 609
    iget-object v0, p0, Lcom/sdkbox/plugin/PluginFacebook$10;->this$0:Lcom/sdkbox/plugin/PluginFacebook;

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getRawResponse()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sdkbox/plugin/PluginFacebook;->onRequestInvitableFriendsWrapper(Ljava/lang/String;)V

    return-void
.end method
