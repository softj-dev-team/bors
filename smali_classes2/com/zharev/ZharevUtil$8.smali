.class final Lcom/zharev/ZharevUtil$8;
.super Ljava/lang/Object;
.source "ZharevUtil.java"

# interfaces
.implements Lcom/lahm/library/EmulatorCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zharev/ZharevUtil;->getHardwareInfo()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findEmulator(Ljava/lang/String;)V
    .locals 1

    .line 499
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
