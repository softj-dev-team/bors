.class public Lzendesk/messaging/Update$ShowDialog;
.super Lzendesk/messaging/Update$State;
.source "Update.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/messaging/Update;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShowDialog"
.end annotation


# instance fields
.field private final dialogContent:Lzendesk/messaging/DialogContent;


# direct methods
.method public constructor <init>(Lzendesk/messaging/DialogContent;)V
    .locals 1

    const-string v0, "show_dialog"

    .line 311
    invoke-direct {p0, v0}, Lzendesk/messaging/Update$State;-><init>(Ljava/lang/String;)V

    .line 312
    iput-object p1, p0, Lzendesk/messaging/Update$ShowDialog;->dialogContent:Lzendesk/messaging/DialogContent;

    return-void
.end method


# virtual methods
.method public getDialogContent()Lzendesk/messaging/DialogContent;
    .locals 1

    .line 316
    iget-object v0, p0, Lzendesk/messaging/Update$ShowDialog;->dialogContent:Lzendesk/messaging/DialogContent;

    return-object v0
.end method
