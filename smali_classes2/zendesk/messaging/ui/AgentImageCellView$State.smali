.class Lzendesk/messaging/ui/AgentImageCellView$State;
.super Ljava/lang/Object;
.source "AgentImageCellView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/messaging/ui/AgentImageCellView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "State"
.end annotation


# instance fields
.field private final attachment:Lzendesk/messaging/Attachment;

.field private final avatarState:Lzendesk/messaging/ui/AvatarState;

.field private final avatarStateRenderer:Lzendesk/messaging/ui/AvatarStateRenderer;

.field private final isBot:Z

.field private final label:Ljava/lang/String;

.field private final picasso:Lcom/squareup/picasso/Picasso;

.field private final props:Lzendesk/messaging/ui/MessagingCellProps;


# direct methods
.method constructor <init>(Lcom/squareup/picasso/Picasso;Lzendesk/messaging/ui/MessagingCellProps;Lzendesk/messaging/Attachment;Ljava/lang/String;ZLzendesk/messaging/ui/AvatarState;Lzendesk/messaging/ui/AvatarStateRenderer;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lzendesk/messaging/ui/AgentImageCellView$State;->picasso:Lcom/squareup/picasso/Picasso;

    .line 116
    iput-object p2, p0, Lzendesk/messaging/ui/AgentImageCellView$State;->props:Lzendesk/messaging/ui/MessagingCellProps;

    .line 117
    iput-object p3, p0, Lzendesk/messaging/ui/AgentImageCellView$State;->attachment:Lzendesk/messaging/Attachment;

    .line 118
    iput-object p4, p0, Lzendesk/messaging/ui/AgentImageCellView$State;->label:Ljava/lang/String;

    .line 119
    iput-boolean p5, p0, Lzendesk/messaging/ui/AgentImageCellView$State;->isBot:Z

    .line 120
    iput-object p6, p0, Lzendesk/messaging/ui/AgentImageCellView$State;->avatarState:Lzendesk/messaging/ui/AvatarState;

    .line 121
    iput-object p7, p0, Lzendesk/messaging/ui/AgentImageCellView$State;->avatarStateRenderer:Lzendesk/messaging/ui/AvatarStateRenderer;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_d

    .line 157
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_5

    .line 161
    :cond_1
    check-cast p1, Lzendesk/messaging/ui/AgentImageCellView$State;

    .line 163
    invoke-virtual {p0}, Lzendesk/messaging/ui/AgentImageCellView$State;->isBot()Z

    move-result v2

    invoke-virtual {p1}, Lzendesk/messaging/ui/AgentImageCellView$State;->isBot()Z

    move-result v3

    if-eq v2, v3, :cond_2

    return v1

    .line 166
    :cond_2
    invoke-virtual {p0}, Lzendesk/messaging/ui/AgentImageCellView$State;->getPicasso()Lcom/squareup/picasso/Picasso;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lzendesk/messaging/ui/AgentImageCellView$State;->getPicasso()Lcom/squareup/picasso/Picasso;

    move-result-object v2

    invoke-virtual {p1}, Lzendesk/messaging/ui/AgentImageCellView$State;->getPicasso()Lcom/squareup/picasso/Picasso;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lzendesk/messaging/ui/AgentImageCellView$State;->getPicasso()Lcom/squareup/picasso/Picasso;

    move-result-object v2

    if-eqz v2, :cond_4

    :goto_0
    return v1

    .line 169
    :cond_4
    invoke-virtual {p0}, Lzendesk/messaging/ui/AgentImageCellView$State;->getProps()Lzendesk/messaging/ui/MessagingCellProps;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lzendesk/messaging/ui/AgentImageCellView$State;->getProps()Lzendesk/messaging/ui/MessagingCellProps;

    move-result-object v2

    invoke-virtual {p1}, Lzendesk/messaging/ui/AgentImageCellView$State;->getProps()Lzendesk/messaging/ui/MessagingCellProps;

    move-result-object v3

    invoke-virtual {v2, v3}, Lzendesk/messaging/ui/MessagingCellProps;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lzendesk/messaging/ui/AgentImageCellView$State;->getProps()Lzendesk/messaging/ui/MessagingCellProps;

    move-result-object v2

    if-eqz v2, :cond_6

    :goto_1
    return v1

    .line 172
    :cond_6
    invoke-virtual {p0}, Lzendesk/messaging/ui/AgentImageCellView$State;->getLabel()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lzendesk/messaging/ui/AgentImageCellView$State;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lzendesk/messaging/ui/AgentImageCellView$State;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Lzendesk/messaging/ui/AgentImageCellView$State;->getLabel()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    :goto_2
    return v1

    .line 175
    :cond_8
    invoke-virtual {p0}, Lzendesk/messaging/ui/AgentImageCellView$State;->getAttachment()Lzendesk/messaging/Attachment;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 176
    invoke-virtual {p0}, Lzendesk/messaging/ui/AgentImageCellView$State;->getAttachment()Lzendesk/messaging/Attachment;

    move-result-object v2

    invoke-virtual {p1}, Lzendesk/messaging/ui/AgentImageCellView$State;->getAttachment()Lzendesk/messaging/Attachment;

    move-result-object v3

    invoke-virtual {v2, v3}, Lzendesk/messaging/Attachment;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_3

    :cond_9
    invoke-virtual {p1}, Lzendesk/messaging/ui/AgentImageCellView$State;->getAttachment()Lzendesk/messaging/Attachment;

    move-result-object v2

    if-eqz v2, :cond_a

    :goto_3
    return v1

    .line 179
    :cond_a
    invoke-virtual {p0}, Lzendesk/messaging/ui/AgentImageCellView$State;->getAvatarState()Lzendesk/messaging/ui/AvatarState;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 180
    invoke-virtual {p0}, Lzendesk/messaging/ui/AgentImageCellView$State;->getAvatarState()Lzendesk/messaging/ui/AvatarState;

    move-result-object v0

    invoke-virtual {p1}, Lzendesk/messaging/ui/AgentImageCellView$State;->getAvatarState()Lzendesk/messaging/ui/AvatarState;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4

    :cond_b
    invoke-virtual {p1}, Lzendesk/messaging/ui/AgentImageCellView$State;->getAvatarState()Lzendesk/messaging/ui/AvatarState;

    move-result-object p1

    if-nez p1, :cond_c

    goto :goto_4

    :cond_c
    const/4 v0, 0x0

    :goto_4
    return v0

    :cond_d
    :goto_5
    return v1
.end method

.method public getAttachment()Lzendesk/messaging/Attachment;
    .locals 1

    .line 133
    iget-object v0, p0, Lzendesk/messaging/ui/AgentImageCellView$State;->attachment:Lzendesk/messaging/Attachment;

    return-object v0
.end method

.method getAvatarState()Lzendesk/messaging/ui/AvatarState;
    .locals 1

    .line 145
    iget-object v0, p0, Lzendesk/messaging/ui/AgentImageCellView$State;->avatarState:Lzendesk/messaging/ui/AvatarState;

    return-object v0
.end method

.method getAvatarStateRenderer()Lzendesk/messaging/ui/AvatarStateRenderer;
    .locals 1

    .line 149
    iget-object v0, p0, Lzendesk/messaging/ui/AgentImageCellView$State;->avatarStateRenderer:Lzendesk/messaging/ui/AvatarStateRenderer;

    return-object v0
.end method

.method getLabel()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lzendesk/messaging/ui/AgentImageCellView$State;->label:Ljava/lang/String;

    return-object v0
.end method

.method getPicasso()Lcom/squareup/picasso/Picasso;
    .locals 1

    .line 125
    iget-object v0, p0, Lzendesk/messaging/ui/AgentImageCellView$State;->picasso:Lcom/squareup/picasso/Picasso;

    return-object v0
.end method

.method getProps()Lzendesk/messaging/ui/MessagingCellProps;
    .locals 1

    .line 129
    iget-object v0, p0, Lzendesk/messaging/ui/AgentImageCellView$State;->props:Lzendesk/messaging/ui/MessagingCellProps;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 185
    invoke-virtual {p0}, Lzendesk/messaging/ui/AgentImageCellView$State;->getPicasso()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lzendesk/messaging/ui/AgentImageCellView$State;->getPicasso()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 186
    invoke-virtual {p0}, Lzendesk/messaging/ui/AgentImageCellView$State;->getProps()Lzendesk/messaging/ui/MessagingCellProps;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lzendesk/messaging/ui/AgentImageCellView$State;->getProps()Lzendesk/messaging/ui/MessagingCellProps;

    move-result-object v2

    invoke-virtual {v2}, Lzendesk/messaging/ui/MessagingCellProps;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 187
    invoke-virtual {p0}, Lzendesk/messaging/ui/AgentImageCellView$State;->getLabel()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lzendesk/messaging/ui/AgentImageCellView$State;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 188
    invoke-virtual {p0}, Lzendesk/messaging/ui/AgentImageCellView$State;->isBot()Z

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 189
    invoke-virtual {p0}, Lzendesk/messaging/ui/AgentImageCellView$State;->getAttachment()Lzendesk/messaging/Attachment;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lzendesk/messaging/ui/AgentImageCellView$State;->getAttachment()Lzendesk/messaging/Attachment;

    move-result-object v2

    invoke-virtual {v2}, Lzendesk/messaging/Attachment;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 190
    invoke-virtual {p0}, Lzendesk/messaging/ui/AgentImageCellView$State;->getAvatarState()Lzendesk/messaging/ui/AvatarState;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lzendesk/messaging/ui/AgentImageCellView$State;->getAvatarState()Lzendesk/messaging/ui/AvatarState;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method isBot()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Lzendesk/messaging/ui/AgentImageCellView$State;->isBot:Z

    return v0
.end method
