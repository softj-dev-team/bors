.class Lzendesk/support/request/ComponentError$ErrorStateModel;
.super Ljava/lang/Object;
.source "ComponentError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/ComponentError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ErrorStateModel"
.end annotation


# instance fields
.field private final conversationsEnabled:Z

.field private final errorMessage:Ljava/lang/String;

.field private final errorState:Lzendesk/support/request/StateError$ErrorType;


# direct methods
.method constructor <init>(Lzendesk/support/request/StateError$ErrorType;Ljava/lang/String;Z)V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lzendesk/support/request/ComponentError$ErrorStateModel;->errorState:Lzendesk/support/request/StateError$ErrorType;

    .line 112
    iput-object p2, p0, Lzendesk/support/request/ComponentError$ErrorStateModel;->errorMessage:Ljava/lang/String;

    .line 113
    iput-boolean p3, p0, Lzendesk/support/request/ComponentError$ErrorStateModel;->conversationsEnabled:Z

    return-void
.end method

.method static synthetic access$000(Lzendesk/support/request/ComponentError$ErrorStateModel;)Lzendesk/support/request/StateError$ErrorType;
    .locals 0

    .line 104
    iget-object p0, p0, Lzendesk/support/request/ComponentError$ErrorStateModel;->errorState:Lzendesk/support/request/StateError$ErrorType;

    return-object p0
.end method


# virtual methods
.method getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lzendesk/support/request/ComponentError$ErrorStateModel;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method getErrorState()Lzendesk/support/request/StateError$ErrorType;
    .locals 1

    .line 117
    iget-object v0, p0, Lzendesk/support/request/ComponentError$ErrorStateModel;->errorState:Lzendesk/support/request/StateError$ErrorType;

    return-object v0
.end method

.method isConversationsEnabled()Z
    .locals 1

    .line 125
    iget-boolean v0, p0, Lzendesk/support/request/ComponentError$ErrorStateModel;->conversationsEnabled:Z

    return v0
.end method
