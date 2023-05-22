.class Lzendesk/messaging/ui/ResponseOptionsViewState;
.super Ljava/lang/Object;
.source "ResponseOptionsViewState.java"


# instance fields
.field private final listener:Lzendesk/messaging/ui/ResponseOptionHandler;

.field private final options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/messaging/MessagingItem$Option;",
            ">;"
        }
    .end annotation
.end field

.field private final props:Lzendesk/messaging/ui/MessagingCellProps;


# direct methods
.method constructor <init>(Ljava/util/List;Lzendesk/messaging/ui/ResponseOptionHandler;Lzendesk/messaging/ui/MessagingCellProps;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/messaging/MessagingItem$Option;",
            ">;",
            "Lzendesk/messaging/ui/ResponseOptionHandler;",
            "Lzendesk/messaging/ui/MessagingCellProps;",
            ")V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lzendesk/messaging/ui/ResponseOptionsViewState;->options:Ljava/util/List;

    .line 20
    iput-object p2, p0, Lzendesk/messaging/ui/ResponseOptionsViewState;->listener:Lzendesk/messaging/ui/ResponseOptionHandler;

    .line 21
    iput-object p3, p0, Lzendesk/messaging/ui/ResponseOptionsViewState;->props:Lzendesk/messaging/ui/MessagingCellProps;

    return-void
.end method


# virtual methods
.method getListener()Lzendesk/messaging/ui/ResponseOptionHandler;
    .locals 1

    .line 30
    iget-object v0, p0, Lzendesk/messaging/ui/ResponseOptionsViewState;->listener:Lzendesk/messaging/ui/ResponseOptionHandler;

    return-object v0
.end method

.method getOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzendesk/messaging/MessagingItem$Option;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lzendesk/messaging/ui/ResponseOptionsViewState;->options:Ljava/util/List;

    return-object v0
.end method

.method getProps()Lzendesk/messaging/ui/MessagingCellProps;
    .locals 1

    .line 34
    iget-object v0, p0, Lzendesk/messaging/ui/ResponseOptionsViewState;->props:Lzendesk/messaging/ui/MessagingCellProps;

    return-object v0
.end method
