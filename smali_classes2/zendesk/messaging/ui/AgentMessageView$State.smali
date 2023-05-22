.class Lzendesk/messaging/ui/AgentMessageView$State;
.super Ljava/lang/Object;
.source "AgentMessageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/messaging/ui/AgentMessageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "State"
.end annotation


# instance fields
.field private final avatarState:Lzendesk/messaging/ui/AvatarState;

.field private final avatarStateRenderer:Lzendesk/messaging/ui/AvatarStateRenderer;

.field private final isBot:Z

.field private final label:Ljava/lang/String;

.field private final message:Ljava/lang/String;

.field private final props:Lzendesk/messaging/ui/MessagingCellProps;


# direct methods
.method public constructor <init>(Lzendesk/messaging/ui/MessagingCellProps;Ljava/lang/String;Ljava/lang/String;ZLzendesk/messaging/ui/AvatarState;Lzendesk/messaging/ui/AvatarStateRenderer;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lzendesk/messaging/ui/AgentMessageView$State;->props:Lzendesk/messaging/ui/MessagingCellProps;

    .line 84
    iput-object p2, p0, Lzendesk/messaging/ui/AgentMessageView$State;->message:Ljava/lang/String;

    .line 85
    iput-object p3, p0, Lzendesk/messaging/ui/AgentMessageView$State;->label:Ljava/lang/String;

    .line 86
    iput-boolean p4, p0, Lzendesk/messaging/ui/AgentMessageView$State;->isBot:Z

    .line 87
    iput-object p5, p0, Lzendesk/messaging/ui/AgentMessageView$State;->avatarState:Lzendesk/messaging/ui/AvatarState;

    .line 88
    iput-object p6, p0, Lzendesk/messaging/ui/AgentMessageView$State;->avatarStateRenderer:Lzendesk/messaging/ui/AvatarStateRenderer;

    return-void
.end method


# virtual methods
.method getAvatarState()Lzendesk/messaging/ui/AvatarState;
    .locals 1

    .line 108
    iget-object v0, p0, Lzendesk/messaging/ui/AgentMessageView$State;->avatarState:Lzendesk/messaging/ui/AvatarState;

    return-object v0
.end method

.method public getAvatarStateRenderer()Lzendesk/messaging/ui/AvatarStateRenderer;
    .locals 1

    .line 112
    iget-object v0, p0, Lzendesk/messaging/ui/AgentMessageView$State;->avatarStateRenderer:Lzendesk/messaging/ui/AvatarStateRenderer;

    return-object v0
.end method

.method getLabel()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lzendesk/messaging/ui/AgentMessageView$State;->label:Ljava/lang/String;

    return-object v0
.end method

.method getMessage()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lzendesk/messaging/ui/AgentMessageView$State;->message:Ljava/lang/String;

    return-object v0
.end method

.method getProps()Lzendesk/messaging/ui/MessagingCellProps;
    .locals 1

    .line 92
    iget-object v0, p0, Lzendesk/messaging/ui/AgentMessageView$State;->props:Lzendesk/messaging/ui/MessagingCellProps;

    return-object v0
.end method

.method isBot()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lzendesk/messaging/ui/AgentMessageView$State;->isBot:Z

    return v0
.end method
