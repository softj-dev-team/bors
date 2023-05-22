.class public Lio/agora/rtc/RtcEngineConfig;
.super Ljava/lang/Object;
.source "RtcEngineConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/RtcEngineConfig$AreaCode;
    }
.end annotation


# instance fields
.field public mAppId:Ljava/lang/String;

.field public mAreaCode:I

.field public mContext:Landroid/content/Context;

.field public mEventHandler:Lio/agora/rtc/IRtcEngineEventHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lio/agora/rtc/RtcEngineConfig;->mContext:Landroid/content/Context;

    .line 37
    iput-object v0, p0, Lio/agora/rtc/RtcEngineConfig;->mEventHandler:Lio/agora/rtc/IRtcEngineEventHandler;

    const-string v0, ""

    .line 38
    iput-object v0, p0, Lio/agora/rtc/RtcEngineConfig;->mAppId:Ljava/lang/String;

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lio/agora/rtc/RtcEngineConfig;->mAreaCode:I

    return-void
.end method
