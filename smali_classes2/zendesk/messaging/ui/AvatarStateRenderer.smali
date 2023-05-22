.class Lzendesk/messaging/ui/AvatarStateRenderer;
.super Ljava/lang/Object;
.source "AvatarStateRenderer.java"


# annotations
.annotation runtime Lzendesk/messaging/MessagingActivityScope;
.end annotation


# static fields
.field private static final DEFAULT_AVATAR_DRAWABLE:I

.field private static final LATIN_CHARACTER_REGEX:Ljava/lang/String; = "[a-zA-Z]"


# instance fields
.field private final picasso:Lcom/squareup/picasso/Picasso;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    sget v0, Lzendesk/messaging/R$drawable;->zui_ic_default_avatar_16:I

    sput v0, Lzendesk/messaging/ui/AvatarStateRenderer;->DEFAULT_AVATAR_DRAWABLE:I

    return-void
.end method

.method public constructor <init>(Lcom/squareup/picasso/Picasso;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lzendesk/messaging/ui/AvatarStateRenderer;->picasso:Lcom/squareup/picasso/Picasso;

    return-void
.end method


# virtual methods
.method render(Lzendesk/messaging/ui/AvatarState;Lzendesk/messaging/ui/AvatarView;)V
    .locals 2

    .line 29
    invoke-virtual {p1}, Lzendesk/messaging/ui/AvatarState;->getAvatarUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zendesk/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lzendesk/messaging/ui/AvatarStateRenderer;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {p1}, Lzendesk/messaging/ui/AvatarState;->getAvatarUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lzendesk/messaging/ui/AvatarView;->showImage(Lcom/squareup/picasso/Picasso;Ljava/lang/String;)V

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p1}, Lzendesk/messaging/ui/AvatarState;->getAvatarRes()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {p1}, Lzendesk/messaging/ui/AvatarState;->getAvatarRes()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Lzendesk/messaging/ui/AvatarView;->showDrawable(I)V

    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p1}, Lzendesk/messaging/ui/AvatarState;->getAvatarLetter()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zendesk/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34
    invoke-virtual {p1}, Lzendesk/messaging/ui/AvatarState;->getAvatarLetter()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[a-zA-Z]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35
    invoke-virtual {p1}, Lzendesk/messaging/ui/AvatarState;->getAvatarLetter()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lzendesk/messaging/ui/AvatarState;->getUniqueIdentifier()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lzendesk/messaging/ui/AvatarView;->showLetter(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 37
    :cond_2
    sget v0, Lzendesk/messaging/ui/AvatarStateRenderer;->DEFAULT_AVATAR_DRAWABLE:I

    invoke-virtual {p1}, Lzendesk/messaging/ui/AvatarState;->getUniqueIdentifier()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lzendesk/messaging/ui/AvatarView;->showDefault(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method
