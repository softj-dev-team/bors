.class public Lzendesk/messaging/Update$State$HideTyping;
.super Lzendesk/messaging/Update$State;
.source "Update.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/messaging/Update$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HideTyping"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "hide_typing"

    .line 90
    invoke-direct {p0, v0}, Lzendesk/messaging/Update$State;-><init>(Ljava/lang/String;)V

    return-void
.end method
