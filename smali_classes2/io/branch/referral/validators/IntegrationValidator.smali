.class public Lio/branch/referral/validators/IntegrationValidator;
.super Ljava/lang/Object;
.source "IntegrationValidator.java"

# interfaces
.implements Lio/branch/referral/validators/ServerRequestGetAppConfig$IGetAppConfigEvents;


# static fields
.field private static instance:Lio/branch/referral/validators/IntegrationValidator;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final integrationModel:Lio/branch/referral/validators/BranchIntegrationModel;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BranchSDK_Doctor"

    .line 24
    iput-object v0, p0, Lio/branch/referral/validators/IntegrationValidator;->TAG:Ljava/lang/String;

    .line 27
    new-instance v0, Lio/branch/referral/validators/BranchIntegrationModel;

    invoke-direct {v0, p1}, Lio/branch/referral/validators/BranchIntegrationModel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/branch/referral/validators/IntegrationValidator;->integrationModel:Lio/branch/referral/validators/BranchIntegrationModel;

    return-void
.end method

.method private checkIfIntentAddedForLinkDomain(Ljava/lang/String;)Z
    .locals 2

    .line 218
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/branch/referral/validators/IntegrationValidator;->integrationModel:Lio/branch/referral/validators/BranchIntegrationModel;

    iget-object v0, v0, Lio/branch/referral/validators/BranchIntegrationModel;->applinkScheme:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lio/branch/referral/validators/IntegrationValidator;->integrationModel:Lio/branch/referral/validators/BranchIntegrationModel;

    iget-object v0, v0, Lio/branch/referral/validators/BranchIntegrationModel;->applinkScheme:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 220
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private checkIfIntentAddedForURIScheme(Ljava/lang/String;)Z
    .locals 8

    .line 189
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 190
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    .line 192
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "open"

    .line 194
    :cond_0
    iget-object v1, p0, Lio/branch/referral/validators/IntegrationValidator;->integrationModel:Lio/branch/referral/validators/BranchIntegrationModel;

    iget-object v1, v1, Lio/branch/referral/validators/BranchIntegrationModel;->deeplinkUriScheme:Lorg/json/JSONObject;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    .line 195
    iget-object v1, p0, Lio/branch/referral/validators/IntegrationValidator;->integrationModel:Lio/branch/referral/validators/BranchIntegrationModel;

    iget-object v1, v1, Lio/branch/referral/validators/BranchIntegrationModel;->deeplinkUriScheme:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 196
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 197
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 198
    iget-object v6, p0, Lio/branch/referral/validators/IntegrationValidator;->integrationModel:Lio/branch/referral/validators/BranchIntegrationModel;

    iget-object v6, v6, Lio/branch/referral/validators/BranchIntegrationModel;->deeplinkUriScheme:Lorg/json/JSONObject;

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 199
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_3

    const/4 v6, 0x0

    .line 200
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    if-eqz p1, :cond_2

    .line 201
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    move v2, v4

    :cond_5
    :goto_2
    return v2
.end method

