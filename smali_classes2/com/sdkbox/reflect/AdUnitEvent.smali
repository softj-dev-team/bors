.class public Lcom/sdkbox/reflect/AdUnitEvent;
.super Ljava/lang/Object;
.source "AdUnitEvent.java"


# instance fields
.field private final action_type:I

.field private final ad_unit_id:Ljava/lang/String;

.field private final extras:Ljava/lang/Object;

.field private final zone_name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/sdkbox/reflect/AdUnitEvent;->ad_unit_id:Ljava/lang/String;

    .line 12
    iput p3, p0, Lcom/sdkbox/reflect/AdUnitEvent;->action_type:I

    .line 13
    iput-object p2, p0, Lcom/sdkbox/reflect/AdUnitEvent;->zone_name:Ljava/lang/String;

    .line 14
    iput-object p4, p0, Lcom/sdkbox/reflect/AdUnitEvent;->extras:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getActionType()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/sdkbox/reflect/AdUnitEvent;->action_type:I

    return v0
.end method

.method public getExtras()Ljava/lang/Object;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/sdkbox/reflect/AdUnitEvent;->extras:Ljava/lang/Object;

    return-object v0
.end method

.method public getUnitId()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/sdkbox/reflect/AdUnitEvent;->ad_unit_id:Ljava/lang/String;

    return-object v0
.end method

.method public getZoneName()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/sdkbox/reflect/AdUnitEvent;->zone_name:Ljava/lang/String;

    return-object v0
.end method
