.class final Lorg/cocos2dx/okhttp3/internal/ws/RealWebSocket$Close;
.super Ljava/lang/Object;
.source "RealWebSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/okhttp3/internal/ws/RealWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Close"
.end annotation


# instance fields
.field final cancelAfterCloseMillis:J

.field final code:I

.field final reason:Lorg/cocos2dx/okio/ByteString;


# direct methods
.method constructor <init>(ILorg/cocos2dx/okio/ByteString;J)V
    .locals 0

    .line 592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 593
    iput p1, p0, Lorg/cocos2dx/okhttp3/internal/ws/RealWebSocket$Close;->code:I

    .line 594
    iput-object p2, p0, Lorg/cocos2dx/okhttp3/internal/ws/RealWebSocket$Close;->reason:Lorg/cocos2dx/okio/ByteString;

    .line 595
    iput-wide p3, p0, Lorg/cocos2dx/okhttp3/internal/ws/RealWebSocket$Close;->cancelAfterCloseMillis:J

    return-void
.end method
