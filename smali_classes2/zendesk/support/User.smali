.class public Lzendesk/support/User;
.super Ljava/lang/Object;
.source "User.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private agent:Z

.field private id:Ljava/lang/Long;

.field private name:Ljava/lang/String;

.field private organizationId:Ljava/lang/Long;

.field private photo:Lzendesk/support/Attachment;

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private userFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 53
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/User;->id:Ljava/lang/Long;

    const-string v1, ""

    .line 54
    iput-object v1, p0, Lzendesk/support/User;->name:Ljava/lang/String;

    const/4 v1, 0x0

    .line 55
    iput-object v1, p0, Lzendesk/support/User;->photo:Lzendesk/support/Attachment;

    const/4 v1, 0x0

    .line 56
    iput-boolean v1, p0, Lzendesk/support/User;->agent:Z

    .line 57
    iput-object v0, p0, Lzendesk/support/User;->organizationId:Ljava/lang/Long;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzendesk/support/User;->tags:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lzendesk/support/User;->userFields:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Lzendesk/support/Attachment;ZLjava/lang/Long;Ljava/util/List;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Lzendesk/support/Attachment;",
            "Z",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lzendesk/support/User;->id:Ljava/lang/Long;

    .line 41
    iput-object p2, p0, Lzendesk/support/User;->name:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lzendesk/support/User;->photo:Lzendesk/support/Attachment;

    .line 43
    iput-boolean p4, p0, Lzendesk/support/User;->agent:Z

    .line 44
    iput-object p5, p0, Lzendesk/support/User;->organizationId:Ljava/lang/Long;

    .line 45
    iput-object p6, p0, Lzendesk/support/User;->tags:Ljava/util/List;

    .line 46
    iput-object p7, p0, Lzendesk/support/User;->userFields:Ljava/util/Map;

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

    .line 136
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_5

    .line 140
    :cond_1
    check-cast p1, Lzendesk/support/User;

    .line 142
    iget-boolean v2, p0, Lzendesk/support/User;->agent:Z

    iget-boolean v3, p1, Lzendesk/support/User;->agent:Z

    if-eq v2, v3, :cond_2

    return v1

    .line 145
    :cond_2
    iget-object v2, p0, Lzendesk/support/User;->id:Ljava/lang/Long;

    if-eqz v2, :cond_3

    iget-object v3, p1, Lzendesk/support/User;->id:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lzendesk/support/User;->id:Ljava/lang/Long;

    if-eqz v2, :cond_4

    :goto_0
    return v1

    .line 148
    :cond_4
    iget-object v2, p0, Lzendesk/support/User;->photo:Lzendesk/support/Attachment;

    if-eqz v2, :cond_5

    iget-object v3, p1, Lzendesk/support/User;->photo:Lzendesk/support/Attachment;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_5
    iget-object v2, p1, Lzendesk/support/User;->photo:Lzendesk/support/Attachment;

    if-eqz v2, :cond_6

    :goto_1
    return v1

    .line 151
    :cond_6
    iget-object v2, p0, Lzendesk/support/User;->organizationId:Ljava/lang/Long;

    if-eqz v2, :cond_7

    iget-object v3, p1, Lzendesk/support/User;->organizationId:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_2

    :cond_7
    iget-object v2, p1, Lzendesk/support/User;->organizationId:Ljava/lang/Long;

    if-eqz v2, :cond_8

    :goto_2
    return v1

    .line 154
    :cond_8
    iget-object v2, p0, Lzendesk/support/User;->tags:Ljava/util/List;

    if-eqz v2, :cond_9

    iget-object v3, p1, Lzendesk/support/User;->tags:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_3

    :cond_9
    iget-object v2, p1, Lzendesk/support/User;->tags:Ljava/util/List;

    if-eqz v2, :cond_a

    :goto_3
    return v1

    .line 157
    :cond_a
    iget-object v2, p0, Lzendesk/support/User;->userFields:Ljava/util/Map;

    iget-object p1, p1, Lzendesk/support/User;->userFields:Ljava/util/Map;

    if-eqz v2, :cond_b

    invoke-interface {v2, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4

    :cond_b
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

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 69
    iget-object v0, p0, Lzendesk/support/User;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lzendesk/support/User;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrganizationId()Ljava/lang/Long;
    .locals 1

    .line 108
    iget-object v0, p0, Lzendesk/support/User;->organizationId:Ljava/lang/Long;

    return-object v0
.end method

.method public getPhoto()Lzendesk/support/Attachment;
    .locals 1

    .line 89
    iget-object v0, p0, Lzendesk/support/User;->photo:Lzendesk/support/Attachment;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lzendesk/support/User;->tags:Ljava/util/List;

    invoke-static {v0}, Lcom/zendesk/util/CollectionUtils;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lzendesk/support/User;->userFields:Ljava/util/Map;

    invoke-static {v0}, Lcom/zendesk/util/CollectionUtils;->copyOf(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 162
    iget-object v0, p0, Lzendesk/support/User;->id:Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 163
    iget-object v2, p0, Lzendesk/support/User;->photo:Lzendesk/support/Attachment;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 164
    iget-boolean v2, p0, Lzendesk/support/User;->agent:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 165
    iget-object v2, p0, Lzendesk/support/User;->organizationId:Ljava/lang/Long;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 166
    iget-object v2, p0, Lzendesk/support/User;->tags:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 167
    iget-object v2, p0, Lzendesk/support/User;->userFields:Ljava/util/Map;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public isAgent()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lzendesk/support/User;->agent:Z

    return v0
.end method
