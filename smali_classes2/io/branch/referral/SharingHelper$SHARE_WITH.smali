.class public final enum Lio/branch/referral/SharingHelper$SHARE_WITH;
.super Ljava/lang/Enum;
.source "SharingHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/referral/SharingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SHARE_WITH"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/branch/referral/SharingHelper$SHARE_WITH;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/branch/referral/SharingHelper$SHARE_WITH;

.field public static final enum EMAIL:Lio/branch/referral/SharingHelper$SHARE_WITH;

.field public static final enum FACEBOOK:Lio/branch/referral/SharingHelper$SHARE_WITH;

.field public static final enum FACEBOOK_MESSENGER:Lio/branch/referral/SharingHelper$SHARE_WITH;

.field public static final enum FLICKR:Lio/branch/referral/SharingHelper$SHARE_WITH;

.field public static final enum GMAIL:Lio/branch/referral/SharingHelper$SHARE_WITH;

.field public static final enum GOOGLE_DOC:Lio/branch/referral/SharingHelper$SHARE_WITH;

.field public static final enum HANGOUT:Lio/branch/referral/SharingHelper$SHARE_WITH;

.field public static final enum INSTAGRAM:Lio/branch/referral/SharingHelper$SHARE_WITH;

.field public static final enum MESSAGE:Lio/branch/referral/SharingHelper$SHARE_WITH;

.field public static final enum PINTEREST:Lio/branch/referral/SharingHelper$SHARE_WITH;

.field public static final enum SNAPCHAT:Lio/branch/referral/SharingHelper$SHARE_WITH;

.field public static final enum TWITTER:Lio/branch/referral/SharingHelper$SHARE_WITH;

.field public static final enum WECHAT:Lio/branch/referral/SharingHelper$SHARE_WITH;

