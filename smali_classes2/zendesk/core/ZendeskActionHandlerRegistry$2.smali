.class Lzendesk/core/ZendeskActionHandlerRegistry$2;
.super Ljava/lang/Object;
.source "ZendeskActionHandlerRegistry.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/core/ZendeskActionHandlerRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lzendesk/core/ActionHandler;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 93
    check-cast p1, Lzendesk/core/ActionHandler;

    check-cast p2, Lzendesk/core/ActionHandler;

    invoke-virtual {p0, p1, p2}, Lzendesk/core/ZendeskActionHandlerRegistry$2;->compare(Lzendesk/core/ActionHandler;Lzendesk/core/ActionHandler;)I

    move-result p1

    return p1
.end method

.method public compare(Lzendesk/core/ActionHandler;Lzendesk/core/ActionHandler;)I
    .locals 0

    .line 96
    invoke-interface {p2}, Lzendesk/core/ActionHandler;->getPriority()I

    move-result p2

    invoke-interface {p1}, Lzendesk/core/ActionHandler;->getPriority()I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method
