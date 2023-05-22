.class public Lzendesk/messaging/Engine$TransferOptionDescription;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/messaging/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransferOptionDescription"
.end annotation


# instance fields
.field private final displayName:Ljava/lang/String;

.field private final engineId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lzendesk/messaging/Engine$TransferOptionDescription;->engineId:Ljava/lang/String;

    .line 115
    iput-object p2, p0, Lzendesk/messaging/Engine$TransferOptionDescription;->displayName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lzendesk/messaging/Engine$TransferOptionDescription;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEngineId()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lzendesk/messaging/Engine$TransferOptionDescription;->engineId:Ljava/lang/String;

    return-object v0
.end method
