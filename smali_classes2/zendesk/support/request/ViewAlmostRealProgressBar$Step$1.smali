.class Lzendesk/support/request/ViewAlmostRealProgressBar$Step$1;
.super Ljava/lang/Object;
.source "ViewAlmostRealProgressBar.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/ViewAlmostRealProgressBar$Step;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lzendesk/support/request/ViewAlmostRealProgressBar$Step;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 273
    invoke-virtual {p0, p1}, Lzendesk/support/request/ViewAlmostRealProgressBar$Step$1;->createFromParcel(Landroid/os/Parcel;)Lzendesk/support/request/ViewAlmostRealProgressBar$Step;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lzendesk/support/request/ViewAlmostRealProgressBar$Step;
    .locals 1

    .line 276
    new-instance v0, Lzendesk/support/request/ViewAlmostRealProgressBar$Step;

    invoke-direct {v0, p1}, Lzendesk/support/request/ViewAlmostRealProgressBar$Step;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 273
    invoke-virtual {p0, p1}, Lzendesk/support/request/ViewAlmostRealProgressBar$Step$1;->newArray(I)[Lzendesk/support/request/ViewAlmostRealProgressBar$Step;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lzendesk/support/request/ViewAlmostRealProgressBar$Step;
    .locals 0

    .line 281
    new-array p1, p1, [Lzendesk/support/request/ViewAlmostRealProgressBar$Step;

    return-object p1
.end method
