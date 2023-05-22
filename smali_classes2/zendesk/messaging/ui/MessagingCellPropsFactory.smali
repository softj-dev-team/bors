.class public Lzendesk/messaging/ui/MessagingCellPropsFactory;
.super Ljava/lang/Object;
.source "MessagingCellPropsFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/messaging/ui/MessagingCellPropsFactory$InteractionType;
    }
.end annotation

.annotation runtime Lzendesk/messaging/MessagingActivityScope;
.end annotation


# instance fields
.field private final defaultSpacing:I

.field private final groupSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget v0, Lzendesk/messaging/R$dimen;->zui_cell_vertical_spacing_default:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lzendesk/messaging/ui/MessagingCellPropsFactory;->defaultSpacing:I

    .line 38
    sget v0, Lzendesk/messaging/R$dimen;->zui_cell_vertical_spacing_group:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lzendesk/messaging/ui/MessagingCellPropsFactory;->groupSpacing:I

    return-void
.end method

.method private static classifyInteraction(Lzendesk/messaging/MessagingItem;)Lzendesk/messaging/ui/MessagingCellPropsFactory$InteractionType;
    .locals 1

    .line 164
    instance-of v0, p0, Lzendesk/messaging/MessagingItem$Response;

    if-eqz v0, :cond_0

    .line 165
    sget-object p0, Lzendesk/messaging/ui/MessagingCellPropsFactory$InteractionType;->RESPONSE:Lzendesk/messaging/ui/MessagingCellPropsFactory$InteractionType;

    return-object p0

    .line 166
    :cond_0
    instance-of v0, p0, Lzendesk/messaging/MessagingItem$Query;

    if-nez v0, :cond_2

    instance-of p0, p0, Lzendesk/messaging/MessagingItem$OptionsResponse;

    if-eqz p0, :cond_1

    goto :goto_0

    .line 170
    :cond_1
    sget-object p0, Lzendesk/messaging/ui/MessagingCellPropsFactory$InteractionType;->NONE:Lzendesk/messaging/ui/MessagingCellPropsFactory$InteractionType;

    return-object p0

    .line 168
    :cond_2
    :goto_0
    sget-object p0, Lzendesk/messaging/ui/MessagingCellPropsFactory$InteractionType;->QUERY:Lzendesk/messaging/ui/MessagingCellPropsFactory$InteractionType;

    return-object p0
.end method

.method private generateCellProps(Lzendesk/messaging/MessagingItem;Lzendesk/messaging/MessagingItem;Lzendesk/messaging/MessagingItem;)Lzendesk/messaging/ui/MessagingCellProps;
    .locals 2

    .line 65
    new-instance v0, Lzendesk/messaging/ui/MessagingCellProps;

    .line 66
    invoke-virtual {p0, p2, p1}, Lzendesk/messaging/ui/MessagingCellPropsFactory;->labelVisibility(Lzendesk/messaging/MessagingItem;Lzendesk/messaging/MessagingItem;)I

    move-result p1

    .line 67
    invoke-virtual {p0, p2, p3}, Lzendesk/messaging/ui/MessagingCellPropsFactory;->cellSpacing(Lzendesk/messaging/MessagingItem;Lzendesk/messaging/MessagingItem;)I

    move-result v1

    .line 68
    invoke-virtual {p0, p2, p3}, Lzendesk/messaging/ui/MessagingCellPropsFactory;->avatarVisibility(Lzendesk/messaging/MessagingItem;Lzendesk/messaging/MessagingItem;)I

    move-result p2

    invoke-direct {v0, p1, v1, p2}, Lzendesk/messaging/ui/MessagingCellProps;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method avatarVisibility(Lzendesk/messaging/MessagingItem;Lzendesk/messaging/MessagingItem;)I
    .locals 4

    .line 129
    invoke-static {p1}, Lzendesk/messaging/ui/MessagingCellPropsFactory;->classifyInteraction(Lzendesk/messaging/MessagingItem;)Lzendesk/messaging/ui/MessagingCellPropsFactory$InteractionType;

    move-result-object v0

    .line 131
    sget-object v1, Lzendesk/messaging/ui/MessagingCellPropsFactory$InteractionType;->QUERY:Lzendesk/messaging/ui/MessagingCellPropsFactory$InteractionType;

    const/4 v2, 0x4

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    if-nez p2, :cond_1

    return v1

    .line 139
    :cond_1
    invoke-static {p2}, Lzendesk/messaging/ui/MessagingCellPropsFactory;->classifyInteraction(Lzendesk/messaging/MessagingItem;)Lzendesk/messaging/ui/MessagingCellPropsFactory$InteractionType;

    move-result-object v3

    if-eq v0, v3, :cond_2

    return v1

    .line 145
    :cond_2
    instance-of v0, p1, Lzendesk/messaging/MessagingItem$Response;

    if-eqz v0, :cond_4

    instance-of v0, p2, Lzendesk/messaging/MessagingItem$Response;

    if-eqz v0, :cond_4

    .line 147
    check-cast p1, Lzendesk/messaging/MessagingItem$Response;

    .line 148
    invoke-virtual {p1}, Lzendesk/messaging/MessagingItem$Response;->getAgentDetails()Lzendesk/messaging/AgentDetails;

    move-result-object p1

    invoke-virtual {p1}, Lzendesk/messaging/AgentDetails;->getAgentId()Ljava/lang/String;

    move-result-object p1

    .line 149
    check-cast p2, Lzendesk/messaging/MessagingItem$Response;

    .line 150
    invoke-virtual {p2}, Lzendesk/messaging/MessagingItem$Response;->getAgentDetails()Lzendesk/messaging/AgentDetails;

    move-result-object p2

    invoke-virtual {p2}, Lzendesk/messaging/AgentDetails;->getAgentId()Ljava/lang/String;

    move-result-object p2

    .line 152
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v1

    :cond_4
    return v2
