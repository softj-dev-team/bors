.class Lio/branch/referral/GooglePlayStoreAttribution$1;
.super Ljava/lang/Object;
.source "GooglePlayStoreAttribution.java"

# interfaces
.implements Lcom/android/installreferrer/api/InstallReferrerStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/referral/GooglePlayStoreAttribution;->captureInstallReferrer(Landroid/content/Context;JLio/branch/referral/GooglePlayStoreAttribution$IInstallReferrerEvents;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/branch/referral/GooglePlayStoreAttribution;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;


# direct methods
.method constructor <init>(Lio/branch/referral/GooglePlayStoreAttribution;Lcom/android/installreferrer/api/InstallReferrerClient;Landroid/content/Context;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lio/branch/referral/GooglePlayStoreAttribution$1;->this$0:Lio/branch/referral/GooglePlayStoreAttribution;

    iput-object p2, p0, Lio/branch/referral/GooglePlayStoreAttribution$1;->val$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    iput-object p3, p0, Lio/branch/referral/GooglePlayStoreAttribution$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInstallReferrerServiceDisconnected()V
    .locals 1

    const-string v0, "onInstallReferrerServiceDisconnected()"

    .line 79
    invoke-static {v0}, Lio/branch/referral/PrefHelper;->Debug(Ljava/lang/String;)V

    return-void
.end method

.method public onInstallReferrerSetupFinished(I)V
    .locals 6

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInstallReferrerSetupFinished, responseCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/branch/referral/PrefHelper;->Debug(Ljava/lang/String;)V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    goto :goto_1

    .line 45
    :cond_0
    :try_start_0
    iget-object p1, p0, Lio/branch/referral/GooglePlayStoreAttribution$1;->val$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->getInstallReferrer()Lcom/android/installreferrer/api/ReferrerDetails;

    move-result-object p1

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_1

    .line 50
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallReferrer()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getReferrerClickTimestampSeconds()J

    move-result-wide v1

    .line 52
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallBeginTimestampSeconds()J

    move-result-wide v3

    move-wide v4, v3

    move-wide v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_1
    move-wide v4, v1

    move-object v1, v0

    move-wide v2, v4

    .line 54
    :goto_0
    iget-object v0, p0, Lio/branch/referral/GooglePlayStoreAttribution$1;->val$context:Landroid/content/Context;

    invoke-static/range {v0 .. v5}, Lio/branch/referral/GooglePlayStoreAttribution;->access$000(Landroid/content/Context;Ljava/lang/String;JJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInstallReferrerSetupFinished() Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/branch/referral/PrefHelper;->Debug(Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lio/branch/referral/GooglePlayStoreAttribution;->access$100()V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInstallReferrerSetupFinished() Remote Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/branch/referral/PrefHelper;->Debug(Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lio/branch/referral/GooglePlayStoreAttribution;->access$100()V

    goto :goto_1

    .line 68
    :cond_2
    invoke-static {}, Lio/branch/referral/GooglePlayStoreAttribution;->access$100()V

    :goto_1
    return-void
.end method
