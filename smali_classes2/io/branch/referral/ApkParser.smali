.class Lio/branch/referral/ApkParser;
.super Ljava/lang/Object;
.source "ApkParser.java"


# static fields
.field private static final endDocTag:I = 0x100101

.field private static final endTag:I = 0x100103

.field private static final startTag:I = 0x100102


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private LEW([BI)I
    .locals 3

    add-int/lit8 v0, p2, 0x3

    .line 283
    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x18

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    return p1
.end method

.method private compXmlString([BIII)Ljava/lang/String;
    .locals 0

    if-gez p4, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    mul-int/lit8 p4, p4, 0x4

    add-int/2addr p2, p4

    .line 250
    invoke-direct {p0, p1, p2}, Lio/branch/referral/ApkParser;->LEW([BI)I

    move-result p2

    add-int/2addr p3, p2

    .line 251
    invoke-direct {p0, p1, p3}, Lio/branch/referral/ApkParser;->compXmlStringAt([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private compXmlStringAt([BI)Ljava/lang/String;
    .locals 5

    add-int/lit8 v0, p2, 0x1

    .line 264
    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 265
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    add-int/lit8 v3, p2, 0x2

    mul-int/lit8 v4, v2, 0x2

    add-int/2addr v3, v4

    .line 267
    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 269
    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method

.method private validURI(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "http"

    .line 216
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https"

    .line 217
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "geo"

    .line 218
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "*"

    .line 219
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "package"

    .line 220
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sms"

    .line 221
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "smsto"

    .line 222
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mms"

    .line 223
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mmsto"

    .line 224
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tel"

    .line 225
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "voicemail"

    .line 226
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "file"

    .line 227
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "content"

    .line 228
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mailto"

    .line 229
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public decompressXMLForValidator([BLandroid/content/Context;)Lorg/json/JSONObject;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 53
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 54
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 55
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const/16 v6, 0x10

    .line 63
    invoke-direct {v1, v0, v6}, Lio/branch/referral/ApkParser;->LEW([BI)I

    move-result v6

    mul-int/lit8 v6, v6, 0x4

    const/16 v7, 0x24

    add-int/2addr v6, v7

    const/16 v8, 0xc

    .line 76
    invoke-direct {v1, v0, v8}, Lio/branch/referral/ApkParser;->LEW([BI)I

    move-result v8

    move v9, v8

    .line 78
    :goto_0
    array-length v10, v0

    add-int/lit8 v10, v10, -0x4

    const v11, 0x100102

    if-ge v9, v10, :cond_1

    .line 79
    invoke-direct {v1, v0, v9}, Lio/branch/referral/ApkParser;->LEW([BI)I

    move-result v10

    if-ne v10, v11, :cond_0

    move v8, v9

    goto :goto_1

    :cond_0
    add-int/lit8 v9, v9, 0x4

    goto :goto_0

    :cond_1
    :goto_1
    :try_start_0
    const-string v9, ""

    .line 114
    :goto_2
    array-length v10, v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    const-string v12, "0"

    if-ge v8, v10, :cond_13

    .line 115
    :try_start_1
    invoke-direct {v1, v0, v8}, Lio/branch/referral/ApkParser;->LEW([BI)I

    move-result v10

    if-ne v10, v11, :cond_11

    add-int/lit8 v10, v8, 0x1c

    .line 117
    invoke-direct {v1, v0, v10}, Lio/branch/referral/ApkParser;->LEW([BI)I

    move-result v10

    add-int/lit8 v8, v8, 0x24

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v10, :cond_10

    add-int/lit8 v14, v8, 0x4

    .line 121
    invoke-direct {v1, v0, v14}, Lio/branch/referral/ApkParser;->LEW([BI)I

    move-result v14

    add-int/lit8 v15, v8, 0x8

    .line 122
    invoke-direct {v1, v0, v15}, Lio/branch/referral/ApkParser;->LEW([BI)I

    move-result v15

    add-int/lit8 v11, v8, 0x10

    .line 123
    invoke-direct {v1, v0, v11}, Lio/branch/referral/ApkParser;->LEW([BI)I

    move-result v11

    add-int/lit8 v8, v8, 0x14

    .line 126
    invoke-direct {v1, v0, v7, v6, v14}, Lio/branch/referral/ApkParser;->compXmlString([BIII)Ljava/lang/String;

    move-result-object v14

    const-string v7, "scheme"

    .line 127
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move/from16 v16, v8

    const-string v8, "https"

    move/from16 v17, v10

    const-string v10, "http"

    move-object/from16 v18, v5

    const/4 v5, -0x1

    if-eqz v7, :cond_8

    if-eq v15, v5, :cond_2

    const/16 v5, 0x24

    .line 128
    :try_start_2
    invoke-direct {v1, v0, v5, v6, v15}, Lio/branch/referral/ApkParser;->compXmlString([BIII)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_2
    invoke-static {v2, v11}, Lio/branch/referral/BranchUtil;->decodeResourceId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 129
    :goto_4
    invoke-direct {v1, v7}, Lio/branch/referral/ApkParser;->validURI(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 131
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 133
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 134
    invoke-virtual {v3, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5

    .line 135
    :cond_3
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 137
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONArray;

    .line 138
    invoke-virtual {v3, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_4
    :goto_5
    move-object v9, v7

    .line 143
    :cond_5
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    move-object v9, v7

    :cond_7
    :goto_6
    const/16 v5, 0x24

    goto/16 :goto_a

    :cond_8
    const-string v7, "host"

    .line 146
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    if-eq v15, v5, :cond_9

    const/16 v5, 0x24

    .line 147
    invoke-direct {v1, v0, v5, v6, v15}, Lio/branch/referral/ApkParser;->compXmlString([BIII)Ljava/lang/String;

    move-result-object v7

    goto :goto_7

    :cond_9
    invoke-static {v2, v11}, Lio/branch/referral/BranchUtil;->decodeResourceId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 149
    :goto_7
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    if-eqz v9, :cond_a

    .line 150
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 152
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 153
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 154
    invoke-virtual {v3, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_6

    .line 155
    :cond_a
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_8

    .line 158
    :cond_b
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 159
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 160
    invoke-virtual {v3, v12, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_6

    .line 156
    :cond_c
    :goto_8
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_6

    :cond_d
    const-string v7, "name"

    .line 162
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    if-eq v15, v5, :cond_e

    const/16 v5, 0x24

    .line 164
    invoke-direct {v1, v0, v5, v6, v15}, Lio/branch/referral/ApkParser;->compXmlString([BIII)Ljava/lang/String;

    move-result-object v7

    goto :goto_9

    :cond_e
    const/16 v5, 0x24

    invoke-static {v2, v11}, Lio/branch/referral/BranchUtil;->decodeResourceId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    :goto_9
    const-string v8, "android.intent.action.VIEW"

    .line 165
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    const/4 v7, 0x0

    move-object v9, v7

    :cond_f
    :goto_a
    add-int/lit8 v13, v13, 0x1

    move/from16 v8, v16

    move/from16 v10, v17

    move-object/from16 v5, v18

    const/16 v7, 0x24

    const v11, 0x100102

    goto/16 :goto_3

    :cond_10
    move-object/from16 v18, v5

    const/16 v5, 0x24

    goto :goto_b

    :cond_11
    move-object/from16 v18, v5

    const/16 v5, 0x24

    const v7, 0x100103

    if-ne v10, v7, :cond_12

    add-int/lit8 v8, v8, 0x18

    :goto_b
    move-object/from16 v5, v18

    const/16 v7, 0x24

    const v11, 0x100102

    goto/16 :goto_2

    :cond_12
    const v0, 0x100101

    goto :goto_c

    :cond_13
    move-object/from16 v18, v5

    .line 179
    :goto_c
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lio/branch/referral/Defines$Jsonkey;->URIScheme:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v0}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v2, v18

    :try_start_3
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    sget-object v0, Lio/branch/referral/Defines$Jsonkey;->AppLinks:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v0}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_e

    :catch_0
    move-exception v0

    goto :goto_d

    :catch_1
    move-exception v0

    move-object/from16 v2, v18

    goto :goto_d

    :catch_2
    move-exception v0

    move-object v2, v5

    .line 183
    :goto_d
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_e
    return-object v2
.end method
