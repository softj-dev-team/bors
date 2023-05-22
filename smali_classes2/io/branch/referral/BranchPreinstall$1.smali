.class final Lio/branch/referral/BranchPreinstall$1;
.super Ljava/lang/Object;
.source "BranchPreinstall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/referral/BranchPreinstall;->readBranchFile(Ljava/lang/String;Lio/branch/referral/Branch;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$branchFilePath:Ljava/lang/String;

.field final synthetic val$branchInstance:Lio/branch/referral/Branch;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Lio/branch/referral/Branch;Landroid/content/Context;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lio/branch/referral/BranchPreinstall$1;->val$branchFilePath:Ljava/lang/String;

    iput-object p2, p0, Lio/branch/referral/BranchPreinstall$1;->val$branchInstance:Lio/branch/referral/Branch;

    iput-object p3, p0, Lio/branch/referral/BranchPreinstall$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 52
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lio/branch/referral/BranchPreinstall$1;->val$branchFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 58
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 62
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    iget-object v0, p0, Lio/branch/referral/BranchPreinstall$1;->val$branchInstance:Lio/branch/referral/Branch;

    iget-object v2, p0, Lio/branch/referral/BranchPreinstall$1;->val$context:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lio/branch/referral/BranchPreinstall;->getBranchFileContent(Lorg/json/JSONObject;Lio/branch/referral/Branch;Landroid/content/Context;)V

    goto :goto_1

    .line 67
    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    return-void
.end method
