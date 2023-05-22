.class final Lorg/cocos2dx/javascript/VoicePlayer$2;
.super Ljava/lang/Object;
.source "VoicePlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/javascript/VoicePlayer;->play(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$filePathString:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lorg/cocos2dx/javascript/VoicePlayer$2;->val$filePathString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 48
    sget-object p1, Lorg/cocos2dx/javascript/VoicePlayer;->activity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v0, Lorg/cocos2dx/javascript/VoicePlayer$2$1;

    invoke-direct {v0, p0}, Lorg/cocos2dx/javascript/VoicePlayer$2$1;-><init>(Lorg/cocos2dx/javascript/VoicePlayer$2;)V

    invoke-virtual {p1, v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method
