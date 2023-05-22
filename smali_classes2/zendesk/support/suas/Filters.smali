.class public Lzendesk/support/suas/Filters;
.super Ljava/lang/Object;
.source "Filters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/suas/Filters$EqualsFilter;,
        Lzendesk/support/suas/Filters$DefaultFilter;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lzendesk/support/suas/Filter;

.field public static final EQUALS:Lzendesk/support/suas/Filter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Lzendesk/support/suas/Filters$DefaultFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lzendesk/support/suas/Filters$DefaultFilter;-><init>(Lzendesk/support/suas/Filters$1;)V

    sput-object v0, Lzendesk/support/suas/Filters;->DEFAULT:Lzendesk/support/suas/Filter;

    .line 19
    new-instance v0, Lzendesk/support/suas/Filters$EqualsFilter;

    invoke-direct {v0, v1}, Lzendesk/support/suas/Filters$EqualsFilter;-><init>(Lzendesk/support/suas/Filters$1;)V

    sput-object v0, Lzendesk/support/suas/Filters;->EQUALS:Lzendesk/support/suas/Filter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
