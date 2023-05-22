.class public Lio/agora/rtc/video/VideoEncoderConfiguration;
.super Ljava/lang/Object;
.source "VideoEncoderConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/video/VideoEncoderConfiguration$DEGRADATION_PREFERENCE;,
        Lio/agora/rtc/video/VideoEncoderConfiguration$ORIENTATION_MODE;,
        Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;,
        Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;
    }
.end annotation


# static fields
.field public static final COMPATIBLE_BITRATE:I = -0x1

.field public static final DEFAULT_MIN_BITRATE:I = -0x1

.field public static final DEFAULT_MIN_FRAMERATE:I = -0x1

.field public static final STANDARD_BITRATE:I

.field public static final VD_120x120:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

.field public static final VD_1280x720:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

.field public static final VD_160x120:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

.field public static final VD_180x180:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

.field public static final VD_240x180:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

.field public static final VD_240x240:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

.field public static final VD_320x180:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

.field public static final VD_320x240:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

.field public static final VD_360x360:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

.field public static final VD_424x240:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

.field public static final VD_480x360:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

.field public static final VD_480x480:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

.field public static final VD_640x360:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

.field public static final VD_640x480:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

.field public static final VD_840x480:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

.field public static final VD_960x720:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;


# instance fields
.field public bitrate:I

.field public degradationPrefer:Lio/agora/rtc/video/VideoEncoderConfiguration$DEGRADATION_PREFERENCE;

.field public dimensions:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

.field public frameRate:I

.field public minBitrate:I

.field public minFrameRate:I

.field public mirrorMode:I

