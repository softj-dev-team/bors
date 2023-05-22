.class public final Lzendesk/messaging/BelvedereMediaHolder_Factory;
.super Ljava/lang/Object;
.source "BelvedereMediaHolder_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/messaging/BelvedereMediaHolder_Factory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/messaging/BelvedereMediaHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lzendesk/messaging/BelvedereMediaHolder_Factory;
    .locals 1

    .line 23
    invoke-static {}, Lzendesk/messaging/BelvedereMediaHolder_Factory$InstanceHolder;->access$000()Lzendesk/messaging/BelvedereMediaHolder_Factory;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance()Lzendesk/messaging/BelvedereMediaHolder;
    .locals 1

    .line 27
    new-instance v0, Lzendesk/messaging/BelvedereMediaHolder;

    invoke-direct {v0}, Lzendesk/messaging/BelvedereMediaHolder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lzendesk/messaging/BelvedereMediaHolder_Factory;->get()Lzendesk/messaging/BelvedereMediaHolder;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/messaging/BelvedereMediaHolder;
    .locals 1

    .line 19
    invoke-static {}, Lzendesk/messaging/BelvedereMediaHolder_Factory;->newInstance()Lzendesk/messaging/BelvedereMediaHolder;

    move-result-object v0

    return-object v0
.end method
