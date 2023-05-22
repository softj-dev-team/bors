.class public Lzendesk/messaging/Event$ResponseOptionClicked;
.super Lzendesk/messaging/Event;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/messaging/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResponseOptionClicked"
.end annotation


# instance fields
.field private final clickedOption:Lzendesk/messaging/MessagingItem$Option;

.field private final optionsResponse:Lzendesk/messaging/MessagingItem$OptionsResponse;


# direct methods
.method public constructor <init>(Lzendesk/messaging/MessagingItem$OptionsResponse;Lzendesk/messaging/MessagingItem$Option;Ljava/util/Date;)V
    .locals 1

    const-string v0, "response_option_clicked"

    .line 250
    invoke-direct {p0, v0, p3}, Lzendesk/messaging/Event;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    .line 251
    iput-object p1, p0, Lzendesk/messaging/Event$ResponseOptionClicked;->optionsResponse:Lzendesk/messaging/MessagingItem$OptionsResponse;

    .line 252
    iput-object p2, p0, Lzendesk/messaging/Event$ResponseOptionClicked;->clickedOption:Lzendesk/messaging/MessagingItem$Option;

    return-void
.end method


# virtual methods
.method public getClickedOption()Lzendesk/messaging/MessagingItem$Option;
    .locals 1

    .line 266
    iget-object v0, p0, Lzendesk/messaging/Event$ResponseOptionClicked;->clickedOption:Lzendesk/messaging/MessagingItem$Option;

    return-object v0
.end method

.method public getOptionsResponse()Lzendesk/messaging/MessagingItem$OptionsResponse;
    .locals 1

    .line 259
    iget-object v0, p0, Lzendesk/messaging/Event$ResponseOptionClicked;->optionsResponse:Lzendesk/messaging/MessagingItem$OptionsResponse;

    return-object v0
.end method
