.class final Lzendesk/belvedere/MediaIntent$1;
.super Ljava/lang/Object;
.source "MediaIntent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/belvedere/MediaIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lzendesk/belvedere/MediaIntent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 225
    invoke-virtual {p0, p1}, Lzendesk/belvedere/MediaIntent$1;->createFromParcel(Landroid/os/Parcel;)Lzendesk/belvedere/MediaIntent;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lzendesk/belvedere/MediaIntent;
    .locals 1

    .line 227
    new-instance v0, Lzendesk/belvedere/MediaIntent;

    invoke-direct {v0, p1}, Lzendesk/belvedere/MediaIntent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 225
    invoke-virtual {p0, p1}, Lzendesk/belvedere/MediaIntent$1;->newArray(I)[Lzendesk/belvedere/MediaIntent;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lzendesk/belvedere/MediaIntent;
    .locals 0

    .line 232
    new-array p1, p1, [Lzendesk/belvedere/MediaIntent;

    return-object p1
.end method
