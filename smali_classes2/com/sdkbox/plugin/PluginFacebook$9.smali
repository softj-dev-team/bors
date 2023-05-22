.class Lcom/sdkbox/plugin/PluginFacebook$9;
.super Ljava/lang/Object;
.source "PluginFacebook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/plugin/PluginFacebook;->api(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sdkbox/plugin/PluginFacebook;

.field final synthetic val$request:Lcom/facebook/GraphRequest;


# direct methods
.method constructor <init>(Lcom/sdkbox/plugin/PluginFacebook;Lcom/facebook/GraphRequest;)V
    .locals 0

    .line 482
    iput-object p1, p0, Lcom/sdkbox/plugin/PluginFacebook$9;->this$0:Lcom/sdkbox/plugin/PluginFacebook;

    iput-object p2, p0, Lcom/sdkbox/plugin/PluginFacebook$9;->val$request:Lcom/facebook/GraphRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/sdkbox/plugin/PluginFacebook$9;->val$request:Lcom/facebook/GraphRequest;

    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    return-void
.end method
