.class public Lzendesk/support/Organization;
.super Ljava/lang/Object;
.source "Organization.java"


# instance fields
.field private id:Ljava/lang/Long;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/Long;
    .locals 1

    .line 24
    iget-object v0, p0, Lzendesk/support/Organization;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lzendesk/support/Organization;->name:Ljava/lang/String;

    return-object v0
.end method
