.class Lzendesk/commonui/AlmostRealProgressBar$Step$1;
.super Ljava/lang/Object;
.source "AlmostRealProgressBar.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/commonui/AlmostRealProgressBar$Step;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lzendesk/commonui/AlmostRealProgressBar$Step;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 270
    invoke-virtual {p0, p1}, Lzendesk/commonui/AlmostRealProgressBar$Step$1;->createFromParcel(Landroid/os/Parcel;)Lzendesk/commonui/AlmostRealProgressBar$Step;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lzendesk/commonui/AlmostRealProgressBar$Step;
    .locals 1

    .line 273
    new-instance v0, Lzendesk/commonui/AlmostRealProgressBar$Step;

    invoke-direct {v0, p1}, Lzendesk/commonui/AlmostRealProgressBar$Step;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 270
    invoke-virtual {p0, p1}, Lzendesk/commonui/AlmostRealProgressBar$Step$1;->newArray(I)[Lzendesk/commonui/AlmostRealProgressBar$Step;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lzendesk/commonui/AlmostRealProgressBar$Step;
    .locals 0

    .line 278
    new-array p1, p1, [Lzendesk/commonui/AlmostRealProgressBar$Step;

    return-object p1
.end method
