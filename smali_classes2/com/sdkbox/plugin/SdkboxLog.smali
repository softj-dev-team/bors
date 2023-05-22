.class public Lcom/sdkbox/plugin/SdkboxLog;
.super Ljava/lang/Object;
.source "SdkboxLog.java"


# static fields
.field public static final DEBUG:I = 0x0

.field public static final ERROR:I = 0x3

.field public static final INFO:I = 0x1

.field public static final TAG:Ljava/lang/String; = "SDKBOX_CORE"

.field public static final WARN:I = 0x2

.field private static _defaultLevel:I

.field private static _logs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sdkbox/plugin/SdkboxLog;",
            ">;"
        }
    .end annotation
.end field

.field private static _remoteUrl:Ljava/lang/String;


# instance fields
.field private _level:I

.field private _tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sdkbox/plugin/SdkboxLog;->_logs:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 16
    sput v0, Lcom/sdkbox/plugin/SdkboxLog;->_defaultLevel:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/sdkbox/plugin/SdkboxLog;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p2, p0, Lcom/sdkbox/plugin/SdkboxLog;->_level:I

    .line 28
    iput-object p1, p0, Lcom/sdkbox/plugin/SdkboxLog;->_tag:Ljava/lang/String;

    return-void
.end method

.method public static GetLog(Ljava/lang/String;)Lcom/sdkbox/plugin/SdkboxLog;
    .locals 2

    .line 83
    sget-object v0, Lcom/sdkbox/plugin/SdkboxLog;->_logs:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdkbox/plugin/SdkboxLog;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/sdkbox/plugin/SdkboxLog;

    sget v1, Lcom/sdkbox/plugin/SdkboxLog;->_defaultLevel:I

    invoke-direct {v0, p0, v1}, Lcom/sdkbox/plugin/SdkboxLog;-><init>(Ljava/lang/String;I)V

    .line 86
    sget-object v1, Lcom/sdkbox/plugin/SdkboxLog;->_logs:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static NewLog(Ljava/lang/String;)V
    .locals 0

    .line 92
    invoke-static {p0}, Lcom/sdkbox/plugin/SdkboxLog;->GetLog(Ljava/lang/String;)Lcom/sdkbox/plugin/SdkboxLog;

    return-void
.end method

.method private static __remote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 141
    sget-object v0, Lcom/sdkbox/plugin/SdkboxLog;->_remoteUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 142
    new-instance v0, Lcom/sdkbox/services/XMLHttpRequest;

    invoke-direct {v0}, Lcom/sdkbox/services/XMLHttpRequest;-><init>()V

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Java]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "> "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "msg"

    invoke-virtual {v0, p1, p0}, Lcom/sdkbox/services/XMLHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    sget-object p0, Lcom/sdkbox/plugin/SdkboxLog;->_remoteUrl:Ljava/lang/String;

    const/4 p1, 0x1

    const-string p2, "GET"

    invoke-virtual {v0, p2, p0, p1}, Lcom/sdkbox/services/XMLHttpRequest;->send(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 100
    invoke-static {p0}, Lcom/sdkbox/plugin/SdkboxLog;->GetLog(Ljava/lang/String;)Lcom/sdkbox/plugin/SdkboxLog;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 102
    invoke-virtual {p0, p1, p2}, Lcom/sdkbox/plugin/SdkboxLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 121
    invoke-static {p0}, Lcom/sdkbox/plugin/SdkboxLog;->GetLog(Ljava/lang/String;)Lcom/sdkbox/plugin/SdkboxLog;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 123
    invoke-virtual {p0, p1, p2}, Lcom/sdkbox/plugin/SdkboxLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static enableRemote(Ljava/lang/String;)V
    .locals 0

    .line 137
    sput-object p0, Lcom/sdkbox/plugin/SdkboxLog;->_remoteUrl:Ljava/lang/String;

    return-void
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 107
    invoke-static {p0}, Lcom/sdkbox/plugin/SdkboxLog;->GetLog(Ljava/lang/String;)Lcom/sdkbox/plugin/SdkboxLog;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/sdkbox/plugin/SdkboxLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static native nativeTrack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static setDefaultDebugLevel(I)V
    .locals 0

    .line 96
    sput p0, Lcom/sdkbox/plugin/SdkboxLog;->_defaultLevel:I

    return-void
.end method

.method public static setLevelForTag(Ljava/lang/String;I)V
    .locals 1

    .line 128
    invoke-static {p0}, Lcom/sdkbox/plugin/SdkboxLog;->GetLog(Ljava/lang/String;)Lcom/sdkbox/plugin/SdkboxLog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0, p1}, Lcom/sdkbox/plugin/SdkboxLog;->setLevel(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, p1, v0

    const-string p0, "SDKBOX_CORE"

    const-string v0, "SetLevel for Logger with unknown tag: \'%s"

    .line 132
    invoke-static {p0, v0, p1}, Lcom/sdkbox/plugin/SdkboxLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 149
    new-instance v0, Lcom/sdkbox/plugin/SdkboxLog$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/sdkbox/plugin/SdkboxLog$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sdkbox/plugin/SDKBox;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 114
    invoke-static {p0}, Lcom/sdkbox/plugin/SdkboxLog;->GetLog(Ljava/lang/String;)Lcom/sdkbox/plugin/SdkboxLog;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 116
    invoke-virtual {p0, p1, p2}, Lcom/sdkbox/plugin/SdkboxLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs __l(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 37
    iget v0, p0, Lcom/sdkbox/plugin/SdkboxLog;->_level:I

    if-lt p1, v0, :cond_5

    .line 38
    array-length v0, p3

    if-eqz v0, :cond_0

    .line 40
    :try_start_0
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    if-eqz p1, :cond_4

    const/4 p3, 0x1

    if-eq p1, p3, :cond_3

    const/4 p3, 0x2

    if-eq p1, p3, :cond_2

    const/4 p3, 0x3

    if-eq p1, p3, :cond_1

    return-void

    .line 58
    :cond_1
    iget-object p1, p0, Lcom/sdkbox/plugin/SdkboxLog;->_tag:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 55
    :cond_2
    iget-object p1, p0, Lcom/sdkbox/plugin/SdkboxLog;->_tag:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 52
    :cond_3
    iget-object p1, p0, Lcom/sdkbox/plugin/SdkboxLog;->_tag:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 49
    :cond_4
    iget-object p1, p0, Lcom/sdkbox/plugin/SdkboxLog;->_tag:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method public varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p0, v0, p1, p2}, Lcom/sdkbox/plugin/SdkboxLog;->__l(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x3

    .line 79
    invoke-virtual {p0, v0, p1, p2}, Lcom/sdkbox/plugin/SdkboxLog;->__l(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 71
    invoke-virtual {p0, v0, p1, p2}, Lcom/sdkbox/plugin/SdkboxLog;->__l(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/sdkbox/plugin/SdkboxLog;->_level:I

    return-void
.end method

.method public varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    .line 75
    invoke-virtual {p0, v0, p1, p2}, Lcom/sdkbox/plugin/SdkboxLog;->__l(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
