.class Lio/agora/rtc/video/MediaCodecVideoEncoder$6;
.super Ljava/lang/Object;
.source "MediaCodecVideoEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/video/MediaCodecVideoEncoder;->setRates(II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

.field final synthetic val$Kbps:I

.field final synthetic val$fps:I


# direct methods
.method constructor <init>(Lio/agora/rtc/video/MediaCodecVideoEncoder;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$fps",
            "val$Kbps"
        }
    .end annotation

    .line 1157
    iput-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$6;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    iput p2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$6;->val$Kbps:I

    iput p3, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$6;->val$fps:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1160
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$6;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    iget v1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$6;->val$Kbps:I

    iget v2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$6;->val$fps:I

    invoke-static {v0, v1, v2}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$700(Lio/agora/rtc/video/MediaCodecVideoEncoder;II)I

    move-result v0

    .line 1161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRates async, ret: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaCodecVideoEncoder"

    invoke-static {v2, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    iget-object v1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$6;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    invoke-static {v1}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$100(Lio/agora/rtc/video/MediaCodecVideoEncoder;)J

    move-result-wide v2

    invoke-static {v1, v2, v3, v0}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$800(Lio/agora/rtc/video/MediaCodecVideoEncoder;JI)V

    return-void
.end method
