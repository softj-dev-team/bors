.class public Lzendesk/messaging/Event$ActivityResult;
.super Lzendesk/messaging/Event;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/messaging/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityResult"
.end annotation


# instance fields
.field private final data:Landroid/content/Intent;

.field private final requestCode:I

.field private final resultCode:I


# direct methods
.method public constructor <init>(IILandroid/content/Intent;Ljava/util/Date;)V
    .locals 1

    const-string v0, "activity_result_received"

    .line 334
    invoke-direct {p0, v0, p4}, Lzendesk/messaging/Event;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    .line 335
    iput p1, p0, Lzendesk/messaging/Event$ActivityResult;->requestCode:I

    .line 336
    iput p2, p0, Lzendesk/messaging/Event$ActivityResult;->resultCode:I

    .line 337
    iput-object p3, p0, Lzendesk/messaging/Event$ActivityResult;->data:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public getData()Landroid/content/Intent;
    .locals 1

    .line 358
    iget-object v0, p0, Lzendesk/messaging/Event$ActivityResult;->data:Landroid/content/Intent;

    return-object v0
.end method

.method public getRequestCode()I
    .locals 1

    .line 344
    iget v0, p0, Lzendesk/messaging/Event$ActivityResult;->requestCode:I

    return v0
.end method

.method public getResultCode()I
    .locals 1

    .line 351
    iget v0, p0, Lzendesk/messaging/Event$ActivityResult;->resultCode:I

    return v0
.end method
