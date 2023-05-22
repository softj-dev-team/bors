.class public final enum Lzendesk/core/UserField$UserFieldType;
.super Ljava/lang/Enum;
.source "UserField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/core/UserField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UserFieldType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lzendesk/core/UserField$UserFieldType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lzendesk/core/UserField$UserFieldType;

.field public static final enum Checkbox:Lzendesk/core/UserField$UserFieldType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "checkbox"
    .end annotation
.end field

.field public static final enum Date:Lzendesk/core/UserField$UserFieldType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "date"
    .end annotation
.end field

.field public static final enum Decimal:Lzendesk/core/UserField$UserFieldType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "decimal"
    .end annotation
.end field

.field public static final enum Dropdown:Lzendesk/core/UserField$UserFieldType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dropdown"
    .end annotation
.end field

.field public static final enum Integer:Lzendesk/core/UserField$UserFieldType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "integer"
    .end annotation
.end field

.field public static final enum Regexp:Lzendesk/core/UserField$UserFieldType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "regexp"
    .end annotation
.end field

.field public static final enum Text:Lzendesk/core/UserField$UserFieldType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "text"
    .end annotation
.end field

.field public static final enum Textarea:Lzendesk/core/UserField$UserFieldType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "textarea"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 203
    new-instance v0, Lzendesk/core/UserField$UserFieldType;

    const-string v1, "Integer"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzendesk/core/UserField$UserFieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzendesk/core/UserField$UserFieldType;->Integer:Lzendesk/core/UserField$UserFieldType;

    .line 206
    new-instance v1, Lzendesk/core/UserField$UserFieldType;

    const-string v3, "Decimal"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lzendesk/core/UserField$UserFieldType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lzendesk/core/UserField$UserFieldType;->Decimal:Lzendesk/core/UserField$UserFieldType;

    .line 209
    new-instance v3, Lzendesk/core/UserField$UserFieldType;

    const-string v5, "Checkbox"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lzendesk/core/UserField$UserFieldType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lzendesk/core/UserField$UserFieldType;->Checkbox:Lzendesk/core/UserField$UserFieldType;

    .line 212
    new-instance v5, Lzendesk/core/UserField$UserFieldType;

    const-string v7, "Date"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lzendesk/core/UserField$UserFieldType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lzendesk/core/UserField$UserFieldType;->Date:Lzendesk/core/UserField$UserFieldType;

    .line 215
    new-instance v7, Lzendesk/core/UserField$UserFieldType;

    const-string v9, "Text"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lzendesk/core/UserField$UserFieldType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lzendesk/core/UserField$UserFieldType;->Text:Lzendesk/core/UserField$UserFieldType;

    .line 218
    new-instance v9, Lzendesk/core/UserField$UserFieldType;

    const-string v11, "Textarea"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lzendesk/core/UserField$UserFieldType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lzendesk/core/UserField$UserFieldType;->Textarea:Lzendesk/core/UserField$UserFieldType;

    .line 221
    new-instance v11, Lzendesk/core/UserField$UserFieldType;

    const-string v13, "Dropdown"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lzendesk/core/UserField$UserFieldType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lzendesk/core/UserField$UserFieldType;->Dropdown:Lzendesk/core/UserField$UserFieldType;

    .line 224
    new-instance v13, Lzendesk/core/UserField$UserFieldType;

    const-string v15, "Regexp"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lzendesk/core/UserField$UserFieldType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lzendesk/core/UserField$UserFieldType;->Regexp:Lzendesk/core/UserField$UserFieldType;

    const/16 v15, 0x8

    new-array v15, v15, [Lzendesk/core/UserField$UserFieldType;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 201
    sput-object v15, Lzendesk/core/UserField$UserFieldType;->$VALUES:[Lzendesk/core/UserField$UserFieldType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 201
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lzendesk/core/UserField$UserFieldType;
    .locals 1

    .line 201
    const-class v0, Lzendesk/core/UserField$UserFieldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lzendesk/core/UserField$UserFieldType;

    return-object p0
.end method

.method public static values()[Lzendesk/core/UserField$UserFieldType;
    .locals 1

    .line 201
    sget-object v0, Lzendesk/core/UserField$UserFieldType;->$VALUES:[Lzendesk/core/UserField$UserFieldType;

    invoke-virtual {v0}, [Lzendesk/core/UserField$UserFieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzendesk/core/UserField$UserFieldType;

    return-object v0
.end method
