.class Lcom/sdkbox/plugin/PluginSocialShare$1$2;
.super Ljava/lang/Object;
.source "PluginSocialShare.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/plugin/PluginSocialShare$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sdkbox/plugin/PluginSocialShare$1;


# direct methods
.method constructor <init>(Lcom/sdkbox/plugin/PluginSocialShare$1;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/sdkbox/plugin/PluginSocialShare$1$2;->this$1:Lcom/sdkbox/plugin/PluginSocialShare$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 43
    sget-object v0, Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;->SocialShareStateSelected:Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

    iget-object v1, p0, Lcom/sdkbox/plugin/PluginSocialShare$1$2;->this$1:Lcom/sdkbox/plugin/PluginSocialShare$1;

    iget-object v1, v1, Lcom/sdkbox/plugin/PluginSocialShare$1;->this$0:Lcom/sdkbox/plugin/PluginSocialShare;

    invoke-static {v1}, Lcom/sdkbox/plugin/PluginSocialShare;->access$100(Lcom/sdkbox/plugin/PluginSocialShare;)[Ljava/lang/String;

    move-result-object v1

    aget-object p2, v1, p2

    const-string v1, ""

    invoke-static {v0, v1, p2}, Lcom/sdkbox/plugin/PluginShareEvent;->sendEventToNative(Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