.field public static final enum WHATS_APP:Lio/branch/referral/SharingHelper$SHARE_WITH;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 13
    new-instance v0, Lio/branch/referral/SharingHelper$SHARE_WITH;

    const-string v1, "FACEBOOK"

    const/4 v2, 0x0

    const-string v3, "com.facebook.katana"

    invoke-direct {v0, v1, v2, v3}, Lio/branch/referral/SharingHelper$SHARE_WITH;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/branch/referral/SharingHelper$SHARE_WITH;->FACEBOOK:Lio/branch/referral/SharingHelper$SHARE_WITH;

    .line 14
    new-instance v1, Lio/branch/referral/SharingHelper$SHARE_WITH;

    const-string v3, "FACEBOOK_MESSENGER"

    const/4 v4, 0x1

    const-string v5, "com.facebook.orca"

    invoke-direct {v1, v3, v4, v5}, Lio/branch/referral/SharingHelper$SHARE_WITH;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lio/branch/referral/SharingHelper$SHARE_WITH;->FACEBOOK_MESSENGER:Lio/branch/referral/SharingHelper$SHARE_WITH;

    .line 15
    new-instance v3, Lio/branch/referral/SharingHelper$SHARE_WITH;

    const-string v5, "TWITTER"

    const/4 v6, 0x2

    const-string v7, "com.twitter.android"

    invoke-direct {v3, v5, v6, v7}, Lio/branch/referral/SharingHelper$SHARE_WITH;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lio/branch/referral/SharingHelper$SHARE_WITH;->TWITTER:Lio/branch/referral/SharingHelper$SHARE_WITH;

    .line 16
    new-instance v5, Lio/branch/referral/SharingHelper$SHARE_WITH;

    const-string v7, "MESSAGE"

    const/4 v8, 0x3

    const-string v9, ".mms"

    invoke-direct {v5, v7, v8, v9}, Lio/branch/referral/SharingHelper$SHARE_WITH;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lio/branch/referral/SharingHelper$SHARE_WITH;->MESSAGE:Lio/branch/referral/SharingHelper$SHARE_WITH;

    .line 17
    new-instance v7, Lio/branch/referral/SharingHelper$SHARE_WITH;

    const-string v9, "EMAIL"

    const/4 v10, 0x4

    const-string v11, "com.google.android.email"

    invoke-direct {v7, v9, v10, v11}, Lio/branch/referral/SharingHelper$SHARE_WITH;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lio/branch/referral/SharingHelper$SHARE_WITH;->EMAIL:Lio/branch/referral/SharingHelper$SHARE_WITH;

    .line 18
    new-instance v9, Lio/branch/referral/SharingHelper$SHARE_WITH;

    const-string v11, "FLICKR"

    const/4 v12, 0x5

    const-string v13, "com.yahoo.mobile.client.android.flickr"

    invoke-direct {v9, v11, v12, v13}, Lio/branch/referral/SharingHelper$SHARE_WITH;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lio/branch/referral/SharingHelper$SHARE_WITH;->FLICKR:Lio/branch/referral/SharingHelper$SHARE_WITH;

    .line 19
    new-instance v11, Lio/branch/referral/SharingHelper$SHARE_WITH;

    const-string v13, "GOOGLE_DOC"

    const/4 v14, 0x6

    const-string v15, "com.google.android.apps.docs"

    invoke-direct {v11, v13, v14, v15}, Lio/branch/referral/SharingHelper$SHARE_WITH;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lio/branch/referral/SharingHelper$SHARE_WITH;->GOOGLE_DOC:Lio/branch/referral/SharingHelper$SHARE_WITH;

    .line 20
    new-instance v13, Lio/branch/referral/SharingHelper$SHARE_WITH;

    const-string v15, "WHATS_APP"

    const/4 v14, 0x7

    const-string v12, "com.whatsapp"

    invoke-direct {v13, v15, v14, v12}, Lio/branch/referral/SharingHelper$SHARE_WITH;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lio/branch/referral/SharingHelper$SHARE_WITH;->WHATS_APP:Lio/branch/referral/SharingHelper$SHARE_WITH;

    .line 21
    new-instance v12, Lio/branch/referral/SharingHelper$SHARE_WITH;

    const-string v15, "PINTEREST"

    const/16 v14, 0x8

    const-string v10, "com.pinterest"

    invoke-direct {v12, v15, v14, v10}, Lio/branch/referral/SharingHelper$SHARE_WITH;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lio/branch/referral/SharingHelper$SHARE_WITH;->PINTEREST:Lio/branch/referral/SharingHelper$SHARE_WITH;

    .line 22
    new-instance v10, Lio/branch/referral/SharingHelper$SHARE_WITH;

    const-string v15, "HANGOUT"

    const/16 v14, 0x9

    const-string v8, "com.google.android.talk"

    invoke-direct {v10, v15, v14, v8}, Lio/branch/referral/SharingHelper$SHARE_WITH;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lio/branch/referral/SharingHelper$SHARE_WITH;->HANGOUT:Lio/branch/referral/SharingHelper$SHARE_WITH;

    .line 23
    new-instance v8, Lio/branch/referral/SharingHelper$SHARE_WITH;

    const-string v15, "INSTAGRAM"

    const/16 v14, 0xa

    const-string v6, "com.instagram.android"

    invoke-direct {v8, v15, v14, v6}, Lio/branch/referral/SharingHelper$SHARE_WITH;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lio/branch/referral/SharingHelper$SHARE_WITH;->INSTAGRAM:Lio/branch/referral/SharingHelper$SHARE_WITH;

    .line 24
    new-instance v6, Lio/branch/referral/SharingHelper$SHARE_WITH;

    const-string v15, "WECHAT"

    const/16 v14, 0xb

    const-string v4, "jom.tencent.mm"

    invoke-direct {v6, v15, v14, v4}, Lio/branch/referral/SharingHelper$SHARE_WITH;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lio/branch/referral/SharingHelper$SHARE_WITH;->WECHAT:Lio/branch/referral/SharingHelper$SHARE_WITH;

    .line 25
    new-instance v4, Lio/branch/referral/SharingHelper$SHARE_WITH;

    const-string v15, "SNAPCHAT"

    const/16 v14, 0xc

    const-string v2, "com.snapchat.android"

    invoke-direct {v4, v15, v14, v2}, Lio/branch/referral/SharingHelper$SHARE_WITH;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lio/branch/referral/SharingHelper$SHARE_WITH;->SNAPCHAT:Lio/branch/referral/SharingHelper$SHARE_WITH;

    .line 26
    new-instance v2, Lio/branch/referral/SharingHelper$SHARE_WITH;

    const-string v15, "GMAIL"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const-string v4, "com.google.android.gm"

    invoke-direct {v2, v15, v14, v4}, Lio/branch/referral/SharingHelper$SHARE_WITH;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lio/branch/referral/SharingHelper$SHARE_WITH;->GMAIL:Lio/branch/referral/SharingHelper$SHARE_WITH;

    const/16 v4, 0xe

    new-array v4, v4, [Lio/branch/referral/SharingHelper$SHARE_WITH;

    const/4 v15, 0x0

    aput-object v0, v4, v15

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v10, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    const/16 v0, 0xb

    aput-object v6, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    aput-object v2, v4, v14

    .line 12
    sput-object v4, Lio/branch/referral/SharingHelper$SHARE_WITH;->$VALUES:[Lio/branch/referral/SharingHelper$SHARE_WITH;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const-string p1, ""

    .line 28
    iput-object p1, p0, Lio/branch/referral/SharingHelper$SHARE_WITH;->name:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lio/branch/referral/SharingHelper$SHARE_WITH;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/branch/referral/SharingHelper$SHARE_WITH;
    .locals 1

    .line 12
    const-class v0, Lio/branch/referral/SharingHelper$SHARE_WITH;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/branch/referral/SharingHelper$SHARE_WITH;

    return-object p0
.end method

.method public static values()[Lio/branch/referral/SharingHelper$SHARE_WITH;
    .locals 1

    .line 12
    sget-object v0, Lio/branch/referral/SharingHelper$SHARE_WITH;->$VALUES:[Lio/branch/referral/SharingHelper$SHARE_WITH;

    invoke-virtual {v0}, [Lio/branch/referral/SharingHelper$SHARE_WITH;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/branch/referral/SharingHelper$SHARE_WITH;

    return-object v0
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lio/branch/referral/SharingHelper$SHARE_WITH;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lio/branch/referral/SharingHelper$SHARE_WITH;->name:Ljava/lang/String;

    return-object v0
.end method
