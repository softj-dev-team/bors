.class final Lzendesk/support/request/RequestModule_ProvidesReducerFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "RequestModule_ProvidesReducerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/RequestModule_ProvidesReducerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lzendesk/support/request/RequestModule_ProvidesReducerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lzendesk/support/request/RequestModule_ProvidesReducerFactory;

    invoke-direct {v0}, Lzendesk/support/request/RequestModule_ProvidesReducerFactory;-><init>()V

    sput-object v0, Lzendesk/support/request/RequestModule_ProvidesReducerFactory$InstanceHolder;->INSTANCE:Lzendesk/support/request/RequestModule_ProvidesReducerFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lzendesk/support/request/RequestModule_ProvidesReducerFactory;
    .locals 1

    .line 33
    sget-object v0, Lzendesk/support/request/RequestModule_ProvidesReducerFactory$InstanceHolder;->INSTANCE:Lzendesk/support/request/RequestModule_ProvidesReducerFactory;

    return-object v0
.end method
