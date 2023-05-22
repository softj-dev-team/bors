.class Lcom/sdkbox/plugin/SocialShareUnit$1;
.super Ljava/lang/Object;
.source "SocialShareUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/plugin/SocialShareUnit;->notifyShareState(Lcom/sdkbox/plugin/SocialShareResponse;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sdkbox/plugin/SocialShareUnit;

.field final synthetic val$response:Lcom/sdkbox/plugin/SocialShareResponse;


# direct methods
.method constructor <init>(Lcom/sdkbox/plugin/SocialShareUnit;Lcom/sdkbox/plugin/SocialShareResponse;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/sdkbox/plugin/SocialShareUnit$1;->this$0:Lcom/sdkbox/plugin/SocialShareUnit;

    iput-object p2, p0, Lcom/sdkbox/plugin/SocialShareUnit$1;->val$response:Lcom/sdkbox/plugin/SocialShareResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/sdkbox/plugin/SocialShareUnit$1;->val$response:Lcom/sdkbox/plugin/SocialShareResponse;

    const-string v1, "PluginShareEvent"

    invoke-static {v1, v0}, Lcom/sdkbox/jnibridge/NativeBridge;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
