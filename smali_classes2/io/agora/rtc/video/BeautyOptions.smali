.class public Lio/agora/rtc/video/BeautyOptions;
.super Ljava/lang/Object;
.source "BeautyOptions.java"


# static fields
.field public static final LIGHTENING_CONTRAST_HIGH:I = 0x2

.field public static final LIGHTENING_CONTRAST_LOW:I = 0x0

.field public static final LIGHTENING_CONTRAST_NORMAL:I = 0x1


# instance fields
.field public lighteningContrastLevel:I

.field public lighteningLevel:F

.field public rednessLevel:F

.field public smoothnessLevel:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 56
    iput v0, p0, Lio/agora/rtc/video/BeautyOptions;->lighteningContrastLevel:I

    const v0, 0x3f333333    # 0.7f

    .line 57
    iput v0, p0, Lio/agora/rtc/video/BeautyOptions;->lighteningLevel:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 58
    iput v0, p0, Lio/agora/rtc/video/BeautyOptions;->smoothnessLevel:F

    const v0, 0x3dcccccd    # 0.1f

    .line 59
    iput v0, p0, Lio/agora/rtc/video/BeautyOptions;->rednessLevel:F

    return-void
.end method

.method public constructor <init>(IFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "contrastLevel",
            "lightening",
            "smoothness",
            "redness"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lio/agora/rtc/video/BeautyOptions;->lighteningContrastLevel:I

    .line 50
    iput p2, p0, Lio/agora/rtc/video/BeautyOptions;->lighteningLevel:F

    .line 51
    iput p3, p0, Lio/agora/rtc/video/BeautyOptions;->smoothnessLevel:F

    .line 52
    iput p4, p0, Lio/agora/rtc/video/BeautyOptions;->rednessLevel:F

    return-void
.end method
