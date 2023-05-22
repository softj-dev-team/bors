.class final Lcom/sdkbox/plugin/PluginShareEvent$1;
.super Ljava/lang/Object;
.source "PluginShareEvent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/plugin/PluginShareEvent;->sendEventToNative(Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$resp:Lcom/sdkbox/plugin/SocialShareResponse;


# direct methods
.method constructor <init>(Lcom/sdkbox/plugin/SocialShareResponse;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/sdkbox/plugin/PluginShareEvent$1;->val$resp:Lcom/sdkbox/plugin/SocialShareResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/sdkbox/plugin/PluginShareEvent$1;->val$resp:Lcom/sdkbox/plugin/SocialShareResponse;

    const-string v1, "PluginShareEvent"

    invoke-static {v1, v0}, Lcom/sdkbox/jnibridge/NativeBridge;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
