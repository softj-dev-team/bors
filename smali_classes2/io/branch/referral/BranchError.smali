.class public Lio/branch/referral/BranchError;
.super Ljava/lang/Object;
.source "BranchError.java"


# static fields
.field public static final ERR_API_LVL_14_NEEDED:I = -0x6c

.field public static final ERR_BRANCH_ALREADY_INITIALIZED:I = -0x76

.field public static final ERR_BRANCH_DUPLICATE_REFERRAL_CODE:I = -0x6a
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ERR_BRANCH_DUPLICATE_URL:I = -0x69

.field public static final ERR_BRANCH_INIT_FAILED:I = -0x68

.field public static final ERR_BRANCH_INVALID_REQUEST:I = -0x74

.field public static final ERR_BRANCH_KEY_INVALID:I = -0x72

.field public static final ERR_BRANCH_NOT_INSTANTIATED:I = -0x6d

.field public static final ERR_BRANCH_NO_CONNECTIVITY:I = -0x71

.field public static final ERR_BRANCH_NO_SHARE_OPTION:I = -0x6e

.field public static final ERR_BRANCH_REDEEM_REWARD:I = -0x6b
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ERR_BRANCH_REQ_TIMED_OUT:I = -0x6f

.field public static final ERR_BRANCH_RESOURCE_CONFLICT:I = -0x73

.field public static final ERR_BRANCH_TASK_TIMEOUT:I = -0x78

.field public static final ERR_BRANCH_TRACKING_DISABLED:I = -0x75

.field public static final ERR_BRANCH_UNABLE_TO_REACH_SERVERS:I = -0x70

.field public static final ERR_IMPROPER_REINITIALIZATION:I = -0x77

.field public static final ERR_INVALID_REFERRAL_CODE:I = -0x67
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ERR_NO_INTERNET_PERMISSION:I = -0x66

.field public static final ERR_NO_SESSION:I = -0x65


# instance fields
.field errorCode_:I

