.class Lzendesk/commonui/AlmostRealProgressBar$State;
.super Landroid/view/View$BaseSavedState;
.source "AlmostRealProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/commonui/AlmostRealProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "State"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lzendesk/commonui/AlmostRealProgressBar$State;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final progress:I

.field private final steps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/commonui/AlmostRealProgressBar$Step;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 313
    new-instance v0, Lzendesk/commonui/AlmostRealProgressBar$State$1;

    invoke-direct {v0}, Lzendesk/commonui/AlmostRealProgressBar$State$1;-><init>()V

    sput-object v0, Lzendesk/commonui/AlmostRealProgressBar$State;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 300
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lzendesk/commonui/AlmostRealProgressBar$State;->progress:I

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzendesk/commonui/AlmostRealProgressBar$State;->steps:Ljava/util/List;

    .line 303
    sget-object v1, Lzendesk/commonui/AlmostRealProgressBar$Step;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lzendesk/commonui/AlmostRealProgressBar$1;)V
    .locals 0

    .line 288
    invoke-direct {p0, p1}, Lzendesk/commonui/AlmostRealProgressBar$State;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "I",
            "Ljava/util/List<",
            "Lzendesk/commonui/AlmostRealProgressBar$Step;",
            ">;)V"
        }
    .end annotation

    .line 294
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 295
    iput p2, p0, Lzendesk/commonui/AlmostRealProgressBar$State;->progress:I

    .line 296
    iput-object p3, p0, Lzendesk/commonui/AlmostRealProgressBar$State;->steps:Ljava/util/List;

    return-void
.end method

.method static synthetic access$700(Lzendesk/commonui/AlmostRealProgressBar$State;)I
    .locals 0

    .line 288
    iget p0, p0, Lzendesk/commonui/AlmostRealProgressBar$State;->progress:I

    return p0
.end method

.method static synthetic access$800(Lzendesk/commonui/AlmostRealProgressBar$State;)Ljava/util/List;
    .locals 0

    .line 288
    iget-object p0, p0, Lzendesk/commonui/AlmostRealProgressBar$State;->steps:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 308
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 309
    iget p2, p0, Lzendesk/commonui/AlmostRealProgressBar$State;->progress:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    iget-object p2, p0, Lzendesk/commonui/AlmostRealProgressBar$State;->steps:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
