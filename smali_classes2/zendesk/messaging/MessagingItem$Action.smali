.class public Lzendesk/messaging/MessagingItem$Action;
.super Ljava/lang/Object;
.source "MessagingItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/messaging/MessagingItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# instance fields
.field private final actionId:Ljava/lang/String;

.field private final displayName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 649
    iput-object p1, p0, Lzendesk/messaging/MessagingItem$Action;->actionId:Ljava/lang/String;

    .line 650
    iput-object p2, p0, Lzendesk/messaging/MessagingItem$Action;->displayName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActionId()Ljava/lang/String;
    .locals 1

    .line 654
    iget-object v0, p0, Lzendesk/messaging/MessagingItem$Action;->actionId:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 658
    iget-object v0, p0, Lzendesk/messaging/MessagingItem$Action;->displayName:Ljava/lang/String;

    return-object v0
.end method