.method private doValidateWithAppConfig(Lorg/json/JSONObject;)V
    .locals 7

    const-string v0, "3. Verifying application package name"

    .line 63
    invoke-direct {p0, v0}, Lio/branch/referral/validators/IntegrationValidator;->logValidationProgress(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lio/branch/referral/validators/IntegrationValidator;->integrationModel:Lio/branch/referral/validators/BranchIntegrationModel;

    iget-object v0, v0, Lio/branch/referral/validators/BranchIntegrationModel;->packageName:Ljava/lang/String;

    const-string v1, "android_package_name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "https://help.branch.io/developers-hub/docs/android-basic-integration#section-configure-branch-dashboard"

    if-nez v0, :cond_0

    const-string p1, "Incorrect package name in Branch dashboard. Please correct your package name in dashboard -> Configuration page."

    .line 65
    invoke-direct {p0, p1, v1}, Lio/branch/referral/validators/IntegrationValidator;->logIntegrationError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 69
    :cond_0
    invoke-direct {p0}, Lio/branch/referral/validators/IntegrationValidator;->logValidationPassed()V

    const-string v0, "4. Checking Android Manifest for URI based deep link config"

    .line 73
    invoke-direct {p0, v0}, Lio/branch/referral/validators/IntegrationValidator;->logValidationProgress(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lio/branch/referral/validators/IntegrationValidator;->integrationModel:Lio/branch/referral/validators/BranchIntegrationModel;

    iget-object v0, v0, Lio/branch/referral/validators/BranchIntegrationModel;->deeplinkUriScheme:Lorg/json/JSONObject;

    const-string v2, "android_uri_scheme"

    const-string v3, "https://help.branch.io/developers-hub/docs/android-basic-integration#section-configure-app"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/branch/referral/validators/IntegrationValidator;->integrationModel:Lio/branch/referral/validators/BranchIntegrationModel;

    iget-object v0, v0, Lio/branch/referral/validators/BranchIntegrationModel;->deeplinkUriScheme:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 84
    :cond_1
    invoke-direct {p0}, Lio/branch/referral/validators/IntegrationValidator;->logValidationPassed()V

    goto :goto_1

    .line 75
    :cond_2
    :goto_0
    iget-object v0, p0, Lio/branch/referral/validators/IntegrationValidator;->integrationModel:Lio/branch/referral/validators/BranchIntegrationModel;

    iget-boolean v0, v0, Lio/branch/referral/validators/BranchIntegrationModel;->appSettingsAvailable:Z

    if-nez v0, :cond_e

    const-string v0, "- Skipping. Unable to verify the deep link config. Failed to read the Android Manifest"

    .line 76
    invoke-direct {p0, v0}, Lio/branch/referral/validators/IntegrationValidator;->logValidationProgress(Ljava/lang/String;)V

    :goto_1
    const-string v0, "5. Verifying URI based deep link config with Branch dash board."

    .line 88
    invoke-direct {p0, v0}, Lio/branch/referral/validators/IntegrationValidator;->logValidationProgress(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p1, "Uri Scheme to open your app is not specified in Branch dashboard. Please add URI scheme in Branch dashboard."

    .line 91
    invoke-direct {p0, p1, v1}, Lio/branch/referral/validators/IntegrationValidator;->logIntegrationError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 95
    :cond_3
    invoke-direct {p0}, Lio/branch/referral/validators/IntegrationValidator;->logValidationPassed()V

    const-string v2, "6. Verifying intent for receiving URI scheme."

    .line 98
    invoke-direct {p0, v2}, Lio/branch/referral/validators/IntegrationValidator;->logValidationProgress(Ljava/lang/String;)V

    .line 99
    invoke-direct {p0, v0}, Lio/branch/referral/validators/IntegrationValidator;->checkIfIntentAddedForURIScheme(Ljava/lang/String;)Z

    move-result v2

    const-string v6, "- Skipping. Unable to verify intent for receiving URI scheme. Failed to read the Android Manifest"

    if-nez v2, :cond_5

    .line 100
    iget-object v2, p0, Lio/branch/referral/validators/IntegrationValidator;->integrationModel:Lio/branch/referral/validators/BranchIntegrationModel;

    iget-boolean v2, v2, Lio/branch/referral/validators/BranchIntegrationModel;->appSettingsAvailable:Z

    if-nez v2, :cond_4

    .line 101
    invoke-direct {p0, v6}, Lio/branch/referral/validators/IntegrationValidator;->logValidationProgress(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    new-array p1, v5, [Ljava/lang/Object;

    aput-object v0, p1, v4

    const-string v0, "Uri scheme \'%s\' specified in Branch dashboard doesn\'t match with the deep link intent in manifest file"

    .line 103
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lio/branch/referral/validators/IntegrationValidator;->logIntegrationError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 108
    :cond_5
    invoke-direct {p0}, Lio/branch/referral/validators/IntegrationValidator;->logValidationPassed()V

    :goto_2
    const-string v0, "7. Checking AndroidManifest for AppLink config."

    .line 112
    invoke-direct {p0, v0}, Lio/branch/referral/validators/IntegrationValidator;->logValidationProgress(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lio/branch/referral/validators/IntegrationValidator;->integrationModel:Lio/branch/referral/validators/BranchIntegrationModel;

    iget-object v0, v0, Lio/branch/referral/validators/BranchIntegrationModel;->applinkScheme:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 114
    iget-object v0, p0, Lio/branch/referral/validators/IntegrationValidator;->integrationModel:Lio/branch/referral/validators/BranchIntegrationModel;

    iget-boolean v0, v0, Lio/branch/referral/validators/BranchIntegrationModel;->appSettingsAvailable:Z

    if-nez v0, :cond_6

    .line 115
    invoke-direct {p0, v6}, Lio/branch/referral/validators/IntegrationValidator;->logValidationProgress(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const-string p1, "Could not find any App Link hosts to support Android AppLinks. Please add intent filter for handling AppLinks in your Android Manifest file"

    const-string v0, "https://help.branch.io/using-branch/docs/android-app-links#section-add-intent-filter-to-manifest"

    .line 117
    invoke-direct {p0, p1, v0}, Lio/branch/referral/validators/IntegrationValidator;->logIntegrationError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 122
    :cond_7
    invoke-direct {p0}, Lio/branch/referral/validators/IntegrationValidator;->logValidationPassed()V

    :goto_3
    const-string v0, "8. Verifying any supported custom link domains."

    .line 127
    invoke-direct {p0, v0}, Lio/branch/referral/validators/IntegrationValidator;->logValidationProgress(Ljava/lang/String;)V

    const-string v0, "short_url_domain"

    .line 128
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-direct {p0, v0}, Lio/branch/referral/validators/IntegrationValidator;->checkIfIntentAddedForLinkDomain(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 130
    iget-object v1, p0, Lio/branch/referral/validators/IntegrationValidator;->integrationModel:Lio/branch/referral/validators/BranchIntegrationModel;

    iget-boolean v1, v1, Lio/branch/referral/validators/BranchIntegrationModel;->appSettingsAvailable:Z

    if-nez v1, :cond_8

    const-string v0, "- Skipping. Unable to verify supported custom link domains. Failed to read the Android Manifest"

    .line 131
    invoke-direct {p0, v0}, Lio/branch/referral/validators/IntegrationValidator;->logValidationProgress(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    new-array p1, v5, [Ljava/lang/Object;

    aput-object v0, p1, v4

    const-string v0, "Could not find intent filter to support custom link domain \'%s\'. Please add intent filter for handling custom link domain in your Android Manifest file "

    .line 133
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lio/branch/referral/validators/IntegrationValidator;->logIntegrationError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 139
    :cond_9
    invoke-direct {p0}, Lio/branch/referral/validators/IntegrationValidator;->logValidationPassed()V

    :goto_4
    const-string v0, "9. Verifying default link domains integrations."

    .line 146
    invoke-direct {p0, v0}, Lio/branch/referral/validators/IntegrationValidator;->logValidationProgress(Ljava/lang/String;)V

    const-string v0, "default_short_url_domain"

    .line 147
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-direct {p0, v0}, Lio/branch/referral/validators/IntegrationValidator;->checkIfIntentAddedForLinkDomain(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 149
    iget-object v1, p0, Lio/branch/referral/validators/IntegrationValidator;->integrationModel:Lio/branch/referral/validators/BranchIntegrationModel;

    iget-boolean v1, v1, Lio/branch/referral/validators/BranchIntegrationModel;->appSettingsAvailable:Z

    if-nez v1, :cond_a

    const-string v0, "- Skipping. Unable to verify default link domains. Failed to read the Android Manifest"

    .line 150
    invoke-direct {p0, v0}, Lio/branch/referral/validators/IntegrationValidator;->logValidationProgress(Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    new-array p1, v5, [Ljava/lang/Object;

    aput-object v0, p1, v4

    const-string v0, "Could not find intent filter to support Branch default link domain \'%s\'. Please add intent filter for handling custom link domain in your Android Manifest file "

    .line 152
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lio/branch/referral/validators/IntegrationValidator;->logIntegrationError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 157
    :cond_b
    invoke-direct {p0}, Lio/branch/referral/validators/IntegrationValidator;->logValidationPassed()V

    :goto_5
    const-string v0, "10. Verifying alternate link domains integrations."

    .line 164
    invoke-direct {p0, v0}, Lio/branch/referral/validators/IntegrationValidator;->logValidationProgress(Ljava/lang/String;)V

    const-string v0, "alternate_short_url_domain"

    .line 165
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 166
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-direct {p0, p1}, Lio/branch/referral/validators/IntegrationValidator;->checkIfIntentAddedForLinkDomain(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 167
    iget-object v0, p0, Lio/branch/referral/validators/IntegrationValidator;->integrationModel:Lio/branch/referral/validators/BranchIntegrationModel;

    iget-boolean v0, v0, Lio/branch/referral/validators/BranchIntegrationModel;->appSettingsAvailable:Z

    if-nez v0, :cond_c

    const-string p1, "- Skipping.Unable to verify alternate link domains. Failed to read the Android Manifest"

    .line 168
    invoke-direct {p0, p1}, Lio/branch/referral/validators/IntegrationValidator;->logValidationProgress(Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    new-array v0, v5, [Ljava/lang/Object;

    aput-object p1, v0, v4

    const-string p1, "Could not find intent filter to support alternate link domain \'%s\'. Please add intent filter for handling custom link domain in your Android Manifest file "

    .line 170
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lio/branch/referral/validators/IntegrationValidator;->logIntegrationError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 175
    :cond_d
    invoke-direct {p0}, Lio/branch/referral/validators/IntegrationValidator;->logValidationPassed()V

    .line 178
    :goto_6
    invoke-direct {p0}, Lio/branch/referral/validators/IntegrationValidator;->logValidationPassed()V

    const-string p1, "BranchSDK_Doctor"

    const-string v0, "--------------------------------------------\nSuccessfully completed Branch integration validation. Everything looks good!"

    .line 179
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "\n         Great! Comment out the \'validateSDKIntegration\' line in your app. Next check your deep link routing.\n         Append \'?bnc_validate=true\' to any of your app\'s Branch links and click it on your mobile device (not the Simulator!) to start the test.\n         For instance, to validate a link like:\n         https://<yourapp>.app.link/NdJ6nFzRbK\n         click on:\n         https://<yourapp>.app.link/NdJ6nFzRbK?bnc_validate=true"

    .line 180
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    new-array v0, v5, [Ljava/lang/Object;

    .line 79
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v4

    const-string p1, "No intent found for opening the app through uri Scheme \'%s\'.Please add the intent with URI scheme to your Android manifest."

    .line 78
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lio/branch/referral/validators/IntegrationValidator;->logIntegrationError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logIntegrationError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "** ERROR ** : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nPlease follow the link for more info "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BranchSDK_Doctor"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logValidationPassed()V
    .locals 2

    const-string v0, "BranchSDK_Doctor"

    const-string v1, "Passed"

    .line 248
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logValidationProgress(Ljava/lang/String;)V
    .locals 1

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ... "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BranchSDK_Doctor"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static validate(Landroid/content/Context;)V
    .locals 1

    .line 31
    sget-object v0, Lio/branch/referral/validators/IntegrationValidator;->instance:Lio/branch/referral/validators/IntegrationValidator;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lio/branch/referral/validators/IntegrationValidator;

    invoke-direct {v0, p0}, Lio/branch/referral/validators/IntegrationValidator;-><init>(Landroid/content/Context;)V

    sput-object v0, Lio/branch/referral/validators/IntegrationValidator;->instance:Lio/branch/referral/validators/IntegrationValidator;

    .line 34
    :cond_0
    sget-object v0, Lio/branch/referral/validators/IntegrationValidator;->instance:Lio/branch/referral/validators/IntegrationValidator;

    invoke-direct {v0, p0}, Lio/branch/referral/validators/IntegrationValidator;->validateSDKIntegration(Landroid/content/Context;)V

    return-void
.end method

.method private validateSDKIntegration(Landroid/content/Context;)V
    .locals 2

    const-string v0, "\n\n------------------- Initiating Branch integration verification ---------------------------"

    .line 38
    invoke-direct {p0, v0}, Lio/branch/referral/validators/IntegrationValidator;->logValidationProgress(Ljava/lang/String;)V

    const-string v0, "1. Verifying Branch instance creation"

    .line 40
    invoke-direct {p0, v0}, Lio/branch/referral/validators/IntegrationValidator;->logValidationProgress(Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lio/branch/referral/Branch;->getInstance()Lio/branch/referral/Branch;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "Branch is not initialised from your Application class. Please add `Branch.getAutoInstance(this);` to your Application#onCreate() method."

    const-string v0, "https://help.branch.io/developers-hub/docs/android-basic-integration#section-load-branch"

    .line 42
    invoke-direct {p0, p1, v0}, Lio/branch/referral/validators/IntegrationValidator;->logIntegrationError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 46
    :cond_0
    invoke-direct {p0}, Lio/branch/referral/validators/IntegrationValidator;->logValidationPassed()V

    const-string v0, "2. Checking Branch keys"

    .line 49
    invoke-direct {p0, v0}, Lio/branch/referral/validators/IntegrationValidator;->logValidationProgress(Ljava/lang/String;)V

    .line 50
    invoke-static {p1}, Lio/branch/referral/BranchUtil;->readBranchKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Unable to read Branch keys from your application. Did you forget to add Branch keys in your application?."

    const-string v0, "https://help.branch.io/developers-hub/docs/android-basic-integration#section-configure-app"

    .line 51
    invoke-direct {p0, p1, v0}, Lio/branch/referral/validators/IntegrationValidator;->logIntegrationError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 55
    :cond_1
    invoke-direct {p0}, Lio/branch/referral/validators/IntegrationValidator;->logValidationPassed()V

    .line 57
    invoke-static {}, Lio/branch/referral/Branch;->getInstance()Lio/branch/referral/Branch;

    move-result-object v0

    new-instance v1, Lio/branch/referral/validators/ServerRequestGetAppConfig;

    invoke-direct {v1, p1, p0}, Lio/branch/referral/validators/ServerRequestGetAppConfig;-><init>(Landroid/content/Context;Lio/branch/referral/validators/ServerRequestGetAppConfig$IGetAppConfigEvents;)V

    invoke-virtual {v0, v1}, Lio/branch/referral/Branch;->handleNewRequest(Lio/branch/referral/ServerRequest;)V

    return-void
.end method


# virtual methods
.method public onAppConfigAvailable(Lorg/json/JSONObject;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 232
    invoke-direct {p0, p1}, Lio/branch/referral/validators/IntegrationValidator;->doValidateWithAppConfig(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    const-string p1, "Unable to read Dashboard config. Please confirm that your Branch key is properly added to the manifest. Please fix your Dashboard settings."

    const-string v0, "https://branch.app.link/link-settings-page"

    .line 234
    invoke-direct {p0, p1, v0}, Lio/branch/referral/validators/IntegrationValidator;->logIntegrationError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
