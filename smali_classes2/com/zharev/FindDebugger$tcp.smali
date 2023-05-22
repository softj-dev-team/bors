.class public Lcom/zharev/FindDebugger$tcp;
.super Ljava/lang/Object;
.source "FindDebugger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zharev/FindDebugger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "tcp"
.end annotation


# instance fields
.field public id:I

.field public localIp:J

.field public localPort:I

.field public remoteIp:I

.field public remotePort:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p4, 0x10

    .line 125
    invoke-static {p1, p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/zharev/FindDebugger$tcp;->id:I

    .line 126
    invoke-static {p2, p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/zharev/FindDebugger$tcp;->localIp:J

    .line 127
    invoke-static {p3, p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/zharev/FindDebugger$tcp;->localPort:I

    return-void
.end method

.method static create([Ljava/lang/String;)Lcom/zharev/FindDebugger$tcp;
    .locals 16

    .line 118
    new-instance v15, Lcom/zharev/FindDebugger$tcp;

    const/4 v0, 0x1

    aget-object v1, p0, v0

    const/4 v0, 0x2

    aget-object v2, p0, v0

    const/4 v0, 0x3

    aget-object v3, p0, v0

    const/4 v0, 0x4

    aget-object v4, p0, v0

    const/4 v0, 0x5

    aget-object v5, p0, v0

    const/4 v0, 0x6

    aget-object v6, p0, v0

    const/4 v0, 0x7

    aget-object v7, p0, v0

    const/16 v0, 0x8

    aget-object v8, p0, v0

    const/16 v0, 0x9

    aget-object v9, p0, v0

    const/16 v0, 0xa

    aget-object v10, p0, v0

    const/16 v0, 0xb

    aget-object v11, p0, v0

    const/16 v0, 0xc

    aget-object v12, p0, v0

    const/16 v0, 0xd

    aget-object v13, p0, v0

    const/16 v0, 0xe

    aget-object v14, p0, v0

    move-object v0, v15

    invoke-direct/range {v0 .. v14}, Lcom/zharev/FindDebugger$tcp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v15
.end method
