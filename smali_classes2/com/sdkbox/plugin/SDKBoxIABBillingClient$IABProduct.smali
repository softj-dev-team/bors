.class public Lcom/sdkbox/plugin/SDKBoxIABBillingClient$IABProduct;
.super Ljava/lang/Object;
.source "SDKBoxIABBillingClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sdkbox/plugin/SDKBoxIABBillingClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IABProduct"
.end annotation


# static fields
.field public static final CONSUMABLE:I = 0x0

.field public static final NON_CONSUMABLE:I = 0x1

.field public static final SUBSCRIPTION:I = 0x2


# instance fields
.field public name:Ljava/lang/String;

.field public sku:Ljava/lang/String;

.field final synthetic this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

.field public type:I


# direct methods
.method private constructor <init>(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$IABProduct;->this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;Lcom/sdkbox/plugin/SDKBoxIABBillingClient$1;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$IABProduct;-><init>(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;)V

    return-void
.end method
