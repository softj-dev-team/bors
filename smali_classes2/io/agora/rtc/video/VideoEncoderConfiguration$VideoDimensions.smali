.class public Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;
.super Ljava/lang/Object;
.source "VideoEncoderConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/VideoEncoderConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoDimensions"
.end annotation


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x280

    .line 26
    iput v0, p0, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;->width:I

    const/16 v0, 0x1e0

    .line 27
    iput v0, p0, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;->height:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;->width:I

    .line 22
    iput p2, p0, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;->height:I

    return-void
.end method
