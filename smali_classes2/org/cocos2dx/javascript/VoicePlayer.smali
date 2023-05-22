.class public Lorg/cocos2dx/javascript/VoicePlayer;
.super Ljava/lang/Object;
.source "VoicePlayer.java"


# static fields
.field public static activity:Lorg/cocos2dx/lib/Cocos2dxActivity;

.field private static isPause:Z

.field private static mPlayer:Landroid/media/MediaPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/media/MediaPlayer;
    .locals 1

    .line 15
    sget-object v0, Lorg/cocos2dx/javascript/VoicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public static pause()V
    .locals 1

    .line 76
    sget-object v0, Lorg/cocos2dx/javascript/VoicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lorg/cocos2dx/javascript/VoicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    const/4 v0, 0x1

    .line 78
    sput-boolean v0, Lorg/cocos2dx/javascript/VoicePlayer;->isPause:Z

    :cond_0
    return-void
.end method

.method public static play(Ljava/lang/String;)V
    .locals 3

    .line 25
    sget-object v0, Lorg/cocos2dx/javascript/VoicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v0, Lorg/cocos2dx/javascript/VoicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 28
    new-instance v1, Lorg/cocos2dx/javascript/VoicePlayer$1;

    invoke-direct {v1}, Lorg/cocos2dx/javascript/VoicePlayer$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 42
    :goto_0
    :try_start_0
    sget-object v0, Lorg/cocos2dx/javascript/VoicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 43
    sget-object v0, Lorg/cocos2dx/javascript/VoicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lorg/cocos2dx/javascript/VoicePlayer$2;

    invoke-direct {v1, p0}, Lorg/cocos2dx/javascript/VoicePlayer$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 56
    sget-object v0, Lorg/cocos2dx/javascript/VoicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/cocos2dx/javascript/VoiceRecorder;->getStorageDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 57
    sget-object p0, Lorg/cocos2dx/javascript/VoicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->prepare()V

    .line 58
    sget-object p0, Lorg/cocos2dx/javascript/VoicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 70
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p0

    .line 67
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception p0

    .line 64
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception p0

    .line 61
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static release()V
    .locals 1

    .line 101
    sget-object v0, Lorg/cocos2dx/javascript/VoicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 103
    sput-object v0, Lorg/cocos2dx/javascript/VoicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method public static resume()V
    .locals 2

    .line 92
    sget-object v0, Lorg/cocos2dx/javascript/VoicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    sget-boolean v1, Lorg/cocos2dx/javascript/VoicePlayer;->isPause:Z

    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x0

    .line 94
    sput-boolean v0, Lorg/cocos2dx/javascript/VoicePlayer;->isPause:Z

    :cond_0
    return-void
.end method

.method public static stop()V
    .locals 1

    .line 83
    sget-object v0, Lorg/cocos2dx/javascript/VoicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lorg/cocos2dx/javascript/VoicePlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    const/4 v0, 0x0

    .line 85
    sput-boolean v0, Lorg/cocos2dx/javascript/VoicePlayer;->isPause:Z

    :cond_0
    return-void
.end method