.end method

.method cellSpacing(Lzendesk/messaging/MessagingItem;Lzendesk/messaging/MessagingItem;)I
    .locals 1

    if-nez p2, :cond_0

    .line 107
    iget p1, p0, Lzendesk/messaging/ui/MessagingCellPropsFactory;->defaultSpacing:I

    return p1

    .line 110
    :cond_0
    instance-of v0, p2, Lzendesk/messaging/MessagingItem$SystemMessage;

    if-eqz v0, :cond_1

    .line 111
    iget p1, p0, Lzendesk/messaging/ui/MessagingCellPropsFactory;->groupSpacing:I

    return p1

    .line 114
    :cond_1
    invoke-static {p1}, Lzendesk/messaging/ui/MessagingCellPropsFactory;->classifyInteraction(Lzendesk/messaging/MessagingItem;)Lzendesk/messaging/ui/MessagingCellPropsFactory$InteractionType;

    move-result-object p1

    .line 116
    invoke-static {p2}, Lzendesk/messaging/ui/MessagingCellPropsFactory;->classifyInteraction(Lzendesk/messaging/MessagingItem;)Lzendesk/messaging/ui/MessagingCellPropsFactory$InteractionType;

    move-result-object p2

    if-ne p1, p2, :cond_2

    .line 119
    iget p1, p0, Lzendesk/messaging/ui/MessagingCellPropsFactory;->groupSpacing:I

    return p1

    .line 122
    :cond_2
    iget p1, p0, Lzendesk/messaging/ui/MessagingCellPropsFactory;->defaultSpacing:I

    return p1
.end method

.method public create(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/messaging/MessagingItem;",
            ">;)",
            "Ljava/util/List<",
            "Lzendesk/messaging/ui/MessagingCellProps;",
            ">;"
        }
    .end annotation

    .line 42
    invoke-static {p1}, Lcom/zendesk/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 46
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 48
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    const/4 v2, 0x0

    if-lez v1, :cond_1

    add-int/lit8 v3, v1, -0x1

    .line 50
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzendesk/messaging/MessagingItem;

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 51
    :goto_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzendesk/messaging/MessagingItem;

    add-int/lit8 v1, v1, 0x1

    .line 52
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzendesk/messaging/MessagingItem;

    .line 49
    :cond_2
    invoke-direct {p0, v3, v4, v2}, Lzendesk/messaging/ui/MessagingCellPropsFactory;->generateCellProps(Lzendesk/messaging/MessagingItem;Lzendesk/messaging/MessagingItem;Lzendesk/messaging/MessagingItem;)Lzendesk/messaging/ui/MessagingCellProps;

    move-result-object v2

    .line 55
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method labelVisibility(Lzendesk/messaging/MessagingItem;Lzendesk/messaging/MessagingItem;)I
    .locals 3

    .line 76
    invoke-static {p1}, Lzendesk/messaging/ui/MessagingCellPropsFactory;->classifyInteraction(Lzendesk/messaging/MessagingItem;)Lzendesk/messaging/ui/MessagingCellPropsFactory$InteractionType;

    move-result-object v0

    .line 77
    sget-object v1, Lzendesk/messaging/ui/MessagingCellPropsFactory$InteractionType;->QUERY:Lzendesk/messaging/ui/MessagingCellPropsFactory$InteractionType;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    invoke-static {p2}, Lzendesk/messaging/ui/MessagingCellPropsFactory;->classifyInteraction(Lzendesk/messaging/MessagingItem;)Lzendesk/messaging/ui/MessagingCellPropsFactory$InteractionType;

    move-result-object v1

    if-eq v0, v1, :cond_1

    return v2

    .line 86
    :cond_1
    instance-of v0, p1, Lzendesk/messaging/MessagingItem$Response;

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    instance-of v0, p2, Lzendesk/messaging/MessagingItem$Response;

    if-eqz v0, :cond_2

    .line 88
    check-cast p1, Lzendesk/messaging/MessagingItem$Response;

    .line 89
    invoke-virtual {p1}, Lzendesk/messaging/MessagingItem$Response;->getAgentDetails()Lzendesk/messaging/AgentDetails;

    move-result-object p1

    invoke-virtual {p1}, Lzendesk/messaging/AgentDetails;->getAgentId()Ljava/lang/String;

    move-result-object p1

    .line 90
    check-cast p2, Lzendesk/messaging/MessagingItem$Response;

    .line 91
    invoke-virtual {p2}, Lzendesk/messaging/MessagingItem$Response;->getAgentDetails()Lzendesk/messaging/AgentDetails;

    move-result-object p2

    invoke-virtual {p2}, Lzendesk/messaging/AgentDetails;->getAgentId()Ljava/lang/String;

    move-result-object p2

    .line 93
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v2
.end method
