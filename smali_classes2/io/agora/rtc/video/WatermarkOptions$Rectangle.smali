.class public Lio/agora/rtc/video/WatermarkOptions$Rectangle;
.super Ljava/lang/Object;
.source "WatermarkOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/WatermarkOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rectangle"
.end annotation


# instance fields
.field public height:I

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->x:I

    .line 19
    iput v0, p0, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->y:I

    .line 23
    iput v0, p0, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->width:I

    .line 27
    iput v0, p0, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->height:I

    .line 31
    iput v0, p0, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->x:I

    .line 32
    iput v0, p0, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->y:I

    .line 33
    iput v0, p0, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->width:I

    .line 34
    iput v0, p0, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->height:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x_",
            "y_",
            "width_",
            "height_"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->x:I

    .line 19
    iput v0, p0, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->y:I

    .line 23
    iput v0, p0, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->width:I

    .line 27
    iput v0, p0, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->height:I

    .line 38
    iput p1, p0, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->x:I

    .line 39
    iput p2, p0, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->y:I

    .line 40
    iput p3, p0, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->width:I

    .line 41
    iput p4, p0, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->height:I

    return-void
.end method