.field public orientationMode:Lio/agora/rtc/video/VideoEncoderConfiguration$ORIENTATION_MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 34
    new-instance v0, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    const/16 v1, 0x78

    invoke-direct {v0, v1, v1}, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;-><init>(II)V

    sput-object v0, Lio/agora/rtc/video/VideoEncoderConfiguration;->VD_120x120:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    .line 38
    new-instance v0, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    const/16 v2, 0xa0

    invoke-direct {v0, v2, v1}, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;-><init>(II)V

    sput-object v0, Lio/agora/rtc/video/VideoEncoderConfiguration;->VD_160x120:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    .line 42
    new-instance v0, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    const/16 v1, 0xb4

    invoke-direct {v0, v1, v1}, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;-><init>(II)V

    sput-object v0, Lio/agora/rtc/video/VideoEncoderConfiguration;->VD_180x180:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    .line 46
    new-instance v0, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    const/16 v2, 0xf0

    invoke-direct {v0, v2, v1}, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;-><init>(II)V

    sput-object v0, Lio/agora/rtc/video/VideoEncoderConfiguration;->VD_240x180:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    .line 50
    new-instance v0, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    const/16 v3, 0x140

    invoke-direct {v0, v3, v1}, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;-><init>(II)V

    sput-object v0, Lio/agora/rtc/video/VideoEncoderConfiguration;->VD_320x180:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    .line 54
    new-instance v0, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    invoke-direct {v0, v2, v2}, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;-><init>(II)V

    sput-object v0, Lio/agora/rtc/video/VideoEncoderConfiguration;->VD_240x240:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    .line 58
    new-instance v0, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    invoke-direct {v0, v3, v2}, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;-><init>(II)V

    sput-object v0, Lio/agora/rtc/video/VideoEncoderConfiguration;->VD_320x240:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    .line 62
    new-instance v0, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    const/16 v1, 0x1a8

    invoke-direct {v0, v1, v2}, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;-><init>(II)V

    sput-object v0, Lio/agora/rtc/video/VideoEncoderConfiguration;->VD_424x240:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    .line 66
    new-instance v0, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    const/16 v1, 0x168

    invoke-direct {v0, v1, v1}, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;-><init>(II)V

    sput-object v0, Lio/agora/rtc/video/VideoEncoderConfiguration;->VD_360x360:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    .line 70
    new-instance v0, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    const/16 v2, 0x1e0

    invoke-direct {v0, v2, v1}, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;-><init>(II)V

    sput-object v0, Lio/agora/rtc/video/VideoEncoderConfiguration;->VD_480x360:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    .line 74
    new-instance v0, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    const/16 v3, 0x280

    invoke-direct {v0, v3, v1}, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;-><init>(II)V

    sput-object v0, Lio/agora/rtc/video/VideoEncoderConfiguration;->VD_640x360:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    .line 78
    new-instance v0, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    invoke-direct {v0, v2, v2}, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;-><init>(II)V

    sput-object v0, Lio/agora/rtc/video/VideoEncoderConfiguration;->VD_480x480:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    .line 82
    new-instance v0, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    invoke-direct {v0, v3, v2}, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;-><init>(II)V

    sput-object v0, Lio/agora/rtc/video/VideoEncoderConfiguration;->VD_640x480:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    .line 86
    new-instance v0, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    const/16 v1, 0x348

    invoke-direct {v0, v1, v2}, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;-><init>(II)V

    sput-object v0, Lio/agora/rtc/video/VideoEncoderConfiguration;->VD_840x480:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    .line 90
    new-instance v0, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    const/16 v1, 0x3c0

    const/16 v2, 0x2d0

    invoke-direct {v0, v1, v2}, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;-><init>(II)V

    sput-object v0, Lio/agora/rtc/video/VideoEncoderConfiguration;->VD_960x720:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    .line 94
    new-instance v0, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    const/16 v1, 0x500

    invoke-direct {v0, v1, v2}, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;-><init>(II)V

    sput-object v0, Lio/agora/rtc/video/VideoEncoderConfiguration;->VD_1280x720:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    new-instance v0, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    const/16 v1, 0x280

    const/16 v2, 0x1e0

    invoke-direct {v0, v1, v2}, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;-><init>(II)V

    iput-object v0, p0, Lio/agora/rtc/video/VideoEncoderConfiguration;->dimensions:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    .line 483
    sget-object v0, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;->FRAME_RATE_FPS_15:Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;

    invoke-virtual {v0}, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;->getValue()I

    move-result v0

    iput v0, p0, Lio/agora/rtc/video/VideoEncoderConfiguration;->frameRate:I

    const/4 v0, -0x1

    .line 484
    iput v0, p0, Lio/agora/rtc/video/VideoEncoderConfiguration;->minFrameRate:I

    const/4 v1, 0x0

    .line 485
    iput v1, p0, Lio/agora/rtc/video/VideoEncoderConfiguration;->bitrate:I

    .line 486
    iput v0, p0, Lio/agora/rtc/video/VideoEncoderConfiguration;->minBitrate:I

    .line 487
    sget-object v0, Lio/agora/rtc/video/VideoEncoderConfiguration$ORIENTATION_MODE;->ORIENTATION_MODE_ADAPTIVE:Lio/agora/rtc/video/VideoEncoderConfiguration$ORIENTATION_MODE;

    iput-object v0, p0, Lio/agora/rtc/video/VideoEncoderConfiguration;->orientationMode:Lio/agora/rtc/video/VideoEncoderConfiguration$ORIENTATION_MODE;

    .line 488
    sget-object v0, Lio/agora/rtc/video/VideoEncoderConfiguration$DEGRADATION_PREFERENCE;->MAINTAIN_QUALITY:Lio/agora/rtc/video/VideoEncoderConfiguration$DEGRADATION_PREFERENCE;

    iput-object v0, p0, Lio/agora/rtc/video/VideoEncoderConfiguration;->degradationPrefer:Lio/agora/rtc/video/VideoEncoderConfiguration$DEGRADATION_PREFERENCE;

    .line 489
    iput v1, p0, Lio/agora/rtc/video/VideoEncoderConfiguration;->mirrorMode:I

    return-void
.end method

