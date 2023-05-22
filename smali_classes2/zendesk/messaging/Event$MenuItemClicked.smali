.class public Lzendesk/messaging/Event$MenuItemClicked;
.super Lzendesk/messaging/Event;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/messaging/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MenuItemClicked"
.end annotation


# instance fields
.field private final menuItemId:I


# direct methods
.method public constructor <init>(Ljava/util/Date;I)V
    .locals 1

    const-string v0, "menu_item_clicked"

    .line 371
    invoke-direct {p0, v0, p1}, Lzendesk/messaging/Event;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    .line 372
    iput p2, p0, Lzendesk/messaging/Event$MenuItemClicked;->menuItemId:I

    return-void
.end method


# virtual methods
.method public getMenuItemId()I
    .locals 1

    .line 381
    iget v0, p0, Lzendesk/messaging/Event$MenuItemClicked;->menuItemId:I

    return v0
.end method
