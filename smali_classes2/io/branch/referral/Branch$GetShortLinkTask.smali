.class Lio/branch/referral/Branch$GetShortLinkTask;
.super Landroid/os/AsyncTask;
.source "Branch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/referral/Branch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetShortLinkTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lio/branch/referral/ServerRequest;",
        "Ljava/lang/Void;",
        "Lio/branch/referral/ServerResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/branch/referral/Branch;


# direct methods
.method private constructor <init>(Lio/branch/referral/Branch;)V
    .locals 0

    .line 2161
    iput-object p1, p0, Lio/branch/referral/Branch$GetShortLinkTask;->this$0:Lio/branch/referral/Branch;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/branch/referral/Branch;Lio/branch/referral/Branch$1;)V
    .locals 0

    .line 2161
    invoke-direct {p0, p1}, Lio/branch/referral/Branch$GetShortLinkTask;-><init>(Lio/branch/referral/Branch;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lio/branch/referral/ServerRequest;)Lio/branch/referral/ServerResponse;
    .locals 4

    .line 2163
    iget-object v0, p0, Lio/branch/referral/Branch$GetShortLinkTask;->this$0:Lio/branch/referral/Branch;

    invoke-static {v0}, Lio/branch/referral/Branch;->access$200(Lio/branch/referral/Branch;)Lio/branch/referral/network/BranchRemoteInterface;

    move-result-object v0

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lio/branch/referral/ServerRequest;->getPost()Lorg/json/JSONObject;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/branch/referral/Branch$GetShortLinkTask;->this$0:Lio/branch/referral/Branch;

    iget-object v2, v2, Lio/branch/referral/Branch;->prefHelper_:Lio/branch/referral/PrefHelper;

    .line 2164
    invoke-virtual {v2}, Lio/branch/referral/PrefHelper;->getAPIBaseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lio/branch/referral/Defines$RequestPath;->GetURL:Lio/branch/referral/Defines$RequestPath;

    invoke-virtual {v2}, Lio/branch/referral/Defines$RequestPath;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lio/branch/referral/Defines$RequestPath;->GetURL:Lio/branch/referral/Defines$RequestPath;

    .line 2165
    invoke-virtual {v2}, Lio/branch/referral/Defines$RequestPath;->getPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/branch/referral/Branch$GetShortLinkTask;->this$0:Lio/branch/referral/Branch;

    iget-object v3, v3, Lio/branch/referral/Branch;->prefHelper_:Lio/branch/referral/PrefHelper;

    invoke-virtual {v3}, Lio/branch/referral/PrefHelper;->getBranchKey()Ljava/lang/String;

    move-result-object v3

    .line 2163
    invoke-virtual {v0, p1, v1, v2, v3}, Lio/branch/referral/network/BranchRemoteInterface;->make_restful_post(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/branch/referral/ServerResponse;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2161
    check-cast p1, [Lio/branch/referral/ServerRequest;

    invoke-virtual {p0, p1}, Lio/branch/referral/Branch$GetShortLinkTask;->doInBackground([Lio/branch/referral/ServerRequest;)Lio/branch/referral/ServerResponse;

    move-result-object p1

    return-object p1
.end method
