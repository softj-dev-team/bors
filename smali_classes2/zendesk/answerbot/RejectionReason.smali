.class public final enum Lzendesk/answerbot/RejectionReason;
.super Ljava/lang/Enum;
.source "RejectionReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lzendesk/answerbot/RejectionReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lzendesk/answerbot/RejectionReason;

.field public static final enum NOT_RELATED:Lzendesk/answerbot/RejectionReason;

.field public static final enum RELATED_DIDNT_ANSWER:Lzendesk/answerbot/RejectionReason;

.field public static final enum UNKNOWN:Lzendesk/answerbot/RejectionReason;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 14
    new-instance v0, Lzendesk/answerbot/RejectionReason;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lzendesk/answerbot/RejectionReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lzendesk/answerbot/RejectionReason;->UNKNOWN:Lzendesk/answerbot/RejectionReason;

    .line 18
    new-instance v1, Lzendesk/answerbot/RejectionReason;

    const-string v3, "NOT_RELATED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lzendesk/answerbot/RejectionReason;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lzendesk/answerbot/RejectionReason;->NOT_RELATED:Lzendesk/answerbot/RejectionReason;

    .line 22
    new-instance v3, Lzendesk/answerbot/RejectionReason;

    const-string v5, "RELATED_DIDNT_ANSWER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lzendesk/answerbot/RejectionReason;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lzendesk/answerbot/RejectionReason;->RELATED_DIDNT_ANSWER:Lzendesk/answerbot/RejectionReason;

    const/4 v5, 0x3

    new-array v5, v5, [Lzendesk/answerbot/RejectionReason;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 9
    sput-object v5, Lzendesk/answerbot/RejectionReason;->$VALUES:[Lzendesk/answerbot/RejectionReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lzendesk/answerbot/RejectionReason;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lzendesk/answerbot/RejectionReason;
    .locals 1

    .line 9
    const-class v0, Lzendesk/answerbot/RejectionReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lzendesk/answerbot/RejectionReason;

    return-object p0
.end method

.method public static values()[Lzendesk/answerbot/RejectionReason;
    .locals 1

    .line 9
    sget-object v0, Lzendesk/answerbot/RejectionReason;->$VALUES:[Lzendesk/answerbot/RejectionReason;

    invoke-virtual {v0}, [Lzendesk/answerbot/RejectionReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzendesk/answerbot/RejectionReason;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 31
    iget v0, p0, Lzendesk/answerbot/RejectionReason;->code:I

    return v0
.end method
