.class public final Lzendesk/core/ActionDescription;
.super Ljava/lang/Object;
.source "ActionDescription.java"


# instance fields
.field private final icon:I

.field private final localizedAccessibilityLabel:Ljava/lang/String;

.field private final localizedLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lzendesk/core/ActionDescription;->localizedLabel:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lzendesk/core/ActionDescription;->localizedAccessibilityLabel:Ljava/lang/String;

    .line 17
    iput p3, p0, Lzendesk/core/ActionDescription;->icon:I

    return-void
.end method


# virtual methods
.method public getIcon()I
    .locals 1

    .line 32
    iget v0, p0, Lzendesk/core/ActionDescription;->icon:I

    return v0
.end method

.method public getLocalizedAccessibilityLabel()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lzendesk/core/ActionDescription;->localizedAccessibilityLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalizedLabel()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lzendesk/core/ActionDescription;->localizedLabel:Ljava/lang/String;

    return-object v0
.end method
