.class Lzendesk/belvedere/FixedWidthImageView$CalculatedDimensions;
.super Ljava/lang/Object;
.source "FixedWidthImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/belvedere/FixedWidthImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CalculatedDimensions"
.end annotation


# instance fields
.field private final rawImageHeight:I

.field private final rawImageWidth:I

.field private final viewHeight:I

.field private final viewWidth:I


# direct methods
.method constructor <init>(IIII)V
    .locals 0

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput p1, p0, Lzendesk/belvedere/FixedWidthImageView$CalculatedDimensions;->rawImageHeight:I

    .line 211
    iput p2, p0, Lzendesk/belvedere/FixedWidthImageView$CalculatedDimensions;->rawImageWidth:I

    .line 212
    iput p3, p0, Lzendesk/belvedere/FixedWidthImageView$CalculatedDimensions;->viewHeight:I

    .line 213
    iput p4, p0, Lzendesk/belvedere/FixedWidthImageView$CalculatedDimensions;->viewWidth:I

    return-void
.end method

.method static synthetic access$000(Lzendesk/belvedere/FixedWidthImageView$CalculatedDimensions;)I
    .locals 0

    .line 202
    iget p0, p0, Lzendesk/belvedere/FixedWidthImageView$CalculatedDimensions;->rawImageWidth:I

    return p0
.end method

.method static synthetic access$100(Lzendesk/belvedere/FixedWidthImageView$CalculatedDimensions;)I
    .locals 0

    .line 202
    iget p0, p0, Lzendesk/belvedere/FixedWidthImageView$CalculatedDimensions;->rawImageHeight:I

    return p0
.end method

.method static synthetic access$200(Lzendesk/belvedere/FixedWidthImageView$CalculatedDimensions;)I
    .locals 0

    .line 202
    iget p0, p0, Lzendesk/belvedere/FixedWidthImageView$CalculatedDimensions;->viewHeight:I

    return p0
.end method

.method static synthetic access$300(Lzendesk/belvedere/FixedWidthImageView$CalculatedDimensions;)I
    .locals 0

    .line 202
    iget p0, p0, Lzendesk/belvedere/FixedWidthImageView$CalculatedDimensions;->viewWidth:I

    return p0
.end method
