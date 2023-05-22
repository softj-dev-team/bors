.class public Lcom/coloros/ocs/base/common/constant/CommonStatusCodes;
.super Ljava/lang/Object;


# static fields
.field public static final API_NOT_CONNECTED:I = 0xb

.field public static final AUTHCODE_EXPECTED:I = 0x3ec

.field public static final AUTHCODE_INVALID:I = 0x3ef

.field public static final AUTHCODE_RECYCLE:I = 0x3ee

.field public static final AUTHENTICATE_FAIL:I = 0x3ea

.field public static final AUTHENTICATE_SUCCESS:I = 0x3e9

.field public static final CANCELED:I = 0x6

.field public static final CAPABILITY_EXCEPTION:I = 0x3f0

.field public static final CLIENT_UNKNOWN:I = 0xc

.field public static final CONNECTED:I = 0x1

.field public static final CONNECTED_SUCCESS_UNBIND:I = 0x5

.field public static final CONNECTING:I = 0x2

.field public static final CONNECT_FAILED:I = 0x3

.field public static final DISCONNECT:I = 0x4

.field public static final INTERNAL_ERROR:I = 0x7

.field public static final INTERRUPTED:I = 0x9

.field public static final RECONNECTING:I = 0xe

.field public static final SERVICE_ABNORMAL_EXIT:I = 0xd

.field public static final SUCCESS:I = 0x0

.field public static final SUCCESS_CACHE:I = -0x1

.field public static final TASK_NULL:I = 0x8

.field public static final TIMEOUT:I = 0xa

.field public static final TIME_EXPIRED:I = 0x3eb

.field public static final VERSION_INCOMPATIBLE:I = 0x3ed


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStatusCodeString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "unknown status code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "CAPABILITY_EXCEPTION"

    return-object p0

    :pswitch_1
    const-string p0, "AUTHCODE_INVALID"

    return-object p0

    :pswitch_2
    const-string p0, "AUTHCODE_RECYCLE"

    return-object p0

    :pswitch_3
    const-string p0, "VERSION_INCOMPATIBLE"

    return-object p0

    :pswitch_4
    const-string p0, "AUTHCODE_EXPECTED"

    return-object p0

    :pswitch_5
    const-string p0, "TIME_EXPIRED"

    return-object p0

    :pswitch_6
    const-string p0, "AUTHENTICATE_FAIL"

    return-object p0

    :pswitch_7
    const-string p0, "AUTHENTICATE_SUCCESS"

    return-object p0

    :pswitch_8
    const-string p0, "RECONNECTING"

    return-object p0

    :pswitch_9
    const-string p0, "SERVICE_ABNORMAL_EXIT"

    return-object p0

    :pswitch_a
    const-string p0, "CLIENT_UNKNOWN"

    return-object p0

    :pswitch_b
    const-string p0, "API_NOT_CONNECTED"

    return-object p0

    :pswitch_c
    const-string p0, "TIMEOUT"

    return-object p0

    :pswitch_d
    const-string p0, "INTERRUPTED"

    return-object p0

    :pswitch_e
    const-string p0, "TASK_NULL"

    return-object p0

    :pswitch_f
    const-string p0, "INTERNAL_ERROR"

    return-object p0

    :pswitch_10
    const-string p0, "CANCELED"

    return-object p0

    :pswitch_11
    const-string p0, "SUCCESS_UNBIND"

    return-object p0

    :pswitch_12
    const-string p0, "DISCONNECT"

    return-object p0

    :pswitch_13
    const-string p0, "CONNECT_FAILED"

    return-object p0

    :pswitch_14
    const-string p0, "CONNECTING"

    return-object p0

    :pswitch_15
    const-string p0, "CONNECTED"

    return-object p0

    :pswitch_16
    const-string p0, "SUCCESS"

    return-object p0

    :pswitch_17
    const-string p0, "SUCCESS_CACHE"

    return-object p0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e9
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
