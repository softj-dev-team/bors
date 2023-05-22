.class public Lio/branch/referral/BranchApp;
.super Landroid/app/Application;
.source "BranchApp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .line 25
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 26
    invoke-static {p0}, Lio/branch/referral/Branch;->getAutoInstance(Landroid/content/Context;)Lio/branch/referral/Branch;

    return-void
.end method
