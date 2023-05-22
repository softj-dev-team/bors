.class public abstract Lzendesk/messaging/Update$Action;
.super Lzendesk/messaging/Update;
.source "Update.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/messaging/Update;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/messaging/Update$Action$Navigation;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 220
    invoke-direct {p0, p1}, Lzendesk/messaging/Update;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract navigate(Landroid/app/Activity;)V
.end method