.field errorMessage_:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lio/branch/referral/BranchError;->errorMessage_:Ljava/lang/String;

    const/16 v0, -0x71

    .line 9
    iput v0, p0, Lio/branch/referral/BranchError;->errorCode_:I

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lio/branch/referral/BranchError;->initErrorCodeAndGetLocalisedMessage(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/branch/referral/BranchError;->errorMessage_:Ljava/lang/String;

    return-void
.end method

.method private initErrorCodeAndGetLocalisedMessage(I)Ljava/lang/String;
    .locals 3

    const/16 v0, -0x71

    if-ne p1, v0, :cond_0

    .line 94
    iput v0, p0, Lio/branch/referral/BranchError;->errorCode_:I

    const-string p1, " Branch API Error: poor network connectivity. Please try again later."

    goto/16 :goto_3

    :cond_0
    const/16 v1, -0x72

    if-ne p1, v1, :cond_1

    .line 97
    iput v1, p0, Lio/branch/referral/BranchError;->errorCode_:I

    const-string p1, " Branch API Error: Please enter your branch_key in your project\'s manifest file first."

    goto/16 :goto_3

    :cond_1
    const/16 v1, -0x68

    if-ne p1, v1, :cond_2

    .line 100
    iput v1, p0, Lio/branch/referral/BranchError;->errorCode_:I

    const-string p1, " Did you forget to call init? Make sure you init the session before making Branch calls."

    goto/16 :goto_3

    :cond_2
    const/16 v1, -0x65

    if-ne p1, v1, :cond_3

    .line 103
    iput v1, p0, Lio/branch/referral/BranchError;->errorCode_:I

    const-string p1, " Unable to initialize Branch. Check network connectivity or that your branch key is valid."

    goto/16 :goto_3

    :cond_3
    const/16 v1, -0x66

    if-ne p1, v1, :cond_4

    .line 106
    iput v1, p0, Lio/branch/referral/BranchError;->errorCode_:I

    const-string p1, " Please add \'android.permission.INTERNET\' in your applications manifest file."

    goto/16 :goto_3

    :cond_4
    const/16 v1, -0x69

    if-ne p1, v1, :cond_5

    .line 109
    iput v1, p0, Lio/branch/referral/BranchError;->errorCode_:I

    const-string p1, " Unable to create a URL with that alias. If you want to reuse the alias, make sure to submit the same properties for all arguments and that the user is the same owner."

    goto/16 :goto_3

    :cond_5
    const/16 v1, -0x6c

    if-ne p1, v1, :cond_6

    .line 112
    iput v1, p0, Lio/branch/referral/BranchError;->errorCode_:I

    const-string p1, "BranchApp class can be used only with API level 14 or above. Please make sure your minimum API level supported is 14. If you wish to use API level below 14 consider calling getInstance(Context) instead."

    goto/16 :goto_3

    :cond_6
    const/16 v1, -0x6d

    if-ne p1, v1, :cond_7

    .line 117
    iput v1, p0, Lio/branch/referral/BranchError;->errorCode_:I

    const-string p1, "Branch instance is not created. Make  sure your Application class is an instance of BranchLikedApp."

    goto/16 :goto_3

    :cond_7
    const/16 v1, -0x6e

    if-ne p1, v1, :cond_8

    .line 121
    iput v1, p0, Lio/branch/referral/BranchError;->errorCode_:I

    const-string p1, " Unable create share options. Couldn\'t find applications on device to share the link."

    goto :goto_3

    :cond_8
    const/16 v1, -0x6f

    if-ne p1, v1, :cond_9

    .line 124
    iput v1, p0, Lio/branch/referral/BranchError;->errorCode_:I

    const-string p1, " Request to Branch server timed out. Please check your internet connectivity"

    goto :goto_3

    :cond_9
    const/16 v1, -0x75

    if-ne p1, v1, :cond_a

    .line 127
    iput v1, p0, Lio/branch/referral/BranchError;->errorCode_:I

    const-string p1, " Tracking is disabled. Requested operation cannot be completed when tracking is disabled"

    goto :goto_3

    :cond_a
    const/16 v1, -0x76

    if-ne p1, v1, :cond_b

    .line 130
    iput v1, p0, Lio/branch/referral/BranchError;->errorCode_:I

    const-string p1, " Session initialization already happened. To force a new session, set intent extra, \"branch_force_new_session\", to true."

    goto :goto_3

    :cond_b
    const/16 v1, 0x1f4

    const/16 v2, -0x70

    if-ge p1, v1, :cond_13

    if-ne p1, v2, :cond_c

    goto :goto_2

    :cond_c
    const/16 v1, 0x199

    const/16 v2, -0x73

    if-eq p1, v1, :cond_12

    if-ne p1, v2, :cond_d

    goto :goto_1

    :cond_d
    const/16 v1, 0x190

    const/16 v2, -0x74

    if-ge p1, v1, :cond_11

    if-ne p1, v2, :cond_e

    goto :goto_0

    :cond_e
    const/16 v1, -0x77

    if-ne p1, v1, :cond_f

    .line 143
    iput v1, p0, Lio/branch/referral/BranchError;->errorCode_:I

    const-string p1, "Intra-app linking (i.e. session reinitialization) requires an intent flag, \"branch_force_new_session\"."

    goto :goto_3

    :cond_f
    const/16 v1, -0x78

    if-ne p1, v1, :cond_10

    .line 146
    iput v1, p0, Lio/branch/referral/BranchError;->errorCode_:I

    const-string p1, " Task exceeded timeout."

    goto :goto_3

    .line 149
    :cond_10
    iput v0, p0, Lio/branch/referral/BranchError;->errorCode_:I

    const-string p1, " Check network connectivity and that you properly initialized."

    goto :goto_3

    .line 140
    :cond_11
    :goto_0
    iput v2, p0, Lio/branch/referral/BranchError;->errorCode_:I

    const-string p1, " The request was invalid."

    goto :goto_3

    .line 137
    :cond_12
    :goto_1
    iput v2, p0, Lio/branch/referral/BranchError;->errorCode_:I

    const-string p1, " A resource with this identifier already exists."

    goto :goto_3

    .line 134
    :cond_13
    :goto_2
    iput v2, p0, Lio/branch/referral/BranchError;->errorCode_:I

    const-string p1, " Unable to reach the Branch servers, please try again shortly."

    :goto_3
    return-object p1
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 66
    iget v0, p0, Lio/branch/referral/BranchError;->errorCode_:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lio/branch/referral/BranchError;->errorMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 77
    invoke-virtual {p0}, Lio/branch/referral/BranchError;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
