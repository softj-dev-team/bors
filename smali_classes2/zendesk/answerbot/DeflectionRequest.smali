.class final Lzendesk/answerbot/DeflectionRequest;
.super Ljava/lang/Object;
.source "DeflectionRequest.java"


# instance fields
.field private final deflectionChannelId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deflection_channel_id"
    .end annotation
.end field

.field private final enquiry:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enquiry"
    .end annotation
.end field

.field private final interactionReference:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "interaction_reference"
    .end annotation
.end field

.field private final interactionReferenceType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "interaction_reference_type"
    .end annotation
.end field

.field private final labels:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "labels"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final locale:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "locale"
    .end annotation
.end field

.field private final viaId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "via_id"
    .end annotation
.end field


# direct methods
.method constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lzendesk/answerbot/DeflectionRequest;->viaId:I

    .line 42
    iput p2, p0, Lzendesk/answerbot/DeflectionRequest;->deflectionChannelId:I

    .line 43
    iput-object p3, p0, Lzendesk/answerbot/DeflectionRequest;->enquiry:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lzendesk/answerbot/DeflectionRequest;->locale:Ljava/lang/String;

    .line 45
    iput-object p5, p0, Lzendesk/answerbot/DeflectionRequest;->labels:Ljava/util/List;

    .line 46
    iput-object p6, p0, Lzendesk/answerbot/DeflectionRequest;->interactionReference:Ljava/lang/String;

    .line 47
    iput p7, p0, Lzendesk/answerbot/DeflectionRequest;->interactionReferenceType:I

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

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_4

    .line 59
    :cond_1
    check-cast p1, Lzendesk/answerbot/DeflectionRequest;

    .line 61
    iget v2, p0, Lzendesk/answerbot/DeflectionRequest;->viaId:I

    iget v3, p1, Lzendesk/answerbot/DeflectionRequest;->viaId:I

    if-eq v2, v3, :cond_2

    return v1

    .line 64
    :cond_2
    iget v2, p0, Lzendesk/answerbot/DeflectionRequest;->deflectionChannelId:I

    iget v3, p1, Lzendesk/answerbot/DeflectionRequest;->deflectionChannelId:I

    if-eq v2, v3, :cond_3

    return v1

    .line 67
    :cond_3
    iget v2, p0, Lzendesk/answerbot/DeflectionRequest;->interactionReferenceType:I

    iget v3, p1, Lzendesk/answerbot/DeflectionRequest;->interactionReferenceType:I

    if-eq v2, v3, :cond_4

    return v1

    .line 70
    :cond_4
    iget-object v2, p0, Lzendesk/answerbot/DeflectionRequest;->enquiry:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v3, p1, Lzendesk/answerbot/DeflectionRequest;->enquiry:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lzendesk/answerbot/DeflectionRequest;->enquiry:Ljava/lang/String;

    if-eqz v2, :cond_6

    :goto_0
    return v1

    .line 73
    :cond_6
    iget-object v2, p0, Lzendesk/answerbot/DeflectionRequest;->locale:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v3, p1, Lzendesk/answerbot/DeflectionRequest;->locale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_1

    :cond_7
    iget-object v2, p1, Lzendesk/answerbot/DeflectionRequest;->locale:Ljava/lang/String;

    if-eqz v2, :cond_8

    :goto_1
    return v1

    .line 76
    :cond_8
    iget-object v2, p0, Lzendesk/answerbot/DeflectionRequest;->labels:Ljava/util/List;

    if-eqz v2, :cond_9

    iget-object v3, p1, Lzendesk/answerbot/DeflectionRequest;->labels:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_2

    :cond_9
    iget-object v2, p1, Lzendesk/answerbot/DeflectionRequest;->labels:Ljava/util/List;

    if-eqz v2, :cond_a

    :goto_2
    return v1

    .line 79
    :cond_a
    iget-object v2, p0, Lzendesk/answerbot/DeflectionRequest;->interactionReference:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object p1, p1, Lzendesk/answerbot/DeflectionRequest;->interactionReference:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 80
    :cond_b
    iget-object p1, p1, Lzendesk/answerbot/DeflectionRequest;->interactionReference:Ljava/lang/String;

    if-nez p1, :cond_c

    goto :goto_3

    :cond_c
    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_d
    :goto_4
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 85
    iget v0, p0, Lzendesk/answerbot/DeflectionRequest;->viaId:I

    mul-int/lit8 v0, v0, 0x1f

    .line 86
    iget v1, p0, Lzendesk/answerbot/DeflectionRequest;->deflectionChannelId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 87
    iget-object v1, p0, Lzendesk/answerbot/DeflectionRequest;->enquiry:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 88
    iget-object v1, p0, Lzendesk/answerbot/DeflectionRequest;->locale:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 89
    iget-object v1, p0, Lzendesk/answerbot/DeflectionRequest;->labels:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 90
    iget-object v1, p0, Lzendesk/answerbot/DeflectionRequest;->interactionReference:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 91
    iget v1, p0, Lzendesk/answerbot/DeflectionRequest;->interactionReferenceType:I

    add-int/2addr v0, v1

    return v0
.end method
