.class public Lio/agora/rtc/video/VideoCanvas;
.super Ljava/lang/Object;
.source "VideoCanvas.java"


# static fields
.field public static final RENDER_MODE_ADAPTIVE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RENDER_MODE_FILL:I = 0x4

.field public static final RENDER_MODE_FIT:I = 0x2

.field public static final RENDER_MODE_HIDDEN:I = 0x1


# instance fields
.field public channelId:Ljava/lang/String;

.field public mirrorMode:I

.field public renderMode:I

.field public uid:I

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lio/agora/rtc/video/VideoCanvas;->view:Landroid/view/View;

    const/4 p1, 0x1

    .line 74
    iput p1, p0, Lio/agora/rtc/video/VideoCanvas;->renderMode:I

    const/4 p1, 0x0

    .line 75
    iput p1, p0, Lio/agora/rtc/video/VideoCanvas;->mirrorMode:I

    .line 76
    iput p1, p0, Lio/agora/rtc/video/VideoCanvas;->uid:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "renderMode",
            "uid"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lio/agora/rtc/video/VideoCanvas;->view:Landroid/view/View;

    .line 81
    iput p2, p0, Lio/agora/rtc/video/VideoCanvas;->renderMode:I

    .line 82
    iput p3, p0, Lio/agora/rtc/video/VideoCanvas;->uid:I

    const/4 p1, 0x0

    .line 83
    iput p1, p0, Lio/agora/rtc/video/VideoCanvas;->mirrorMode:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "renderMode",
            "uid",
            "mirrorMode"
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lio/agora/rtc/video/VideoCanvas;->view:Landroid/view/View;

    .line 96
    iput p2, p0, Lio/agora/rtc/video/VideoCanvas;->renderMode:I

    .line 97
    iput p3, p0, Lio/agora/rtc/video/VideoCanvas;->uid:I

    .line 98
    iput p4, p0, Lio/agora/rtc/video/VideoCanvas;->mirrorMode:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "renderMode",
            "channelId",
            "uid"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lio/agora/rtc/video/VideoCanvas;->view:Landroid/view/View;

    .line 88
    iput p2, p0, Lio/agora/rtc/video/VideoCanvas;->renderMode:I

    .line 89
    iput-object p3, p0, Lio/agora/rtc/video/VideoCanvas;->channelId:Ljava/lang/String;

    .line 90
    iput p4, p0, Lio/agora/rtc/video/VideoCanvas;->uid:I

    const/4 p1, 0x0

    .line 91
    iput p1, p0, Lio/agora/rtc/video/VideoCanvas;->mirrorMode:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ILjava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "renderMode",
            "channelId",
            "uid",
            "mirrorMode"
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lio/agora/rtc/video/VideoCanvas;->view:Landroid/view/View;

    .line 103
    iput p2, p0, Lio/agora/rtc/video/VideoCanvas;->renderMode:I

    .line 104
    iput p5, p0, Lio/agora/rtc/video/VideoCanvas;->mirrorMode:I

    .line 105
    iput-object p3, p0, Lio/agora/rtc/video/VideoCanvas;->channelId:Ljava/lang/String;

    .line 106
    iput p4, p0, Lio/agora/rtc/video/VideoCanvas;->uid:I

    return-void
.end method
