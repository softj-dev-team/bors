.class public Lio/agora/rtc/PublisherParameters;
.super Ljava/lang/Object;
.source "PublisherParameters.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public audiobitrate:I

.field public audiochannels:I

.field public audiosamplerate:I

.field public bitrate:I

.field public defaultLayout:I

.field public extraInfo:Ljava/lang/String;

.field public framerate:I

.field public height:I

.field public injectStreamHeight:I

.field public injectStreamUrl:Ljava/lang/String;

.field public injectStreamWidth:I

.field public lifecycle:I

.field public owner:Z

.field public publishUrl:Ljava/lang/String;

.field public rawStreamUrl:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x168

    .line 9
    iput v0, p0, Lio/agora/rtc/PublisherParameters;->width:I

    const/16 v0, 0x280

    .line 10
    iput v0, p0, Lio/agora/rtc/PublisherParameters;->height:I

    const/16 v0, 0xf

    .line 11
    iput v0, p0, Lio/agora/rtc/PublisherParameters;->framerate:I

    const/16 v0, 0x1f4

    .line 12
    iput v0, p0, Lio/agora/rtc/PublisherParameters;->bitrate:I

    const/4 v0, 0x1

    .line 13
    iput v0, p0, Lio/agora/rtc/PublisherParameters;->defaultLayout:I

    const/16 v1, 0x7d00

    .line 14
    iput v1, p0, Lio/agora/rtc/PublisherParameters;->audiosamplerate:I

    const v1, 0xcb20

    .line 15
    iput v1, p0, Lio/agora/rtc/PublisherParameters;->audiobitrate:I

    .line 16
    iput v0, p0, Lio/agora/rtc/PublisherParameters;->audiochannels:I

    const/4 v1, 0x0

    .line 17
    iput-boolean v1, p0, Lio/agora/rtc/PublisherParameters;->owner:Z

    .line 18
    iput v0, p0, Lio/agora/rtc/PublisherParameters;->lifecycle:I

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lio/agora/rtc/PublisherParameters;->publishUrl:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lio/agora/rtc/PublisherParameters;->rawStreamUrl:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lio/agora/rtc/PublisherParameters;->extraInfo:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lio/agora/rtc/PublisherParameters;->injectStreamUrl:Ljava/lang/String;

    .line 23
    iput v1, p0, Lio/agora/rtc/PublisherParameters;->injectStreamWidth:I

    .line 24
    iput v1, p0, Lio/agora/rtc/PublisherParameters;->injectStreamHeight:I

    return-void
.end method
