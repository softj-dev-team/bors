.class Lzendesk/messaging/TimestampFactory;
.super Ljava/lang/Object;
.source "TimestampFactory.java"


# static fields
.field private static final FLAGS:I = 0x20015


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lzendesk/messaging/TimestampFactory;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method createTimestamp(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    .line 30
    iget-object v0, p0, Lzendesk/messaging/TimestampFactory;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const p1, 0x20015

    invoke-static {v0, v1, v2, p1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
