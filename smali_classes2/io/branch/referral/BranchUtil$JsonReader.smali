.class public Lio/branch/referral/BranchUtil$JsonReader;
.super Ljava/lang/Object;
.source "BranchUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/referral/BranchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JsonReader"
.end annotation


# instance fields
.field private final jsonObject:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 177
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 180
    :catch_0
    iput-object v0, p0, Lio/branch/referral/BranchUtil$JsonReader;->jsonObject:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public getJsonObject()Lorg/json/JSONObject;
    .locals 1

    .line 184
    iget-object v0, p0, Lio/branch/referral/BranchUtil$JsonReader;->jsonObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method public has(Ljava/lang/String;)Z
    .locals 1

    .line 254
    iget-object v0, p0, Lio/branch/referral/BranchUtil$JsonReader;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public keys()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lio/branch/referral/BranchUtil$JsonReader;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public readOut(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 248
    iget-object v0, p0, Lio/branch/referral/BranchUtil$JsonReader;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lio/branch/referral/BranchUtil$JsonReader;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method

.method public readOutBoolean(Ljava/lang/String;)Z
    .locals 2

    .line 236
    iget-object v0, p0, Lio/branch/referral/BranchUtil$JsonReader;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 237
    iget-object v1, p0, Lio/branch/referral/BranchUtil$JsonReader;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    return v0
.end method

.method public readOutDouble(Ljava/lang/String;)D
    .locals 3

    .line 221
    iget-object v0, p0, Lio/branch/referral/BranchUtil$JsonReader;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 222
    iget-object v2, p0, Lio/branch/referral/BranchUtil$JsonReader;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    return-wide v0
.end method

.method public readOutDouble(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 2

    .line 228
    iget-object v0, p0, Lio/branch/referral/BranchUtil$JsonReader;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object p2, p0, Lio/branch/referral/BranchUtil$JsonReader;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    .line 230
    iget-object v0, p0, Lio/branch/referral/BranchUtil$JsonReader;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public readOutInt(Ljava/lang/String;)I
    .locals 2

    .line 188
    iget-object v0, p0, Lio/branch/referral/BranchUtil$JsonReader;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 189
    iget-object v1, p0, Lio/branch/referral/BranchUtil$JsonReader;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    return v0
.end method

.method public readOutInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1

    .line 195
    iget-object v0, p0, Lio/branch/referral/BranchUtil$JsonReader;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object p2, p0, Lio/branch/referral/BranchUtil$JsonReader;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 197
    iget-object v0, p0, Lio/branch/referral/BranchUtil$JsonReader;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public readOutJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 2

    .line 242
    iget-object v0, p0, Lio/branch/referral/BranchUtil$JsonReader;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lio/branch/referral/BranchUtil$JsonReader;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method

.method public readOutLong(Ljava/lang/String;)J
    .locals 3

    .line 215
    iget-object v0, p0, Lio/branch/referral/BranchUtil$JsonReader;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 216
    iget-object v2, p0, Lio/branch/referral/BranchUtil$JsonReader;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    return-wide v0
.end method

.method public readOutString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 203
    iget-object v0, p0, Lio/branch/referral/BranchUtil$JsonReader;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lio/branch/referral/BranchUtil$JsonReader;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method

.method public readOutString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lio/branch/referral/BranchUtil$JsonReader;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 210
    iget-object v0, p0, Lio/branch/referral/BranchUtil$JsonReader;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    return-object p2
.end method
