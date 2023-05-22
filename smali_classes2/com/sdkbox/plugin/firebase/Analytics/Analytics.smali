.class public Lcom/sdkbox/plugin/firebase/Analytics/Analytics;
.super Ljava/lang/Object;
.source "Analytics.java"

# interfaces
.implements Lcom/sdkbox/plugin/PluginListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sdkbox/plugin/firebase/Analytics/Analytics$Param;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Firebase"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mContext:Landroid/content/Context;

    .line 77
    invoke-static {p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    iput-object p1, p0, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-void
.end method

.method static synthetic access$000(Lcom/sdkbox/plugin/firebase/Analytics/Analytics;)Lcom/google/firebase/analytics/FirebaseAnalytics;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-object p0
.end method

.method private mapValue2BundleFloat(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 317
    invoke-interface {p1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 320
    :cond_0
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 322
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 324
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 326
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p2, p4, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method private mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 309
    invoke-interface {p1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 312
    :cond_0
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public logEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 126
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "add_payment_info"

    .line 127
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1b

    const-string v4, "add_to_cart"

    .line 128
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "price"

    const-string v6, "quantity"

    const-string v7, "end_date"

    const-string v8, "start_date"

    const-string v9, "destination"

    const-string v10, "origin"

    const-string v11, "item_location_id"

    const-string v12, "item_category"

    const-string v13, "item_name"

    const-string v14, "item_id"

    const-string v15, "currency"

    const-string v1, "value"

    if-eqz v4, :cond_0

    .line 129
    invoke-direct {v0, v2, v3, v6, v6}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleFloat(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-direct {v0, v2, v3, v14, v14}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-direct {v0, v2, v3, v13, v13}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-direct {v0, v2, v3, v12, v12}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-direct {v0, v2, v3, v11, v11}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-direct {v0, v2, v3, v5, v5}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleFloat(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-direct {v0, v2, v3, v15, v15}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-direct {v0, v2, v3, v1, v1}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleFloat(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-direct {v0, v2, v3, v10, v10}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-direct {v0, v2, v3, v11, v11}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-direct {v0, v2, v3, v9, v9}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-direct {v0, v2, v3, v8, v8}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-direct {v0, v2, v3, v7, v7}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p1

    goto/16 :goto_1

    :cond_0
    const-string v4, "add_to_wishlist"

    move-object/from16 v16, v9

    move-object v9, v1

    move-object/from16 v1, p1

    .line 142
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 143
    invoke-direct {v0, v2, v3, v6, v6}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleFloat(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-direct {v0, v2, v3, v14, v14}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-direct {v0, v2, v3, v13, v13}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-direct {v0, v2, v3, v12, v12}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-direct {v0, v2, v3, v11, v11}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-direct {v0, v2, v3, v5, v5}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleFloat(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-direct {v0, v2, v3, v15, v15}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-direct {v0, v2, v3, v9, v9}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleFloat(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    const-string v4, "app_open"

    .line 151
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1b

    const-string v4, "begin_checkout"

    .line 152
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v17, v5

    const-string v5, "transaction_id"

    move-object/from16 v18, v11

    const-string v11, "travel_class"

    move-object/from16 v19, v12

    const-string v12, "number_of_passengers"

    move-object/from16 v20, v13

    const-string v13, "number_of_rooms"

    move-object/from16 v21, v14

    const-string v14, "number_of_nights"

    if-eqz v4, :cond_2

    .line 153
    invoke-direct {v0, v2, v3, v9, v9}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleFloat(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-direct {v0, v2, v3, v15, v15}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-direct {v0, v2, v3, v5, v5}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-direct {v0, v2, v3, v8, v8}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-direct {v0, v2, v3, v7, v7}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-direct {v0, v2, v3, v14, v14}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleFloat(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-direct {v0, v2, v3, v13, v13}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleFloat(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-direct {v0, v2, v3, v12, v12}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleFloat(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-direct {v0, v2, v3, v10, v10}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v16

    .line 162
    invoke-direct {v0, v2, v3, v4, v4}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-direct {v0, v2, v3, v11, v11}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    move-object/from16 v4, v16

    move-object/from16 v16, v6

    const-string v6, "campaign_details"

    .line 164
    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v4, "source"

    const-string v5, "source"

    .line 165
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "medium"

    const-string v5, "medium"

    .line 166
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "campaign"

    const-string v5, "campaign"

    .line 167
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "term"

    const-string v5, "term"

    .line 168
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "content"

    const-string v5, "content"

    .line 169
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "aclid"

    const-string v5, "aclid"

    .line 170
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "cp1"

    const-string v5, "cp1"

    .line 171
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    const-string v6, "checkout_progress"

    .line 172
    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v22, v11

    const-string v11, "checkout_option"

    move-object/from16 v23, v4

    const-string v4, "checkout_step"

    if-eqz v6, :cond_4

    .line 173
    invoke-direct {v0, v2, v3, v4, v4}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-direct {v0, v2, v3, v11, v11}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    const-string v6, "earn_virtual_currency"

    .line 175
    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v24, v11

    const-string v11, "virtual_currency_name"

    if-eqz v6, :cond_5

    .line 176
    invoke-direct {v0, v2, v3, v11, v11}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-direct {v0, v2, v3, v9, v9}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleFloat(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    const-string v6, "ecommerce_purchase"

    .line 178
    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 179
    invoke-direct {v0, v2, v3, v15, v15}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-direct {v0, v2, v3, v9, v9}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleFloat(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-direct {v0, v2, v3, v5, v5}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "tax"

    const-string v5, "tax"

    .line 182
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleFloat(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "shipping"

    const-string v5, "shipping"

    .line 183
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleFloat(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "coupon"

    const-string v5, "coupon"

    .line 184
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "location"

    const-string v5, "location"

    .line 185
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-direct {v0, v2, v3, v8, v8}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-direct {v0, v2, v3, v7, v7}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-direct {v0, v2, v3, v14, v14}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleFloat(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-direct {v0, v2, v3, v13, v13}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleFloat(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-direct {v0, v2, v3, v12, v12}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleFloat(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-direct {v0, v2, v3, v10, v10}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v6, v23

    .line 192
    invoke-direct {v0, v2, v3, v6, v6}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v22

    .line 193
    invoke-direct {v0, v2, v3, v4, v4}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    move-object/from16 v6, v23

    move-object/from16 v23, v4

    move-object/from16 v27, v22

    move-object/from16 v22, v11

    move-object/from16 v11, v27

    const-string v4, "generate_lead"

    .line 194
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 195
    invoke-direct {v0, v2, v3, v15, v15}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-direct {v0, v2, v3, v9, v9}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleFloat(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    const-string v4, "join_group"

    .line 197
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "group_id"

    const-string v5, "group_id"

    .line 198
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    const-string v4, "level_end"

    .line 199
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "level_name"

    const-string v5, "level_name"

    .line 200
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleFloat(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "success"

    const-string v5, "success"

    .line 201
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    const-string v4, "level_start"

    .line 202
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "level_name"

    const-string v5, "level_name"

    .line 203
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleFloat(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    const-string v4, "level_up"

    .line 204
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "level"

    const-string v5, "level"

    .line 205
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleFloat(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "character"

    const-string v5, "character"

    .line 206
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    const-string v4, "login"

    .line 207
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v25, v11

    const-string v11, "method"

    if-eqz v4, :cond_c

    .line 208
    invoke-direct {v0, v2, v3, v11, v11}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    const-string v4, "post_score"

    .line 209
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "score"

    const-string v5, "score"

    .line 210
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleFloat(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "level"

    const-string v5, "level"

    .line 211
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleFloat(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "character"

    const-string v5, "character"

    .line 212
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    const-string v4, "present_offer"

    .line 213
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    move-object/from16 v4, v16

    .line 214
    invoke-direct {v0, v2, v3, v4, v4}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleFloat(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v21

    .line 215
    invoke-direct {v0, v2, v3, v4, v4}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v20

    .line 216
    invoke-direct {v0, v2, v3, v4, v4}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v19

    .line 217
    invoke-direct {v0, v2, v3, v4, v4}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v18

    .line 218
    invoke-direct {v0, v2, v3, v4, v4}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v17

    .line 219
    invoke-direct {v0, v2, v3, v4, v4}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleFloat(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-direct {v0, v2, v3, v15, v15}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-direct {v0, v2, v3, v9, v9}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleFloat(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    move-object/from16 v4, v16

    move-object/from16 v16, v11

    move-object/from16 v11, v17

    move-object/from16 v17, v12

    move-object/from16 v12, v18

    move-object/from16 v18, v13

    move-object/from16 v13, v19

    move-object/from16 v19, v14

    move-object/from16 v14, v20

    move-object/from16 v20, v6

    move-object/from16 v6, v21

    move-object/from16 v21, v10

    const-string v10, "purchase_refund"

    .line 222
    invoke-virtual {v10, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 223
    invoke-direct {v0, v2, v3, v15, v15}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-direct {v0, v2, v3, v9, v9}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleFloat(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-direct {v0, v2, v3, v5, v5}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_f
    const-string v5, "remove_from_cart"

    .line 226
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 227
    invoke-direct {v0, v2, v3, v4, v4}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleFloat(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-direct {v0, v2, v3, v6, v6}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-direct {v0, v2, v3, v14, v14}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-direct {v0, v2, v3, v13, v13}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-direct {v0, v2, v3, v12, v12}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-direct {v0, v2, v3, v9, v9}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleFloat(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-direct {v0, v2, v3, v11, v11}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleFloat(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-direct {v0, v2, v3, v15, v15}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-direct {v0, v2, v3, v8, v8}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-direct {v0, v2, v3, v7, v7}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, v21

    .line 237
    invoke-direct {v0, v2, v3, v5, v5}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v10, v20

    .line 238
    invoke-direct {v0, v2, v3, v10, v10}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_10
    move-object/from16 v10, v20

    move-object/from16 v5, v21

    move-object/from16 v20, v15

    const-string v15, "search"

    .line 239
    invoke-virtual {v15, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    move-object/from16 v21, v4

    const-string v4, "search_term"

    if-eqz v15, :cond_11

    .line 240
    invoke-direct {v0, v2, v3, v4, v4}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-direct {v0, v2, v3, v8, v8}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-direct {v0, v2, v3, v7, v7}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v15, v19

    .line 243
    invoke-direct {v0, v2, v3, v15, v15}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleFloat(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v18

    .line 244
    invoke-direct {v0, v2, v3, v4, v4}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleFloat(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v17

    .line 245
    invoke-direct {v0, v2, v3, v4, v4}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleFloat(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-direct {v0, v2, v3, v5, v5}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-direct {v0, v2, v3, v10, v10}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v25

    .line 248
    invoke-direct {v0, v2, v3, v4, v4}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_11
    move-object/from16 v15, v19

    move-object/from16 v26, v25

    move-object/from16 v19, v5

    move-object/from16 v27, v17

    move-object/from16 v17, v4

    move-object/from16 v4, v27

    move-object/from16 v28, v18

    move-object/from16 v18, v10

    move-object/from16 v10, v28

    const-string v5, "select_content"

    .line 249
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    const-string v4, "content_type"

    const-string v5, "content_type"

    .line 250
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-direct {v0, v2, v3, v6, v6}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_12
    const-string v5, "set_checkout_option"

    .line 252
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    move-object/from16 v5, v23

    .line 253
    invoke-direct {v0, v2, v3, v5, v5}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v24

    .line 254
    invoke-direct {v0, v2, v3, v4, v4}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_13
    const-string v5, "share"

    .line 255
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    const-string v4, "content_type"

    const-string v5, "content_type"

    .line 256
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-direct {v0, v2, v3, v6, v6}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, v16

    .line 258
    invoke-direct {v0, v2, v3, v5, v5}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_14
    move-object/from16 v5, v16

    move-object/from16 v16, v10

    const-string v10, "sign_up"

    .line 259
    invoke-virtual {v10, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 260
    invoke-direct {v0, v2, v3, v5, v5}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "sign_up_method"

    const-string v5, "sign_up_method"

    .line 261
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_15
    const-string v5, "spend_virtual_currency"

    .line 262
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 263
    invoke-direct {v0, v2, v3, v14, v14}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v22

    .line 264
    invoke-direct {v0, v2, v3, v4, v4}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-direct {v0, v2, v3, v9, v9}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleFloat(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_16
    const-string v5, "tutorial_begin"

    .line 266
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1b

    const-string v5, "tutorial_complete"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1b

    const-string v5, "unlock_achievement"

    .line 267
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    const-string v4, "achievement_id"

    const-string v5, "achievement_id"

    .line 268
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_17
    const-string v5, "view_item"

    .line 269
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 270
    invoke-direct {v0, v2, v3, v6, v6}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-direct {v0, v2, v3, v14, v14}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-direct {v0, v2, v3, v13, v13}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-direct {v0, v2, v3, v12, v12}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-direct {v0, v2, v3, v11, v11}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleFloat(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, v21

    .line 275
    invoke-direct {v0, v2, v3, v5, v5}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleFloat(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, v20

    .line 276
    invoke-direct {v0, v2, v3, v5, v5}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-direct {v0, v2, v3, v9, v9}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleFloat(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-direct {v0, v2, v3, v8, v8}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-direct {v0, v2, v3, v7, v7}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "flight_number"

    const-string v6, "flight_number"

    .line 280
    invoke-direct {v0, v2, v3, v5, v6}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-direct {v0, v2, v3, v4, v4}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleFloat(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-direct {v0, v2, v3, v15, v15}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleFloat(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v16

    .line 283
    invoke-direct {v0, v2, v3, v4, v4}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleFloat(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v19

    .line 284
    invoke-direct {v0, v2, v3, v4, v4}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v18

    .line 285
    invoke-direct {v0, v2, v3, v4, v4}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v17

    .line 286
    invoke-direct {v0, v2, v3, v4, v4}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v26

    .line 287
    invoke-direct {v0, v2, v3, v4, v4}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_18
    move-object/from16 v4, v17

    const-string v5, "view_item_list"

    .line 288
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 289
    invoke-direct {v0, v2, v3, v13, v13}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_19
    const-string v5, "view_search_results"

    .line 290
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 291
    invoke-direct {v0, v2, v3, v4, v4}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->mapValue2BundleString(Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 293
    :cond_1a
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 294
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 300
    :cond_1b
    :goto_1
    new-instance v2, Lcom/sdkbox/plugin/firebase/Analytics/Analytics$6;

    invoke-direct {v2, v0, v1, v3}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics$6;-><init>(Lcom/sdkbox/plugin/firebase/Analytics/Analytics;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v2}, Lcom/sdkbox/plugin/SDKBox;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public resetAnalyticsData()V
    .locals 1

    .line 99
    new-instance v0, Lcom/sdkbox/plugin/firebase/Analytics/Analytics$3;

    invoke-direct {v0, p0}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics$3;-><init>(Lcom/sdkbox/plugin/firebase/Analytics/Analytics;)V

    invoke-static {v0}, Lcom/sdkbox/plugin/SDKBox;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAnalyticsCollectionEnabled(Z)V
    .locals 1

    .line 108
    new-instance v0, Lcom/sdkbox/plugin/firebase/Analytics/Analytics$4;

    invoke-direct {v0, p0, p1}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics$4;-><init>(Lcom/sdkbox/plugin/firebase/Analytics/Analytics;Z)V

    invoke-static {v0}, Lcom/sdkbox/plugin/SDKBox;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setScreenName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 117
    new-instance v0, Lcom/sdkbox/plugin/firebase/Analytics/Analytics$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics$5;-><init>(Lcom/sdkbox/plugin/firebase/Analytics/Analytics;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sdkbox/plugin/SDKBox;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 1

    .line 81
    new-instance v0, Lcom/sdkbox/plugin/firebase/Analytics/Analytics$1;

    invoke-direct {v0, p0, p1}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics$1;-><init>(Lcom/sdkbox/plugin/firebase/Analytics/Analytics;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sdkbox/plugin/SDKBox;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setUserProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 90
    new-instance v0, Lcom/sdkbox/plugin/firebase/Analytics/Analytics$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics$2;-><init>(Lcom/sdkbox/plugin/firebase/Analytics/Analytics;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sdkbox/plugin/SDKBox;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
