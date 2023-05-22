.class public Lzendesk/belvedere/MediaResult;
.super Ljava/lang/Object;
.source "MediaResult.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Lzendesk/belvedere/MediaResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lzendesk/belvedere/MediaResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNKNOWN_VALUE:J = -0x1L


# instance fields
.field private final file:Ljava/io/File;

.field private final height:J

.field private final mimeType:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final originalUri:Landroid/net/Uri;

.field private final size:J

.field private final uri:Landroid/net/Uri;

.field private final width:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 136
    new-instance v0, Lzendesk/belvedere/MediaResult$1;

    invoke-direct {v0}, Lzendesk/belvedere/MediaResult$1;-><init>()V

    sput-object v0, Lzendesk/belvedere/MediaResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 148
    const-class v0, Lzendesk/belvedere/MediaResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    iput-object v1, p0, Lzendesk/belvedere/MediaResult;->file:Ljava/io/File;

    .line 150
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lzendesk/belvedere/MediaResult;->uri:Landroid/net/Uri;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lzendesk/belvedere/MediaResult;->name:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lzendesk/belvedere/MediaResult;->mimeType:Ljava/lang/String;

    .line 153
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lzendesk/belvedere/MediaResult;->originalUri:Landroid/net/Uri;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lzendesk/belvedere/MediaResult;->size:J

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lzendesk/belvedere/MediaResult;->width:J

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lzendesk/belvedere/MediaResult;->height:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lzendesk/belvedere/MediaResult$1;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lzendesk/belvedere/MediaResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJJ)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lzendesk/belvedere/MediaResult;->file:Ljava/io/File;

    .line 35
    iput-object p2, p0, Lzendesk/belvedere/MediaResult;->uri:Landroid/net/Uri;

    .line 36
    iput-object p3, p0, Lzendesk/belvedere/MediaResult;->originalUri:Landroid/net/Uri;

    .line 37
    iput-object p5, p0, Lzendesk/belvedere/MediaResult;->mimeType:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lzendesk/belvedere/MediaResult;->name:Ljava/lang/String;

    .line 39
    iput-wide p6, p0, Lzendesk/belvedere/MediaResult;->size:J

    .line 40
    iput-wide p8, p0, Lzendesk/belvedere/MediaResult;->width:J

    .line 41
    iput-wide p10, p0, Lzendesk/belvedere/MediaResult;->height:J

    return-void
.end method

