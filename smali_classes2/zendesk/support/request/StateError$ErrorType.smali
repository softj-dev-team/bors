.class final enum Lzendesk/support/request/StateError$ErrorType;
.super Ljava/lang/Enum;
.source "StateError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/StateError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lzendesk/support/request/StateError$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lzendesk/support/request/StateError$ErrorType;

.field public static final enum InitialGetComments:Lzendesk/support/request/StateError$ErrorType;

.field public static final enum InputFormSubmission:Lzendesk/support/request/StateError$ErrorType;

.field public static final enum NoAccess:Lzendesk/support/request/StateError$ErrorType;

.field public static final enum NoError:Lzendesk/support/request/StateError$ErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 42
    new-instance v0, Lzendesk/support/request/StateError$ErrorType;

    const-string v1, "InitialGetComments"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzendesk/support/request/StateError$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzendesk/support/request/StateError$ErrorType;->InitialGetComments:Lzendesk/support/request/StateError$ErrorType;

    .line 43
    new-instance v1, Lzendesk/support/request/StateError$ErrorType;

    const-string v3, "InputFormSubmission"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lzendesk/support/request/StateError$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lzendesk/support/request/StateError$ErrorType;->InputFormSubmission:Lzendesk/support/request/StateError$ErrorType;

    .line 44
    new-instance v3, Lzendesk/support/request/StateError$ErrorType;

    const-string v5, "NoAccess"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lzendesk/support/request/StateError$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lzendesk/support/request/StateError$ErrorType;->NoAccess:Lzendesk/support/request/StateError$ErrorType;

    .line 45
    new-instance v5, Lzendesk/support/request/StateError$ErrorType;

    const-string v7, "NoError"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lzendesk/support/request/StateError$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lzendesk/support/request/StateError$ErrorType;->NoError:Lzendesk/support/request/StateError$ErrorType;

    const/4 v7, 0x4

    new-array v7, v7, [Lzendesk/support/request/StateError$ErrorType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 41
    sput-object v7, Lzendesk/support/request/StateError$ErrorType;->$VALUES:[Lzendesk/support/request/StateError$ErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lzendesk/support/request/StateError$ErrorType;
    .locals 1

    .line 41
    const-class v0, Lzendesk/support/request/StateError$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lzendesk/support/request/StateError$ErrorType;

    return-object p0
.end method

.method public static values()[Lzendesk/support/request/StateError$ErrorType;
    .locals 1

    .line 41
    sget-object v0, Lzendesk/support/request/StateError$ErrorType;->$VALUES:[Lzendesk/support/request/StateError$ErrorType;

    invoke-virtual {v0}, [Lzendesk/support/request/StateError$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzendesk/support/request/StateError$ErrorType;

    return-object v0
.end method
