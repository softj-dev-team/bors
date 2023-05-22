.class public Lzendesk/messaging/MessagingItem$OptionsResponse;
.super Lzendesk/messaging/MessagingItem;
.source "MessagingItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/messaging/MessagingItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OptionsResponse"
.end annotation


# instance fields
.field private final options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/messaging/MessagingItem$Option;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Date;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lzendesk/messaging/MessagingItem$Option;",
            ">;)V"
        }
    .end annotation

    .line 606
    invoke-direct {p0, p1, p2}, Lzendesk/messaging/MessagingItem;-><init>(Ljava/util/Date;Ljava/lang/String;)V

    .line 607
    iput-object p3, p0, Lzendesk/messaging/MessagingItem$OptionsResponse;->options:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzendesk/messaging/MessagingItem$Option;",
            ">;"
        }
    .end annotation

    .line 611
    iget-object v0, p0, Lzendesk/messaging/MessagingItem$OptionsResponse;->options:Ljava/util/List;

    return-object v0
.end method
