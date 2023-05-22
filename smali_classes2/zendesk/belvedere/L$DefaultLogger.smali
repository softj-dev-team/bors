.class Lzendesk/belvedere/L$DefaultLogger;
.super Ljava/lang/Object;
.source "L.java"

# interfaces
.implements Lzendesk/belvedere/L$Logger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/belvedere/L;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DefaultLogger"
.end annotation


# instance fields
.field private loggable:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lzendesk/belvedere/L$DefaultLogger;->loggable:Z

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 45
    iget-boolean v0, p0, Lzendesk/belvedere/L$DefaultLogger;->loggable:Z

    if-eqz v0, :cond_0

    .line 46
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 59
    iget-boolean v0, p0, Lzendesk/belvedere/L$DefaultLogger;->loggable:Z

    if-eqz v0, :cond_0

    .line 60
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 66
    iget-boolean v0, p0, Lzendesk/belvedere/L$DefaultLogger;->loggable:Z

    if-eqz v0, :cond_0

    .line 67
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public setLoggable(Z)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Lzendesk/belvedere/L$DefaultLogger;->loggable:Z

    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 52
    iget-boolean v0, p0, Lzendesk/belvedere/L$DefaultLogger;->loggable:Z

    if-eqz v0, :cond_0

    .line 53
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
