.class public Lzendesk/messaging/MenuItem;
.super Ljava/lang/Object;
.source "MenuItem.java"


# instance fields
.field private final itemId:I

.field private final labelId:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lzendesk/messaging/MenuItem;->itemId:I

    .line 15
    iput p2, p0, Lzendesk/messaging/MenuItem;->labelId:I

    return-void
.end method


# virtual methods
.method public getItemId()I
    .locals 1

    .line 24
    iget v0, p0, Lzendesk/messaging/MenuItem;->itemId:I

    return v0
.end method

.method public getLabelId()I
    .locals 1

    .line 34
    iget v0, p0, Lzendesk/messaging/MenuItem;->labelId:I

    return v0
.end method