.method static empty()Lzendesk/belvedere/MediaResult;
    .locals 13

    .line 20
    new-instance v12, Lzendesk/belvedere/MediaResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lzendesk/belvedere/MediaResult;-><init>(Ljava/io/File;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJJ)V

    return-object v12
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 15
    check-cast p1, Lzendesk/belvedere/MediaResult;

    invoke-virtual {p0, p1}, Lzendesk/belvedere/MediaResult;->compareTo(Lzendesk/belvedere/MediaResult;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lzendesk/belvedere/MediaResult;)I
    .locals 1

    .line 191
    iget-object v0, p0, Lzendesk/belvedere/MediaResult;->originalUri:Landroid/net/Uri;

    invoke-virtual {p1}, Lzendesk/belvedere/MediaResult;->getOriginalUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_e

    .line 162
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_5

    .line 164
    :cond_1
    check-cast p1, Lzendesk/belvedere/MediaResult;

    .line 166
    iget-wide v2, p0, Lzendesk/belvedere/MediaResult;->size:J

    iget-wide v4, p1, Lzendesk/belvedere/MediaResult;->size:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    return v1

    .line 167
    :cond_2
    iget-wide v2, p0, Lzendesk/belvedere/MediaResult;->width:J

    iget-wide v4, p1, Lzendesk/belvedere/MediaResult;->width:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_e

    iget-wide v2, p0, Lzendesk/belvedere/MediaResult;->height:J

    iget-wide v4, p1, Lzendesk/belvedere/MediaResult;->height:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    goto :goto_5

    .line 168
    :cond_3
    iget-object v2, p0, Lzendesk/belvedere/MediaResult;->file:Ljava/io/File;

    if-eqz v2, :cond_4

    iget-object v3, p1, Lzendesk/belvedere/MediaResult;->file:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lzendesk/belvedere/MediaResult;->file:Ljava/io/File;

    if-eqz v2, :cond_5

    :goto_0
    return v1

    .line 169
    :cond_5
    iget-object v2, p0, Lzendesk/belvedere/MediaResult;->uri:Landroid/net/Uri;

    if-eqz v2, :cond_6

    iget-object v3, p1, Lzendesk/belvedere/MediaResult;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_6
    iget-object v2, p1, Lzendesk/belvedere/MediaResult;->uri:Landroid/net/Uri;

    if-eqz v2, :cond_7

    :goto_1
    return v1

    .line 170
    :cond_7
    iget-object v2, p0, Lzendesk/belvedere/MediaResult;->originalUri:Landroid/net/Uri;

    if-eqz v2, :cond_8

    iget-object v3, p1, Lzendesk/belvedere/MediaResult;->originalUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_2

    :cond_8
    iget-object v2, p1, Lzendesk/belvedere/MediaResult;->originalUri:Landroid/net/Uri;

    if-eqz v2, :cond_9

    :goto_2
    return v1

    .line 172
    :cond_9
    iget-object v2, p0, Lzendesk/belvedere/MediaResult;->name:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v3, p1, Lzendesk/belvedere/MediaResult;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_3

    :cond_a
    iget-object v2, p1, Lzendesk/belvedere/MediaResult;->name:Ljava/lang/String;

    if-eqz v2, :cond_b

    :goto_3
    return v1

    .line 173
    :cond_b
    iget-object v2, p0, Lzendesk/belvedere/MediaResult;->mimeType:Ljava/lang/String;

    iget-object p1, p1, Lzendesk/belvedere/MediaResult;->mimeType:Ljava/lang/String;

    if-eqz v2, :cond_c

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4

    :cond_c
    if-nez p1, :cond_d

    goto :goto_4

    :cond_d
    const/4 v0, 0x0

    :goto_4
    return v0

    :cond_e
    :goto_5
    return v1
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 51
    iget-object v0, p0, Lzendesk/belvedere/MediaResult;->file:Ljava/io/File;

    return-object v0
.end method

.method public getHeight()J
    .locals 2

    .line 121
    iget-wide v0, p0, Lzendesk/belvedere/MediaResult;->height:J

    return-wide v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lzendesk/belvedere/MediaResult;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lzendesk/belvedere/MediaResult;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalUri()Landroid/net/Uri;
    .locals 1

    .line 81
    iget-object v0, p0, Lzendesk/belvedere/MediaResult;->originalUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 107
    iget-wide v0, p0, Lzendesk/belvedere/MediaResult;->size:J

    return-wide v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 66
    iget-object v0, p0, Lzendesk/belvedere/MediaResult;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public getWidth()J
    .locals 2

    .line 114
    iget-wide v0, p0, Lzendesk/belvedere/MediaResult;->width:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .line 178
    iget-object v0, p0, Lzendesk/belvedere/MediaResult;->file:Ljava/io/File;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 179
    iget-object v2, p0, Lzendesk/belvedere/MediaResult;->uri:Landroid/net/Uri;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 180
    iget-object v2, p0, Lzendesk/belvedere/MediaResult;->originalUri:Landroid/net/Uri;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 181
    iget-object v2, p0, Lzendesk/belvedere/MediaResult;->name:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 182
    iget-object v2, p0, Lzendesk/belvedere/MediaResult;->mimeType:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 183
    iget-wide v1, p0, Lzendesk/belvedere/MediaResult;->size:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 184
    iget-wide v1, p0, Lzendesk/belvedere/MediaResult;->width:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 185
    iget-wide v1, p0, Lzendesk/belvedere/MediaResult;->height:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 126
    iget-object v0, p0, Lzendesk/belvedere/MediaResult;->file:Ljava/io/File;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 127
    iget-object v0, p0, Lzendesk/belvedere/MediaResult;->uri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 128
    iget-object v0, p0, Lzendesk/belvedere/MediaResult;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lzendesk/belvedere/MediaResult;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lzendesk/belvedere/MediaResult;->originalUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 131
    iget-wide v0, p0, Lzendesk/belvedere/MediaResult;->size:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 132
    iget-wide v0, p0, Lzendesk/belvedere/MediaResult;->width:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 133
    iget-wide v0, p0, Lzendesk/belvedere/MediaResult;->height:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
