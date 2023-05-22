.class public Lorg/cocos2dx/javascript/service/ServiceAgora;
.super Lorg/cocos2dx/javascript/service/SDKClass;
.source "ServiceAgora.java"


# static fields
.field static ctx:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lorg/cocos2dx/javascript/service/SDKClass;-><init>()V

    return-void
.end method

.method public static checkAndRequestAppPermission(Landroid/app/Activity;[Ljava/lang/String;I)Z
    .locals 7

    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return v1

    .line 25
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, p1, v4

    .line 27
    invoke-static {p0, v5}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_1

    .line 28
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 30
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3

    return v1

    .line 31
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 32
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return v3
.end method

.method public static checkPermission()Z
    .locals 3

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v1, "android.permission.RECORD_AUDIO"

    const-string v2, "android.permission.CAMERA"

    .line 37
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 38
    sget-object v1, Lorg/cocos2dx/javascript/service/ServiceAgora;->ctx:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const/16 v2, 0x3e8

    invoke-static {v1, v0, v2}, Lorg/cocos2dx/javascript/service/ServiceAgora;->checkAndRequestAppPermission(Landroid/app/Activity;[Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-super {p0, p1}, Lorg/cocos2dx/javascript/service/SDKClass;->init(Landroid/content/Context;)V

    .line 19
    sput-object p1, Lorg/cocos2dx/javascript/service/ServiceAgora;->ctx:Landroid/content/Context;

    const-string p1, "agora-rtc-sdk"

    .line 20
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 43
    invoke-super {p0}, Lorg/cocos2dx/javascript/service/SDKClass;->onStart()V

    return-void
.end method
