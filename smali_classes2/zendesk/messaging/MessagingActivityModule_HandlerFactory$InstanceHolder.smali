.class final Lzendesk/messaging/MessagingActivityModule_HandlerFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "MessagingActivityModule_HandlerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/messaging/MessagingActivityModule_HandlerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lzendesk/messaging/MessagingActivityModule_HandlerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lzendesk/messaging/MessagingActivityModule_HandlerFactory;

    invoke-direct {v0}, Lzendesk/messaging/MessagingActivityModule_HandlerFactory;-><init>()V

    sput-object v0, Lzendesk/messaging/MessagingActivityModule_HandlerFactory$InstanceHolder;->INSTANCE:Lzendesk/messaging/MessagingActivityModule_HandlerFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lzendesk/messaging/MessagingActivityModule_HandlerFactory;
    .locals 1

    .line 32
    sget-object v0, Lzendesk/messaging/MessagingActivityModule_HandlerFactory$InstanceHolder;->INSTANCE:Lzendesk/messaging/MessagingActivityModule_HandlerFactory;

    return-object v0
.end method
