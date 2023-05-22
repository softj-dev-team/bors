.class public Lcom/sdkbox/reflect/AdUnitEventReward;
.super Ljava/lang/Object;
.source "AdUnitEventReward.java"


# instance fields
.field private final ad_unit_id:Ljava/lang/String;

.field private final reward_amount:F

.field private final reward_result:Z

.field private final zone_id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FZ)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/sdkbox/reflect/AdUnitEventReward;->ad_unit_id:Ljava/lang/String;

    .line 12
    iput p3, p0, Lcom/sdkbox/reflect/AdUnitEventReward;->reward_amount:F

    .line 13
    iput-boolean p4, p0, Lcom/sdkbox/reflect/AdUnitEventReward;->reward_result:Z

    .line 14
    iput-object p2, p0, Lcom/sdkbox/reflect/AdUnitEventReward;->zone_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getRewardAmount()F
    .locals 1

    .line 22
    iget v0, p0, Lcom/sdkbox/reflect/AdUnitEventReward;->reward_amount:F

    return v0
.end method

.method public getRewardResult()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/sdkbox/reflect/AdUnitEventReward;->reward_result:Z

    return v0
.end method

.method public getUnitId()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/sdkbox/reflect/AdUnitEventReward;->ad_unit_id:Ljava/lang/String;

    return-object v0
.end method

.method public getZoneID()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/sdkbox/reflect/AdUnitEventReward;->zone_id:Ljava/lang/String;

    return-object v0
.end method
