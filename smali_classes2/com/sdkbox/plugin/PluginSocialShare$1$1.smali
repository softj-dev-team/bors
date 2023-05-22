.class Lcom/sdkbox/plugin/PluginSocialShare$1$1;
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

    .line 46
    iput-object p1, p0, Lcom/sdkbox/plugin/PluginSocialShare$1$1;->this$1:Lcom/sdkbox/plugin/PluginSocialShare$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 49
    sget-object p2, Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;->SocialShareStateSelectCancelled:Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

    const-string v0, ""

    invoke-static {p2, v0, v0}, Lcom/sdkbox/plugin/PluginShareEvent;->sendEventToNative(Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
