.class public Lorg/cocos2dx/javascript/VoiceRecorder;
.super Ljava/lang/Object;
.source "VoiceRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2dx/javascript/VoiceRecorder$AudioStageListener;
    }
.end annotation


# static fields
.field public static activity:Lorg/cocos2dx/lib/Cocos2dxActivity;

.field public static ctx:Landroid/content/Context;

.field private static isPrepared:Z

.field private static mCurrentFilePathString:Ljava/lang/String;

.field private static mDirString:Ljava/lang/String;

.field public static mListener:Lorg/cocos2dx/javascript/VoiceRecorder$AudioStageListener;

.field private static mRecorder:Landroid/media/MediaRecorder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancel()V
    .locals 2

    .line 154
    invoke-static {}, Lorg/cocos2dx/javascript/VoiceRecorder;->release()V

    .line 155
    sget-object v0, Lorg/cocos2dx/javascript/VoiceRecorder;->mCurrentFilePathString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 156
    new-instance v0, Ljava/io/File;

    sget-object v1, Lorg/cocos2dx/javascript/VoiceRecorder;->mCurrentFilePathString:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    .line 158
    sput-object v0, Lorg/cocos2dx/javascript/VoiceRecorder;->mCurrentFilePathString:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private static generalFileName()Ljava/lang/String;
    .locals 2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".amr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentFilePath()Ljava/lang/String;
    .locals 1

    .line 165
    sget-object v0, Lorg/cocos2dx/javascript/VoiceRecorder;->mCurrentFilePathString:Ljava/lang/String;

    return-object v0
.end method

.method public static getStorageDir()Ljava/lang/String;
    .locals 1

    .line 51
    sget-object v0, Lorg/cocos2dx/javascript/VoiceRecorder;->mDirString:Ljava/lang/String;

    return-object v0
.end method

.method public static getVoiceLevel(I)I
    .locals 2

    .line 128
    sget-boolean v0, Lorg/cocos2dx/javascript/VoiceRecorder;->isPrepared:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lorg/cocos2dx/javascript/VoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 131
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v0

    mul-int p0, p0, v0

    const v0, 0x8000

    div-int/2addr p0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr p0, v1

    return p0

    :catch_0
    :cond_0
    return v1
.end method

.method public static prepare(Ljava/lang/String;)V
    .locals 3

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 57
    :try_start_0
    sget-object v1, Lorg/cocos2dx/javascript/VoiceRecorder;->ctx:Landroid/content/Context;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/github/dfqin/grantor/PermissionsUtil;->hasPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    sget-object v1, Lorg/cocos2dx/javascript/VoiceRecorder;->ctx:Landroid/content/Context;

    new-instance v2, Lorg/cocos2dx/javascript/VoiceRecorder$1;

    invoke-direct {v2, p0}, Lorg/cocos2dx/javascript/VoiceRecorder$1;-><init>(Ljava/lang/String;)V

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/github/dfqin/grantor/PermissionsUtil;->requestPermission(Landroid/content/Context;Lcom/github/dfqin/grantor/PermissionListener;[Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 72
    sput-boolean v0, Lorg/cocos2dx/javascript/VoiceRecorder;->isPrepared:Z

    .line 74
    new-instance v0, Ljava/io/File;

    sget-object v1, Lorg/cocos2dx/javascript/VoiceRecorder;->mDirString:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 76
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 78
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lorg/cocos2dx/javascript/VoiceRecorder;->mCurrentFilePathString:Ljava/lang/String;

    .line 82
    new-instance p0, Landroid/media/MediaRecorder;

    invoke-direct {p0}, Landroid/media/MediaRecorder;-><init>()V

    sput-object p0, Lorg/cocos2dx/javascript/VoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 84
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 86
    sget-object p0, Lorg/cocos2dx/javascript/VoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 87
    sget-object p0, Lorg/cocos2dx/javascript/VoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    const/16 v1, 0x128e

    invoke-virtual {p0, v1}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 89
    sget-object p0, Lorg/cocos2dx/javascript/VoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 91
    sget-object p0, Lorg/cocos2dx/javascript/VoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 94
    sget-object p0, Lorg/cocos2dx/javascript/VoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->prepare()V

    .line 96
    sget-object p0, Lorg/cocos2dx/javascript/VoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->start()V

    .line 98
    sput-boolean v0, Lorg/cocos2dx/javascript/VoiceRecorder;->isPrepared:Z

    .line 100
    sget-object p0, Lorg/cocos2dx/javascript/VoiceRecorder;->mListener:Lorg/cocos2dx/javascript/VoiceRecorder$AudioStageListener;

    if-eqz p0, :cond_2

    .line 101
    invoke-interface {p0}, Lorg/cocos2dx/javascript/VoiceRecorder$AudioStageListener;->wellPrepared()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 109
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 106
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static release()V
    .locals 1

    .line 144
    sget-object v0, Lorg/cocos2dx/javascript/VoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 146
    sget-object v0, Lorg/cocos2dx/javascript/VoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    const/4 v0, 0x0

    .line 147
    sput-object v0, Lorg/cocos2dx/javascript/VoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    :cond_0
    return-void
.end method

.method public static setOnAudioStageListener(Lorg/cocos2dx/javascript/VoiceRecorder$AudioStageListener;)V
    .locals 0

    .line 43
    sput-object p0, Lorg/cocos2dx/javascript/VoiceRecorder;->mListener:Lorg/cocos2dx/javascript/VoiceRecorder$AudioStageListener;

    return-void
.end method

.method public static setStorageDir(Ljava/lang/String;)V
    .locals 0

    .line 47
    sput-object p0, Lorg/cocos2dx/javascript/VoiceRecorder;->mDirString:Ljava/lang/String;

    return-void
.end method
