.class Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;
.super Ljava/lang/Object;
.source "MediaCodecVideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/MediaCodecVideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChipProperties"
.end annotation


# instance fields
.field public final baseFrameRate:I

.field public final bitrateAdjustmentType:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

.field public final chipName:Ljava/lang/String;

.field public final highProfileMinSdkVersion:I

.field public final initFrameRate:I

.field public final isNeedResetWhenDownBps:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;ZIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "chipName",
            "bitrateAdjustmentType",
            "isNeedResetWhenDownBps",
            "baseFrameRate",
            "initFrameRate",
            "highProfileMinSdkVersion"
        }
    .end annotation

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 518
    iput-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;->chipName:Ljava/lang/String;

    .line 519
    iput-object p2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;->bitrateAdjustmentType:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 520
    iput-boolean p3, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;->isNeedResetWhenDownBps:Z

    .line 521
    iput p4, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;->baseFrameRate:I

    .line 522
    iput p5, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;->initFrameRate:I

    .line 523
    iput p6, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;->highProfileMinSdkVersion:I

    return-void
.end method
