.class public Lzendesk/messaging/components/Timer$Factory;
.super Ljava/lang/Object;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/messaging/components/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lzendesk/messaging/components/Timer$Factory;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Runnable;I)Lzendesk/messaging/components/Timer;
    .locals 2

    .line 20
    new-instance v0, Lzendesk/messaging/components/Timer;

    iget-object v1, p0, Lzendesk/messaging/components/Timer$Factory;->handler:Landroid/os/Handler;

    invoke-direct {v0, v1, p1, p2}, Lzendesk/messaging/components/Timer;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;I)V

    return-object v0
.end method
