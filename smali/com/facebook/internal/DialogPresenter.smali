.class public final Lcom/facebook/internal/DialogPresenter;
.super Ljava/lang/Object;
.source "DialogPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/DialogPresenter$ParameterProvider;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u00016B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0012\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J \u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J \u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u000fH\u0007J\u0018\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0007J\"\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0007J\u0018\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010 \u001a\u00020!H\u0007J\u0010\u0010\"\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0019H\u0007J$\u0010#\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0010$\u001a\u0004\u0018\u00010\u000f2\u0008\u0010%\u001a\u0004\u0018\u00010&H\u0007J\u001a\u0010\'\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0010(\u001a\u0004\u0018\u00010)H\u0007J \u0010*\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010+\u001a\u00020,2\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u001a\u0010-\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0010.\u001a\u0004\u0018\u00010)H\u0007J$\u0010/\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0008\u0010%\u001a\u0004\u0018\u00010&H\u0007J\"\u00100\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0010%\u001a\u0004\u0018\u00010&2\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J*\u00101\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u00102\u001a\u0002032\u0006\u00104\u001a\u000205H\u0007\u00a8\u00067"
    }
    d2 = {
        "Lcom/facebook/internal/DialogPresenter;",
        "",
        "()V",
        "canPresentNativeDialogWithFeature",
        "",
        "feature",
        "Lcom/facebook/internal/DialogFeature;",
        "canPresentWebFallbackDialogWithFeature",
        "getDialogWebFallbackUri",
        "Landroid/net/Uri;",
        "getProtocolVersionForNativeDialog",
        "Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;",
        "getVersionSpecForFeature",
        "",
        "applicationId",
        "",
        "actionName",
        "logDialogActivity",
        "",
        "context",
        "Landroid/content/Context;",
        "eventName",
        "outcome",
        "present",
        "appCall",
        "Lcom/facebook/internal/AppCall;",
        "activity",
        "Landroid/app/Activity;",
        "registry",
        "Landroidx/activity/result/ActivityResultRegistry;",
        "callbackManager",
        "Lcom/facebook/CallbackManager;",
        "fragmentWrapper",
        "Lcom/facebook/internal/FragmentWrapper;",
        "setupAppCallForCannotShowError",
        "setupAppCallForCustomTabDialog",
        "action",
        "parameters",
        "Landroid/os/Bundle;",
        "setupAppCallForErrorResult",
        "exception",
        "Lcom/facebook/FacebookException;",
        "setupAppCallForNativeDialog",
        "parameterProvider",
        "Lcom/facebook/internal/DialogPresenter$ParameterProvider;",
        "setupAppCallForValidationError",
        "validationError",
        "setupAppCallForWebDialog",
        "setupAppCallForWebFallbackDialog",
        "startActivityForResultWithAndroidX",
        "intent",
        "Landroid/content/Intent;",
        "requestCode",
        "",
        "ParameterProvider",
        "facebook-common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/internal/DialogPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lcom/facebook/internal/DialogPresenter;

    invoke-direct {v0}, Lcom/facebook/internal/DialogPresenter;-><init>()V

    sput-object v0, Lcom/facebook/internal/DialogPresenter;->INSTANCE:Lcom/facebook/internal/DialogPresenter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final canPresentNativeDialogWithFeature(Lcom/facebook/internal/DialogFeature;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "feature"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-static {p0}, Lcom/facebook/internal/DialogPresenter;->getProtocolVersionForNativeDialog(Lcom/facebook/internal/DialogFeature;)Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;->getProtocolVersion()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final canPresentWebFallbackDialogWithFeature(Lcom/facebook/internal/DialogFeature;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "feature"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    sget-object v0, Lcom/facebook/internal/DialogPresenter;->INSTANCE:Lcom/facebook/internal/DialogPresenter;

    invoke-direct {v0, p0}, Lcom/facebook/internal/DialogPresenter;->getDialogWebFallbackUri(Lcom/facebook/internal/DialogFeature;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final getDialogWebFallbackUri(Lcom/facebook/internal/DialogFeature;)Landroid/net/Uri;
    .locals 3

    .line 275
    invoke-interface {p1}, Lcom/facebook/internal/DialogFeature;->name()Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-interface {p1}, Lcom/facebook/internal/DialogFeature;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 277
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    .line 278
    sget-object v2, Lcom/facebook/internal/FetchedAppSettings;->Companion:Lcom/facebook/internal/FetchedAppSettings$Companion;

    invoke-virtual {v2, v1, p1, v0}, Lcom/facebook/internal/FetchedAppSettings$Companion;->getDialogFeatureConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;

    move-result-object p1

    const/4 v0, 0x0

    .line 279
    check-cast v0, Landroid/net/Uri;

    if-eqz p1, :cond_0

    .line 281
    invoke-virtual {p1}, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->getFallbackUrl()Landroid/net/Uri;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static final getProtocolVersionForNativeDialog(Lcom/facebook/internal/DialogFeature;)Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "feature"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 291
    invoke-interface {p0}, Lcom/facebook/internal/DialogFeature;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 292
    sget-object v2, Lcom/facebook/internal/DialogPresenter;->INSTANCE:Lcom/facebook/internal/DialogPresenter;

    invoke-direct {v2, v0, v1, p0}, Lcom/facebook/internal/DialogPresenter;->getVersionSpecForFeature(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/internal/DialogFeature;)[I

    move-result-object p0

    .line 293
    invoke-static {v1, p0}, Lcom/facebook/internal/NativeProtocol;->getLatestAvailableProtocolVersionForAction(Ljava/lang/String;[I)Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;

    move-result-object p0

    return-object p0
.end method

.method private final getVersionSpecForFeature(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/internal/DialogFeature;)[I
    .locals 2

    .line 303
    sget-object v0, Lcom/facebook/internal/FetchedAppSettings;->Companion:Lcom/facebook/internal/FetchedAppSettings$Companion;

    invoke-interface {p3}, Lcom/facebook/internal/DialogFeature;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/facebook/internal/FetchedAppSettings$Companion;->getDialogFeatureConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 304
    invoke-virtual {p1}, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->getVersionSpec()[I

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 p2, 0x0

    invoke-interface {p3}, Lcom/facebook/internal/DialogFeature;->getMinVersion()I

    move-result p3

    aput p3, p1, p2

    :goto_0
    return-object p1
.end method

.method public static final logDialogActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outcome"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    new-instance v0, Lcom/facebook/appevents/InternalAppEventsLogger;

    invoke-direct {v0, p0}, Lcom/facebook/appevents/InternalAppEventsLogger;-><init>(Landroid/content/Context;)V

    .line 310
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "fb_dialog_outcome"

    .line 311
    invoke-virtual {p0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-virtual {v0, p1, p0}, Lcom/facebook/appevents/InternalAppEventsLogger;->logEventImplicitly(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static final present(Lcom/facebook/internal/AppCall;Landroid/app/Activity;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "appCall"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/facebook/internal/AppCall;->getRequestIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/internal/AppCall;->getRequestCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 79
    invoke-virtual {p0}, Lcom/facebook/internal/AppCall;->setPending()Z

    return-void
.end method

.method public static final present(Lcom/facebook/internal/AppCall;Landroidx/activity/result/ActivityResultRegistry;Lcom/facebook/CallbackManager;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "appCall"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "registry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/facebook/internal/AppCall;->getRequestIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/facebook/internal/AppCall;->getRequestCode()I

    move-result v1

    .line 95
    invoke-static {p1, p2, v0, v1}, Lcom/facebook/internal/DialogPresenter;->startActivityForResultWithAndroidX(Landroidx/activity/result/ActivityResultRegistry;Lcom/facebook/CallbackManager;Landroid/content/Intent;I)V

    .line 97
    invoke-virtual {p0}, Lcom/facebook/internal/AppCall;->setPending()Z

    :cond_0
    return-void
.end method

.method public static final present(Lcom/facebook/internal/AppCall;Lcom/facebook/internal/FragmentWrapper;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "appCall"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/facebook/internal/AppCall;->getRequestIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/internal/AppCall;->getRequestCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/facebook/internal/FragmentWrapper;->startActivityForResult(Landroid/content/Intent;I)V

    .line 85
    invoke-virtual {p0}, Lcom/facebook/internal/AppCall;->setPending()Z

    return-void
.end method

.method public static final setupAppCallForCannotShowError(Lcom/facebook/internal/AppCall;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "appCall"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Unable to show the provided content via the web or the installed version of the Facebook app. Some dialogs are only supported starting API 14."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-static {p0, v0}, Lcom/facebook/internal/DialogPresenter;->setupAppCallForValidationError(Lcom/facebook/internal/AppCall;Lcom/facebook/FacebookException;)V

    return-void
.end method

.method public static final setupAppCallForCustomTabDialog(Lcom/facebook/internal/AppCall;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "appCall"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/facebook/internal/CustomTabUtils;->getDefaultRedirectURI()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/internal/Validate;->hasCustomTabRedirectActivity(Landroid/content/Context;Ljava/lang/String;)Z

    .line 264
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Validate;->hasInternetPermissions(Landroid/content/Context;)V

    .line 265
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/CustomTabMainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 266
    sget-object v1, Lcom/facebook/CustomTabMainActivity;->EXTRA_ACTION:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    sget-object v1, Lcom/facebook/CustomTabMainActivity;->EXTRA_PARAMS:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 268
    sget-object p2, Lcom/facebook/CustomTabMainActivity;->EXTRA_CHROME_PACKAGE:Ljava/lang/String;

    invoke-static {}, Lcom/facebook/internal/CustomTabUtils;->getChromePackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    invoke-virtual {p0}, Lcom/facebook/internal/AppCall;->getCallId()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->getLatestKnownVersion()I

    move-result v1

    const/4 v2, 0x0

    .line 269
    invoke-static {v0, p2, p1, v1, v2}, Lcom/facebook/internal/NativeProtocol;->setupProtocolRequestIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 271
    invoke-virtual {p0, v0}, Lcom/facebook/internal/AppCall;->setRequestIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public static final setupAppCallForErrorResult(Lcom/facebook/internal/AppCall;Lcom/facebook/FacebookException;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "appCall"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 150
    :cond_0
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Validate;->hasFacebookActivity(Landroid/content/Context;)V

    .line 151
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 152
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/FacebookActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "PassThrough"

    .line 153
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    invoke-virtual {p0}, Lcom/facebook/internal/AppCall;->getCallId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 158
    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->getLatestKnownVersion()I

    move-result v3

    .line 159
    invoke-static {p1}, Lcom/facebook/internal/NativeProtocol;->createBundleForException(Lcom/facebook/FacebookException;)Landroid/os/Bundle;

    move-result-object p1

    .line 154
    invoke-static {v0, v1, v2, v3, p1}, Lcom/facebook/internal/NativeProtocol;->setupProtocolRequestIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 160
    invoke-virtual {p0, v0}, Lcom/facebook/internal/AppCall;->setRequestIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public static final setupAppCallForNativeDialog(Lcom/facebook/internal/AppCall;Lcom/facebook/internal/DialogPresenter$ParameterProvider;Lcom/facebook/internal/DialogFeature;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "appCall"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameterProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feature"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 233
    invoke-interface {p2}, Lcom/facebook/internal/DialogFeature;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 234
    invoke-static {p2}, Lcom/facebook/internal/DialogPresenter;->getProtocolVersionForNativeDialog(Lcom/facebook/internal/DialogFeature;)Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;

    move-result-object p2

    .line 235
    invoke-virtual {p2}, Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;->getProtocolVersion()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 243
    invoke-static {v2}, Lcom/facebook/internal/NativeProtocol;->isVersionCompatibleWithBucketedIntent(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    invoke-interface {p1}, Lcom/facebook/internal/DialogPresenter$ParameterProvider;->getParameters()Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    .line 248
    :cond_0
    invoke-interface {p1}, Lcom/facebook/internal/DialogPresenter$ParameterProvider;->getLegacyParameters()Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    .line 251
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 255
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/internal/AppCall;->getCallId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 254
    invoke-static {v0, v2, v1, p2, p1}, Lcom/facebook/internal/NativeProtocol;->createPlatformActivityIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 258
    invoke-virtual {p0, p1}, Lcom/facebook/internal/AppCall;->setRequestIntent(Landroid/content/Intent;)V

    return-void

    .line 256
    :cond_2
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "Unable to create Intent; this likely means theFacebook app is not installed."

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    .line 237
    :cond_3
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "Cannot present this dialog. This likely means that the Facebook app is not installed."

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method public static final setupAppCallForValidationError(Lcom/facebook/internal/AppCall;Lcom/facebook/FacebookException;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "appCall"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-static {p0, p1}, Lcom/facebook/internal/DialogPresenter;->setupAppCallForErrorResult(Lcom/facebook/internal/AppCall;Lcom/facebook/FacebookException;)V

    return-void
.end method

.method public static final setupAppCallForWebDialog(Lcom/facebook/internal/AppCall;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "appCall"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Validate;->hasFacebookActivity(Landroid/content/Context;)V

    .line 166
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Validate;->hasInternetPermissions(Landroid/content/Context;)V

    .line 167
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action"

    .line 168
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "params"

    .line 169
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 170
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 173
    invoke-virtual {p0}, Lcom/facebook/internal/AppCall;->getCallId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->getLatestKnownVersion()I

    move-result v2

    .line 171
    invoke-static {p2, v1, p1, v2, v0}, Lcom/facebook/internal/NativeProtocol;->setupProtocolRequestIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 177
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/facebook/FacebookActivity;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string p1, "FacebookDialogFragment"

    .line 178
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    invoke-virtual {p0, p2}, Lcom/facebook/internal/AppCall;->setRequestIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public static final setupAppCallForWebFallbackDialog(Lcom/facebook/internal/AppCall;Landroid/os/Bundle;Lcom/facebook/internal/DialogFeature;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "appCall"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feature"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Validate;->hasFacebookActivity(Landroid/content/Context;)V

    .line 189
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Validate;->hasInternetPermissions(Landroid/content/Context;)V

    .line 190
    invoke-interface {p2}, Lcom/facebook/internal/DialogFeature;->name()Ljava/lang/String;

    move-result-object v0

    .line 191
    sget-object v1, Lcom/facebook/internal/DialogPresenter;->INSTANCE:Lcom/facebook/internal/DialogPresenter;

    invoke-direct {v1, p2}, Lcom/facebook/internal/DialogPresenter;->getDialogWebFallbackUri(Lcom/facebook/internal/DialogFeature;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 198
    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->getLatestKnownVersion()I

    move-result v0

    .line 201
    invoke-virtual {p0}, Lcom/facebook/internal/AppCall;->getCallId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "appCall.callId.toString()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    invoke-static {v2, v0, p1}, Lcom/facebook/internal/ServerProtocol;->getQueryParamsForPlatformActivityIntentWebFallback(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 206
    invoke-virtual {v1}, Landroid/net/Uri;->isRelative()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getDialogAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/facebook/internal/Utility;->buildUri(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/facebook/internal/Utility;->buildUri(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object p1

    .line 211
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 212
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    const-string v1, "is_fallback"

    .line 213
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 214
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 217
    invoke-virtual {p0}, Lcom/facebook/internal/AppCall;->getCallId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 218
    invoke-interface {p2}, Lcom/facebook/internal/DialogFeature;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 219
    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->getLatestKnownVersion()I

    move-result v2

    .line 215
    invoke-static {p1, v1, p2, v2, v0}, Lcom/facebook/internal/NativeProtocol;->setupProtocolRequestIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 221
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-class v0, Lcom/facebook/FacebookActivity;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string p2, "FacebookDialogFragment"

    .line 222
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    invoke-virtual {p0, p1}, Lcom/facebook/internal/AppCall;->setRequestIntent(Landroid/content/Intent;)V

    return-void

    .line 202
    :cond_1
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "Unable to fetch the app\'s key-hash"

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    .line 193
    :cond_2
    new-instance p0, Lcom/facebook/FacebookException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to fetch the Url for the DialogFeature : \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x27

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method public static final startActivityForResultWithAndroidX(Landroidx/activity/result/ActivityResultRegistry;Lcom/facebook/CallbackManager;Landroid/content/Intent;I)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "registry"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v1, 0x0

    check-cast v1, Landroidx/activity/result/ActivityResultLauncher;

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "facebook-dialog-request-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 111
    new-instance v2, Lcom/facebook/internal/DialogPresenter$startActivityForResultWithAndroidX$1;

    invoke-direct {v2}, Lcom/facebook/internal/DialogPresenter$startActivityForResultWithAndroidX$1;-><init>()V

    check-cast v2, Landroidx/activity/result/contract/ActivityResultContract;

    .line 118
    new-instance v3, Lcom/facebook/internal/DialogPresenter$startActivityForResultWithAndroidX$2;

    invoke-direct {v3, p1, p3, v0}, Lcom/facebook/internal/DialogPresenter$startActivityForResultWithAndroidX$2;-><init>(Lcom/facebook/CallbackManager;ILkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v3, Landroidx/activity/result/ActivityResultCallback;

    .line 109
    invoke-virtual {p0, v1, v2, v3}, Landroidx/activity/result/ActivityResultRegistry;->register(Ljava/lang/String;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p0

    iput-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 131
    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Landroidx/activity/result/ActivityResultLauncher;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
