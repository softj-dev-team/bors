.class public Lorg/cocos2dx/javascript/App;
.super Landroid/app/Application;
.source "App.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .line 9
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 12
    invoke-static {}, Lio/branch/referral/Branch;->enableLogging()V

    .line 15
    invoke-static {p0}, Lio/branch/referral/Branch;->getAutoInstance(Landroid/content/Context;)Lio/branch/referral/Branch;

    return-void
.end method
