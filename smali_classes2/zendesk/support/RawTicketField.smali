.class Lzendesk/support/RawTicketField;
.super Ljava/lang/Object;
.source "RawTicketField.java"


# instance fields
.field private accountId:J

.field private active:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isActive"
    .end annotation
.end field

.field private collapsedForAgents:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isCollapsedForAgents"
    .end annotation
.end field

.field private createdAt:Ljava/util/Date;

.field private customFieldOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/support/RawTicketFieldOption;",
            ">;"
        }
    .end annotation
.end field

.field private defaultContentKey:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private editableInPortal:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isEditableInPortal"
    .end annotation
.end field

.field private exportable:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isExportable"
    .end annotation
.end field

.field private id:J

.field private position:I

.field private regexpForValidation:Ljava/lang/String;

.field private required:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isRequired"
    .end annotation
.end field

.field private requiredInPortal:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isRequiredInPortal"
    .end annotation
.end field

.field private subTypeId:J

.field private systemFieldOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/support/RawTicketFieldSystemOption;",
            ">;"
        }
    .end annotation
.end field

.field private tag:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private titleInPortal:Ljava/lang/String;

.field private type:Lzendesk/support/TicketFieldType;

.field private updatedAt:Ljava/util/Date;

.field private visibleInPortal:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isVisibleInPortal"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getCustomFieldOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzendesk/support/RawTicketFieldOption;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lzendesk/support/RawTicketField;->customFieldOptions:Ljava/util/List;

    invoke-static {v0}, Lcom/zendesk/util/CollectionUtils;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getDescription()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lzendesk/support/RawTicketField;->description:Ljava/lang/String;

    return-object v0
.end method

.method getId()J
    .locals 2

    .line 61
    iget-wide v0, p0, Lzendesk/support/RawTicketField;->id:J

    return-wide v0
.end method

.method getRegexpForValidation()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lzendesk/support/RawTicketField;->regexpForValidation:Ljava/lang/String;

    return-object v0
.end method

.method getSystemFieldOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzendesk/support/RawTicketFieldSystemOption;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lzendesk/support/RawTicketField;->systemFieldOptions:Ljava/util/List;

    invoke-static {v0}, Lcom/zendesk/util/CollectionUtils;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getTitle()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lzendesk/support/RawTicketField;->title:Ljava/lang/String;

    return-object v0
.end method

.method getTitleInPortal()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lzendesk/support/RawTicketField;->titleInPortal:Ljava/lang/String;

    return-object v0
.end method

.method getType()Lzendesk/support/TicketFieldType;
    .locals 1

    .line 89
    iget-object v0, p0, Lzendesk/support/RawTicketField;->type:Lzendesk/support/TicketFieldType;

    return-object v0
.end method
