.class public Lcom/sdkbox/plugin/SDKBox;
.super Ljava/lang/Object;
.source "SDKBox.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SDKBOX_CORE"

.field protected static _IAP_Verification_Server_Path:Ljava/lang/String;

.field protected static _applicationToken:Ljava/lang/String;

.field protected static _cdid:Ljava/lang/String;

.field private static _pool:Ljava/util/concurrent/ExecutorService;

.field protected static _reflectRunOnGLThread:Ljava/lang/reflect/Method;

.field protected static _sContext:Landroid/content/Context;

.field protected static _sListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/sdkbox/plugin/PluginListener;",
            ">;"
        }
    .end annotation
.end field

.field protected static _sMainThreadHandler:Landroid/os/Handler;

.field protected static _sPluginObjects:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    .line 17
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/sdkbox/plugin/SDKBox;->_pool:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    .line 18
    sput-object v0, Lcom/sdkbox/plugin/SDKBox;->_sContext:Landroid/content/Context;

    .line 19
    sput-object v0, Lcom/sdkbox/plugin/SDKBox;->_sMainThreadHandler:Landroid/os/Handler;

    .line 20
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v1, Lcom/sdkbox/plugin/SDKBox;->_sListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 21
    sput-object v0, Lcom/sdkbox/plugin/SDKBox;->_reflectRunOnGLThread:Ljava/lang/reflect/Method;

    .line 22
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/sdkbox/plugin/SDKBox;->_sPluginObjects:Ljava/util/HashMap;

    const-string v1, "http://api.sdkbox.com/SSS"

    .line 23
    sput-object v1, Lcom/sdkbox/plugin/SDKBox;->_IAP_Verification_Server_Path:Ljava/lang/String;

    .line 24
    sput-object v0, Lcom/sdkbox/plugin/SDKBox;->_applicationToken:Ljava/lang/String;

    .line 25
    sput-object v0, Lcom/sdkbox/plugin/SDKBox;->_cdid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addListener(Lcom/sdkbox/plugin/PluginListener;)V
    .locals 1

    .line 162
    sget-object v0, Lcom/sdkbox/plugin/SDKBox;->_sListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static debugEndpoint(Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-static {p0}, Lcom/sdkbox/plugin/SdkboxLog;->enableRemote(Ljava/lang/String;)V

    return-void
.end method

.method public static executeInBackground(Ljava/lang/Runnable;)V
    .locals 1

    .line 263
    sget-object v0, Lcom/sdkbox/plugin/SDKBox;->_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getApplicationToken()Ljava/lang/String;
    .locals 1

    .line 245
    sget-object v0, Lcom/sdkbox/plugin/SDKBox;->_applicationToken:Ljava/lang/String;

    return-object v0
.end method

.method public static getCDID()Ljava/lang/String;
    .locals 1

    .line 249
    sget-object v0, Lcom/sdkbox/plugin/SDKBox;->_cdid:Ljava/lang/String;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 214
    sget-object v0, Lcom/sdkbox/plugin/SDKBox;->_sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getPlugin(Ljava/lang/String;)Lcom/sdkbox/plugin/PluginListener;
    .locals 1

    .line 241
    sget-object v0, Lcom/sdkbox/plugin/SDKBox;->_sPluginObjects:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sdkbox/plugin/PluginListener;

    return-object p0
.end method

.method public static getVerificationAddress()Ljava/lang/String;
    .locals 1

    .line 253
    sget-object v0, Lcom/sdkbox/plugin/SDKBox;->_IAP_Verification_Server_Path:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 5

    .line 42
    sput-object p0, Lcom/sdkbox/plugin/SDKBox;->_sContext:Landroid/content/Context;

    .line 43
    sget-object p0, Lcom/sdkbox/plugin/SDKBox;->_sMainThreadHandler:Landroid/os/Handler;

    if-nez p0, :cond_0

    .line 44
    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    sput-object p0, Lcom/sdkbox/plugin/SDKBox;->_sMainThreadHandler:Landroid/os/Handler;

    :cond_0
    const/4 p0, 0x0

    new-array v0, p0, [Ljava/lang/Object;

    const-string v1, "SDKBOX_CORE"

    const-string v2, "Sdkbox Droid starting."

    .line 46
    invoke-static {v1, v2, v0}, Lcom/sdkbox/plugin/SdkboxLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    :try_start_0
    sget-object v0, Lcom/sdkbox/plugin/SDKBox;->_sContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "runOnGLThread"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    .line 49
    const-class v4, Ljava/lang/Runnable;

    aput-object v4, v3, p0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/sdkbox/plugin/SDKBox;->_reflectRunOnGLThread:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "Context class has no method: \'runOnGLThread\'. All methods will run in main thread."

    .line 51
    invoke-static {v1, v0, p0}, Lcom/sdkbox/plugin/SdkboxLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    :goto_0
    sget-object p0, Lcom/sdkbox/plugin/SDKBox;->_sContext:Landroid/content/Context;

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sdkbox/plugin/SDKBox;->nativeInit(Ljava/lang/Object;Ljava/lang/ClassLoader;)V

    .line 54
    invoke-static {}, Lcom/sdkbox/plugin/TrackingInfoAndroid;->trace_acc()V

    return-void
.end method

.method protected static initPlugin(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8

    const-string v0, " not found."

    const-string v1, "Plugin "

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initialization request for plugin: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "SDKBOX_CORE"

    invoke-static {v5, v2, v4}, Lcom/sdkbox/plugin/SdkboxLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v2, 0x2f

    const/16 v4, 0x2e

    const/4 v6, 0x0

    .line 173
    :try_start_0
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 174
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 180
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v5, v0, v4}, Lcom/sdkbox/plugin/SdkboxLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    invoke-virtual {v2}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    move-object v0, v6

    .line 184
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/sdkbox/plugin/SDKBox;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 186
    sget-object v1, Lcom/sdkbox/plugin/SDKBox;->_sPluginObjects:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    const/4 v1, 0x1

    :try_start_2
    const-string v4, "getInstance"

    new-array v5, v1, [Ljava/lang/Class;

    .line 192
    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v3

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_1

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v2, v5, v3

    .line 194
    invoke-virtual {v4, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    :cond_1
    move-object v4, v6

    :goto_1
    if-nez v4, :cond_2

    :try_start_3
    new-array v4, v1, [Ljava/lang/Class;

    .line 200
    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 202
    :cond_2
    sget-object v0, Lcom/sdkbox/plugin/SDKBox;->_sPluginObjects:Ljava/util/HashMap;

    invoke-virtual {v0, p0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v4

    .line 205
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " had no suitable constructor for initialization."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v5, p0, v0}, Lcom/sdkbox/plugin/SdkboxLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return-object v6

    :catch_2
    move-exception p0

    .line 208
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v6

    :catch_3
    move-exception v2

    .line 176
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v5, p0, v0}, Lcom/sdkbox/plugin/SdkboxLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    return-object v6
.end method

.method public static native nOnActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
.end method

.method public static native nOnDestroy()V
.end method

.method public static native nOnPause()V
.end method

.method public static native nOnResume()V
.end method

.method public static native nOnStart()V
.end method

.method public static native nOnStop()V
.end method

.method private static native nativeInit(Ljava/lang/Object;Ljava/lang/ClassLoader;)V
.end method

.method public static onActivityResult(IILandroid/content/Intent;)Z
    .locals 5

    .line 142
    sget-object v0, Lcom/sdkbox/plugin/SDKBox;->_sContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 146
    :cond_0
    sget-object v0, Lcom/sdkbox/plugin/SDKBox;->_sListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x1

    .line 147
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 148
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sdkbox/plugin/PluginListener;

    .line 149
    invoke-interface {v4, p0, p1, p2}, Lcom/sdkbox/plugin/PluginListener;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v4

    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 152
    :cond_2
    new-instance v0, Lcom/sdkbox/plugin/SDKBox$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/sdkbox/plugin/SDKBox$6;-><init>(IILandroid/content/Intent;)V

    invoke-static {v0}, Lcom/sdkbox/plugin/SDKBox;->runOnGLThread(Ljava/lang/Runnable;)V

    return v3
.end method

.method public static onBackPressed()Z
    .locals 4

    .line 133
    sget-object v0, Lcom/sdkbox/plugin/SDKBox;->_sListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    const/4 v2, 0x0

    .line 134
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 135
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sdkbox/plugin/PluginListener;

    if-nez v2, :cond_1

    .line 136
    invoke-interface {v3}, Lcom/sdkbox/plugin/PluginListener;->onBackPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static onDestroy()V
    .locals 2

    .line 118
    sget-object v0, Lcom/sdkbox/plugin/SDKBox;->_sListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 119
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdkbox/plugin/PluginListener;

    .line 121
    invoke-interface {v1}, Lcom/sdkbox/plugin/PluginListener;->onDestroy()V

    goto :goto_0

    .line 123
    :cond_0
    new-instance v0, Lcom/sdkbox/plugin/SDKBox$5;

    invoke-direct {v0}, Lcom/sdkbox/plugin/SDKBox$5;-><init>()V

    invoke-static {v0}, Lcom/sdkbox/plugin/SDKBox;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onPause()V
    .locals 2

    .line 104
    sget-object v0, Lcom/sdkbox/plugin/SDKBox;->_sListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 105
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdkbox/plugin/PluginListener;

    .line 107
    invoke-interface {v1}, Lcom/sdkbox/plugin/PluginListener;->onPause()V

    goto :goto_0

    .line 109
    :cond_0
    new-instance v0, Lcom/sdkbox/plugin/SDKBox$4;

    invoke-direct {v0}, Lcom/sdkbox/plugin/SDKBox$4;-><init>()V

    invoke-static {v0}, Lcom/sdkbox/plugin/SDKBox;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onResume()V
    .locals 2

    .line 90
    sget-object v0, Lcom/sdkbox/plugin/SDKBox;->_sListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 91
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdkbox/plugin/PluginListener;

    .line 93
    invoke-interface {v1}, Lcom/sdkbox/plugin/PluginListener;->onResume()V

    goto :goto_0

    .line 95
    :cond_0
    new-instance v0, Lcom/sdkbox/plugin/SDKBox$3;

    invoke-direct {v0}, Lcom/sdkbox/plugin/SDKBox$3;-><init>()V

    invoke-static {v0}, Lcom/sdkbox/plugin/SDKBox;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onStart()V
    .locals 2

    .line 62
    sget-object v0, Lcom/sdkbox/plugin/SDKBox;->_sListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 63
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdkbox/plugin/PluginListener;

    .line 65
    invoke-interface {v1}, Lcom/sdkbox/plugin/PluginListener;->onStart()V

    goto :goto_0

    .line 67
    :cond_0
    new-instance v0, Lcom/sdkbox/plugin/SDKBox$1;

    invoke-direct {v0}, Lcom/sdkbox/plugin/SDKBox$1;-><init>()V

    invoke-static {v0}, Lcom/sdkbox/plugin/SDKBox;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onStop()V
    .locals 2

    .line 76
    sget-object v0, Lcom/sdkbox/plugin/SDKBox;->_sListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 77
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdkbox/plugin/PluginListener;

    .line 79
    invoke-interface {v1}, Lcom/sdkbox/plugin/PluginListener;->onStop()V

    goto :goto_0

    .line 81
    :cond_0
    new-instance v0, Lcom/sdkbox/plugin/SDKBox$2;

    invoke-direct {v0}, Lcom/sdkbox/plugin/SDKBox$2;-><init>()V

    invoke-static {v0}, Lcom/sdkbox/plugin/SDKBox;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static removeListener(Lcom/sdkbox/plugin/PluginListener;)V
    .locals 1

    .line 166
    sget-object v0, Lcom/sdkbox/plugin/SDKBox;->_sListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static runOnGLThread(Ljava/lang/Runnable;)V
    .locals 4

    .line 218
    sget-object v0, Lcom/sdkbox/plugin/SDKBox;->_reflectRunOnGLThread:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 220
    :try_start_0
    sget-object v1, Lcom/sdkbox/plugin/SDKBox;->_sContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 223
    :catch_0
    invoke-static {p0}, Lcom/sdkbox/plugin/SDKBox;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void

    .line 227
    :cond_0
    invoke-static {p0}, Lcom/sdkbox/plugin/SDKBox;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static runOnMainThread(Ljava/lang/Runnable;)V
    .locals 3

    .line 231
    sget-object v0, Lcom/sdkbox/plugin/SDKBox;->_sContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 232
    check-cast v0, Landroid/app/Activity;

    .line 233
    invoke-virtual {v0, p0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SDKBOX_CORE"

    const-string v2, "Runnable executed in current thread."

    .line 236
    invoke-static {v1, v2, v0}, Lcom/sdkbox/plugin/SdkboxLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static setNativeApplicationInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 257
    sput-object p0, Lcom/sdkbox/plugin/SDKBox;->_applicationToken:Ljava/lang/String;

    .line 258
    sput-object p1, Lcom/sdkbox/plugin/SDKBox;->_cdid:Ljava/lang/String;

    .line 259
    sput-object p2, Lcom/sdkbox/plugin/SDKBox;->_IAP_Verification_Server_Path:Ljava/lang/String;

    return-void
.end method
