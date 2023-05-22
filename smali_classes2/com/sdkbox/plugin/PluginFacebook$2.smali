.class Lcom/sdkbox/plugin/PluginFacebook$2;
.super Ljava/lang/Object;
.source "PluginFacebook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/plugin/PluginFacebook;->configure()V
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

    .line 179
    iput-object p1, p0, Lcom/sdkbox/plugin/PluginFacebook$2;->this$0:Lcom/sdkbox/plugin/PluginFacebook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/sdkbox/plugin/PluginFacebook$2;->this$0:Lcom/sdkbox/plugin/PluginFacebook;

    new-instance v1, Lcom/facebook/share/widget/ShareDialog;

    invoke-virtual {v0}, Lcom/sdkbox/plugin/PluginFacebook;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/sdkbox/plugin/PluginFacebook;->access$002(Lcom/sdkbox/plugin/PluginFacebook;Lcom/facebook/share/widget/ShareDialog;)Lcom/facebook/share/widget/ShareDialog;

    .line 183
    iget-object v0, p0, Lcom/sdkbox/plugin/PluginFacebook$2;->this$0:Lcom/sdkbox/plugin/PluginFacebook;

    invoke-static {v0}, Lcom/sdkbox/plugin/PluginFacebook;->access$000(Lcom/sdkbox/plugin/PluginFacebook;)Lcom/facebook/share/widget/ShareDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/sdkbox/plugin/PluginFacebook$2;->this$0:Lcom/sdkbox/plugin/PluginFacebook;

    invoke-static {v1}, Lcom/sdkbox/plugin/PluginFacebook;->access$100(Lcom/sdkbox/plugin/PluginFacebook;)Lcom/facebook/CallbackManager;

    move-result-object v1

    new-instance v2, Lcom/sdkbox/plugin/PluginFacebook$2$1;

    invoke-direct {v2, p0}, Lcom/sdkbox/plugin/PluginFacebook$2$1;-><init>(Lcom/sdkbox/plugin/PluginFacebook$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/share/widget/ShareDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    return-void
.end method