.method public constructor <init>(IILio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;ILio/agora/rtc/video/VideoEncoderConfiguration$ORIENTATION_MODE;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "frameRate",
            "bitrate",
            "orientationMode"
        }
    .end annotation

    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 506
    new-instance v0, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    invoke-direct {v0, p1, p2}, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;-><init>(II)V

    iput-object v0, p0, Lio/agora/rtc/video/VideoEncoderConfiguration;->dimensions:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    .line 507
    invoke-virtual {p3}, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;->getValue()I

    move-result p1

    iput p1, p0, Lio/agora/rtc/video/VideoEncoderConfiguration;->frameRate:I

    const/4 p1, -0x1

    .line 508
    iput p1, p0, Lio/agora/rtc/video/VideoEncoderConfiguration;->minFrameRate:I

    .line 509
    iput p4, p0, Lio/agora/rtc/video/VideoEncoderConfiguration;->bitrate:I

    .line 510
    iput p1, p0, Lio/agora/rtc/video/VideoEncoderConfiguration;->minBitrate:I

    .line 511
    iput-object p5, p0, Lio/agora/rtc/video/VideoEncoderConfiguration;->orientationMode:Lio/agora/rtc/video/VideoEncoderConfiguration$ORIENTATION_MODE;

    .line 512
    sget-object p1, Lio/agora/rtc/video/VideoEncoderConfiguration$DEGRADATION_PREFERENCE;->MAINTAIN_QUALITY:Lio/agora/rtc/video/VideoEncoderConfiguration$DEGRADATION_PREFERENCE;

    iput-object p1, p0, Lio/agora/rtc/video/VideoEncoderConfiguration;->degradationPrefer:Lio/agora/rtc/video/VideoEncoderConfiguration$DEGRADATION_PREFERENCE;

    const/4 p1, 0x0

    .line 513
    iput p1, p0, Lio/agora/rtc/video/VideoEncoderConfiguration;->mirrorMode:I

    return-void
.end method

.method public constructor <init>(Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;ILio/agora/rtc/video/VideoEncoderConfiguration$ORIENTATION_MODE;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimensions",
            "frameRate",
            "bitrate",
            "orientationMode"
        }
    .end annotation

    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 494
    iput-object p1, p0, Lio/agora/rtc/video/VideoEncoderConfiguration;->dimensions:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    .line 495
    invoke-virtual {p2}, Lio/agora/rtc/video/VideoEncoderConfiguration$FRAME_RATE;->getValue()I

    move-result p1

    iput p1, p0, Lio/agora/rtc/video/VideoEncoderConfiguration;->frameRate:I

    const/4 p1, -0x1

    .line 496
    iput p1, p0, Lio/agora/rtc/video/VideoEncoderConfiguration;->minFrameRate:I

    .line 497
    iput p3, p0, Lio/agora/rtc/video/VideoEncoderConfiguration;->bitrate:I

    .line 498
    iput p1, p0, Lio/agora/rtc/video/VideoEncoderConfiguration;->minBitrate:I

    .line 499
    iput-object p4, p0, Lio/agora/rtc/video/VideoEncoderConfiguration;->orientationMode:Lio/agora/rtc/video/VideoEncoderConfiguration$ORIENTATION_MODE;

    .line 500
    sget-object p1, Lio/agora/rtc/video/VideoEncoderConfiguration$DEGRADATION_PREFERENCE;->MAINTAIN_QUALITY:Lio/agora/rtc/video/VideoEncoderConfiguration$DEGRADATION_PREFERENCE;

    iput-object p1, p0, Lio/agora/rtc/video/VideoEncoderConfiguration;->degradationPrefer:Lio/agora/rtc/video/VideoEncoderConfiguration$DEGRADATION_PREFERENCE;

    const/4 p1, 0x0

    .line 501
    iput p1, p0, Lio/agora/rtc/video/VideoEncoderConfiguration;->mirrorMode:I

    return-void
.end method
