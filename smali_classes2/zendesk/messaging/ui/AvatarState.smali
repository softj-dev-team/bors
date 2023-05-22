.class Lzendesk/messaging/ui/AvatarState;
.super Ljava/lang/Object;
.source "AvatarState.java"


# instance fields
.field private final avatarLetter:Ljava/lang/String;

.field private final avatarRes:Ljava/lang/Integer;

.field private final avatarUrl:Ljava/lang/String;

.field private final uniqueIdentifier:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lzendesk/messaging/ui/AvatarState;->uniqueIdentifier:Ljava/lang/Object;

    .line 22
    iput-object p2, p0, Lzendesk/messaging/ui/AvatarState;->avatarLetter:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lzendesk/messaging/ui/AvatarState;->avatarUrl:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lzendesk/messaging/ui/AvatarState;->avatarRes:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method getAvatarLetter()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lzendesk/messaging/ui/AvatarState;->avatarLetter:Ljava/lang/String;

    return-object v0
.end method

.method getAvatarRes()Ljava/lang/Integer;
    .locals 1

    .line 40
    iget-object v0, p0, Lzendesk/messaging/ui/AvatarState;->avatarRes:Ljava/lang/Integer;

    return-object v0
.end method

.method getAvatarUrl()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lzendesk/messaging/ui/AvatarState;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method getUniqueIdentifier()Ljava/lang/Object;
    .locals 1

    .line 28
    iget-object v0, p0, Lzendesk/messaging/ui/AvatarState;->uniqueIdentifier:Ljava/lang/Object;

    return-object v0
.end method
