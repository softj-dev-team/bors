.class final Lorg/cocos2dx/javascript/VoiceRecorder$1;
.super Ljava/lang/Object;
.source "VoiceRecorder.java"

# interfaces
.implements Lcom/github/dfqin/grantor/PermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/javascript/VoiceRecorder;->prepare(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$fileNameString:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lorg/cocos2dx/javascript/VoiceRecorder$1;->val$fileNameString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public permissionDenied([Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public permissionGranted([Ljava/lang/String;)V
    .locals 0

    .line 61
    iget-object p1, p0, Lorg/cocos2dx/javascript/VoiceRecorder$1;->val$fileNameString:Ljava/lang/String;

    invoke-static {p1}, Lorg/cocos2dx/javascript/VoiceRecorder;->prepare(Ljava/lang/String;)V

    return-void
.end method
