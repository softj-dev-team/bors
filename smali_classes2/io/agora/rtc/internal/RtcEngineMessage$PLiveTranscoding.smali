.class public Lio/agora/rtc/internal/RtcEngineMessage$PLiveTranscoding;
.super Lio/agora/rtc/internal/Marshallable;
.source "RtcEngineMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/internal/RtcEngineMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PLiveTranscoding"
.end annotation


# static fields
.field private static final SERVER_TYPE:S = 0x0s

.field private static final URI:S = 0x17s


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1127
    invoke-direct {p0}, Lio/agora/rtc/internal/Marshallable;-><init>()V

    return-void
.end method

.method private marshall(Lio/agora/rtc/internal/Marshallable;Lio/agora/rtc/live/LiveTranscoding;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "m",
            "transcoding"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1151
    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/Marshallable;->pushShort(S)V

    const/16 v1, 0x17

    .line 1152
    invoke-virtual {p1, v1}, Lio/agora/rtc/internal/Marshallable;->pushShort(S)V

    .line 1153
    iget v1, p2, Lio/agora/rtc/live/LiveTranscoding;->width:I

    invoke-virtual {p1, v1}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 1154
    iget v1, p2, Lio/agora/rtc/live/LiveTranscoding;->height:I

    invoke-virtual {p1, v1}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 1155
    iget v1, p2, Lio/agora/rtc/live/LiveTranscoding;->videoGop:I

    invoke-virtual {p1, v1}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 1156
    iget v1, p2, Lio/agora/rtc/live/LiveTranscoding;->videoFramerate:I

    invoke-virtual {p1, v1}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 1157
    iget-object v1, p2, Lio/agora/rtc/live/LiveTranscoding;->videoCodecProfile:Lio/agora/rtc/live/LiveTranscoding$VideoCodecProfileType;

    invoke-static {v1}, Lio/agora/rtc/live/LiveTranscoding$VideoCodecProfileType;->getValue(Lio/agora/rtc/live/LiveTranscoding$VideoCodecProfileType;)I

    move-result v1

    invoke-virtual {p1, v1}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 1158
    iget v1, p2, Lio/agora/rtc/live/LiveTranscoding;->videoBitrate:I

    invoke-virtual {p1, v1}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 1159
    iget-object v1, p2, Lio/agora/rtc/live/LiveTranscoding;->watermark:Lio/agora/rtc/video/AgoraImage;

    if-nez v1, :cond_0

    .line 1160
    new-instance v1, Lio/agora/rtc/video/AgoraImage;

    invoke-direct {v1}, Lio/agora/rtc/video/AgoraImage;-><init>()V

    iput-object v1, p2, Lio/agora/rtc/live/LiveTranscoding;->watermark:Lio/agora/rtc/video/AgoraImage;

    .line 1162
    :cond_0
    iget-object v1, p2, Lio/agora/rtc/live/LiveTranscoding;->watermark:Lio/agora/rtc/video/AgoraImage;

    invoke-direct {p0, p1, v1}, Lio/agora/rtc/internal/RtcEngineMessage$PLiveTranscoding;->marshallImage(Lio/agora/rtc/internal/Marshallable;Lio/agora/rtc/video/AgoraImage;)V

    .line 1163
    iget-object v1, p2, Lio/agora/rtc/live/LiveTranscoding;->backgroundImage:Lio/agora/rtc/video/AgoraImage;

    if-nez v1, :cond_1

    .line 1164
    new-instance v1, Lio/agora/rtc/video/AgoraImage;

    invoke-direct {v1}, Lio/agora/rtc/video/AgoraImage;-><init>()V

    iput-object v1, p2, Lio/agora/rtc/live/LiveTranscoding;->backgroundImage:Lio/agora/rtc/video/AgoraImage;

    .line 1166
    :cond_1
    iget-object v1, p2, Lio/agora/rtc/live/LiveTranscoding;->backgroundImage:Lio/agora/rtc/video/AgoraImage;

    invoke-direct {p0, p1, v1}, Lio/agora/rtc/internal/RtcEngineMessage$PLiveTranscoding;->marshallImage(Lio/agora/rtc/internal/Marshallable;Lio/agora/rtc/video/AgoraImage;)V

    .line 1167
    iget-boolean v1, p2, Lio/agora/rtc/live/LiveTranscoding;->lowLatency:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/agora/rtc/internal/Marshallable;->pushBool(Ljava/lang/Boolean;)V

    .line 1168
    iget-object v1, p2, Lio/agora/rtc/live/LiveTranscoding;->audioSampleRate:Lio/agora/rtc/live/LiveTranscoding$AudioSampleRateType;

    invoke-static {v1}, Lio/agora/rtc/live/LiveTranscoding$AudioSampleRateType;->getValue(Lio/agora/rtc/live/LiveTranscoding$AudioSampleRateType;)I

    move-result v1

    invoke-virtual {p1, v1}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 1169
    iget v1, p2, Lio/agora/rtc/live/LiveTranscoding;->audioBitrate:I

    invoke-virtual {p1, v1}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 1170
    iget v1, p2, Lio/agora/rtc/live/LiveTranscoding;->audioChannels:I

    invoke-virtual {p1, v1}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 1171
    iget-object v1, p2, Lio/agora/rtc/live/LiveTranscoding;->audioCodecProfile:Lio/agora/rtc/live/LiveTranscoding$AudioCodecProfileType;

    invoke-static {v1}, Lio/agora/rtc/live/LiveTranscoding$AudioCodecProfileType;->getValue(Lio/agora/rtc/live/LiveTranscoding$AudioCodecProfileType;)I

    move-result v1

    invoke-virtual {p1, v1}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 1173
    iget v1, p2, Lio/agora/rtc/live/LiveTranscoding;->backgroundColor:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 1175
    iget-object v1, p2, Lio/agora/rtc/live/LiveTranscoding;->userConfigExtraInfo:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_2

    .line 1176
    iput-object v2, p2, Lio/agora/rtc/live/LiveTranscoding;->userConfigExtraInfo:Ljava/lang/String;

    .line 1178
    :cond_2
    iget-object v1, p2, Lio/agora/rtc/live/LiveTranscoding;->userConfigExtraInfo:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lio/agora/rtc/internal/Marshallable;->pushString16(Ljava/lang/String;)V

    .line 1180
    iget-object v1, p2, Lio/agora/rtc/live/LiveTranscoding;->metadata:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1181
    iput-object v2, p2, Lio/agora/rtc/live/LiveTranscoding;->metadata:Ljava/lang/String;

    .line 1183
    :cond_3
    iget-object v1, p2, Lio/agora/rtc/live/LiveTranscoding;->metadata:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lio/agora/rtc/internal/Marshallable;->pushString16(Ljava/lang/String;)V

    .line 1187
    invoke-virtual {p2}, Lio/agora/rtc/live/LiveTranscoding;->getUsers()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lio/agora/rtc/live/LiveTranscoding;->getUsers()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 1188
    invoke-virtual {p2}, Lio/agora/rtc/live/LiveTranscoding;->getUserCount()I

    move-result v0

    int-to-short v0, v0

    .line 1189
    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/RtcEngineMessage$PLiveTranscoding;->pushShort(S)V

    .line 1190
    invoke-virtual {p2}, Lio/agora/rtc/live/LiveTranscoding;->getUsers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/agora/rtc/live/LiveTranscoding$TranscodingUser;

    .line 1191
    invoke-direct {p0, p1, v1}, Lio/agora/rtc/internal/RtcEngineMessage$PLiveTranscoding;->marshallUserConfig(Lio/agora/rtc/internal/Marshallable;Lio/agora/rtc/live/LiveTranscoding$TranscodingUser;)V

    goto :goto_0

    :cond_4
    int-to-short v0, v0

    .line 1194
    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/RtcEngineMessage$PLiveTranscoding;->pushShort(S)V

    .line 1198
    :cond_5
    invoke-virtual {p2}, Lio/agora/rtc/live/LiveTranscoding;->getAdvancedFeatures()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/RtcEngineMessage$PLiveTranscoding;->pushShort(S)V

    .line 1199
    invoke-virtual {p2}, Lio/agora/rtc/live/LiveTranscoding;->getAdvancedFeatures()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1200
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lio/agora/rtc/internal/Marshallable;->pushString16(Ljava/lang/String;)V

    .line 1201
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/Marshallable;->pushBool(Ljava/lang/Boolean;)V

    goto :goto_1

    :cond_6
    return-void
.end method

.method private marshallImage(Lio/agora/rtc/internal/Marshallable;Lio/agora/rtc/video/AgoraImage;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "m",
            "image"
        }
    .end annotation

    .line 1143
    iget-object v0, p2, Lio/agora/rtc/video/AgoraImage;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/Marshallable;->pushString16(Ljava/lang/String;)V

    .line 1144
    iget v0, p2, Lio/agora/rtc/video/AgoraImage;->x:I

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 1145
    iget v0, p2, Lio/agora/rtc/video/AgoraImage;->y:I

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 1146
    iget v0, p2, Lio/agora/rtc/video/AgoraImage;->width:I

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 1147
    iget p2, p2, Lio/agora/rtc/video/AgoraImage;->height:I

    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    return-void
.end method

.method private marshallUserConfig(Lio/agora/rtc/internal/Marshallable;Lio/agora/rtc/live/LiveTranscoding$TranscodingUser;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "m",
            "user"
        }
    .end annotation

    .line 1132
    iget v0, p2, Lio/agora/rtc/live/LiveTranscoding$TranscodingUser;->uid:I

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 1133
    iget v0, p2, Lio/agora/rtc/live/LiveTranscoding$TranscodingUser;->x:I

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 1134
    iget v0, p2, Lio/agora/rtc/live/LiveTranscoding$TranscodingUser;->y:I

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 1135
    iget v0, p2, Lio/agora/rtc/live/LiveTranscoding$TranscodingUser;->width:I

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 1136
    iget v0, p2, Lio/agora/rtc/live/LiveTranscoding$TranscodingUser;->height:I

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 1137
    iget v0, p2, Lio/agora/rtc/live/LiveTranscoding$TranscodingUser;->zOrder:I

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 1138
    iget v0, p2, Lio/agora/rtc/live/LiveTranscoding$TranscodingUser;->alpha:F

    float-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Lio/agora/rtc/internal/Marshallable;->pushDouble(D)V

    .line 1139
    iget p2, p2, Lio/agora/rtc/live/LiveTranscoding$TranscodingUser;->audioChannel:I

    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clear()V
    .locals 0

    .line 1127
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->clear()V

    return-void
.end method

.method public bridge synthetic getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1127
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic marshall(Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "buf"
        }
    .end annotation

    .line 1127
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->marshall(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public bridge synthetic marshall()[B
    .locals 1

    .line 1127
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->marshall()[B

    move-result-object v0

    return-object v0
.end method

.method public marshall(Lio/agora/rtc/live/LiveTranscoding;)[B
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transcoding"
        }
    .end annotation

    .line 1212
    invoke-direct {p0, p0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PLiveTranscoding;->marshall(Lio/agora/rtc/internal/Marshallable;Lio/agora/rtc/live/LiveTranscoding;)V

    .line 1213
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->marshall()[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic popAll()[B
    .locals 1

    .line 1127
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->popAll()[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic popBool()Ljava/lang/Boolean;
    .locals 1

    .line 1127
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->popBool()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic popByte()B
    .locals 1

    .line 1127
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->popByte()B

    move-result v0

    return v0
.end method

.method public bridge synthetic popBytes()[B
    .locals 1

    .line 1127
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->popBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic popBytes32()[B
    .locals 1

    .line 1127
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->popBytes32()[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic popInt()I
    .locals 1

    .line 1127
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->popInt()I

    move-result v0

    return v0
.end method

.method public bridge synthetic popInt64()J
    .locals 2

    .line 1127
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->popInt64()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic popIntArray()[I
    .locals 1

    .line 1127
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->popIntArray()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic popShort()S
    .locals 1

    .line 1127
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->popShort()S

    move-result v0

    return v0
.end method

.method public bridge synthetic popShortArray()[S
    .locals 1

    .line 1127
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->popShortArray()[S

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic popString16()Ljava/lang/String;
    .locals 1

    .line 1127
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->popString16()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic popString16UTF8()Ljava/lang/String;
    .locals 1

    .line 1127
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->popString16UTF8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic pushBool(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "val"
        }
    .end annotation

    .line 1127
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->pushBool(Ljava/lang/Boolean;)V

    return-void
.end method

.method public bridge synthetic pushByte(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "val"
        }
    .end annotation

    .line 1127
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->pushByte(B)V

    return-void
.end method

.method public bridge synthetic pushBytes([B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "buf"
        }
    .end annotation

    .line 1127
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->pushBytes([B)V

    return-void
.end method

.method public bridge synthetic pushBytes32([B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "buf"
        }
    .end annotation

    .line 1127
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->pushBytes32([B)V

    return-void
.end method

.method public bridge synthetic pushDouble(D)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "val"
        }
    .end annotation

    .line 1127
    invoke-super {p0, p1, p2}, Lio/agora/rtc/internal/Marshallable;->pushDouble(D)V

    return-void
.end method

.method public bridge synthetic pushInt(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "val"
        }
    .end annotation

    .line 1127
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    return-void
.end method

.method public bridge synthetic pushInt64(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "val"
        }
    .end annotation

    .line 1127
    invoke-super {p0, p1, p2}, Lio/agora/rtc/internal/Marshallable;->pushInt64(J)V

    return-void
.end method

.method public bridge synthetic pushIntArray([I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "vals"
        }
    .end annotation

    .line 1127
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->pushIntArray([I)V

    return-void
.end method

.method public bridge synthetic pushIntArray([Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "vals"
        }
    .end annotation

    .line 1127
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->pushIntArray([Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic pushShort(S)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "val"
        }
    .end annotation

    .line 1127
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->pushShort(S)V

    return-void
.end method

.method public bridge synthetic pushShortArray([S)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "vals"
        }
    .end annotation

    .line 1127
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->pushShortArray([S)V

    return-void
.end method

.method public bridge synthetic pushString16(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "val"
        }
    .end annotation

    .line 1127
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->pushString16(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic pushStringArray(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "vals"
        }
    .end annotation

    .line 1127
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->pushStringArray(Ljava/util/ArrayList;)V

    return-void
.end method

.method public bridge synthetic unmarshall(Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "buf"
        }
    .end annotation

    .line 1127
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->unmarshall(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public bridge synthetic unmarshall([B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "buf"
        }
    .end annotation

    .line 1127
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->unmarshall([B)V

    return-void
.end method
