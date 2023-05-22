.class abstract Lzendesk/support/request/CellBase;
.super Ljava/lang/Object;
.source "CellBase.java"

# interfaces
.implements Lzendesk/support/request/CellType$Base;


# static fields
.field static final GROUP_ID_END_USER:I = -0x7fffffff

.field static final GROUP_ID_SYSTEM_MESSAGE:I = -0x80000000

.field static final ID_SYSTEM_MESSAGE_REQUEST_CLOSED:J = -0x7fffffffffffffffL

.field static final ID_SYSTEM_MESSAGE_REQUEST_CREATED:J = -0x8000000000000000L


# instance fields
.field private final groupId:J

.field private final id:J

.field private insets:Landroid/graphics/Rect;

.field private final layoutId:I

.field private positionType:I

.field private final timestamp:Ljava/util/Date;

.field protected final utils:Lzendesk/support/request/CellBindHelper;


# direct methods
.method constructor <init>(Lzendesk/support/request/CellBindHelper;IJJLjava/util/Date;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lzendesk/support/request/CellBase;->utils:Lzendesk/support/request/CellBindHelper;

    .line 30
    iput p2, p0, Lzendesk/support/request/CellBase;->layoutId:I

    .line 31
    iput-wide p3, p0, Lzendesk/support/request/CellBase;->id:J

    .line 32
    iput-wide p5, p0, Lzendesk/support/request/CellBase;->groupId:J

    const/4 p1, 0x1

    .line 33
    iput p1, p0, Lzendesk/support/request/CellBase;->positionType:I

    .line 34
    iput-object p7, p0, Lzendesk/support/request/CellBase;->timestamp:Ljava/util/Date;

    .line 35
    new-instance p1, Landroid/graphics/Rect;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lzendesk/support/request/CellBase;->insets:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public abstract areContentsTheSame(Lzendesk/support/request/CellType$Base;)Z
.end method

.method public abstract bind(Lzendesk/support/request/ComponentRequestAdapter$RequestViewHolder;)V
.end method

.method public getGroupId()J
    .locals 2

    .line 78
    iget-wide v0, p0, Lzendesk/support/request/CellBase;->groupId:J

    return-wide v0
.end method

.method public getInsets()Landroid/graphics/Rect;
    .locals 1

    .line 83
    iget-object v0, p0, Lzendesk/support/request/CellBase;->insets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 60
    iget v0, p0, Lzendesk/support/request/CellBase;->layoutId:I

    return v0
.end method

.method public getPositionType()I
    .locals 1

    .line 68
    iget v0, p0, Lzendesk/support/request/CellBase;->positionType:I

    return v0
.end method

.method public getTimeStamp()Ljava/util/Date;
    .locals 1

    .line 43
    iget-object v0, p0, Lzendesk/support/request/CellBase;->timestamp:Ljava/util/Date;

    return-object v0
.end method

.method public getUniqueId()J
    .locals 2

    .line 51
    iget-wide v0, p0, Lzendesk/support/request/CellBase;->id:J

    return-wide v0
.end method

.method public setPositionType(I)V
    .locals 1

    .line 73
    iget v0, p0, Lzendesk/support/request/CellBase;->positionType:I

    or-int/2addr p1, v0

    iput p1, p0, Lzendesk/support/request/CellBase;->positionType:I

    return-void
.end method
